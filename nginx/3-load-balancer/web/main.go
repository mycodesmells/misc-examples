package main

import (
	"net/http"
	"os"
)

func main() {
	hostname, err := os.Hostname()
	if err != nil {
		panic("no hostname?!")
	}

	http.HandleFunc("/", func(rw http.ResponseWriter, req *http.Request) {
		rw.Write([]byte("Howdy from " + hostname))
	})

	http.ListenAndServe(":9000", nil)
}
