#!/system/bin/sh

# This script will be executed in post-fs mode
# More info in the main Magisk thread

# Set read-only props
setprop ro.ril.enable.amr.wideband 1
setprop ro.sound.driver alsa
setprop ro.sound.alsa snd_pcm
