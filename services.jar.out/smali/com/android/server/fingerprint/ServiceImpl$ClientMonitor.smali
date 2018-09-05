.class Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
.super Ljava/lang/Object;
.source "ServiceImpl.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/ServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientMonitor"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/ServiceImpl;

.field token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/ServiceImpl;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "token"    # Landroid/os/IBinder;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 455
    iput-object p2, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    .line 457
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p2, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :goto_0
    return-void

    .line 458
    :catch_0
    move-exception v0

    .line 459
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "FingerprintExtensionService"

    const-string v2, "caught remote exception in linkToDeath: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .prologue
    .line 479
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    .line 480
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # invokes: Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/ServiceImpl;->access$200(Lcom/android/server/fingerprint/ServiceImpl;Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V

    .line 481
    return-void
.end method

.method public destroy()V
    .locals 5

    .prologue
    .line 464
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 467
    const-string v1, "FingerprintExtensionService"

    const-string v2, "ClientMonitor destroy()"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    .line 475
    :cond_0
    return-void

    .line 468
    :catch_0
    move-exception v0

    .line 470
    .local v0, "e":Ljava/util/NoSuchElementException;
    const-string v1, "FingerprintExtensionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    const-string v4, "here"

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 487
    const-string v0, "FingerprintExtensionService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # invokes: Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    invoke-static {v0, p0}, Lcom/android/server/fingerprint/ServiceImpl;->access$200(Lcom/android/server/fingerprint/ServiceImpl;Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 491
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 493
    return-void

    .line 491
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
