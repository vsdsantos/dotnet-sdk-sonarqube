# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:7.0

RUN apt-get update
RUN apt-get install --yes openjdk-11-jre
RUN dotnet tool install --global dotnet-sonarscanner
RUN export PATH=\"$PATH:$HOME/.dotnet/tools\"
