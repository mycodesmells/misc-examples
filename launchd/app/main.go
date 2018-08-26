package main

import (
	"fmt"
	"net/http"
	"time"
)

func main() {
	const addr = ":9999"

	start := time.Now()
	http.HandleFunc("/", func(rw http.ResponseWriter, req *http.Request) {
		fmt.Fprintf(rw, "Hello from launchd agent! I started at %v!", start)
	})
	http.HandleFunc("/panic", func(rw http.ResponseWriter, req *http.Request) {
		go panic("can't stop me")
	})
	fmt.Printf("Starting HTTP server at %s", addr)
	http.ListenAndServe(addr, nil)
}
