setprop media.dump_output 1
echo -n "file msm-pcm-routing-v2.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file msm-pcm-voice-v2.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file msm-pcm-voip-v2.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file q6voice.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file q6afe.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file voice_svc.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file q6afe.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file q6adm.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file q6asm.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file msm-dai-q6.c +p" > /sys/kernel/debug/dynamic_debug/control
echo -n "file msm8992.c +p" > sys/kernel/debug/dynamic_debug/control
echo -n "file soc-dapm.c +p" > /sys/kernel/debug/dynamic_debug/control
