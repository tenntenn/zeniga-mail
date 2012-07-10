package zenigamail

import (
	"net/http"
	"text/template"
	"log"
)

// Initialize application.
func init() {
	http.HandleFunc("/", index)
}

// html templates
var templates = template.Must(template.ParseGlob("template/*.html"))

// index handle function.
func index(w http.ResponseWriter, r *http.Request) {
    if err := templates.ExecuteTemplate(w, "index", nil); err != nil {
        http.Error(w, err.Error(), http.StatusInternalServerError)
        log.Fatal(err.Error())
    }	
}