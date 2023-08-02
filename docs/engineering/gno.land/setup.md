## Contributing

We tend to keep an updated `CONTRIBUTING.md`, which contains relevant setup and workflow
information about Gno. You can find it on the official Gno
repo, [here](https://github.com/gnolang/gno/blob/master/CONTRIBUTING.md).

## Local repo setup

To begin, clone the repository locally using the following command:

```bash
git clone https://github.com/gnolang/gno.git
```

## Building & installing binaries

To build and globally install local gno binaries, follow these steps:

### Building & installing from `./gno.land`

Navigate to the `./gno.land` subfolder and execute:

```bash
make build && make install
```

### Building & installing from `./gnovm`

Navigate to the `./gnovm`` subfolder and execute:

```bash
make build && make install
```

## Running (Go) tests

To run the entire local testing suite, execute the following command from the project root:

```bash
make test
```

This will execute the tests in the following project components:

- tm2
- gnovm
- gno.land
- examples

## Running (Gno) tests

Before running `*_test.gno` test files, ensure you have the gno binary installed. If not, follow the steps
in [Building & installing binaries from `gno.land`](#building--installing-from-gnoland).

After installing the `gno` binary, you can execute the gno command as follows:

```bash
gno --help
```

To test a specific package, run:

```bash
gno test path/to/package
```

Additionally, you might need to specify the path to the root-dir in the gno test command. This is the absolute path to
the locally cloned gno repo. For example:

```bash
gno test --root-dir /Users/zmilos/Work/gno path/to/package
```

## Running the linter

We use the [`golangci-lint` linter](https://golangci-lint.run/usage/install/#local-installation) for both our CI and
local linting. Once you ensure it is installed, run the following
command:

```bash
make lint 
```

## Clearing out local data

As the local blockchain node runs, it creates on-disk temporary storage. To clear these subdirectories, run the
following commands:

From the `./gno.land` subfolder:

```bash
make clean && make fclean
```
