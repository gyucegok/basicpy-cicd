#!/bin/bash

export CURRENT_DIR=${PWD}
for template in $(find . -name '*.tmpl'); do envsubst < ${template} > ${template%.*}; done
mv ${CURRENT_DIR}/templates/*.yaml ${CURRENT_DIR}/kubernetes-manifests
