.class public Landroid/media/KaraokeService;
.super Landroid/media/IKaraokeService$Stub;
.source "KaraokeService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/KaraokeService$1;,
        Landroid/media/KaraokeService$KaraokeAPI;,
        Landroid/media/KaraokeService$OpenDeviceDeathHandler;,
        Landroid/media/KaraokeService$KaraokeHandler;,
        Landroid/media/KaraokeService$KaraokeSystemThread;
    }
.end annotation


# static fields
.field private static final AUDIO_EFFECTS_LOAD_TIMEOUT_MS:I = 0x1e

.field private static final EFFECT_NONE:I = 0x0

.field private static final MSG_CLOSE_KARAOKE_DEVICE:I = 0xcd

.field private static final MSG_OPEN_KARAOKE_DEVICE:I = 0xc8

.field private static final MSG_SET_EAR_FEEDBACK_VOLUME:I = 0xcb

.field private static final MSG_SET_KARAOKE_EFFECT:I = 0xca

.field private static final MSG_SET_KARAOKE_MODE:I = 0xc9

.field private static final MSG_SET_MUSIC_PITCH_LEVEL:I = 0xd3

.field private static final MSG_SET_USER_MODE_ECHO_DELAY:I = 0xcf

.field private static final MSG_SET_USER_MODE_ECHO_FEEDBACK:I = 0xd0

.field private static final MSG_SET_USER_MODE_EFFECT_LEVEL:I = 0xd1

.field private static final MSG_SET_USER_MODE_EQUAL_LEVEL:I = 0xd2

.field private static final MSG_SET_USER_MODE_REVERB:I = 0xce

.field private static final MSG_SUPPORT_AUDIO_EFFECTS:I = 0xcc

.field private static final MSG_SYSTEM_READY:I = 0x4

.field private static final SENDMSG_NOOP:I = 0x1

.field private static final SENDMSG_QUEUE:I = 0x2

.field private static final SENDMSG_REPLACE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "KaraokeService"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

.field private mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

.field private mKaraokeEarVolume:I

.field private mKaraokeEffect:I

.field private mKaraokeManager:Landroid/media/KaraokeManager;

.field private mKaraokeMode:I

.field private mKaraokeMusicPitchLevel:I

.field private mKaraokeState:I

.field private mKaraokeSupportEffect:I

.field private mKaraokeSystemThread:Landroid/media/KaraokeService$KaraokeSystemThread;

.field private mKaraokeUserModeEchoDelay:I

.field private mKaraokeUserModeEchoFeedback:I

.field private mKaraokeUserModeEffectLevel:I

.field private mKaraokeUserModeEqualLevel:I

.field private mKaraokeUserModeReverb:I

.field private final mOpenDeviceDeathHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/KaraokeService$OpenDeviceDeathHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-direct {p0}, Landroid/media/IKaraokeService$Stub;-><init>()V

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    .line 81
    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    .line 82
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/KaraokeService;->mKaraokeMode:I

    .line 83
    const/16 v0, 0x400

    iput v0, p0, Landroid/media/KaraokeService;->mKaraokeEffect:I

    .line 84
    const/16 v0, 0x1e

    iput v0, p0, Landroid/media/KaraokeService;->mKaraokeEarVolume:I

    .line 85
    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeReverb:I

    .line 86
    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoDelay:I

    .line 87
    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoFeedback:I

    .line 88
    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEffectLevel:I

    .line 89
    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEqualLevel:I

    .line 90
    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeMusicPitchLevel:I

    .line 91
    const v0, 0x38400

    iput v0, p0, Landroid/media/KaraokeService;->mKaraokeSupportEffect:I

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    .line 102
    iput-object p1, p0, Landroid/media/KaraokeService;->mContext:Landroid/content/Context;

    .line 103
    const-string/jumbo v0, "karaoke"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/KaraokeManager;

    iput-object v0, p0, Landroid/media/KaraokeService;->mKaraokeManager:Landroid/media/KaraokeManager;

    .line 105
    invoke-direct {p0}, Landroid/media/KaraokeService;->createKaraokeSystemThread()V

    .line 107
    new-instance v0, Landroid/media/KaraokeService$KaraokeAPI;

    invoke-direct {v0, p0}, Landroid/media/KaraokeService$KaraokeAPI;-><init>(Landroid/media/KaraokeService;)V

    iput-object v0, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    .line 109
    return-void
.end method

.method static synthetic access$002(Landroid/media/KaraokeService;Landroid/media/KaraokeService$KaraokeHandler;)Landroid/media/KaraokeService$KaraokeHandler;
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # Landroid/media/KaraokeService$KaraokeHandler;

    .prologue
    .line 42
    iput-object p1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    return-object p1
.end method

