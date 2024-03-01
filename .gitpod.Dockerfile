FROM gitpod/workspace-full

USER gitpod

RUN wget https://dot.net/v1/dotnet-install.sh \
    && chmod +x dotnet-install.sh \
    && ./dotnet-install.sh --version 8.0.1 --install-dir /home/gitpod/.dotnet \
    && rm dotnet-install.sh

ENV PATH="/home/gitpod/.dotnet:${PATH}"
