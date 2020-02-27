FROM mcr.microsoft.com/dotnet/core/sdk:3.1

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN apt update -y
RUN apt upgrade -y

RUN apt install -y default-jdk

RUN dotnet tool install -g trx2junit && \
    dotnet tool install -g GitVersion.Tool --version 5.1.3 && \
    dotnet tool install --global dotnet-sonarscanner --version 4.8.0
