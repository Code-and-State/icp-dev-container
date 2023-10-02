# Start from the pre-built image
FROM devcontainers/base:ubuntu

ENV NVM_DIR=/root/.nvm
ENV NVM_VERSION=v0.39.2
ENV NODE_VERSION=18.17.0

# Install Node.js using nvm
RUN curl --fail -sSf https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh | bash \
    && . "${NVM_DIR}/nvm.sh" \
    && nvm install ${NODE_VERSION} \
    && nvm use v${NODE_VERSION} \
    && nvm alias default v${NODE_VERSION} \
    # Cleanup nvm install artifacts to reduce image size
    && rm -rf "${NVM_DIR}/.cache"

# Install dfx
RUN sh -ci "$(curl -fsSL https://smartcontracts.org/install.sh)"
RUN mkdir -p ~/.config/dfx