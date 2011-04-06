package main

import (
	"flag"
	"os"
)

var omitNewLine = flag.Bool( "n", false, "Don't print final new line" )

const (
	Space = " "
	NewLine = "\n"
)

func main() {
	flag.Parse()
	s := ""

	for i := 0; i < flag.NArg(); i++ {
		if i > 0 {
			s += Space
		}
		s += flag.Arg(i)
	}

	if !*omitNewLine {
		s += NewLine
	}
	
	os.Stdout.WriteString( s )
}
