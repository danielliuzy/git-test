package main

import (
	"os/exec"
	"time"
)

func main() {
	for start := time.Now(); time.Since(start) < time.Second * 60; {
		exec.Command("git", "commit", "--allow-empty", "-m", "'go empty'").Output()
	}

}