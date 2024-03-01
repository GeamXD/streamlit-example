FROM ubuntu:latest

# Install necessary utilities
RUN apt-get update && \
    apt-get install -y wget apt-transport-https software-properties-common

# Download the Microsoft repository GPG keys
RUN wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb

# Register the Microsoft repository GPG keys
RUN dpkg -i packages-microsoft-prod.deb

# Update the package list and install the .NET SDK
RUN apt-get update; \
    apt-get install -y dotnet-sdk-8.0

# Clean up
RUN rm packages-microsoft-prod.deb && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
