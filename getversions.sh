#!/bin/bash -x

OUTDIR="/home/pool/s-nomp/website/static/versions"

echo $(date -u) > ${OUTDIR}/timestamp

basename $(curl -s https://api.github.com/repos/veruscoin/veruscoin/releases/latest | grep "tag_name" | awk '{print "https://github.com/veruscoin/veruscoin/archive/" substr($2, 2, length($2)-3) ".tar.gz"}') | sed "s/.tar.gz//" > ${OUTDIR}/cli

basename $(curl -s https://api.github.com/repos/veruscoin/Agama/releases/latest | grep "tag_name" | awk '{print "https://github.com/veruscoin/Agama/archive/" substr($2, 2, length($2)-3) ".tar.gz"}') | sed "s/.tar.gz//" > ${OUTDIR}/agama

basename $(curl -s https://api.github.com/repos/VerusCoin/nheqminer/releases/latest | grep "tag_name" | awk '{print "https://github.com/VerusCoin/nheqminer/archive/" substr($2, 2, length($2)-3) ".tar.gz"}') | sed "s/.tar.gz//" > ${OUTDIR}/nheqminer

basename $(curl -s https://api.github.com/repos/monkins1010/ccminer/releases/latest | grep "tag_name" | awk '{print "https://github.com/monkins1010/ccminer/archive/" substr($2, 2, length($2)-3) ".tar.gz"}') | sed "s/.tar.gz//" > ${OUTDIR}/ccminer

