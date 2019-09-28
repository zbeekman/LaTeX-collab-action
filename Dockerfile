FROM alpine:3.10

RUN apk --no-cache add \
  cmake \
	ghostscript \
  git \
  gnupg \
  perl \
  python \
  ruby \
  tar \
  wget \
  xz

ENV PATH="/opt/texlive/texdir/bin/x86_64-linuxmusl:${PATH}"

COPY texlive-setup /root/texlive-setup

WORKDIR /root/texlive-setup

RUN /root/texlive-setup/setup.sh

WORKDIR /

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /

ENTRYPOINT ["/entrypoint.sh"]
