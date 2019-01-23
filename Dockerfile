FROM microsoft/dotnet:2.2-sdk

ENV PATH="${PATH}:/root/.dotnet/tools"

RUN dotnet tool install -g trx2junit && \
    dotnet tool install -g GitVersion.Tool --version 4.0.1-beta1-58 && \
    dotnet tool install --global dotnet-sonarscanner --version 4.5.0 && \
    chmod +x /root/.dotnet/tools/.store/dotnet-sonarscanner/4.5.0/dotnet-sonarscanner/4.5.0/tools/netcoreapp2.1/any/sonar-scanner-3.2.0.1227/bin/sonar-scanner