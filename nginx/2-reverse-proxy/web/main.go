package main

import (
	"fmt"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(rw http.ResponseWriter, req *http.Request) {
		fmt.Fprint(rw, "Hello from web app!")
	})
	http.ListenAndServe(":3000", nil)
}
