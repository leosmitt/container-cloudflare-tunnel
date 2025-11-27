# Use the base dev container image
FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Update package lists and install required packages
RUN apt-get update && apt-get install -y \
    curl \
    wget \
    btop \
    fontconfig \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Switch to the vscode user (assumes the user already exists in this base image)
USER root
# Set Zsh as the default shell and ensure the container starts with the vscode user
WORKDIR /workspaces
USER root
