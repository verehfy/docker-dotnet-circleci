# Custom Dotnet Core Docker Build Image

This repository holds files to build a docker image that adds useful dependencies for building dotnet code components on the [CircleCI](https://circleci.com/) platform.

The produced image can be found on [Docker Hub](https://cloud.docker.com/repository/registry-1.docker.io/codekinson/dotnet-circleci).

## Dependencies

| Dependency                                       | Purpose                                                                                          |
| ------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| [https://github.com/gfoidl/trx2junit](trx2junit) | Allow automated test reports (TRX) to be transformed in to a format that CircleCI allows (JUnit) |
| [https://www.nuget.org/packages/GitVersion.Tool](GitVersion.Tool) | Allows inferring of version from Git Commits |

## Image Builds

Builds are automated through Docker Hub, this simplifies things by taking an external CI provider out of the equation and everything is handled through Docker Hub.