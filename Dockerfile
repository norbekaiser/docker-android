FROM debian:stable-slim
ARG cli_tools_url=https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install --no-install-recommends -y wget
RUN apt-get install --no-install-recommends -y curl
RUN apt-get install --no-install-recommends -y ca-certificates
RUN apt-get install --no-install-recommends -y bash
RUN apt-get install --no-install-recommends -y unzip 
RUN apt-get install default-jdk-headless --no-install-recommends -y
RUN mkdir -p /opt/Android/cmdline-tools
RUN cd $(mktemp -d) && wget -O commandlinetools.zip ${cli_tools_url} && unzip commandlinetools.zip && mv cmdline-tools /opt/Android/cmdline-tools/latest
RUN /opt/Android/cmdline-tools/latest/bin/sdkmanager
