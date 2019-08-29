#!/usr/bin/env bash

set -e

workspace_dir="workspace"

# TODO set to the Yocto release you want to use, e.g. thud or warrior
yocto_release="thud"

mkdir -p "${workspace_dir}/sources" && cd "${workspace_dir}"

# clone default layers: poky, OE etc.
git clone -b ${yocto_release} git://git.yoctoproject.org/poky.git sources/poky
git clone -b ${yocto_release} https://github.com/openembedded/meta-openembedded.git sources/meta-openembedded

# TODO clone additional layers here, e.g. for Raspberry Pi, use this
# git clone -b ${yocto_release} https://github.com/agherzan/meta-raspberrypi.git sources/meta-raspberrypi

echo "Done, type \"cd ${workspace_dir} && . ./sources/poky/oe-init-build-env\" to create the build environment"
