.DEFAULT_GOAL := build

fmt:
	go fmt *.go
.PHONY:fmt

lint: fmt
	golint *.go
.PHONY:lint

vet: lint
	go vet *.go
.PHONY:vet

build: vet
	go build hello.go
.PHONY:build