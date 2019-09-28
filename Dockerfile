FROM alpine:3.10

RUN apk --no-cache add \
  cmake \
	ghostscript \
  git \
  gnupg \
  imagemagick \
  make \
  perl \
  python \
  ruby \
  tar \
  wget \
  xz \
  && rm -rf /usr/share/cmake/Help

ENV PATH="/opt/texlive/texdir/bin/x86_64-linuxmusl:${PATH}"

COPY setup /root/setup

WORKDIR /root/setup

RUN /root/setup/UseLATEX-setup.sh
RUN /root/setup/texlive-setup.sh
RUN /root/setup/git-latexdiff-setup.sh

WORKDIR /

COPY \
  LICENSE \
  README.md \
  entrypoint.sh \
  /

ENTRYPOINT ["/entrypoint.sh"]
