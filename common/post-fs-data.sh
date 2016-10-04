#!/system/bin/sh

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
/magisk/.core/bin/sepolicy-inject --live -s mediaserver -t mediaserver_tmpfs -c file -p read,write,execute

# Set non-read-only props
setprop audio.deep_buffer.media false
setprop lpa.decode false
setprop tunnel.decode false
setprop tunnel.audiovideo.decode false
setprop lpa.releaselock false
setprop lpa.use-stagefright false
setprop persist.sys.media.use-awesome 1
setprop af.resampler.quality 255
setprop persist.af.resampler.quality 255
setprop persist.dev.pm.dyn_samplingrate 1
setprop AUDIODRIVER alsa
setprop clock.allow_streaming_errors false
setprop default.pcm.rate_converter samplerate_zero_order
