#!/bin/bash
# Copyright IBM Corp. 2026
# SPDX-License-Identifier: MIT

shopt -s nullglob
PREFIX="CALL ADAPTER INIT SCRIPTS:"

for DIR in "/home/isvdi/init" "/opt/IBM/svgadapters/timsol/scripts"; do
  cd "$DIR" 2>/dev/null || {
    echo "$PREFIX could not change to '$DIR', skipping."; continue
  }
  for S in {init,override}-*.sh; do
    echo "$PREFIX $S"
    ./"$S"
  done
done
