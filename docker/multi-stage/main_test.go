package main

import (
	"io/ioutil"
	"net/http"
	"net/http/httptest"
	"testing"
)

func TestHelloDude(t *testing.T) {
	rec := httptest.NewRecorder()

	helloDude(rec, &http.Request{})

	resp := rec.Result()
	if resp.StatusCode != http.StatusOK {
		t.Errorf("Expected status code 200, got: %d", resp.StatusCode)
	}

	body, _ := ioutil.ReadAll(resp.Body)
	if string(body) != "Hi dude!" {
		t.Errorf("Expected response body to be '%s', got: '%s'", "Hi dude!", string(body))
	}
}
