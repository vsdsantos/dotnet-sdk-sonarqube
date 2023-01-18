# syntax=docker/dockerfile:1
FROM mcr.microsoft.com/dotnet/sdk:latest

RUN apt-get update; apt-get install --yes openjdk-11-jre git
RUN dotnet tool install --global dotnet-sonarscanner
ENV PATH "$PATH:$HOME/.dotnet/tools"
