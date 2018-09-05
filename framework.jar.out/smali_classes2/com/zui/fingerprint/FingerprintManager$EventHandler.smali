.class Lcom/zui/fingerprint/FingerprintManager$EventHandler;
.super Landroid/os/Handler;
.source "FingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/fingerprint/FingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zui/fingerprint/FingerprintManager;


# direct methods
.method public constructor <init>(Lcom/zui/fingerprint/FingerprintManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    .line 192
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 193
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 198
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 202
    :pswitch_1
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 205
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v2, "enrolinfo"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 206
    .local v1, "enrolinfo":[I
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # invokes: Lcom/zui/fingerprint/FingerprintManager;->PackGuidedData([I)Z
    invoke-static {v2, v1}, Lcom/zui/fingerprint/FingerprintManager;->access$100(Lcom/zui/fingerprint/FingerprintManager;[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 208
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    iget-object v3, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mGuidedData:Lcom/zui/fingerprint/FingerprintManager$GuidedData;
    invoke-static {v3}, Lcom/zui/fingerprint/FingerprintManager;->access$200(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$GuidedData;

    move-result-object v3

    iget-object v4, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I
    invoke-static {v4}, Lcom/zui/fingerprint/FingerprintManager;->access$300(Lcom/zui/fingerprint/FingerprintManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;->onProgress(Lcom/zui/fingerprint/FingerprintManager$GuidedData;I)V

    goto :goto_0

    .line 212
    :cond_1
    const-string v2, "PackGuidedData failed!"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintConstant;->loge(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 219
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "enrolinfo":[I
    :pswitch_2
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "MSG_ENROL_RESULT arg1 = %d, arg2 = %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintConstant;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I
    invoke-static {v5}, Lcom/zui/fingerprint/FingerprintManager;->access$300(Lcom/zui/fingerprint/FingerprintManager;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;->onResult(III)V

    goto :goto_0

    .line 228
    :pswitch_3
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 230
    const-string v2, "MSG_FINGER_STATUS %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintConstant;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolListener:Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$000(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mEnrolUserData:I
    invoke-static {v4}, Lcom/zui/fingerprint/FingerprintManager;->access$300(Lcom/zui/fingerprint/FingerprintManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/zui/fingerprint/FingerprintManager$IEnrolListener;->onStatus(II)V

    goto/16 :goto_0

    .line 238
    :pswitch_4
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$400(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 240
    const-string v2, "MSG_IDENTIFY_STATUS %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintConstant;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 241
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$400(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I
    invoke-static {v4}, Lcom/zui/fingerprint/FingerprintManager;->access$500(Lcom/zui/fingerprint/FingerprintManager;)I

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;->onStatus(II)V

    goto/16 :goto_0

    .line 247
    :pswitch_5
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$400(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 249
    const-string v2, "MSG_IDENTIFY_RESULT %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintConstant;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mIdentifyListener:Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$400(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mIdentifyUserData:I
    invoke-static {v5}, Lcom/zui/fingerprint/FingerprintManager;->access$500(Lcom/zui/fingerprint/FingerprintManager;)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/zui/fingerprint/FingerprintManager$IdentifyListener;->onResult(III)V

    goto/16 :goto_0

    .line 256
    :pswitch_6
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mFingerListener:Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$600(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 258
    const-string v2, "MSG_FINGER_UP %d"

    new-array v3, v6, [Ljava/lang/Object;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Lcom/zui/fingerprint/FingerprintConstant;->logd(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    iget-object v2, p0, Lcom/zui/fingerprint/FingerprintManager$EventHandler;->this$0:Lcom/zui/fingerprint/FingerprintManager;

    # getter for: Lcom/zui/fingerprint/FingerprintManager;->mFingerListener:Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;
    invoke-static {v2}, Lcom/zui/fingerprint/FingerprintManager;->access$600(Lcom/zui/fingerprint/FingerprintManager;)Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Lcom/zui/fingerprint/FingerprintConstant$IFingerListener;->onFingerUp(I)V

    goto/16 :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
