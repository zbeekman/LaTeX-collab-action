#!/bin/sh

set -e

echo "==> Fetch and install git-latexdiff"
wget https://gitlab.com/git-latexdiff/git-latexdiff/-/archive/v1.3.0/git-latexdiff-v1.3.0.tar
tar xvf git-latexdiff-v1.3.0.tar
(cd git-latexdiff-v1.3.0
 make install-bin
)
rm -rf git-latexdiff-v1.3.0 \
   /root/git-latexdiff-setup.sh
