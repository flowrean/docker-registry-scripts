FROM alpine:3.12.3
RUN zip_path=$(mktemp) && \
    wget https://github.com/mayflower/docker-ls/releases/download/v0.5.0/docker-ls-linux-amd64.zip -O $zip_path && \
    unzip -j $zip_path docker-ls -d /usr/local/bin/ && \
    rm $zip_path
COPY scripts/* /usr/local/bin/
