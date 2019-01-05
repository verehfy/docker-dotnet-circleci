FROM microsoft/dotnet:2.2-sdk

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet tool install -g trx2junit
RUN dotnet tool install -g GitVersion.Tool --version 4.0.1-beta1-58