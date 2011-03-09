#!/bin/sh
#

TOP_DIR=$(dirname $(readlink -f $0))
ENV_DIR="${TOP_DIR}/env"
GOROOT="${ENV_DIR}/go"

export GOROOT
export PATH="${PATH}:${GOROOT}/bin"

function i() {
    pushd .
    mkdir ${ENV_DIR}
    cd ${ENV_DIR}

    hg clone -r release https://go.googlecode.com/hg/ go

    popd
}

function u() {
	pushd .
	cd ${GOROOT}

    hg pull
    hg update release

    cd ${GOROOT}/src
    ./all.bash

	popd
}

function b() {
	pushd .
	cd ${TOP_DIR}

	popd
}

function bt() {
	pushd .
	cd ${TOP_DIR}

	popd
}
