#!/system/bin/sh

# This script will be executed in post-fs-data mode
# More info in the main Magisk thread
/magisk/.core/bin/sepolicy-inject --live -s mediaserver -t mediaserver_tmpfs -c file -p read,write,execute
audio.deep_buffer.media=false
lpa.decode=false
tunnel.decode=false
tunnel.audiovideo.decode=false
lpa.releaselock=false
lpa.use-stagefright=false
persist.sys.media.use-awesome=1
af.resampler.quality=255
persist.af.resampler.quality=255
persist.dev.pm.dyn_samplingrate=1
AUDIODRIVER=alsa
clock.allow_streaming_errors=false
default.pcm.rate_converter=samplerate_zero_order
