# ubuntu base image
FROM ubuntu:20.04

# variable
ARG BAZEL_VER="6.3.2"

# install bazel
RUN apt update && apt install -y apt-transport-https curl gnupg && \
    curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg && \
    mv bazel-archive-keyring.gpg /usr/share/keyrings && \
    echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list && \
    apt-get update && apt-get install -y bazel-${BAZEL_VER}

# copy local files to target image
RUN mkdir /usr/src/bazel-prj
COPY . /usr/src/bazel-prj

# set project workdir
WORKDIR /usr/src/bazel-prj

# build the project using Bazel
RUN bazel build src:app

# running app in container
CMD ["bazel run src:app"]

