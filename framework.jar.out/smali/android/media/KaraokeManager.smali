.class public Landroid/media/KaraokeManager;
.super Ljava/lang/Object;
.source "KaraokeManager.java"


# static fields
.field public static final EAR_FB_DRY_SOUND:I = 0x1

.field public static final EAR_FB_MUSIC:I = 0x4

.field public static final EAR_FB_WET_SOUND:I = 0x2

.field public static final EFFECT_BABY:I = 0x10

.field public static final EFFECT_CAT:I = 0x4

.field public static final EFFECT_DANCE:I = 0x100

.field public static final EFFECT_DOG:I = 0x8

.field public static final EFFECT_GRAMOPHONE:I = 0x2

.field public static final EFFECT_LIVE_CONCERT:I = 0x10000

.field public static final EFFECT_LIVE_GOD:I = 0x4000

.field public static final EFFECT_LIVE_KTV:I = 0x20000

.field public static final EFFECT_LIVE_MAGIC:I = 0x800

.field public static final EFFECT_LIVE_ORIGINAL:I = 0x400

.field public static final EFFECT_LIVE_PROFFESSION:I = 0x2000

.field public static final EFFECT_LIVE_SIGNER:I = 0x1000

.field public static final EFFECT_LIVE_STUDIO:I = 0x80000

.field public static final EFFECT_LIVE_THEATER:I = 0x8000

.field public static final EFFECT_LIVE_VALLEY:I = 0x40000

.field public static final EFFECT_NEW_CENT:I = 0x200

.field public static final EFFECT_ORIGINAL:I = 0x1

.field public static final EFFECT_POPULAR:I = 0x80

.field public static final EFFECT_RNB:I = 0x20

.field public static final EFFECT_ROCK:I = 0x40

.field public static final KARAOKE_DRY_SOUND_RECORD:I = 0x1

.field public static final KARAOKE_RESULT_ERROR:I = -0x1

.field public static final KARAOKE_RESULT_OK:I = 0x0

.field public static final KARAOKE_STATE_CLOSE:I = 0x0

.field public static final KARAOKE_STATE_OPEN:I = 0x1

.field public static final KARAOKE_WET_SOUND_RECORD:I = 0x14

.field private static TAG:Ljava/lang/String;

.field private static mService:Landroid/media/IKaraokeService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mICallBack:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, "KaraokeManager"

    sput-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    sput-object v0, Landroid/media/KaraokeManager;->mService:Landroid/media/IKaraokeService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/media/KaraokeManager;->mICallBack:Landroid/os/IBinder;

    .line 74
    sget-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v1, "in KaraokeManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iput-object p1, p0, Landroid/media/KaraokeManager;->mContext:Landroid/content/Context;

    .line 76
    return-void
.end method

.method private static getKaraokeService()Landroid/media/IKaraokeService;
    .locals 3

    .prologue
    .line 79
    sget-object v1, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v2, "in getKaraokeService"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-object v1, Landroid/media/KaraokeManager;->mService:Landroid/media/IKaraokeService;

    if-eqz v1, :cond_0

    .line 81
    sget-object v1, Landroid/media/KaraokeManager;->mService:Landroid/media/IKaraokeService;

    .line 87
    .local v0, "b":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 83
    .end local v0    # "b":Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "karaoke"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 84
    .restart local v0    # "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IKaraokeService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IKaraokeService;

    move-result-object v1

    sput-object v1, Landroid/media/KaraokeManager;->mService:Landroid/media/IKaraokeService;

    .line 85
    sget-object v1, Landroid/media/KaraokeManager;->mService:Landroid/media/IKaraokeService;

    if-nez v1, :cond_1

    .line 86
    sget-object v1, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v2, "cannot get KaraokeService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_1
    sget-object v1, Landroid/media/KaraokeManager;->mService:Landroid/media/IKaraokeService;

    goto :goto_0
.end method


