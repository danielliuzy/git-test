package main

import (
	"os/exec"
	"time"
)

func main() {
	for start := time.Now(); time.Since(start) < time.Second * 30; {
	// for true {
		exec.Command("git", "commit", "--allow-empty", "-m", "'go empty'").Output()
	}

}