# `pre-commit hooks`

[![License](https://img.shields.io/static/v1?message=MIT&logo=data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM6ZGM9Imh0dHA6Ly9wdXJsLm9yZy9kYy9lbGVtZW50cy8xLjEvIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZlcnNpb249IjEuMSIgeG1sbnM6eGw9Imh0dHA6Ly93d3cudzMub3JnLzE5OTkveGxpbmsiIHZpZXdCb3g9IjAgMCAyNCAyNCIgd2lkdGg9IjI0IiBoZWlnaHQ9IjI0Ij4KICA8ZGVmcy8+CiAgPGcgaWQ9IkNhbnZhc18xIiBmaWxsPSJub25lIiBzdHJva2U9Im5vbmUiIHN0cm9rZS1kYXNoYXJyYXk9Im5vbmUiIHN0cm9rZS1vcGFjaXR5PSIxIiBmaWxsLW9wYWNpdHk9IjEiPgogICAgPHRpdGxlPkNhbnZhcyAxPC90aXRsZT4KICAgIDxnIGlkPSJDYW52YXNfMV9MYXllcl8xIj4KICAgICAgPHRpdGxlPkxheWVyIDE8L3RpdGxlPgogICAgICA8ZyBpZD0iR3JhcGhpY18yIj4KICAgICAgICA8cGF0aCBkPSJNIDEyLjc1IDIuNzUgTCAxMi43NSA0LjUgTCAxNC43MjUgNC41IEMgMTUuMDc2IDQuNSAxNS40MTkgNC42MDYgMTUuNzA5IDQuODAzIEwgMTcuNDA2IDUuOTU3IEMgMTcuNDQ3IDUuOTg1IDE3LjQ5NiA2IDE3LjU0NiA2IEwgMjEuNjQ4IDYgQyAyMi4wNjIyMTQgNiAyMi4zOTggNi4zMzU3ODY0IDIyLjM5OCA2Ljc1IEMgMjIuMzk4IDcuMTY0MjEzNiAyMi4wNjIyMTQgNy41IDIxLjY0OCA3LjUgTCAyMC4wNyA3LjUgTCAyMy40MzYgMTUuMTggQyAyMy41NzQ5NjIgMTUuNDk1OTgzIDIzLjQ3OTk3NiAxNS44NjYwMTYgMjMuMjA2IDE2LjA3NiBDIDIzLjEwNiAxNi4xNSAyMy4wMDMgMTYuMjE5IDIyLjg5NiAxNi4yODIgQyAyMi42NDIzNTIgMTYuNDMzMzY3IDIyLjM3ODM2NyAxNi41NjY2OTYgMjIuMTA2IDE2LjY4MSBDIDIxLjIwMTQ4NiAxNy4wNTkyNzcgMjAuMjMwNDI0IDE3LjI1Mjc0MSAxOS4yNSAxNy4yNSBDIDE4LjI2OTk2NSAxNy4yNTMwODYgMTcuMjk5MjI3IDE3LjA1OTk1OSAxNi4zOTUgMTYuNjgyIEMgMTYuMTIyNDc3IDE2LjU2NzY1IDE1Ljg1ODQ3MSAxNi40MzM5NzcgMTUuNjA1IDE2LjI4MiBDIDE1LjQ5ODg4NyAxNi4yMjA1OTQgMTUuMzk2Mzg2IDE2LjE1MzE1IDE1LjI5OCAxNi4wOCBMIDE1LjI5MyAxNi4wNzYgQyAxNS4wMTkwMjQgMTUuODY2MDE2IDE0LjkyNDAzOCAxNS40OTU5ODMgMTUuMDYzIDE1LjE4IEwgMTguNDMxIDcuNSBMIDE3LjU0NSA3LjUgQyAxNy4xOTQgNy41IDE2Ljg1MSA3LjM5NCAxNi41NjEgNy4xOTcgTCAxNC44NjQgNi4wNDMgQyAxNC44MjI3ODEgNi4wMTQ3ODU1IDE0Ljc3Mzk1IDUuOTk5Nzg3NCAxNC43MjQgNiBMIDEyLjc1IDYgTCAxMi43NSAyMC41IEwgMTcuMjM3IDIwLjUgQyAxNy42NTEyMTQgMjAuNSAxNy45ODcgMjAuODM1Nzg2IDE3Ljk4NyAyMS4yNSBDIDE3Ljk4NyAyMS42NjQyMTQgMTcuNjUxMjE0IDIyIDE3LjIzNyAyMiBMIDYuNzYzIDIyIEMgNi4zNDg3ODY0IDIyIDYuMDEzIDIxLjY2NDIxNCA2LjAxMyAyMS4yNSBDIDYuMDEzIDIwLjgzNTc4NiA2LjM0ODc4NjQgMjAuNSA2Ljc2MyAyMC41IEwgMTEuMjUgMjAuNSBMIDExLjI1IDYgTCA5LjI3NSA2IEMgOS4yMjUwNzggNS45OTk5NzUgOS4xNzYzMDEgNi4wMTQ5NTY0IDkuMTM1IDYuMDQzIEwgNy40MzkgNy4xOTcgQyA3LjE0OSA3LjM5NCA2LjgwNiA3LjUgNi40NTUgNy41IEwgNS41NjkgNy41IEwgOC45MzcgMTUuMTggQyA5LjA3MDkyNyAxNS40ODY1MjcgOC45ODU2NyAxNS44NDQ2OSA4LjcyOCAxNi4wNTggQyA4LjY0OCAxNi4xMjMgOC41NjggMTYuMTg0IDguNDE4IDE2LjI4MSBDIDguMTY1MDk5IDE2LjQ0NDc2NyA3LjkwMDM2OSAxNi41ODk1IDcuNjI2IDE2LjcxNCBDIDYuNzIyODE3IDE3LjEyNDMwNSA1Ljc0MjAxMiAxNy4zMzU3NDQgNC43NSAxNy4zMzQgQyAzLjc1Nzk1MiAxNy4zMzYwODggMi43NzcwNzUgMTcuMTI0NjMzIDEuODc0IDE2LjcxNCBDIDEuNTk5NjMxIDE2LjU4OTUgMS4zMzQ5MDEgMTYuNDQ0NzY3IDEuMDgyIDE2LjI4MSBDIC45NzUwNTYyIDE2LjIxMzAxIC44NzE5MDI4IDE2LjEzOTIzMyAuNzczIDE2LjA2IEMgLjUxNzU5NzggMTUuODQ0NDU2IC40MzI0NDk5IDE1LjQ4NzY0NiAuNTYzIDE1LjE4IEwgMy45MyA3LjUgTCAyLjM1MyA3LjUgQyAxLjkzODc4NjQgNy41IDEuNjAzIDcuMTY0MjEzNiAxLjYwMyA2Ljc1IEMgMS42MDMgNi4zMzU3ODY0IDEuOTM4Nzg2NCA2IDIuMzUzIDYgTCA2LjQ1NSA2IEMgNi41MDUgNiA2LjU1NCA1Ljk4NSA2LjU5NiA1Ljk1NyBMIDguMjkxIDQuODAzIEMgOC41ODEgNC42MDUgOC45MjUgNC41IDkuMjc2IDQuNSBMIDExLjI1IDQuNSBMIDExLjI1IDIuNzUgQyAxMS4yNSAyLjMzNTc4NjQgMTEuNTg1Nzg2IDIgMTIgMiBDIDEyLjQxNDIxNCAyIDEyLjc1IDIuMzM1Nzg2NCAxMi43NSAyLjc1IFogTSAyLjE5MyAxNS4xOTggQyAyLjk4MDA0MTUgMTUuNjE2OTkxIDMuODU4MzgxNiAxNS44MzUxMTYgNC43NSAxNS44MzMgQyA1LjY0MTYxODQgMTUuODM1MTE2IDYuNTE5OTU4NSAxNS42MTY5OTEgNy4zMDcgMTUuMTk4IEwgNC43NSA5LjM2OCBaIE0gMTYuNzAzIDE1LjE3NCBDIDE2Ljc4NSAxNS4yMTQgMTYuODc3IDE1LjI1NyAxNi45NzggMTUuMyBDIDE3LjUwOCAxNS41MjMgMTguMjgzIDE1Ljc1IDE5LjI1IDE1Ljc1IEMgMjAuMTMxNTY2IDE1Ljc1MjQ2NSAyMS4wMDIyOCAxNS41NTU1NTQgMjEuNzk3IDE1LjE3NCBMIDE5LjI1IDkuMzY3IFoiIGZpbGw9IndoaXRlIi8+CiAgICAgIDwvZz4KICAgIDwvZz4KICA8L2c+Cjwvc3ZnPgo=&labelColor=5c5c5c&color=1182c3&logoColor=white&label=License&style=for-the-badge)][license]&nbsp;&nbsp;

This repository contains a comprehensive set of Git pre-commit hooks that are specifically designed
to work seamlessly with the `pre-commit` framework. These hooks aim to automate critical tasks such
as code formatting, validation, linting, and other quality assurance checks, ensuring that your code
adheres to best practices and project standards before it is committed to the repository.

By integrating these hooks into your workflow, you can catch and address common issues early in the
development process, reducing the likelihood of bugs and inconsistencies making their way into your
codebase. The pre-commit framework makes it straightforward to configure and enforce these checks
across your team, promoting consistency and improving overall code quality.

The hooks included in this repository cover a wide range of use cases and technologies, supporting
multiple file types and tools. Whether you are working with Terraform, Golang, Python, Markdown, or
Bash scripts, you will find hooks tailored to your needs. From formatting and linting to validating
configurations, these hooks help streamline your development process and enforce coding standards.

## Hooks

The currently supported hooks are listed below, categorized by technology and file type, to make it
easier to identify the tools most relevant to your project requirements.

### Go

- **gofmt**: Runs `gofmt` on all Go (`*.go` files).
- **golangci-lint**: Runs `golangci-lint` on all Go (`*.go`) files.
- **goimports**: Runs `goimports` on all Go (`*.go`) files.
- **go build**: Verify that `go build` runs successfully for all your Go project.
- **go mod tidy**: Runs `go mod tidy` to ensure `go.mod` and `go.sum` are up-to-date.

### Python

- **yapf**: Runs [`yapf`][yapf] on all Python (`*.py`) files.

### Terraform / OpenTofu

- **terraform-fmt**: Runs `terraform fmt` on all Terraform (`*.tf`) files.
- **terraform-validate**: Runs `terraform validate` on all Terraform (`*.tf`) files.
- **terragrunt-hclfmt**: Runs `terragrunt hclfmt` on all Terragrunt files.
- **tofu-fmt**: Runs `tofu fmt` on all OpenTofu (`*.tf`, `*.terraform`) files.
- **tofu-validate**: Runs `tofu validate` on all OpenTofu (`*.tf`, `*.terraform`) files.

### Packer

- **packer-fmt**:
- **packer-validate**: Runs `packer validate` on all Packer (`*.pkr.*`)files.

### Markdown

- **markdown-link-check**: Runs `markdown-link-check` on markdown (`*.md`) files.

### Bash/Shell

- **shellcheck**: Run [`shellcheck`][shellcheck] to lint files that contain a bash [shebang][shebang].

## Getting Started

In each of your repos, add a file called `.pre-commit-config.yaml` with the following contents:

```yaml
repos:
  - repo: https://github.com/tenthirtyam/pre-commit
    rev: x.y.z # Example only; get the latest from: https://github.com/tenthirtyam/pre-commit/releases
    hooks:
      - id: terraform-fmt
      - id: terraform-validate
      - id: shellcheck
      - id: gofmt
      - id: golint
```

Next:

1. Install [pre-commit][pre-commit] on your system:

   ```shell
   brew install pre-commit
   ```

2. In your repository, run the following command:

   ```shell
   pre-commit install
   ```

Each time you make a commit, the hooks defined in the `hooks:` configuration will run.

## Tips

> [!TIP]
> **Formatting All Files**
>
> If you'd like to format all of your code at once (rather than one file at a time), you can run:
>
> ```shell
> pre-commit run terraform-fmt --all-files
> ```

> [!TIP]
> **Formatting All Files in a CI**
>
> To ensure all hooks are enforced, configure your CI build to fail if the code does not pass the
> checks by adding the following to your build scripts:
>
> ```shell
> pip install pre-commit
> pre-commit install
> pre-commit run --all-files
> ```
>
> If all hooks succeed, the final command will exit with an exit code 0.
>
> However, if any hooks make changes (*e.g.*, due to unformatted files), this will result in a failure
> and exit with an exit code 1.

## Sponsor

[![Sponsor](https://img.shields.io/badge/Sponsor-EA4AAA?style=for-the-badge&logo=githubsponsors&logoColor=white)][sponsor]&nbsp;&nbsp;
[![Buy me a Coffee](https://img.shields.io/badge/Buy%20Me%20a%20Coffee-FFDD00?style=for-the-badge&logo=buymeacoffee&logoColor=white)][buy-me-a-coffee]

## License

Copyright &copy; 2025 Ryan Johnson

Licensed under the MIT License.

[license]: LICENSE
[sponsor]: https://github.com/sponsors/tenthirtyam
[buy-me-a-coffee]: https://buymeacoffee.com/tenthirtyam
[pre-commit]: https://pre-commit.com
[shebang]: https://en.wikipedia.org/wiki/Shebang_(Unix)
[shellcheck]: https://www.shellcheck.net
[yapf]: https://github.com/google/yapf
