#!/bin/sh

echo "building docker images for ${GOOS}/${GOARCH} ..."

REPO="github.com/bibasoft-team/drone"

# compile the server using the cgo
go build -ldflags "-extldflags \"-static\"" -o release/linux/${GOARCH}/drone-server ${REPO}/cmd/drone-server
