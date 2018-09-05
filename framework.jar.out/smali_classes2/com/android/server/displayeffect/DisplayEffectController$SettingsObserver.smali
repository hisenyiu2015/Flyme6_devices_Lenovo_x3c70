.class final Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayEffectController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/displayeffect/DisplayEffectController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/displayeffect/DisplayEffectController;


# direct methods
.method public constructor <init>(Lcom/android/server/displayeffect/DisplayEffectController;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    .line 113
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 114
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    # getter for: Lcom/android/server/displayeffect/DisplayEffectController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/displayeffect/DisplayEffectController;->access$100(Lcom/android/server/displayeffect/DisplayEffectController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectController$SettingsObserver;->this$0:Lcom/android/server/displayeffect/DisplayEffectController;

    # invokes: Lcom/android/server/displayeffect/DisplayEffectController;->updateSettings()V
    invoke-static {v0}, Lcom/android/server/displayeffect/DisplayEffectController;->access$200(Lcom/android/server/displayeffect/DisplayEffectController;)V

    .line 120
    monitor-exit v1

    .line 121
    return-void

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
