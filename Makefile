default: build-compare bench-compare

build-compare:
	@echo "Building binaries..."
	@make -C crypto-rand build
	@make -C math-rand-v2 build
	@echo "File sizes:"
	@ls -l crypto-rand/crypto-rand math-rand-v2/math-rand-v2

bench-compare:
	@echo "Benchmarking..."
	@make -C crypto-rand bench > crypto-rand-bench.txt
	@make -C math-rand-v2 bench > math-rand-v2-bench.txt
	@echo "Benchmark results (ns/op):"
	@echo "crypto-rand:"
	@grep "ns/op" crypto-rand-bench.txt
	@echo "math-rand-v2:"
	@grep "ns/op" math-rand-v2-bench.txt
