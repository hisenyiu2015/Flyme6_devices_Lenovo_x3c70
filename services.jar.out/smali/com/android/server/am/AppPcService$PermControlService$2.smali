.class Lcom/android/server/am/AppPcService$PermControlService$2;
.super Ljava/lang/Object;
.source "AppPcService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;IIZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field final synthetic val$code:I

.field final synthetic val$isGranted:Z

.field final synthetic val$isInBackground:Z

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$perm:Ljava/lang/String;

.field final synthetic val$time:I

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZ)V
    .locals 0

    .prologue
    .line 1752
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$uid:I

    iput-object p5, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$perm:Ljava/lang/String;

    iput p6, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$code:I

    iput-boolean p7, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$isGranted:Z

    iput p8, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$time:I

    iput-boolean p9, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$isInBackground:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    .line 1756
    const/4 v11, 0x0

    .line 1757
    .local v11, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$2700(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/HashMap;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1758
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$2700(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$key:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/ContentValues;

    move-object v11, v0

    .line 1759
    monitor-exit v3

    .line 1760
    if-nez v11, :cond_0

    .line 1793
    :goto_0
    return-void

    .line 1759
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1790
    :catch_0
    move-exception v9

    .line 1791
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1769
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-enter v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1770
    :try_start_4
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1771
    :goto_1
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v4, 0x64

    if-le v2, v4, :cond_1

    .line 1772
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/am/AppPcService$PermControlService;->access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1774
    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :cond_1
    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1775
    :try_start_7
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, v2, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$2900(Lcom/android/server/am/AppPcService;)Ljava/util/HashSet;

    move-result-object v12

    monitor-enter v12
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 1776
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, v2, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$2900(Lcom/android/server/am/AppPcService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1777
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    iget-object v2, v2, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermCheckCallbacks:Ljava/util/HashSet;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$2900(Lcom/android/server/am/AppPcService;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 1779
    .local v10, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;>;"
    :cond_2
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1780
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;

    .line 1782
    .local v1, "cb":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    if-eqz v1, :cond_2

    .line 1785
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$packageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$uid:I

    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$perm:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$code:I

    iget-boolean v6, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$isGranted:Z

    iget v7, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$time:I

    iget-boolean v8, p0, Lcom/android/server/am/AppPcService$PermControlService$2;->val$isInBackground:Z

    invoke-interface/range {v1 .. v8}, Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;->onPermCheck(Ljava/lang/String;ILjava/lang/String;IZIZ)V

    goto :goto_2

    .line 1789
    .end local v1    # "cb":Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;
    .end local v10    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/internal/app/IAppPcOrderedBroadcastCallback;>;"
    :catchall_2
    move-exception v2

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :cond_3
    :try_start_a
    monitor-exit v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0
.end method
