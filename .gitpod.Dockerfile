FROM gitpod/workspace-full

# Install .NET Core SDK
RUN wget https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb \
    && sudo dpkg -i packages-microsoft-prod.deb \
    && sudo apt-get update \
    && sudo apt-get install -y apt-transport-https \
    && sudo apt-get update \
    && sudo apt-get install -y dotnet-sdk-8.0

# Install npm
# (npm is usually included in the gitpod/workspace-full image, but if needed, you can install or update it like this)
RUN sudo apt-get install -y npm

# Install Git
# (Git is also usually included, but here's how you can ensure it's installed)
RUN sudo apt-get install -y git
