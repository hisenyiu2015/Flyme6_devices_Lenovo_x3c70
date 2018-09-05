.class Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "GestureLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/GestureLock/GestureLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/GestureLock/GestureLock;


# direct methods
.method constructor <init>(Lcom/lenovo/GestureLock/GestureLock;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    .line 74
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 75
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 77
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    # getter for: Lcom/lenovo/GestureLock/GestureLock;->mResolver:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/lenovo/GestureLock/GestureLock;->access$000(Lcom/lenovo/GestureLock/GestureLock;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "flip_lock_screen_data"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 79
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    # invokes: Lcom/lenovo/GestureLock/GestureLock;->update()V
    invoke-static {v0}, Lcom/lenovo/GestureLock/GestureLock;->access$100(Lcom/lenovo/GestureLock/GestureLock;)V

    .line 80
    return-void
.end method

.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 83
    const-string v0, "GestureLock"

    const-string v1, "in onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcom/lenovo/GestureLock/GestureLock$SettingsObserver;->this$0:Lcom/lenovo/GestureLock/GestureLock;

    # invokes: Lcom/lenovo/GestureLock/GestureLock;->update()V
    invoke-static {v0}, Lcom/lenovo/GestureLock/GestureLock;->access$100(Lcom/lenovo/GestureLock/GestureLock;)V

    .line 85
    return-void
.end method
