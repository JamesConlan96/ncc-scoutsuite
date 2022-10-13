#!/bin/bash
source .env
#echo ${VERSION}
docker tag nccgroup/scoutsuite-aws:${VERSION} rossja/ncc-scoutsuite:aws-${VERSION}
docker tag nccgroup/scoutsuite-azure:${VERSION} rossja/ncc-scoutsuite:azure-${VERSION}
docker tag nccgroup/scoutsuite-gcp:${VERSION} rossja/ncc-scoutsuite:gcp-${VERSION}
docker tag nccgroup/scoutsuite-base:${VERSION} rossja/ncc-scoutsuite:base-${VERSION}

docker tag rossja/ncc-scoutsuite:aws-${VERSION} rossja/ncc-scoutsuite:aws-latest
docker tag rossja/ncc-scoutsuite:azure-${VERSION} rossja/ncc-scoutsuite:azure-latest
docker tag rossja/ncc-scoutsuite:gcp-${VERSION} rossja/ncc-scoutsuite:gcp-latest
docker tag rossja/ncc-scoutsuite:base-${VERSION} rossja/ncc-scoutsuite:base-latest

docker push rossja/ncc-scoutsuite:aws-${VERSION}
docker push rossja/ncc-scoutsuite:azure-${VERSION}
docker push rossja/ncc-scoutsuite:gcp-${VERSION}
docker push rossja/ncc-scoutsuite:base-${VERSION}

docker push rossja/ncc-scoutsuite:aws-latest
docker push rossja/ncc-scoutsuite:azure-latest
docker push rossja/ncc-scoutsuite:gcp-latest
docker push rossja/ncc-scoutsuite:base-latest
