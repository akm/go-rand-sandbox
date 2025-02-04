package main

import (
	"fmt"
	"math/rand/v2"
)

const letters = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"

func generateRandomString(n int) string {
	b := make([]byte, n)
	for i := range b {
		b[i] = letters[rand.Int()%len(letters)]
	}
	return string(b)
}

func main() {
	randomString := generateRandomString(10)
	fmt.Println(randomString)
}
