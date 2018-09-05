.class Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;
.super Landroid/os/Handler;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2239
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;->this$2:Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;

    .line 2240
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2241
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2244
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 2249
    :goto_0
    return-void

    .line 2246
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;->this$2:Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;

    iget-object v0, v0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;->this$2:Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;

    iget v1, v1, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;->this$2:Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;

    iget-object v2, v2, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;->this$2:Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;

    iget v3, v3, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppPcService$PermControlService;->setAppPermissionResult(ILjava/lang/String;II)V

    goto :goto_0

    .line 2244
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