# virtual methods
.method public closeKaraokeDevice()V
    .locals 4

    .prologue
    .line 386
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in closeKaraokeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 389
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IKaraokeService;->closeKaraokeDevice()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 394
    :goto_0
    return-void

    .line 391
    :catch_0
    move-exception v0

    .line 392
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in openKaraokeDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method getEarFeedbackVolume()I
    .locals 5

    .prologue
    .line 197
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getEarFeedbackVolume"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x0

    .line 199
    .local v2, "volume":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 201
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1}, Landroid/media/IKaraokeService;->getEarFeedbackVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 207
    :goto_0
    return v2

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in setEarFeedbackVolume"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getKaraokeEffect()I
    .locals 5

    .prologue
    .line 170
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getKaraokeEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const/16 v1, 0x400

    .line 172
    .local v1, "effect":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 174
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getKaraokeEffect()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 180
    :goto_0
    return v1

    .line 177
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getKaraokeEffect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getKaraokeMode()I
    .locals 5

    .prologue
    .line 144
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getKaraokeMode"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v1, 0x2

    .line 146
    .local v1, "mode":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 148
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getKaraokeMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 153
    :goto_0
    return v1

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getKaraokeMode"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getKaraokeState()I
    .locals 5

    .prologue
    .line 119
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getKaraokeState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 121
    .local v1, "service":Landroid/media/IKaraokeService;
    const/4 v2, 0x0

    .line 123
    .local v2, "state":I
    :try_start_0
    invoke-interface {v1}, Landroid/media/IKaraokeService;->getKaraokeState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 128
    :goto_0
    return v2

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in openKaraokeDevice"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getMusicPitchLevel()I
    .locals 5

    .prologue
    .line 359
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getMusicPitchLevel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "pitchLevel":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 363
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getMusicPitchLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 369
    :goto_0
    return v1

    .line 366
    :catch_0
    move-exception v0

    .line 367
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getMusicPitchLevel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getShareTips()Ljava/lang/String;
    .locals 2

    .prologue
    .line 96
    sget-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v1, "in getShareTips"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Landroid/media/KaraokeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10405b1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUserModeEchoDelay()I
    .locals 5

    .prologue
    .line 251
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEchoDelay"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/4 v1, 0x0

    .line 253
    .local v1, "echoDelay":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 255
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEchoDelay()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 261
    :goto_0
    return v1

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEchoDelay"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeEchoFeedback()I
    .locals 5

    .prologue
    .line 278
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEchoFeedback"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/4 v1, 0x0

    .line 280
    .local v1, "feedback":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 282
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEchoFeedback()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 288
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEchoFeedback"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeEffectLevel()I
    .locals 5

    .prologue
    .line 305
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEffectLevel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, "effectLevel":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 309
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEffectLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 315
    :goto_0
    return v1

    .line 312
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEffectLevel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeEqualLevel()I
    .locals 5

    .prologue
    .line 332
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeEqualLevel"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    const/4 v1, 0x0

    .line 334
    .local v1, "equalLevel":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 336
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeEqualLevel()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 342
    :goto_0
    return v1

    .line 339
    :catch_0
    move-exception v0

    .line 340
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeEqualLevel"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getUserModeReverberation()I
    .locals 5

    .prologue
    .line 224
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in getUserModeReverberation"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    const/4 v1, 0x0

    .line 226
    .local v1, "reverb":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 228
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2}, Landroid/media/IKaraokeService;->getUserModeReverberation()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 234
    :goto_0
    return v1

    .line 231
    :catch_0
    move-exception v0

    .line 232
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in getUserModeReverberation"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isDeviceSupportKaraoke()Z
    .locals 2

    .prologue
    .line 101
    sget-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v1, "in isDeviceSupportKaraoke"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x1

    return v0
.end method

.method public isLenovoKSeries()Z
    .locals 2

    .prologue
    .line 91
    sget-object v0, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v1, "in isLenovoKSeries"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const/4 v0, 0x1

    return v0
.end method

.method isSupportedAudioEffect(I)I
    .locals 5
    .param p1, "audioeffect_id"    # I

    .prologue
    .line 373
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "in isSupportedAudioEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/4 v1, 0x0

    .line 375
    .local v1, "isSupported":I
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v2

    .line 377
    .local v2, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v2, p1}, Landroid/media/IKaraokeService;->isSupportedAudioEffect(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :goto_0
    return v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v4, "Dead object in isSupportedAudioEffect"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public openKaraokeDevice()I
    .locals 4

    .prologue
    .line 106
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in openKaraokeDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 109
    .local v1, "service":Landroid/media/IKaraokeService;
    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v2, p0, Landroid/media/KaraokeManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/media/IKaraokeService;->openKaraokeDevice(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in openKaraokeDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setEarFeedbackVolume(I)I
    .locals 4
    .param p1, "volume"    # I

    .prologue
    .line 184
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setEarFeedbackVolume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 187
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setEarFeedbackVolume(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 190
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setEarFeedbackVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKaraokeEffect(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 157
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setKaraokeEffect"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 160
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setKaraokeEffect(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setKaraokeEffect"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setKaraokeMode(I)I
    .locals 4
    .param p1, "mode"    # I

    .prologue
    .line 132
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setKaraokeMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 135
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setKaraokeMode(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in openKaraokeDevice"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setMusicPitchLevel(I)I
    .locals 4
    .param p1, "pitchLevel"    # I

    .prologue
    .line 346
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setMusicPitchLevel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 349
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setMusicPitchLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 352
    :catch_0
    move-exception v0

    .line 353
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setMusicPitchLevel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEchoDelay(I)I
    .locals 4
    .param p1, "echoDelay"    # I

    .prologue
    .line 238
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEchoDelay"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 241
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEchoDelay(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEchoDelay"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEchoFeedback(I)I
    .locals 4
    .param p1, "feedback"    # I

    .prologue
    .line 265
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEchoFeedback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 268
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEchoFeedback(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEchoFeedback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEffectLevel(I)I
    .locals 4
    .param p1, "level"    # I

    .prologue
    .line 292
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEffectLevel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 295
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEffectLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 301
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 298
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEffectLevel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeEqualLevel(I)I
    .locals 4
    .param p1, "equalLevel"    # I

    .prologue
    .line 319
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeEqualLevel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 322
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeEqualLevel(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setUserModeEqualLevel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setUserModeReverberation(I)I
    .locals 4
    .param p1, "reverb"    # I

    .prologue
    .line 211
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "in setUserModeReverberation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {}, Landroid/media/KaraokeManager;->getKaraokeService()Landroid/media/IKaraokeService;

    move-result-object v1

    .line 214
    .local v1, "service":Landroid/media/IKaraokeService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/media/IKaraokeService;->setUserModeReverberation(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Landroid/media/KaraokeManager;->TAG:Ljava/lang/String;

    const-string v3, "Dead object in setEarFeedbackVolume"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
