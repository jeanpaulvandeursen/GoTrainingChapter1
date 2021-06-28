# Chapter 1

- set $GOPATH in .zshrc
- created directory ~/Dev/Go/ch1
- created hello.go

## Code samples

    go run hello.go

Compiles on the go to temp binary, runs binary and throws it away afterwards.

    go build hello.go

Compiles to native binary.

    hello

Run native binary.

    go install github.com/rakyll/hey@latest

Installs hey command for performance testing websites.

    hey https://nos.nl

Tests response times nos.nl, notice the protocol (https) must be defined.

    cat hello.go | tr " \t" "*^"

bash command to display spaces as "*" and tabs as "^", since Go has a standard for formatting.

    go fmt hello.go

Fix format errors.

    go install golang.org/x/tools/cmd/goimports@latest

goimports fixes imports.

    golint hello.go

golint does static analysis.

    go vet hello.go

go vet detects logical errors.

In stead of running multiple quality tools separately they are combined in the single command **golangci-lint**, configured in file *.golangci.yml*.

Common for Go programming is the use of **make** for automating tasks.