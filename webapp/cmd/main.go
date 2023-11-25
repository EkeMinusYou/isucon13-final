package main

import (
	"log"
	"os/exec"
)

func main() {
	if out, err := exec.Command("chmod", "+x", "../sql/custom.sh").CombinedOutput(); err != nil {
		log.Fatalf("failed to chmod custom.sh: %s", err)
	} else {
		log.Printf("custom.sh: %s", out)
	}

	if out, err := exec.Command("../sql/custom.sh").CombinedOutput(); err != nil {
		log.Fatalf("failed to execute custom.sh: %s", err)
	} else {
		log.Printf("custom.sh: %s", out)
	}
	if out, err := exec.Command("chmod", "+x", "../sql/init.sh").CombinedOutput(); err != nil {
		log.Fatalf("failed to chmod init.sh: %s", err)
	} else {
		log.Printf("init.sh: %s", out)
	}
	if out, err := exec.Command("../sql/init.sh").CombinedOutput(); err != nil {
		log.Fatalf("failed to execute init.sh: %s", err)
	} else {
		log.Printf("init.sh: %s", out)
	}
}
