.class public final Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;
.super Landroid/os/Handler;
.source "SmartHardLightModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayeffect/SmartHardLightModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SmartHardLightModeControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/displayeffect/SmartHardLightModeController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    .line 418
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 419
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 423
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 428
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/displayeffect/SmartHardLightModeController$SmartHardLightModeControllerHandler;->this$0:Lcom/android/server/displayeffect/SmartHardLightModeController;

    # invokes: Lcom/android/server/displayeffect/SmartHardLightModeController;->debounceLightSensor()V
    invoke-static {v0}, Lcom/android/server/displayeffect/SmartHardLightModeController;->access$400(Lcom/android/server/displayeffect/SmartHardLightModeController;)V

    goto :goto_0

    .line 423
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
