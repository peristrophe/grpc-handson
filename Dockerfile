FROM golang:1.23.1

COPY ./.devcontainer/.bashrc ../../root/.bashrc

RUN cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

RUN go install golang.org/x/tools/gopls@latest && \
    go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest

RUN set -ex && \
    apt update && \
    apt install -y --no-install-recommends \
        protobuf-compiler \
        protoc-gen-go \
        protoc-gen-go-grpc \
        && \
    apt upgrade -y && \
    apt clean && \
    rm -rf /var/lib/apt/lists/*
