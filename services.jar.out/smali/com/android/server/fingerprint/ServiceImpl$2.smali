.class Lcom/android/server/fingerprint/ServiceImpl$2;
.super Ljava/lang/Object;
.source "ServiceImpl.java"

# interfaces
.implements Lcom/android/server/fingerprint/FingerprintMediator$OnFPUsedListener;


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
    .line 65
    iput-object p1, p0, Lcom/android/server/fingerprint/ServiceImpl$2;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFPRelease()V
    .locals 2

    .prologue
    .line 79
    const-string v0, "FingerprintExtensionService"

    const-string v1, "onFPRelease() serviceImple"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public onFPUsing()V
    .locals 2

    .prologue
    .line 68
    const-string v0, "FingerprintExtensionService"

    const-string v1, "onFPUsing() serviceImple"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$2;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    invoke-static {v0}, Lcom/android/server/fingerprint/ServiceImpl;->access$300(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$2;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    iget-object v1, p0, Lcom/android/server/fingerprint/ServiceImpl$2;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    # getter for: Lcom/android/server/fingerprint/ServiceImpl;->mCameraClient:Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;
    invoke-static {v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$300(Lcom/android/server/fingerprint/ServiceImpl;)Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;

    move-result-object v1

    # invokes: Lcom/android/server/fingerprint/ServiceImpl;->removeClient(Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V
    invoke-static {v0, v1}, Lcom/android/server/fingerprint/ServiceImpl;->access$200(Lcom/android/server/fingerprint/ServiceImpl;Lcom/android/server/fingerprint/ServiceImpl$ClientMonitor;)V

    .line 72
    iget-object v0, p0, Lcom/android/server/fingerprint/ServiceImpl$2;->this$0:Lcom/android/server/fingerprint/ServiceImpl;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/fingerprint/ServiceImpl;->sendCommand(I)I

    .line 73
    const-string v0, "FingerprintExtensionService"

    const-string v1, "release fpcamera"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    return-void
.end method
