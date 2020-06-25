#!/bin/bash
CLIPBOARD=$(xsel --clipboard)
/home/milky/scripts/webview.sh "${CLIPBOARD/\&/%26}"
exit 0
