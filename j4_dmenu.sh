#!/bin/bash

exec j4-dmenu-desktop --dmenu="(stest -flx $(echo $PATH | tr : ' ') | sort -u) | dmenu -i -nb '#262626' -nf '#87ffff' -sb '#87ffff' -sf '#262626'"
