package main

import (
	"testing"
)

func BenchmarkGenerateRandomString(b *testing.B) {
	for i := 0; i < b.N; i++ {
		generateRandomString(10)
	}
}