.method static synthetic access$1002(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoFeedback:I

    return p1
.end method

.method static synthetic access$1102(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEffectLevel:I

    return p1
.end method

.method static synthetic access$1202(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEqualLevel:I

    return p1
.end method

.method static synthetic access$1302(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeMusicPitchLevel:I

    return p1
.end method

.method static synthetic access$200(Landroid/media/KaraokeService;)Landroid/media/KaraokeService$KaraokeAPI;
    .locals 1
    .param p0, "x0"    # Landroid/media/KaraokeService;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    return-object v0
.end method

.method static synthetic access$302(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    return p1
.end method

.method static synthetic access$400(Landroid/media/KaraokeService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Landroid/media/KaraokeService;

    .prologue
    .line 42
    iget-object v0, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$502(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeMode:I

    return p1
.end method

.method static synthetic access$602(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeEffect:I

    return p1
.end method

.method static synthetic access$702(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeEarVolume:I

    return p1
.end method

.method static synthetic access$802(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeReverb:I

    return p1
.end method

.method static synthetic access$902(Landroid/media/KaraokeService;I)I
    .locals 0
    .param p0, "x0"    # Landroid/media/KaraokeService;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoDelay:I

    return p1
.end method

.method private createKaraokeSystemThread()V
    .locals 1

    .prologue
    .line 129
    new-instance v0, Landroid/media/KaraokeService$KaraokeSystemThread;

    invoke-direct {v0, p0}, Landroid/media/KaraokeService$KaraokeSystemThread;-><init>(Landroid/media/KaraokeService;)V

    iput-object v0, p0, Landroid/media/KaraokeService;->mKaraokeSystemThread:Landroid/media/KaraokeService$KaraokeSystemThread;

    .line 130
    iget-object v0, p0, Landroid/media/KaraokeService;->mKaraokeSystemThread:Landroid/media/KaraokeService$KaraokeSystemThread;

    invoke-virtual {v0}, Landroid/media/KaraokeService$KaraokeSystemThread;->start()V

    .line 131
    invoke-direct {p0}, Landroid/media/KaraokeService;->waitForKaraokeHandlerCreation()V

    .line 132
    return-void
.end method

.method private static sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V
    .locals 4
    .param p0, "handler"    # Landroid/os/Handler;
    .param p1, "msg"    # I
    .param p2, "existingMsgPolicy"    # I
    .param p3, "arg1"    # I
    .param p4, "arg2"    # I
    .param p5, "obj"    # Ljava/lang/Object;
    .param p6, "delay"    # I

    .prologue
    .line 113
    if-nez p2, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 120
    :cond_0
    invoke-virtual {p0, p1, p3, p4, p5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    int-to-long v2, p6

    invoke-virtual {p0, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "KaraokeService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMsg: Msg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " existed!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private waitForKaraokeHandlerCreation()V
    .locals 3

    .prologue
    .line 136
    monitor-enter p0

    .line 137
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 140
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "KaraokeService"

    const-string v2, "Interrupted while waiting on volume handler."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 146
    return-void
.end method


# virtual methods
.method public closeKaraokeDevice()V
    .locals 4

    .prologue
    .line 284
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 285
    .local v0, "pid":I
    const-string v1, "KaraokeService"

    const-string v2, "close kalaoke device message received: "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    invoke-virtual {v1}, Landroid/media/KaraokeService$KaraokeAPI;->disableKaraoke()V

    .line 287
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    .line 288
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    monitor-enter v2

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/KaraokeService$OpenDeviceDeathHandler;

    invoke-virtual {v1}, Landroid/media/KaraokeService$OpenDeviceDeathHandler;->release()V

    .line 291
    iget-object v1, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    :cond_0
    monitor-exit v2

    .line 294
    return-void

    .line 293
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 628
    iget-object v3, p0, Landroid/media/KaraokeService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    const-string v5, "KaraokeService"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    const-string/jumbo v3, "karaoke death handler:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    iget-object v3, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 631
    .local v2, "set":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 632
    .local v1, "i":Ljava/util/Iterator;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "num: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 633
    const-string/jumbo v3, "list: "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 635
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 636
    .local v0, "device":Ljava/util/Map$Entry;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " handler"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 638
    .end local v0    # "device":Ljava/util/Map$Entry;
    :cond_0
    return-void
.end method

.method public getEarFeedbackVolume()I
    .locals 1

    .prologue
    .line 334
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeEarVolume:I

    return v0
.end method

.method public getKaraokeEffect()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeEffect:I

    return v0
.end method

.method public getKaraokeMode()I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeMode:I

    return v0
.end method

.method public getKaraokeState()I
    .locals 1

    .prologue
    .line 297
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeState:I

    return v0
.end method

.method public getMusicPitchLevel()I
    .locals 1

    .prologue
    .line 407
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeMusicPitchLevel:I

    return v0
.end method

.method public getUserModeEchoDelay()I
    .locals 1

    .prologue
    .line 358
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoDelay:I

    return v0
.end method

.method public getUserModeEchoFeedback()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEchoFeedback:I

    return v0
.end method

.method public getUserModeEffectLevel()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEffectLevel:I

    return v0
.end method

.method public getUserModeEqualLevel()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeEqualLevel:I

    return v0
.end method

.method public getUserModeReverberation()I
    .locals 1

    .prologue
    .line 346
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeUserModeReverb:I

    return v0
.end method

.method public isSupportedAudioEffect(I)I
    .locals 1
    .param p1, "audioeffect_id"    # I

    .prologue
    .line 412
    iget v0, p0, Landroid/media/KaraokeService;->mKaraokeSupportEffect:I

    and-int/2addr v0, p1

    return v0
.end method

.method public openKaraokeDevice(Landroid/os/IBinder;)I
    .locals 7
    .param p1, "cb"    # Landroid/os/IBinder;

    .prologue
    const/4 v6, 0x0

    .line 257
    iget-object v3, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    monitor-enter v3

    .line 258
    :try_start_0
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 260
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    iget-object v2, p0, Landroid/media/KaraokeService;->mKaraokeAPI:Landroid/media/KaraokeService$KaraokeAPI;

    invoke-virtual {v2}, Landroid/media/KaraokeService$KaraokeAPI;->enableKaraoke()V

    .line 262
    :cond_0
    new-instance v1, Landroid/media/KaraokeService$OpenDeviceDeathHandler;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {v1, p0, p1, v2}, Landroid/media/KaraokeService$OpenDeviceDeathHandler;-><init>(Landroid/media/KaraokeService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    .local v1, "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p1, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 265
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 273
    .end local v1    # "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v3

    .line 274
    return v6

    .line 266
    .restart local v1    # "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 269
    iget-object v2, p0, Landroid/media/KaraokeService;->mOpenDeviceDeathHandlers:Ljava/util/HashMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    :cond_2
    const-string v2, "KaraokeService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "openKaraokeDevice() could not link to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " binder death"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 273
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "odhdlr":Landroid/media/KaraokeService$OpenDeviceDeathHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public setEarFeedbackVolume(I)I
    .locals 2
    .param p1, "volume"    # I

    .prologue
    .line 326
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 327
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcb

    iput v1, v0, Landroid/os/Message;->what:I

    .line 328
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 329
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 330
    const/4 v1, 0x0

    return v1
.end method

.method public setKaraokeEffect(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 313
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 314
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xca

    iput v1, v0, Landroid/os/Message;->what:I

    .line 315
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 316
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 317
    const/4 v1, 0x0

    return v1
.end method

.method public setKaraokeMode(I)I
    .locals 2
    .param p1, "mode"    # I

    .prologue
    .line 301
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 302
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xc9

    iput v1, v0, Landroid/os/Message;->what:I

    .line 303
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 304
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 305
    const/4 v1, 0x0

    return v1
.end method

.method public setMusicPitchLevel(I)I
    .locals 2
    .param p1, "pitchLevel"    # I

    .prologue
    .line 399
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 400
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 401
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 402
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 403
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEchoDelay(I)I
    .locals 2
    .param p1, "echoDelay"    # I

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xcf

    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 353
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEchoFeedback(I)I
    .locals 2
    .param p1, "feedback"    # I

    .prologue
    .line 362
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 363
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 364
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 366
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEffectLevel(I)I
    .locals 2
    .param p1, "level"    # I

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 375
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 376
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 377
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeEqualLevel(I)I
    .locals 2
    .param p1, "equalLevel"    # I

    .prologue
    .line 386
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 387
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xd2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 388
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 389
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    const/4 v1, 0x0

    return v1
.end method

.method public setUserModeReverberation(I)I
    .locals 2
    .param p1, "reverb"    # I

    .prologue
    .line 338
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 339
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0xce

    iput v1, v0, Landroid/os/Message;->what:I

    .line 340
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 341
    iget-object v1, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    invoke-virtual {v1, v0}, Landroid/media/KaraokeService$KaraokeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 342
    const/4 v1, 0x0

    return v1
.end method

.method public systemReady()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 124
    iget-object v0, p0, Landroid/media/KaraokeService;->mKaraokHandler:Landroid/media/KaraokeService$KaraokeHandler;

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v5, 0x0

    move v4, v3

    move v6, v3

    invoke-static/range {v0 .. v6}, Landroid/media/KaraokeService;->sendMsg(Landroid/os/Handler;IIIILjava/lang/Object;I)V

    .line 126
    return-void
.end method
