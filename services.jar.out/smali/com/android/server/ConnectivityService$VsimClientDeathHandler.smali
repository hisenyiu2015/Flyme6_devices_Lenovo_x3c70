.class Lcom/android/server/ConnectivityService$VsimClientDeathHandler;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VsimClientDeathHandler"
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mPid:I

.field mUid:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 5025
    iput-object p1, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5026
    iput-object p2, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mBinder:Landroid/os/IBinder;

    .line 5027
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mPid:I

    .line 5028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mUid:I

    .line 5031
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5036
    :goto_0
    return-void

    .line 5032
    :catch_0
    move-exception v0

    .line 5033
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "sdl VsimClientDeathHandler RemoteException"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    .line 5034
    invoke-virtual {p0}, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->binderDied()V

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .prologue
    .line 5042
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sdl VsimClientDeathHandler binderDied mBinder="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    .line 5043
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v1, 0x0

    const/4 v2, 0x1

    # invokes: Lcom/android/server/ConnectivityService;->exitESimNetwork(Lcom/android/server/ConnectivityService$VsimClientDeathHandler;ZZ)I
    invoke-static {v0, p0, v1, v2}, Lcom/android/server/ConnectivityService;->access$4300(Lcom/android/server/ConnectivityService;Lcom/android/server/ConnectivityService$VsimClientDeathHandler;ZZ)I

    .line 5044
    return-void
.end method

.method public isSameUser(II)Z
    .locals 1
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .prologue
    .line 5054
    iget v0, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mPid:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mUid:I

    if-ne v0, p2, :cond_0

    .line 5055
    const/4 v0, 0x1

    .line 5057
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSameUser(Lcom/android/server/ConnectivityService$VsimClientDeathHandler;)Z
    .locals 2
    .param p1, "vsimDeath"    # Lcom/android/server/ConnectivityService$VsimClientDeathHandler;

    .prologue
    .line 5048
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 5050
    :goto_0
    return v0

    :cond_0
    iget v0, p1, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mPid:I

    iget v1, p1, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mUid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->isSameUser(II)Z

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5061
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VsimClientDeathHandler mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 2

    .prologue
    .line 5038
    const-string v0, "sdl VsimClientDeathHandler unlinkDeathRecipient"

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$1800(Ljava/lang/String;)V

    .line 5039
    iget-object v0, p0, Lcom/android/server/ConnectivityService$VsimClientDeathHandler;->mBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 5040
    return-void
.end method
