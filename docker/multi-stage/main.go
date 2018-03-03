package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", helloDude)
	http.ListenAndServe(":4444", nil)
}

func helloDude(rw http.ResponseWriter, req *http.Request) {
	fmt.Fprint(rw, "Hi dude!")
}
