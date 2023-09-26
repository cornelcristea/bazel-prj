## Table of Content:
- [Description](#description)
- [Requirements](#requirements)
- [Build](#build)
- [CI/CD](#cicd)
- [Dev Container](#docker-container)

## Description:
This small project was created to learn basic notions about compilation of a C++ project with Bazel build tool.</br>
The project contains a source code that depends of two libraries. Every library will be compiled and after that the main program will be compiled in order to generate the executable file.
If the application will be opened, it will display a specific message in terminal.

## Requirements:
- [Visual Studio Code](https://code.visualstudio.com/download)
- [Bazel](https://bazel.build/install)
- [Bazel extension for VS Code](https://marketplace.visualstudio.com/items?itemName=BazelBuild.vscode-bazel)
- [Docker Desktop](https://www.docker.com/products/docker-desktop/)

For Windows users, the following directories should be added in PATH system variable:
- C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools\VC
- C:\Program Files\Bazel

<b>Remark</b>: These directories cover my case. They depends of Visual Studio C++ Toolchain version and the path where Bazel was installed on computer.

## Build
To build locally this project, execute the following command in root folder
```bash
source scripts/build.sh
```
To run the executable file, execute the following command in root folder
```bash
source scripts/run.sh
```
The appilication will run constant. If you want to stop it, please press Ctrl + C in Terminal.

## CI/CD
Three Workflows are configured to do the following jobs:
- <b>Build:</b> For each push on main branch it will be automatically triggered in order to build the software.
- <b>Deploy:</b> This is manually triggered by the user in order to deploy the executable file.
- <b>Docker:</b> This is manually triggered by the user in to build and push the docker image.

Pipelines link: https://github.com/cornelcristea/bazel-prj/actions
</br>
Docker image link: https://hub.docker.com/r/cornelcristea/bazel-app

## Docker Image
From root folder of repository, run the following command in terminal to build docker image
```bash
docker build . -t bazel-app
```
To create the container which will run the image built before, run the following command in terminal
```bash
docker run --name mycontainer bazel-app 
```
To stop the container, open a new terminal and execute the following command
```bash
docker stop mycontainer
```

## Dev Container
TO BE DONE
