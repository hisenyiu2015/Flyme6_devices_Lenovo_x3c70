.class public Lcom/android/server/audio/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6387
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 6383
    iget-object v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6379
    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/server/audio/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 6345
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    .line 6347
    return-void
.end method

.method public postDismiss()V
    .locals 3

    .prologue
    .line 6436
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 6443
    :goto_0
    return-void

    .line 6439
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6440
    :catch_0
    move-exception v0

    .line 6441
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 6396
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 6403
    :goto_0
    return-void

    .line 6399
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6400
    :catch_0
    move-exception v0

    .line 6401
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling displaySafeVolumeWarning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 6416
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 6423
    :goto_0
    return-void

    .line 6419
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6420
    :catch_0
    move-exception v0

    .line 6421
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterMuteChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 6406
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 6413
    :goto_0
    return-void

    .line 6409
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6410
    :catch_0
    move-exception v0

    .line 6411
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling volumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 6340
    iput-object p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 6341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 6342
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 6426
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 6433
    :goto_0
    return-void

    .line 6429
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6430
    :catch_0
    move-exception v0

    .line 6431
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setLayoutDirection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 6375
    iput-boolean p1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    .line 6376
    return-void
.end method

.method public suppressAdjustment(IIZ)Z
    .locals 8
    .param p1, "resolvedStream"    # I
    .param p2, "flags"    # I
    .param p3, "isMute"    # Z

    .prologue
    const-wide/16 v6, 0x0

    .line 6350
    if-eqz p3, :cond_1

    .line 6351
    const/4 v2, 0x0

    .line 6371
    :cond_0
    :goto_0
    return v2

    .line 6353
    :cond_1
    const/4 v2, 0x0

    .line 6354
    .local v2, "suppress":Z
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6355
    .local v0, "now":J
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    if-nez v3, :cond_3

    .line 6357
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_2

    .line 6358
    iget v3, p0, Lcom/android/server/audio/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    .line 6360
    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    .line 6361
    :cond_3
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    .line 6362
    iget-wide v4, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_4

    .line 6364
    iput-wide v6, p0, Lcom/android/server/audio/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_0

    .line 6367
    :cond_4
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 6392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/audio/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/audio/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
