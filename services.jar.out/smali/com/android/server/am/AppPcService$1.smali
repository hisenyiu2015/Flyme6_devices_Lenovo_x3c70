.class Lcom/android/server/am/AppPcService$1;
.super Landroid/content/BroadcastReceiver;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;)V
    .locals 0

    .prologue
    .line 369
    iput-object p1, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    iget-object v1, p0, Lcom/android/server/am/AppPcService$1;->this$0:Lcom/android/server/am/AppPcService;

    const/4 v2, 0x1

    # setter for: Lcom/android/server/am/AppPcService;->mBootCompleted:Z
    invoke-static {v1, v2}, Lcom/android/server/am/AppPcService;->access$002(Lcom/android/server/am/AppPcService;Z)Z

    .line 375
    :cond_0
    return-void
.end method
