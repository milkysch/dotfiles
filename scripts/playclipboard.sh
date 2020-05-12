#!/bin/bash
CLIPBOARD=$(xsel --clipboard)
/home/renne/scripts/webview.sh "${CLIPBOARD/\&/%26}"
exit 0
