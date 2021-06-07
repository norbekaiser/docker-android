FROM debian:stable
ARG cli_tools_url=https://dl.google.com/android/repository/commandlinetools-linux-7302050_latest.zip
ARG gradle_url=https://services.gradle.org/distributions/gradle-7.0.2-bin.zip
RUN apt-get update
RUN apt-get dist-upgrade -y
RUN apt-get install --no-install-recommends -y wget
RUN apt-get install --no-install-recommends -y curl
RUN apt-get install --no-install-recommends -y ca-certificates
RUN apt-get install --no-install-recommends -y bash
RUN apt-get install --no-install-recommends -y unzip 
RUN apt-get install --no-install-recommends -y default-jdk-headless
#Installing Gradle
RUN cd $(mktemp -d ) && wget -O gradle.zip ${gradle_url} && unzip gradle.zip && find . -maxdepth 1 -iname "gradle-*" -exec mv {} /opt/gradle \;
ENV GRADLE_HOME=/opt/gradle
ENV PATH="${GRADLE_HOME}/bin:${PATH}"
#Installing Android CLI Tools
RUN mkdir -p /opt/Android/cmdline-tools
RUN cd $(mktemp -d) && wget -O commandlinetools.zip ${cli_tools_url} && unzip commandlinetools.zip && mv cmdline-tools /opt/Android/cmdline-tools/latest
RUN /opt/Android/cmdline-tools/latest/bin/sdkmanager
