FROM mcr.microsoft.com/dotnet/core/sdk:3.1

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apt update -y
RUN apt upgrade -y

RUN apt install -y default-jdk

ENV GITVERSION_VERSION=5.1.3

RUN dotnet tool install -g trx2junit && \
    dotnet tool install -g GitVersion.Tool --version ${GITVERSION_VERSION} && \
    dotnet tool install --global dotnet-sonarscanner --version 4.8.0

ENV LD_LIBRARY_PATH=/root/.dotnet/tools/.store/gitversion.tool/${GITVERSION_VERSION}/gitversion.tool/${GITVERSION_VERSION}/tools/netcoreapp3.0/any/runtimes/debian.9-x64/native/
