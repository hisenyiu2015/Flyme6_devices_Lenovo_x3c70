.class Lcom/android/server/fingerprint/ServiceImpl$3;
.super Ljava/lang/Object;
.source "ServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/ServiceImpl;->runTimeoutThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/ServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/ServiceImpl;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 116
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/fingerprint/ServiceImpl;->isTimeOutThreadRunning:Z
    invoke-static {v1, v2}, Lcom/android/server/fingerprint/ServiceImpl;->access$402(Lcom/android/server/fingerprint/ServiceImpl;Z)Z

    .line 119
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v2, 0x3a98

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 120
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    invoke-static {v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$100(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "FingerprintExtensionService"

    const-string v2, "startIdentify timeout begin to cancel"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    iget-object v2, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    invoke-static {v2}, Lcom/android/server/fingerprint/ServiceImpl;->access$100(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    move-result-object v2

    # invokes: Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    invoke-static {v1, v2}, Lcom/android/server/fingerprint/ServiceImpl;->access$200(Lcom/android/server/fingerprint/ServiceImpl;Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 125
    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # invokes: Lcom/android/server/fingerprint/ServiceImpl;->GetService()Lcom/android/server/fingerprint/IAlipayFPService;
    invoke-static {v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$500(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/IAlipayFPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/server/fingerprint/IAlipayFPService;->cancel()I

    .line 126
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-static {v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$000(Lcom/android/server/fingerprint/ServiceImpl;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v1

    const/16 v2, 0x3ee

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/fingerprint/extension/IFingerprintClient;->onMessage(III)V

    .line 127
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-static {v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$000(Lcom/android/server/fingerprint/ServiceImpl;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v1

    const/16 v2, 0x3ed

    const/16 v3, 0x71

    const/4 v4, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/hardware/fingerprint/extension/IFingerprintClient;->onMessage(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$3;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # setter for: Lcom/android/server/fingerprint/ServiceImpl;->isTimeOutThreadRunning:Z
    invoke-static {v1, v5}, Lcom/android/server/fingerprint/ServiceImpl;->access$402(Lcom/android/server/fingerprint/ServiceImpl;Z)Z

    .line 138
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 130
    const-string v1, "FingerprintExtensionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout RemoteException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 135
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string v1, "FingerprintExtensionService"

    const-string v2, "startIdentify timeout has been Interrupted"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
