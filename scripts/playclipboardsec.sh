#!/bin/bash
CLIPBOARD=$(xsel --clipboard)
/home/renne/scripts/webviewsec.sh "${CLIPBOARD/\&/%26}"
exit 0
