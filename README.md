# Table of Content:
- [Description](#description)
- [Requirements](#requirements)
- [Build](#build)
- [CI/CD](#cicd)
- [Docker Container](#docker-container)

# Description:
This project was created to learn basic notions about compilation of a C++ project with Bazel build tool.</br>
The project contains a source code that depends of two libraries. Every library will be compiled and after that the main program will be compiled in order to generate the executable file.

# Requirements:
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Bazel](https://bazel.build/install)
- [Bazel extension for VS Code](https://marketplace.visualstudio.com/items?itemName=BazelBuild.vscode-bazel)

For Windows users, the following directories should be added in PATH system variable:
- C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC
- C:\Program Files\Bazel

<b>Remark</b>: These directories cover my case. They depends of Visual Studio C++ Toolchain version and the path where Bazel was installed on computer.

# Build
To build locally this project, execute the following command in root folder
```bash
source build.sh
```
To run the executable file, execute the following command in root folder
```bash
source run.sh
```
# CI/CD
For each push on main branch a Runner will be automatically triggered in order to build the software.
A second Runner can be manually triggered to be able to build and deploy a docker image which will contains this software.

# Docker Container
TO BE DONE