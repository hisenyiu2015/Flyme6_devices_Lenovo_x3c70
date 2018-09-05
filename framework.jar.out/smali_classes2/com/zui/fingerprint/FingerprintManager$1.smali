.class Lcom/zui/fingerprint/FingerprintManager$1;
.super Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zui/fingerprint/FingerprintManager;->getService()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mAppType:I

.field final synthetic this$0:Lcom/zui/fingerprint/FingerprintManager;


# direct methods
.method constructor <init>(Lcom/zui/fingerprint/FingerprintManager;)V
    .locals 1

    .prologue
    .line 358
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$1;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    invoke-direct {p0}, Landroid/hardware/fingerprint/extension/IFingerprintClient$Stub;-><init>()V

    .line 359
    const/4 v0, 0x0

    iput v0, p0, Lcom/zui/fingerprint/FingerprintManager$1;->mAppType:I

    return-void
.end method


# virtual methods
.method public getAppType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 386
    iget v0, p0, Lcom/zui/fingerprint/FingerprintManager$1;->mAppType:I

    return v0
.end method

.method public onEnrolInfo([I)V
    .locals 4
    .param p1, "enrolInfo"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 370
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$1;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$700(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    move-result-object v2

    const/16 v3, 0x3e9

    invoke-virtual {v2, v3}, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 371
    .local v1, "message":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 372
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "enrolinfo"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 373
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 374
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$1;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$700(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 375
    return-void
.end method

.method public onMessage(III)V
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 364
    iget-object v0, p0, Lcom/zui/fingerprint/FingerprintManager$1;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v0}, Lcom/zui/fingerprint/FingerprintManager;->access$700(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/zui/fingerprint/FingerprintManager$1;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEventhHandler:Lcom/zui/fingerprint/FingerprintManager$EventHandler;
    invoke-static {v1}, Lcom/zui/fingerprint/FingerprintManager;->access$700(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$EventHandler;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 365
    return-void
.end method

.method public setAppType(I)V
    .locals 0
    .param p1, "appType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    iput p1, p0, Lcom/zui/fingerprint/FingerprintManager$1;->mAppType:I

    .line 381
    return-void
.end method
