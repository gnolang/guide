# Go Development Conventions

## Introduction

This guide documents development conventions for Go at AiB. Check [general conventions](conventions.md) for language-independent conventions that are also applicable to Go projects.

## Supported Go Versions

* Our **libraries** support the latest two stable major versions of Go. Both versions should be included in CI.
* Our **applications** support only the latest [stable](https://golang.org/dl/#stable) Go version.

## Dependency Management

If your project is a **library** or an **application**:

* Use [modules](https://github.com/golang/go/wiki/Modules) to manage dependencies.
* Do not check in the `vendor` directory into git.

## Code Generation

* All generated code should be always processed by `gofmt`.
* Generated code should have a `// Code generated ... DO NOT EDIT.` comment before the package clause, but not attached to it (see [convention](https://github.com/golang/go/issues/13560#issuecomment-288457920)).

## Docker

* If you use alpine-based images, your binaries need to be built with `CGO_ENABLED=0`. If your project uses `cgo`, you will have to use alpine for the build of binaries for Docker.

## Testing

* Use [testify](https://github.com/stretchr/testify).

## Error handling

Use the standard `errors` package and wrap errors using `%w` when needed.

## Logging

* Use logging in your applications.
* Use [zerlog](https://github.com/rs/zerolog).

## Other libraries

!!! danger "Missing info"

    TODO: fill with other generally used libraries.

## Best Practices

* Use `gofmt`, `goimports`, `go vet`.
* Use `golangci-lint`. Configuration example [here](https://github.com/gnolang/gno/blob/master/.github/golangci.yml)
* Follow community well-established best practices: [Effective Go](https://golang.org/doc/effective_go.html) and [Go Code Review Comments](https://github.com/golang/go/wiki/CodeReviewComments).

### Group code blocks with blank lines

To improve readability, we use single blank lines to separate logic blocks of code inside functions.
A blank line is usually added after the end of any control structure, too.

### Naming

For naming: [follow Uber Go style guide](https://github.com/uber-go/guide/blob/master/style.md)

* [Errors](https://github.com/uber-go/guide/blob/master/style.md#error-naming)
* [Packages](https://github.com/uber-go/guide/blob/master/style.md#package-names)
* Prefer full names (e.g. `Repository`, not `Repo`).

## CLI

* Put sources for your executable commands in `cmd/<command-name>/`, with the `main` function in `cmd/<command-name>/main.go`.
* We use [ff](github.com/peterbourgon/ff) extensively for CLI options parsing.
* Implement commands in a subpackage.

## Configuration

* Use environment variables for configuration.

!!! danger "Missing info"

    TODO: Add other possible configurations