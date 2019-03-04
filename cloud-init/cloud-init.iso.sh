#!/bin/bash
DIRECTORY=$(dirname ${0})
[ -r ${DIRECTORY}/user-data ] || exit 1
[ -r ${DIRECTORY}/meta-data ] || exit 1 
mkisofs -output ${DIRECTORY}/cloud-init.iso -volid cidata -joliet -rock ${DIRECTORY}/{user-data,meta-data}