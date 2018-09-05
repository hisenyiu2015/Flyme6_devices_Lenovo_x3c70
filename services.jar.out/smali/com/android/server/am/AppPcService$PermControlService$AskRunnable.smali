.class final Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;
.super Ljava/lang/Thread;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AskRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;
    }
.end annotation


# static fields
.field public static final DISMISS_TIMEOUT:J = 0x2ee0L

.field public static final MSG_PERM_IGNORED_TIMEOUT:I = 0x1


# instance fields
.field final code:I

.field mLooper:Landroid/os/Looper;

.field final mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

.field final packageName:Ljava/lang/String;

.field final result:Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V
    .locals 0
    .param p2, "code"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "permReq"    # Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    .param p6, "result"    # Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    .prologue
    .line 2189
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    .line 2190
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2191
    iput p2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    .line 2192
    iput p3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    .line 2193
    iput-object p4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    .line 2194
    iput-object p5, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    .line 2195
    iput-object p6, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->result:Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    .line 2196
    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 2201
    const-string v2, "Security_PermControlService"

    const-string v3, "Creating dialog box"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2202
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->result:Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->register(Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V

    .line 2203
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    invoke-virtual {v2}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2205
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->setIfPermUIShowing(Z)V

    .line 2207
    iget v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2208
    .local v9, "userId":I
    const/4 v1, 0x0

    .line 2209
    .local v1, "listener":Lcom/android/internal/app/IAppPcPermissionListener;
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, v2, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 2210
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, v2, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/app/IAppPcPermissionListener;

    move-object v1, v0

    .line 2211
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2212
    if-eqz v1, :cond_1

    .line 2214
    const/4 v2, 0x0

    :try_start_1
    iget v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    iget v4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    invoke-static {v6}, Lcom/lenovo/common/AppPcUtils;->getFirstPermissionByCode(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IAppPcPermissionListener;->onPermissionCheck(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    .line 2217
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2218
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mLooper:Landroid/os/Looper;

    .line 2219
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    new-instance v3, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mLooper:Landroid/os/Looper;

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable$MyHandler;-><init>(Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;Landroid/os/Looper;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->setHandle(Landroid/os/Handler;)V

    .line 2221
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->mPermReq:Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    invoke-virtual {v2}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->sendTimeOutMessageDelay()V

    .line 2222
    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2234
    .end local v1    # "listener":Lcom/android/internal/app/IAppPcPermissionListener;
    .end local v9    # "userId":I
    :cond_0
    :goto_0
    return-void

    .line 2211
    .restart local v1    # "listener":Lcom/android/internal/app/IAppPcPermissionListener;
    .restart local v9    # "userId":I
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2224
    :catch_0
    move-exception v8

    .line 2225
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "Security_PermControlService"

    const-string v3, "AskRunnable listener.onPermissionCheck error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2226
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    invoke-virtual {v2, v3, v4, v5, v10}, Lcom/android/server/am/AppPcService$PermControlService;->setAppPermissionResult(ILjava/lang/String;II)V

    .line 2227
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 2230
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v2, "Security_PermControlService"

    const-string v3, "AskRunnable listener == null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget v3, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->uid:I

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->packageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->code:I

    invoke-virtual {v2, v3, v4, v5, v10}, Lcom/android/server/am/AppPcService$PermControlService;->setAppPermissionResult(ILjava/lang/String;II)V

    goto :goto_0
.end method
