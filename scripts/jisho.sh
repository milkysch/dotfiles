#!/bin/bash
CLIPBOARD=$(xsel --primary)
chromium "https://jisho.org/search/${CLIPBOARD/\&/%26}"
exit 0
