FROM microsoft/dotnet:2.2-sdk

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN set -ex && \
    echo 'deb http://deb.debian.org/debian stretch-backports main' > /etc/apt/sources.list.d/stretch-backports.list

RUN apt update -y

RUN apt install --target-release stretch-backports \
      openjdk-8-jre-headless \
      ca-certificates-java \
      --assume-yes

RUN dotnet tool install -g trx2junit && \
    dotnet tool install -g GitVersion.Tool --version 4.0.1-beta1-58 && \
    dotnet tool install --global dotnet-sonarscanner --version 4.5.0
