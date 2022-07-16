#!/bin/bash
set -euo pipefail

LOCKSCREEN_DIR=~/.cache # this dir must contain a dir called 'lockscreen'
BLURTYPE="0x8" 		# http://www.imagemagick.org/Usage/blur/#blur_args

export XSECURELOCK_SAVER=saver_mpv
export XSECURELOCK_LIST_VIDEOS_COMMAND="find ${LOCKSCREEN_DIR}/lockscreen/ -type f"
export XSECURELOCK_IMAGE_DURATION_SECONDS=3600
export XSECURELOCK_SHOW_HOSTNAME=1
export XSECURELOCK_SHOW_USERNAME=1
export XSECURELOCK_FONT=JetBrainsMono
export XSECURELOCK_PASSWORD_PROMPT=

if [ -z ${LOCKSCREEN_DIR+x} ]; then exit 1; fi # bail if lockscreen dir is not set

# ${LOCKSCREEN_DIR}/lockscreen/lockscreen.png &
xsecurelock 
