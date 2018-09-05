.class public Landroid/content/pm/PackageParserPolicy;
.super Ljava/lang/Object;
.source "PackageParserPolicy.java"


# static fields
.field private static final DISABLE_NORMAL_PUSHSERVICE:Z = false

.field private static final LENOVO_FEEDBACK:Z

.field private static final TAG:Ljava/lang/String; = "PackageParserPolicy"

.field private static sPublicServiceBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 18
    const-string/jumbo v1, "persist.backgrounddata.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "persist.lenovo.feedback"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    sput-boolean v0, Landroid/content/pm/PackageParserPolicy;->LENOVO_FEEDBACK:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    .line 28
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.igexin.sdk.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.igexin.sdk.PushServiceUser"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.android.pushservice.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.taobao.agoo.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.ucweb.message.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "cn.jpush.android.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.lib.push.PPPushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.leadeon.cmcc.cservice.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.sina.push.service.SinaPushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.youku.pushsdk.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.qzonex.component.wns.push.QzonePushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.qihoo360.mobilesafe.support.qpush.QihooPushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "cn.kuwo.mod.push.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.ccb.android.yxpush.aidl.YXRemotePushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.yy.pushsvc.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.dianping.base.push.pushservice.dp.DPPushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.dianping.base.push.pushservice.dp.FakeService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.iqiyi.sdk.android.pushservice.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.video.push.VSPushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.sohu.inputmethod.sogou.push.PushReceiveService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.shoujiduoduo.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.netease.pushservice.core.PushServiceNews_V1"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.xiaomi.push.service.XMPushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.huawei.android.pushagent.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.tencent.android.tpush.service.XGPushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.tencent.reading.push.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.tencent.news.push.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "anetwork.channel.aidl.NetworkService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "cn.jpush.android.service.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "cn.play.dserv.DService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.alibaba.poplayer.utils.PopLayerConsole"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.alimama.mobile.sdk.shell.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.alimusic.dipper.DipperService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.alipay.mobile.command.trigger.NotifyTrigger"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.amap.api.service.AMapService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.android.coll.s.CollService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.android.pushservice.CommandService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.dq.advertise.download.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.location.f"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.music.push.service.PushService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.sapi2.share.ShareService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.shucheng91.download.DownloadManagerService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.dianxinos.launcher2.dxwidget.DXWidgetProvider"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.duanqu.qupai.recorder.TranscodeService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.duomi.dms.core.DMBubbleService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.duomi.dms.core.DMCoreService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.idswz.plugin.service.PluginService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.igexin.sdk.coordinator.SdkMsgService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.igexin.sdk.SdkMainService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.laiwang.protocol.android.LWPService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.mob.tools.MobUIShell"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.pokercity.byol.PokerService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.pp.plugin.appstore.receiver.PPActiveReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.pp.plugin.appstore.receiver.PPNetworkReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.pp.plugin.appstore.service.PPLaunchService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.pp.plugin.appstore.worker.PPNotifDelService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.qihoo.appstore.updatelib.CheckUpdateService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.qq.e.comm.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.sina.weibo.sdk.net.DownloadService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.skynet.android.report.DataReportService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.taobao.accs.ChannelService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.taobao.agoo.TaobaoMessageIntentReceiverService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.taobao.munion.base.download.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.tencent.wns.service.WnsMain"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.common.net.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.ElectionReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.MessageReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.RegistrationReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.SystemReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.UmengMessageBootReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.UmengMessageCallbackHandlerService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.UmengMessageIntentReceiverService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.message.UmengService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.umeng.update.net.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.vungle.publisher.VungleService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.wns.daemon.foreservice.FakeForeGroundService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.xiaomi.mipush.sdk.PushMessageHandler"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.xiaomi.push.service.receivers.MIPushMessageHandler"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.xiaomi.push.service.receivers.NetworkStatusReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.xiaomi.push.service.receivers.PingReceiver"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.youku.gamecenter.download.DownloadingService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.youku.libmanager.SoUpgradeService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string/jumbo v1, "mm.purchasesdk.iapservice.PurchaseService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string/jumbo v1, "mtopsdk.xstate.XStateService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string/jumbo v1, "oicq.wlogin_sdk.sharemem.sharemem_service"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string/jumbo v1, "org.android.agoo.service.ElectionService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string/jumbo v1, "org.qiyi.android.commonphonepad.pushmessage.PushMessageService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string/jumbo v1, "org.qiyi.android.plugin.ipc.PluginBootHelpService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.dianxinos.optimizer.module.paysecurity.PaySecurityService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.waimai.link.HostService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.kspush.KsPushServiceWaker"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.kspush.KsWebSocketService"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    const-string v1, "com.baidu.video.sdk.net.trafficmonitor.TrafficMonitorService "

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static matchPublicServiceBlackList(Ljava/lang/String;)Z
    .locals 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 129
    sget-object v0, Landroid/content/pm/PackageParserPolicy;->sPublicServiceBlackList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "PackageParserPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "match PublicServiceBlackList name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x1

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
