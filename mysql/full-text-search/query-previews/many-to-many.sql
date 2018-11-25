CREATE TABLE posts (
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

INSERT INTO posts(post_id) VALUES('post-1');
INSERT INTO posts(post_id) VALUES('post-2');
INSERT INTO posts(post_id) VALUES('post-3');
INSERT INTO posts(post_id) VALUES('post-4');
INSERT INTO posts(post_id) VALUES('post-5');
INSERT INTO posts(post_id) VALUES('post-6');
INSERT INTO posts(post_id) VALUES('post-7');
INSERT INTO posts(post_id) VALUES('post-8');
INSERT INTO posts(post_id) VALUES('post-9');
INSERT INTO posts(post_id) VALUES('post-10');
INSERT INTO posts(post_id) VALUES('post-11');
INSERT INTO posts(post_id) VALUES('post-12');
INSERT INTO posts(post_id) VALUES('post-13');
INSERT INTO posts(post_id) VALUES('post-14');
INSERT INTO posts(post_id) VALUES('post-15');
INSERT INTO posts(post_id) VALUES('post-16');
INSERT INTO posts(post_id) VALUES('post-17');
INSERT INTO posts(post_id) VALUES('post-18');
INSERT INTO posts(post_id) VALUES('post-19');
INSERT INTO posts(post_id) VALUES('post-20');
INSERT INTO posts(post_id) VALUES('post-21');
INSERT INTO posts(post_id) VALUES('post-22');
INSERT INTO posts(post_id) VALUES('post-23');
INSERT INTO posts(post_id) VALUES('post-24');
INSERT INTO posts(post_id) VALUES('post-25');

INSERT INTO tags(tag_id) VALUES('andree');
INSERT INTO tags(tag_id) VALUES('apolonia');
INSERT INTO tags(tag_id) VALUES('brittanie');
INSERT INTO tags(tag_id) VALUES('bronwyn');
INSERT INTO tags(tag_id) VALUES('caitlyn');
INSERT INTO tags(tag_id) VALUES('carly');
INSERT INTO tags(tag_id) VALUES('chante');
INSERT INTO tags(tag_id) VALUES('chasity');
INSERT INTO tags(tag_id) VALUES('collene');
INSERT INTO tags(tag_id) VALUES('deidra');
INSERT INTO tags(tag_id) VALUES('diana');
INSERT INTO tags(tag_id) VALUES('eda');

INSERT INTO post_tag(post_id, tag_id) VALUES('post-1', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-1', 'eda');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-1', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-2', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-2', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-2', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-3', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-4', 'andree');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-4', 'diana');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-5', 'chante');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-5', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-6', 'chante');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-6', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-6', 'deidra');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-6', 'bronwyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-7', 'chasity');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-7', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-7', 'andree');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-7', 'chante');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-8', 'collene');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-8', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-8', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-9', 'deidra');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-9', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-9', 'bronwyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-10', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-10', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-11', 'collene');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-11', 'deidra');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-11', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-12', 'diana');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-12', 'chante');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-12', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-12', 'collene');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-13', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-13', 'eda');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-13', 'collene');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-13', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-14', 'chasity');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-14', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-14', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-14', 'bronwyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-15', 'chante');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-15', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-15', 'chasity');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-15', 'bronwyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-16', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-16', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-16', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-17', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-18', 'eda');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-18', 'chante');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-18', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-18', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-18', 'bronwyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-19', 'diana');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-19', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-19', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-19', 'bronwyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-19', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-20', 'chante');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-21', 'chasity');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-21', 'eda');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-21', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-21', 'bronwyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-21', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-22', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-22', 'diana');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-23', 'brittanie');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-23', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-23', 'diana');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-23', 'collene');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-23', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-24', 'apolonia');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-24', 'eda');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-24', 'collene');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-25', 'collene');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-25', 'caitlyn');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-25', 'carly');
INSERT INTO post_tag(post_id, tag_id) VALUES('post-25', 'eda');
