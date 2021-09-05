FROM debian:buster
RUN apt-get update && apt-get install -y --no-install-recommends curl ca-certificates
ARG VERSION="0.12.6-1"
RUN echo https://github.com/wkhtmltopdf/packaging/releases/download/${VERSION}/wkhtmltox_${VERSION}.buster_${TARGETARCH}.deb > $HOME/wkhtmltox.deb \
# RUN curl -sSfL https://github.com/wkhtmltopdf/packaging/releases/download/${VERSION}/wkhtmltox_${VERSION}.buster_${TARGETARCH}.deb > $HOME/wkhtmltox.deb \
#   && apt-get update \
#   && apt-get install -y --no-install-recommends $HOME/wkhtmltox.deb \
#   && rm $HOME/wkhtmltox.deb
