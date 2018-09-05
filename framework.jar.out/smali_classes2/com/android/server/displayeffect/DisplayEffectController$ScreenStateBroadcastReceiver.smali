.class final Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DisplayEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayeffect/DisplayEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ScreenStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayeffect/DisplayEffectController;


# direct methods
.method private constructor <init>(Lcom/android/server/displayeffect/DisplayEffectController;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/displayeffect/DisplayEffectController;Lcom/android/server/displayeffect/DisplayEffectController$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/displayeffect/DisplayEffectController;
    .param p2, "x1"    # Lcom/android/server/displayeffect/DisplayEffectController$1;

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;-><init>(Lcom/android/server/displayeffect/DisplayEffectController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 279
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/displayeffect/DisplayEffectController;->access$300(Lcom/android/server/displayeffect/DisplayEffectController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;
    invoke-static {v1}, Lcom/android/server/displayeffect/DisplayEffectController;->access$400(Lcom/android/server/displayeffect/DisplayEffectController;)Lcom/android/server/displayeffect/SmartHardLightModeController;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->configure(Z)V

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectController;->mSmartUltraBrightModeEnabled:Z
    invoke-static {v1}, Lcom/android/server/displayeffect/DisplayEffectController;->access$300(Lcom/android/server/displayeffect/DisplayEffectController;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 286
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectController$ScreenStateBroadcastReceiver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectController;->mSmartHardLightModeController:Lcom/android/server/displayeffect/SmartHardLightModeController;
    invoke-static {v1}, Lcom/android/server/displayeffect/DisplayEffectController;->access$400(Lcom/android/server/displayeffect/DisplayEffectController;)Lcom/android/server/displayeffect/SmartHardLightModeController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/displayeffect/SmartHardLightModeController;->configure(Z)V

    goto :goto_0
.end method
