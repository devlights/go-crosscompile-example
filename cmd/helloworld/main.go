package main

import (
	"log"
	"os"
	"sync"
)

var (
	appLog = log.New(os.Stdout, "[HelloWorld] ", 0)
)

func main() {
	var (
		wg sync.WaitGroup
	)

	for i := 0; i < 10; i++ {
		wg.Add(1)
		go func(i int) {
			defer wg.Done()
			appLog.Println(i)
		}(i)
	}

	wg.Wait()
}
