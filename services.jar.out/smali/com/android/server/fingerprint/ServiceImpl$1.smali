.class Lcom/android/server/fingerprint/ServiceImpl$1;
.super Lcom/android/server/fingerprint/IAlipayFPCallBack$Stub;
.source "ServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/ServiceImpl;
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
    .line 45
    iput-object p1, p0, Lcom/android/server/fingerprint/ServiceImpl$1;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    invoke-direct {p0}, Lcom/android/server/fingerprint/IAlipayFPCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessage(III)V
    .locals 6
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$1;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-static {v0}, Lcom/android/server/fingerprint/ServiceImpl;->access$000(Lcom/android/server/fingerprint/ServiceImpl;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v0

    if-nez v0, :cond_1

    .line 50
    const-string v0, "FingerprintExtensionService"

    const-string v1, "mClient is null,so onMessage can not invoke"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const-string v0, "FingerprintExtensionService"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "onMessage what %d arg1 %d arg2 %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$1;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    invoke-static {v0}, Lcom/android/server/fingerprint/ServiceImpl;->access$100(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$1;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mClient:Landroid/hardware/fingerprint/extension/IFingerprintClient;
    invoke-static {v0}, Lcom/android/server/fingerprint/ServiceImpl;->access$000(Lcom/android/server/fingerprint/ServiceImpl;)Landroid/hardware/fingerprint/extension/IFingerprintClient;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/fingerprint/extension/IFingerprintClient;->onMessage(III)V

    .line 58
    :cond_2
    const/16 v0, 0x3ed

    if-ne p1, v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$1;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$1;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mAlipayAuthClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    invoke-static {v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$100(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    move-result-object v1

    # invokes: Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$200(Lcom/android/server/fingerprint/ServiceImpl;Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V

    goto :goto_0
.end method
