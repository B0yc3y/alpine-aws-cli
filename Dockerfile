FROM alpine:3.13.0

RUN apk --no-cache update && \
    apk --no-cache add bash python3 py-pip py-setuptools ca-certificates curl less && \
    pip --no-cache-dir install awscli && \
    rm -rf /var/cache/apk/*