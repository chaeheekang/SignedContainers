FROM gcr.io/projectsigstore/cosign:v1.9.0 as cosign-bin

# Source: https://github.com/distroless/static
FROM ghcr.io/distroless/static:latest
COPY --from=cosign-bin /ko-app/cosign /usr/local/bin/cosign
ENTRYPOINT [ "cosign" ]