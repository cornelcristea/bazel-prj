# bazel-prj

# Table of Content:
1. [Requirements](#requirements)
2. [Build](#build)
3. [CI/CD](#cicd)
4. [Dev Container](#devcontainer)

# Requirements:
1. Visual Studio Code [https://code.visualstudio.com/download]
2. Bazel [https://bazel.build/install]
3. Bazel extension for VS Code [https://marketplace.visualstudio.com/items?itemName=BazelBuild.vscode-bazel]

The following directories should be added in PATH variable (example for my case):
```bash
C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC
```
```bash
C:\Program Files\Bazel
```

# Build
Execute the following command in root folder
```bash
bazel build src:main --verbose_failures
```
To run the executable file, run the following command in root folder
```bash
bazel run src:main
```
# CI/CD

# Dev Container