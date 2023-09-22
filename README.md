# Table of Content:
1. [Description](#description)
1. [Requirements](#requirements)
2. [Build](#build)
3. [CI/CD](#cicd)
4. [Dev Container](#devcontainer)

# Description:
This project was created to learn basic notions about compilation of a C++ project with Bazel build tool.</br>
The project contains a source code that depends of two libraries. Every library will be compiled and after that the main program will be compiled in order to generate the executable file.

# Requirements:
1. [Visual Studio Code](https://code.visualstudio.com/download)
2. [Bazel](https://bazel.build/install)
3. [Bazel extension for VS Code](https://marketplace.visualstudio.com/items?itemName=BazelBuild.vscode-bazel)

For Windows users, the following directories should be added in PATH system variable:
- C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC
- C:\Program Files\Bazel

<b>Remark</b>: These directories are for my case. They depends of VS C++ Toolchain version and the path where Bazel was installed on computer.

# Build
To build locally this project, execute the following command in root folder
```bash
bazel build src:main --verbose_failures
```
To run the executable file, execute the following command in root folder
```bash
bazel run src:main
```
# CI/CD
TO BE DONE

# Dev Container
TO BE DONE