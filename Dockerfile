FROM microsoft/dotnet:2.2-sdk

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet tool install -g trx2junit