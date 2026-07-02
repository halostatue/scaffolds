package main

import (
	"flag"
	"fmt"
	"os"

	"github.com/{{ .Computed.githubRepoName }}"
)

var (
	version = "dev"
	commit  = "none"
)

func main() {
	showVersion := flag.Bool("version", false, "show version information")
	flag.Parse()

	if *showVersion {
		fmt.Printf("%s %s (%s)\n", os.Args[0], version, commit)
		os.Exit(0)
	}

	// Application logic here
}
