#!/bin/bash
echo "${POPCLIP_TEXT}" | awk '{gsub(/^ +| +$/,"")} {print $0}' | pbcopy
