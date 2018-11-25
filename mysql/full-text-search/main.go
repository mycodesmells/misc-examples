package main

import (
	"flag"
	"fmt"
	"math/rand"
	"os"
	"strings"
)

var tags = []string{
	"andree",
	"apolonia",
	"brittanie",
	"bronwyn",
	"caitlyn",
	"carly",
	"chante",
	"chasity",
	"collene",
	"deidra",
	"diana",
	"eda",
}

const (
	postCount   = 25
	tagsPerPost = 5
)

func main() {
	dist := flag.String("dist", "query-previews/", "destination directory for generated SQL files")
	flag.Parse()

	likeFile, _ := os.Create(*dist + "like.sql")
	defer likeFile.Close()
	fulltextFile, _ := os.Create(*dist + "fulltext.sql")
	defer fulltextFile.Close()
	manytomanyFile, _ := os.Create(*dist + "many-to-many.sql")
	defer manytomanyFile.Close()

	tagsContents := ""
	for _, t := range tags {
		tagsContents += fmt.Sprintf("INSERT INTO tags (name) VALUES ('%s')\n", t)
	}

	postTags := map[string][]string{}
	for i := 0; i < postCount; i++ {
		postID := fmt.Sprintf("post-%d", (i + 1))
		randomTags := shuffle(tags)
		tagsCount := rand.Intn(tagsPerPost) + 1
		postTags[postID] = randomTags[:tagsCount]
	}

	// LIKE
	likeFile.WriteString(`CREATE TABLE posts (
	post_id VARCHAR(10) NOT NULL PRIMARY KEY,
	tags VARCHAR(255) NOT NULL,
	KEY(tags)
);

`)

	// FULLTEXT
	fulltextFile.WriteString(`CREATE TABLE posts (
		post_id VARCHAR(10) NOT NULL PRIMARY KEY,
		tags VARCHAR(255) NOT NULL,
		FULLTEXT(tags)
	);

	`)

	for i := 0; i < postCount; i++ {
		postID := fmt.Sprintf("post-%d", (i + 1))
		tags := postTags[postID]
		tagsStr := strings.Join(tags, " ")

		line := fmt.Sprintf("INSERT INTO posts(post_id, tags) VALUES('%s', '%s');\n", postID, tagsStr)

		likeFile.WriteString(line)
		likeFile.Sync()

		fulltextFile.WriteString(line)
		fulltextFile.Sync()
	}

	// MANY-TO-MANY
	manytomanyFile.WriteString(`CREATE TABLE posts (
	post_id VARCHAR(10) NOT NULL PRIMARY KEY
);

CREATE TABLE tags (
	tag_id VARCHAR(10) NOT NULL PRIMARY KEY
)

CREATE TABLE post_tag (
	post_id VARCHAR(10),
	tag_id VARCHAR(10),
	KEY(post_id),
	KEY(tag_id),
	UNIQUE(post_id, tag_id)
);

`)

	for i := 0; i < postCount; i++ {
		line := fmt.Sprintf("INSERT INTO posts(post_id) VALUES('post-%d');\n", (i + 1))
		manytomanyFile.WriteString(line)
		manytomanyFile.Sync()
	}
	manytomanyFile.WriteString("\n")
	for _, t := range tags {
		line := fmt.Sprintf("INSERT INTO tags(tag_id) VALUES('%s');\n", t)
		manytomanyFile.WriteString(line)
		manytomanyFile.Sync()
	}
	manytomanyFile.WriteString("\n")
	for i := 0; i < postCount; i++ {
		postID := fmt.Sprintf("post-%d", (i + 1))
		tags := postTags[postID]

		for _, t := range tags {
			line := fmt.Sprintf("INSERT INTO post_tag(post_id, tag_id) VALUES('%s', '%s');\n", postID, t)
			manytomanyFile.WriteString(line)
			manytomanyFile.Sync()
		}
	}
}

func shuffle(in []string) []string {
	dest := make([]string, len(in))
	perm := rand.Perm(len(in))
	for i, v := range perm {
		dest[v] = in[i]
	}
	return dest
}
