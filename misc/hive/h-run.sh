#!/usr/bin/env bash

[[ ! -e ./config.yaml ]] && echo "missing config.yaml" && pwd && exit 1

svx_bridge  $(< svx_bridge.conf)| tee --append $CUSTOM_LOG_BASENAME.log
