.class final Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;
.super Landroid/content/BroadcastReceiver;
.source "SmartHardLightModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayeffect/SmartHardLightModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LauncherChangeReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;


# direct methods
.method private constructor <init>(Lcom/android/server/displayeffect/SmartHardLightModeController;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/displayeffect/SmartHardLightModeController;Lcom/android/server/displayeffect/SmartHardLightModeController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/displayeffect/SmartHardLightModeController;
    .param p2, "x1"    # Lcom/android/server/displayeffect/SmartHardLightModeController$1;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;-><init>(Lcom/android/server/displayeffect/SmartHardLightModeController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 448
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.lenovo.launcher.intent.ACTION.BLADEEND"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 450
    const-string v2, "endtype"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 451
    .local v1, "extra":I
    if-ne v1, v4, :cond_1

    .line 452
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$200(Lcom/android/server/displayeffect/SmartHardLightModeController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterSmartHardLightModeBroadcastDone begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;
    invoke-static {v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$500(Lcom/android/server/displayeffect/SmartHardLightModeController;)Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;->updateSmartHardLightMode(Z)Z

    .line 454
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iput-boolean v4, v2, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    .line 456
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$200(Lcom/android/server/displayeffect/SmartHardLightModeController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "EnterSmartHardLightModeBroadcastDone end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    .end local v1    # "extra":I
    :cond_0
    :goto_0
    return-void

    .line 458
    .restart local v1    # "extra":I
    :cond_1
    if-nez v1, :cond_0

    .line 459
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$200(Lcom/android/server/displayeffect/SmartHardLightModeController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExitSmartHardLightModeBroadcastDone begin"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->mCallbacks:Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;
    invoke-static {v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$500(Lcom/android/server/displayeffect/SmartHardLightModeController;)Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/server/displayeffect/SmartHardLightModeController$Callbacks;->updateSmartHardLightMode(Z)Z

    .line 461
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    iput-boolean v5, v2, Lcom/android/server/displayeffect/SmartHardLightModeController;->mSmartUltraBrightModeTurnOn:Z

    .line 462
    iget-object v2, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$LauncherChangeReceive;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # getter for: Lcom/android/server/displayeffect/SmartHardLightModeController;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$200(Lcom/android/server/displayeffect/SmartHardLightModeController;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ExitSmartHardLightModeBroadcastDone end"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
