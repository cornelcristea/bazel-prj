# ubuntu base image
FROM ubuntu:20.04

# variable
ARG BAZEL_VER="6.3.2"
ARG BAZEL_PRJ=/usr/src/bazel-prj

# set-up bazel
RUN apt-get update && apt-get install -y apt-transport-https curl gnupg \
    && curl -fsSL https://bazel.build/bazel-release.pub.gpg | gpg --dearmor >bazel-archive-keyring.gpg \
    && mv bazel-archive-keyring.gpg /usr/share/keyrings \
    && echo "deb [arch=amd64 signed-by=/usr/share/keyrings/bazel-archive-keyring.gpg] https://storage.googleapis.com/bazel-apt stable jdk1.8" | tee /etc/apt/sources.list.d/bazel.list 
    
# install necessary resources
RUN apt-get update && apt-get install -y \
    bazel-${BAZEL_VER} 

# bind bazel command
RUN ln -s /usr/bin/bazel-${BAZEL_VER} /usr/bin/bazel

# copy local files to target image
RUN mkdir BAZEL_PRJ
COPY . $BAZEL_PRJ

# set project workdir
WORKDIR $BAZEL_PRJ

# build the project using Bazel
RUN bazel build src:app

# running app in container
CMD ["./bazel-bin/src/app"]

