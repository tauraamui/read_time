module main

import os
import read_time

fn main() {
	content := os.read_file("test.txt") or { panic("unable to read test.txt: ${err}") }
	read_options := read_time.Options.new()
	read_time.text(content, read_options)
}
