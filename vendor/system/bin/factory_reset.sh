#!/system/bin/sh

function start_svc()
{
    echo "start $1"
    start $1
}

function stop_svc()
{
    echo "stop $1"
    stop $1
}
stop_svc servicemanager
stop_svc surfaceflinger
stop_svc zygote
stop_svc media
stop_svc drm
stop_svc netd
stop_svc keystore
stop_svc healthd

for svc in dmesglog tcplog mainlog radiolog; do
    eval ${svc}=$(getprop init.svc.${svc})
    if eval [ "\$$svc" = "running" ]; then
        stop_svc $svc
    fi
done

sleep 2
start_svc factoryreset_tm
