.class final Lcom/android/server/power/PowerManagerService$PowerManagerOptHandler;
.super Landroid/os/Handler;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerManagerOptHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2521
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PowerManagerOptHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    .line 2522
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2523
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0xa

    .line 2527
    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 2547
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2531
    :pswitch_1
    const-string v5, "init.svc.mainlog"

    const-string v6, "stopped"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "running"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2532
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wake Locks: size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/power/PowerManagerService$PowerManagerOptHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2534
    .local v2, "str":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$PowerManagerOptHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mWakeLocks:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$1900(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2535
    .local v3, "wakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 2536
    .local v4, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2537
    goto :goto_1

    .line 2538
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "wakeLocks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/power/PowerManagerService$WakeLock;>;"
    .end local v4    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :catch_0
    move-exception v0

    .line 2539
    .local v0, "ex":Ljava/util/ConcurrentModificationException;
    const-string v5, "PowerManagerService"

    const-string v6, "ConcurrentModificationException"

    invoke-static {v5, v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2541
    .end local v0    # "ex":Ljava/util/ConcurrentModificationException;
    :cond_1
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$PowerManagerOptHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPowerLog:Lcom/lenovo/log/PowerLog;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/lenovo/log/PowerLog;

    move-result-object v5

    const-string v6, "wklog"

    invoke-virtual {v5, v6, v2}, Lcom/lenovo/log/PowerLog;->updatePowerLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2542
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$PowerManagerOptHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPowerLog:Lcom/lenovo/log/PowerLog;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/lenovo/log/PowerLog;

    move-result-object v5

    const-string v6, "batterystate"

    invoke-virtual {v5, v6, v8}, Lcom/lenovo/log/PowerLog;->updatePowerLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 2543
    iget-object v5, p0, Lcom/android/server/power/PowerManagerService$PowerManagerOptHandler;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mPowerLog:Lcom/lenovo/log/PowerLog;
    invoke-static {v5}, Lcom/android/server/power/PowerManagerService;->access$2000(Lcom/android/server/power/PowerManagerService;)Lcom/lenovo/log/PowerLog;

    move-result-object v5

    const-string v6, "sleeplog"

    invoke-virtual {v5, v6, v8}, Lcom/lenovo/log/PowerLog;->updatePowerLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2527
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
