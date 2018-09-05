.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SendMediaKeyRunnable"
.end annotation


# instance fields
.field mKeyCode:I

.field mNeedWakeLock:Z

.field mSession:Lcom/android/server/media/MediaSessionRecord;

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;IZLcom/android/server/media/MediaSessionRecord;)V
    .locals 0
    .param p2, "keyCode"    # I
    .param p3, "needWakeLock"    # Z
    .param p4, "session"    # Lcom/android/server/media/MediaSessionRecord;

    .prologue
    .line 1228
    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1229
    iput p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    .line 1230
    iput-boolean p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mNeedWakeLock:Z

    .line 1231
    iput-object p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mSession:Lcom/android/server/media/MediaSessionRecord;

    .line 1232
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1236
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    .line 1237
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    # setter for: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->mHookKeyDownCount:I
    invoke-static {v3, v4}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3102(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;I)I

    .line 1238
    new-instance v0, Landroid/view/KeyEvent;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    invoke-direct {v0, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1239
    .local v0, "downEvent":Landroid/view/KeyEvent;
    new-instance v1, Landroid/view/KeyEvent;

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    invoke-direct {v1, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 1240
    .local v1, "upEvent":Landroid/view/KeyEvent;
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mNeedWakeLock:Z

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mSession:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v3, v0, v4, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1241
    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-boolean v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mNeedWakeLock:Z

    iget-object v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mSession:Lcom/android/server/media/MediaSessionRecord;

    # invokes: Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchMediaKeyEventLocked(Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V
    invoke-static {v3, v1, v4, v5}, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->access$3200(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Landroid/view/KeyEvent;ZLcom/android/server/media/MediaSessionRecord;)V

    .line 1242
    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Send media key, KeyCode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$SendMediaKeyRunnable;->mKeyCode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    return-void
.end method
