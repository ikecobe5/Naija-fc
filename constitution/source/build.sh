#!/bin/bash
# Builds premium.html from the article text (constitution.html) and the design (premium-head/tail).
cd "$(dirname "$0")"
{ cat premium-head.html; sed -n '/<!-- PREAMBLE -->/,/<!-- XVIII -->/p' constitution.html | sed '$d'; cat premium-tail.html; } > premium.html
