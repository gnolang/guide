## Editors

At Gno.land, we embrace the diversity of text editors used by our team members for writing code. We believe that
individual preferences play a crucial role in creating a productive and enjoyable development experience. Whether you
prefer Visual Studio Code, IntelliJ Goland, Emacs, [Vim](https://youtu.be/3r1z5NDXU3s?t=20), or any other editor, you
are encouraged to use the tool that suits your workflow best.

Check out the resources below to make your development experience in Gno more enjoyable:

- [VS Code plugin](https://marketplace.visualstudio.com/items?itemName=harry-hov.gno)
- [Vim Setup](https://github.com/gnolang/gno/blob/4df47de0731a295948a9e576e3f59a6473612c7e/CONTRIBUTING.md?plain=1#L76)
- [Emacs Setup](https://github.com/gnolang/gno/blob/4df47de0731a295948a9e576e3f59a6473612c7e/CONTRIBUTING.md?plain=1#L99)

## Benchmarks

- **Auto-generated Go Benchmark Graphs** - We have an automated system that generates benchmark graphs from existing
  benchmarks in our codebase. These benchmarks are triggered on each Pull Request (PR) merge, providing valuable
  insights into performance improvements or regressions. You can access the aggregated
  benchmark graphs here (link pending).
- **Supernova** - For stress-testing our Gno node, we utilize a tool called Supernova. This tool bombards the Gno node
  with transactions and helps us extract performance metrics such as Transactions Per Second (TPS) and block
  utilization. You can explore the Supernova tool and its code repository [here](https://github.com/gnolang/supernova).

## Code Coverage

We employ `CodeCov` as our main source for measuring code coverage. CodeCov helps us understand the extent to which our
code is exercised during testing.

You can find the coverage information for the main `gno` repo [here](https://app.codecov.io/gh/gnolang/gno).