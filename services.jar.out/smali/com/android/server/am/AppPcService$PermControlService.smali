.class Lcom/android/server/am/AppPcService$PermControlService;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PermControlService"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;,
        Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;,
        Lcom/android/server/am/AppPcService$PermControlService$PermReq;,
        Lcom/android/server/am/AppPcService$PermControlService$PermReqs;,
        Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    }
.end annotation


# static fields
.field private static final COUNT_DOWN_TIMER:I = 0x14

.field private static final DELAY_TIME:I = 0x3e8

.field private static final EXTRA_TIMER:I = 0x1388

.field private static final MAX_WATI_TIME:I = 0x4e20

.field private static final MSG_RESET:I = 0x65

.field private static final TOAST_ACTIVE_TIME:J = 0xea60L


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLastToastTimes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;

.field private mRecordCheckHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordCheckHistoryMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

.field private mUidPackageNameMaps:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUidPermReqs:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/AppPcService$PermControlService$PermReqs;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUidPermReqsLock:Ljava/lang/Object;

.field final synthetic this$0:Lcom/android/server/am/AppPcService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 1419
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1381
    const-string v0, "Security_PermControlService"

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->TAG:Ljava/lang/String;

    .line 1409
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mLastToastTimes:Ljava/util/HashMap;

    .line 1411
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    .line 1416
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    .line 1417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    .line 1473
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppPcService$PermControlService$1;-><init>(Lcom/android/server/am/AppPcService$PermControlService;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mHandler:Landroid/os/Handler;

    .line 1987
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqsLock:Ljava/lang/Object;

    .line 1988
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqs:Landroid/util/SparseArray;

    .line 1420
    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    .line 1422
    new-instance v0, Lcom/android/server/am/AppPcDataManager;

    invoke-direct {v0, p2}, Lcom/android/server/am/AppPcDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    .line 1423
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v0}, Lcom/android/server/am/AppPcDataManager;->init()V

    .line 1424
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

    .line 1425
    const-string v0, "power"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPowerManager:Landroid/os/PowerManager;

    .line 1426
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/AppPcService$PermControlService;)Lcom/android/server/am/AppPcDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1380
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/am/AppPcService$PermControlService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 1380
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/am/AppPcService$PermControlService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/AppPcService$PermControlService;

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private askOperationLocked(IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;)Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
    .locals 7
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "permReq"    # Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    .prologue
    .line 2159
    new-instance v6, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    invoke-direct {v6, p0}, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;-><init>(Lcom/android/server/am/AppPcService$PermControlService;)V

    .line 2161
    .local v6, "result":Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;-><init>(Lcom/android/server/am/AppPcService$PermControlService;IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;)V

    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService$AskRunnable;->start()V

    .line 2162
    return-object v6
.end method

.method private checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z
    .locals 4
    .param p1, "code"    # I
    .param p2, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1668
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p2}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p2}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/AppPcDataManager;->getPermBackgroundStatus(Ljava/lang/String;I)I

    move-result v0

    .line 1669
    .local v0, "backNotifyType":I
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1670
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check backNotifyType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1671
    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1672
    const/4 v1, 0x0

    .line 1674
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private checkCurrentUid()Z
    .locals 1

    .prologue
    .line 1463
    const/4 v0, 0x1

    return v0
.end method

.method private getFirstTask()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1822
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v6, :cond_0

    .line 1823
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager;

    iput-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1826
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1828
    .local v0, "callingUid":I
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-virtual {v6, v9, v9, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 1831
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 1832
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 1833
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v1, Landroid/content/Intent;

    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1834
    .local v1, "intent":Landroid/content/Intent;
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    .line 1835
    iget-object v6, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1837
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const v7, -0x200001

    and-int/2addr v6, v7

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    invoke-virtual {v1, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1839
    iget-object v6, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1840
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 1842
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_2

    .line 1843
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1846
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :goto_0
    return-object v6

    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private getPackageNameByUid(I)Ljava/lang/String;
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 1891
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3100(Lcom/android/server/am/AppPcService;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 1892
    .local v1, "pkgs":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 1894
    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1895
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1896
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    monitor-enter v3

    .line 1897
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1898
    monitor-exit v3

    .line 1903
    .end local v0    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1898
    .restart local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 1902
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v2, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageNameByUid fail uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getPermRawLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    const/4 v2, 0x0

    .line 2107
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 2108
    .local v1, "pkgPermReqs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReqs;>;"
    if-nez v1, :cond_2

    .line 2109
    if-nez p3, :cond_1

    move-object v0, v2

    .line 2123
    :cond_0
    :goto_0
    return-object v0

    .line 2112
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "pkgPermReqs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReqs;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 2113
    .restart local v1    # "pkgPermReqs":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReqs;>;"
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqs:Landroid/util/SparseArray;

    invoke-virtual {v3, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2115
    :cond_2
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    .line 2116
    .local v0, "ops":Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    if-nez v0, :cond_0

    .line 2117
    if-nez p3, :cond_3

    move-object v0, v2

    .line 2118
    goto :goto_0

    .line 2120
    :cond_3
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    .end local v0    # "ops":Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;-><init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;I)V

    .line 2121
    .restart local v0    # "ops":Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getPermReqLocked(IILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    .locals 3
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "edit"    # Z

    .prologue
    .line 2148
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPermReqsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2149
    :try_start_0
    invoke-direct {p0, p2, p3, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqsLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    move-result-object v0

    .line 2150
    .local v0, "reqs":Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    if-nez v0, :cond_0

    .line 2151
    const/4 v1, 0x0

    monitor-exit v2

    .line 2153
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, v0, p1, p4}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqLocked(Lcom/android/server/am/AppPcService$PermControlService$PermReqs;IZ)Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    move-result-object v1

    monitor-exit v2

    goto :goto_0

    .line 2154
    .end local v0    # "reqs":Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPermReqLocked(Lcom/android/server/am/AppPcService$PermControlService$PermReqs;IZ)Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    .locals 3
    .param p1, "ops"    # Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    .param p2, "code"    # I
    .param p3, "edit"    # Z

    .prologue
    .line 2137
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    .line 2138
    .local v0, "op":Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    if-nez v0, :cond_1

    .line 2139
    if-nez p3, :cond_0

    .line 2140
    const/4 v1, 0x0

    .line 2145
    :goto_0
    return-object v1

    .line 2142
    :cond_0
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    .end local v0    # "op":Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    iget v1, p1, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->uid:I

    iget-object v2, p1, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->packageName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2, p2}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;I)V

    .line 2143
    .restart local v0    # "op":Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    move-object v1, v0

    .line 2145
    goto :goto_0
.end method

.method private getPermReqsLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "edit"    # Z

    .prologue
    .line 2126
    if-nez p1, :cond_1

    .line 2127
    const-string p2, "root"

    .line 2134
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/AppPcService$PermControlService;->getPermRawLocked(ILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReqs;

    move-result-object v0

    return-object v0

    .line 2128
    :cond_1
    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_2

    .line 2129
    const-string p2, "com.android.shell"

    goto :goto_0

    .line 2130
    :cond_2
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 2131
    if-nez p2, :cond_0

    .line 2132
    const-string p2, "android"

    goto :goto_0
.end method

.method private getUidByPackageName(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 1851
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1852
    .local v2, "pkgManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 1854
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    iget v3, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1858
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "pkgManager":Landroid/content/pm/PackageManager;
    :goto_0
    return-object v3

    .line 1855
    :catch_0
    move-exception v0

    .line 1856
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1858
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z
    .locals 6
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .param p2, "flag"    # I

    .prologue
    const/4 v0, 0x1

    .line 1678
    sget-boolean v3, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 1679
    const-string v3, "Security_PermControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCheckCase record.mPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1683
    :cond_0
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqLocked(IILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    move-result-object v1

    .line 1684
    .local v1, "req":Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    if-eqz v1, :cond_1

    .line 1686
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5, v1}, Lcom/android/server/am/AppPcService$PermControlService;->askOperationLocked(IILjava/lang/String;Lcom/android/server/am/AppPcService$PermControlService$PermReq;)Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;

    move-result-object v2

    .line 1693
    .local v2, "result":Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
    invoke-virtual {v2}, Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;->get()Z

    move-result v0

    .line 1694
    .local v0, "isGranted":Z
    const-string v3, "Security_PermControlService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleCheckCase mIsGranted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";record.mPackageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ";code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    .end local v0    # "isGranted":Z
    .end local v2    # "result":Lcom/android/server/am/AppPcService$PermControlService$PermReqResult;
    :goto_0
    return v0

    .line 1688
    :cond_1
    const-string v3, "Security_PermControlService"

    const-string v4, "handleCheckCase req = null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recordCheckHistory(Ljava/lang/String;IIZZ)V
    .locals 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "code"    # I
    .param p4, "isGranted"    # Z
    .param p5, "isInBackground"    # Z

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->RECORD_CHECK_HISTORY_ENABLE:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService;->access$2600(Lcom/android/server/am/AppPcService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1795
    :cond_0
    :goto_0
    return-void

    .line 1730
    :cond_1
    invoke-static {p3}, Lcom/lenovo/common/AppPcUtils;->getFirstPermissionByCode(I)Ljava/lang/String;

    move-result-object v5

    .line 1731
    .local v5, "perm":Ljava/lang/String;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x16

    if-eq p3, v0, :cond_0

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1736
    .local v2, "key":Ljava/lang/String;
    new-instance v10, Landroid/content/ContentValues;

    invoke-direct {v10}, Landroid/content/ContentValues;-><init>()V

    .line 1737
    .local v10, "values":Landroid/content/ContentValues;
    const-string v0, "package"

    invoke-virtual {v10, v0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1738
    const-string v0, "permission"

    invoke-virtual {v10, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    if-eqz p4, :cond_2

    .line 1740
    const-string v0, "deny_content"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1744
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-int v8, v0

    .line 1745
    .local v8, "time":I
    const-string v0, "deny_time"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1746
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1749
    monitor-exit v1

    goto :goto_0

    .line 1751
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1742
    .end local v8    # "time":I
    :cond_2
    const-string v0, "deny_content"

    const-string v1, "0"

    invoke-virtual {v10, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1751
    .restart local v8    # "time":I
    :cond_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1752
    iget-object v11, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryPool:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$2;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v6, p3

    move/from16 v7, p4

    move/from16 v9, p5

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/AppPcService$PermControlService$2;-><init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IZIZ)V

    invoke-interface {v11, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setStatusBarEnableStatus(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 1874
    const-string v0, "Security_PermControlService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarEnableStatus enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    return-void
.end method

.method private showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V
    .locals 10
    .param p1, "record"    # Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    .prologue
    .line 1798
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 1799
    .local v9, "userId":I
    const/4 v1, 0x0

    .line 1800
    .local v1, "listener":Lcom/android/internal/app/IAppPcPermissionListener;
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v3

    monitor-enter v3

    .line 1801
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mIAppPcPermissionListeners:Landroid/util/SparseArray;
    invoke-static {v2}, Lcom/android/server/am/AppPcService;->access$3000(Lcom/android/server/am/AppPcService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/android/internal/app/IAppPcPermissionListener;

    move-object v1, v0

    .line 1802
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1803
    if-eqz v1, :cond_0

    .line 1805
    const/4 v2, -0x1

    :try_start_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v4

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v5

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mCode:I
    invoke-static {p1}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2500(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v6

    invoke-static {v6}, Lcom/lenovo/common/AppPcUtils;->getFirstPermissionByCode(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/internal/app/IAppPcPermissionListener;->onPermissionCheck(IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1814
    :cond_0
    :goto_0
    return-void

    .line 1802
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1808
    :catch_0
    move-exception v8

    .line 1809
    .local v8, "e":Ljava/lang/Exception;
    const-string v2, "Security_PermControlService"

    const-string v3, "showDenyToast error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public clearCheckHistorys(Ljava/lang/String;)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1707
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1708
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1709
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1710
    monitor-exit v4

    .line 1722
    :goto_0
    return-void

    .line 1710
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1712
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 1713
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1
    if-ltz v0, :cond_2

    .line 1714
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 1715
    .local v2, "values":Landroid/content/ContentValues;
    const-string v3, "package"

    invoke-virtual {v2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1716
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1717
    iget-object v3, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1713
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 1720
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "values":Landroid/content/ContentValues;
    :cond_2
    monitor-exit v4

    goto :goto_0

    .end local v0    # "i":I
    :catchall_1
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3
.end method

.method public getCheckHistorys()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1698
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 1699
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/AppPcService$PermControlService;->mRecordCheckHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    monitor-exit v1

    return-object v0

    .line 1700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getPackageName(II)Ljava/lang/String;
    .locals 8
    .param p1, "uid"    # I
    .param p2, "pid"    # I

    .prologue
    .line 1906
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 1907
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1908
    .local v3, "packageName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 1909
    sget-boolean v4, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v4, :cond_0

    .line 1910
    const-string v4, "Security_PermControlService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPackageName from mUidPackageNameMaps="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1911
    :cond_0
    monitor-exit v5

    .line 1944
    .end local v3    # "packageName":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 1913
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1914
    const/4 v1, 0x0

    .line 1916
    .local v1, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    if-nez v4, :cond_2

    .line 1917
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    iput-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    .line 1920
    :cond_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 1922
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-nez v2, :cond_3

    .line 1923
    const-string v4, "Security_PermControlService"

    const-string v5, "getPackageName l == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1913
    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 1927
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .restart local v2    # "l":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v4, "Security_PermControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageName l.size() ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1930
    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1931
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1932
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-eq v4, p2, :cond_5

    iget v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    if-ne v4, p1, :cond_4

    .line 1933
    :cond_5
    iget-object v4, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v3, v4, v5

    .line 1934
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 1935
    iget-object v5, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    monitor-enter v5

    .line 1936
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/AppPcService$PermControlService;->mUidPackageNameMaps:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1937
    monitor-exit v5

    goto :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v4

    .line 1942
    :cond_6
    const-string v4, "Security_PermControlService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPackageName fail uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    invoke-direct {p0, p1}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageNameByUid(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0
.end method

.method public handleCheckBackgroundCase(ILjava/lang/String;IIZ)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "ifCountRecode"    # Z

    .prologue
    const/4 v5, 0x1

    .line 1521
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1522
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckBackgroundCase packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1524
    .local v7, "callingUid":I
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_1

    if-eq v7, p3, :cond_1

    .line 1525
    const-string v1, "Security_PermControlService"

    const-string v2, "handleCheckCase callingUid != uid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase callingUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1529
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->checkCurrentUid()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1530
    const/4 v5, 0x0

    .line 1557
    :cond_2
    :goto_0
    return v5

    .line 1533
    :cond_3
    const/4 v1, -0x1

    if-eq v1, p1, :cond_2

    .line 1537
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$2000(Lcom/android/server/am/AppPcService;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_4

    if-nez p1, :cond_2

    .line 1541
    :cond_4
    const/4 v5, 0x0

    .line 1542
    .local v5, "checkResult":Z
    const/4 v6, 0x1

    .line 1543
    .local v6, "isInBackground":Z
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 1544
    .end local v5    # "checkResult":Z
    .end local v6    # "isInBackground":Z
    .local v0, "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1545
    const/4 v5, 0x1

    .line 1546
    .restart local v5    # "checkResult":Z
    const/4 v6, 0x0

    .line 1551
    .restart local v6    # "isInBackground":Z
    :goto_1
    if-eqz p5, :cond_6

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2100(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-eqz v1, :cond_5

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1552
    :cond_5
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;IIZZ)V

    .line 1554
    :cond_6
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckBackgroundCase checkResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1548
    .end local v5    # "checkResult":Z
    .end local v6    # "isInBackground":Z
    :cond_7
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/AppPcService$PermControlService;->checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v5

    .line 1549
    .restart local v5    # "checkResult":Z
    const/4 v6, 0x1

    .restart local v6    # "isInBackground":Z
    goto :goto_1
.end method

.method public handleCheckCase(ILjava/lang/String;IIZ)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "ifCountRecode"    # Z

    .prologue
    .line 1561
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1562
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1564
    .local v7, "callingUid":I
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_1

    if-eq v7, p3, :cond_1

    .line 1565
    const-string v1, "Security_PermControlService"

    const-string v2, "handleCheckCase callingUid != uid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1566
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase callingUid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase uid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->checkCurrentUid()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1570
    const/4 v5, 0x0

    .line 1643
    :goto_0
    return v5

    .line 1573
    :cond_2
    const/4 v1, -0x1

    if-ne v1, p1, :cond_3

    .line 1575
    const/4 v5, 0x1

    goto :goto_0

    .line 1576
    :cond_3
    const/16 v1, 0x11

    if-ne p1, v1, :cond_4

    .line 1577
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v9

    .line 1578
    .local v9, "isPowerSaveMode":Z
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPowerSaveMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    if-eqz v9, :cond_4

    .line 1580
    const/4 v5, 0x0

    goto :goto_0

    .line 1587
    .end local v9    # "isPowerSaveMode":Z
    :cond_4
    :try_start_0
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 1591
    .local v0, "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/AppPcDataManager;->getPermStatus(Ljava/lang/String;I)I

    move-result v10

    .line 1592
    .local v10, "notifyType":I
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase notifyType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1597
    const/4 v5, 0x0

    .line 1598
    .local v5, "checkResult":Z
    const/4 v6, 0x0

    .line 1599
    .local v6, "isInBackground":Z
    if-nez v10, :cond_b

    .line 1600
    const/16 v1, 0x11

    if-eq p1, v1, :cond_5

    const/16 v1, 0x16

    if-ne p1, v1, :cond_8

    .line 1602
    :cond_5
    const/4 v5, 0x0

    .line 1639
    :goto_1
    if-eqz p5, :cond_7

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2100(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-eqz v1, :cond_6

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1640
    :cond_6
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;IIZZ)V

    .line 1642
    :cond_7
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCheckCase checkResult="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1593
    .end local v0    # "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .end local v5    # "checkResult":Z
    .end local v6    # "isInBackground":Z
    .end local v10    # "notifyType":I
    :catch_0
    move-exception v8

    .line 1594
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 1595
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1603
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v0    # "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    .restart local v5    # "checkResult":Z
    .restart local v6    # "isInBackground":Z
    .restart local v10    # "notifyType":I
    :cond_8
    const/16 v1, 0xe

    if-ne v1, p1, :cond_9

    .line 1604
    const/4 v5, 0x0

    goto :goto_1

    .line 1606
    :cond_9
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$000(Lcom/android/server/am/AppPcService;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1607
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/AppPcService$PermControlService;->handleCheckCase(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;I)Z

    move-result v5

    goto :goto_1

    .line 1609
    :cond_a
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enable ask permission packageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1613
    :cond_b
    const/4 v1, -0x1

    if-ne v1, v10, :cond_e

    .line 1614
    const/4 v5, 0x0

    .line 1615
    const/16 v1, 0x11

    if-eq p1, v1, :cond_c

    const/16 v1, 0x16

    if-ne p1, v1, :cond_d

    .line 1617
    :cond_c
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refuse auto boot = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1619
    :cond_d
    invoke-direct {p0, v0}, Lcom/android/server/am/AppPcService$PermControlService;->showDenyToast(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)V

    goto/16 :goto_1

    .line 1621
    :cond_e
    const/4 v1, 0x1

    if-ne v1, v10, :cond_12

    .line 1622
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    # getter for: Lcom/android/server/am/AppPcService;->CHECK_BACKGROUND_GPS_ENABLE:Z
    invoke-static {v1}, Lcom/android/server/am/AppPcService;->access$2000(Lcom/android/server/am/AppPcService;)Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz p1, :cond_f

    if-nez p1, :cond_11

    .line 1626
    :cond_f
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1628
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1630
    :cond_10
    const/4 v6, 0x1

    .line 1631
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/AppPcService$PermControlService;->checkBackgroundNotifyType(ILcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v5

    goto/16 :goto_1

    .line 1634
    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 1637
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_1
.end method

.method public inWhiteList(Ljava/lang/String;II)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "pid"    # I

    .prologue
    const/4 v0, 0x1

    .line 1495
    sget-boolean v1, Lcom/android/server/am/AppPcService;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 1496
    const-string v1, "Security_PermControlService"

    const-string v2, "inWhiteList(int code, int uid, int pid)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1498
    invoke-virtual {p0, p2, p3}, Lcom/android/server/am/AppPcService$PermControlService;->getPackageName(II)Ljava/lang/String;

    move-result-object p1

    .line 1501
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/lenovo/common/AppPcUtils;->isSystemApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1502
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->this$0:Lcom/android/server/am/AppPcService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppPcService;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1509
    :cond_2
    :goto_0
    return v0

    .line 1506
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/AppPcService$PermControlService;->mAppPcDataManager:Lcom/android/server/am/AppPcDataManager;

    invoke-virtual {v1, p1}, Lcom/android/server/am/AppPcDataManager;->isInWhiteList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1509
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recordCheckHistory(ILjava/lang/String;II)V
    .locals 8
    .param p1, "code"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .prologue
    .line 1647
    const/4 v7, 0x0

    .line 1648
    .local v7, "isInBackground":Z
    :try_start_0
    new-instance v0, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;-><init>(Lcom/android/server/am/AppPcService$PermControlService;ILjava/lang/String;IILandroid/os/Bundle;)V

    .line 1649
    .local v0, "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/AppPcService$PermControlService;->getFirstTask()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 1651
    const/4 v6, 0x1

    .line 1653
    .end local v7    # "isInBackground":Z
    .local v6, "isInBackground":Z
    :goto_0
    :try_start_1
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2100(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mIsInControllableSystemApp:Z
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2200(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1654
    :cond_0
    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mPackageName:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2300(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->mUid:I
    invoke-static {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;->access$2400(Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/AppPcService$PermControlService;->recordCheckHistory(Ljava/lang/String;IIZZ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1658
    .end local v0    # "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    :cond_1
    :goto_1
    return-void

    .line 1656
    .end local v6    # "isInBackground":Z
    .restart local v7    # "isInBackground":Z
    :catch_0
    move-exception v1

    move v6, v7

    .end local v7    # "isInBackground":Z
    .restart local v6    # "isInBackground":Z
    goto :goto_1

    .restart local v0    # "record":Lcom/android/server/am/AppPcService$PermControlService$PermissionRecord;
    :catch_1
    move-exception v1

    goto :goto_1

    .end local v6    # "isInBackground":Z
    .restart local v7    # "isInBackground":Z
    :cond_2
    move v6, v7

    .end local v7    # "isInBackground":Z
    .restart local v6    # "isInBackground":Z
    goto :goto_0
.end method

.method public setAppPermissionResult(ILjava/lang/String;II)V
    .locals 5
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "code"    # I
    .param p4, "result"    # I

    .prologue
    const/4 v2, 0x0

    .line 2165
    const-string v1, "Security_PermControlService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAppPermissionResult uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";packageName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":code:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    invoke-direct {p0, p3, p1, p2, v2}, Lcom/android/server/am/AppPcService$PermControlService;->getPermReqLocked(IILjava/lang/String;Z)Lcom/android/server/am/AppPcService$PermControlService$PermReq;

    move-result-object v0

    .line 2168
    .local v0, "req":Lcom/android/server/am/AppPcService$PermControlService$PermReq;
    if-eqz v0, :cond_0

    .line 2169
    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->isPermUIShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2171
    if-nez p4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->notifyAll(Z)V

    .line 2172
    invoke-virtual {v0, v2}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->setIfPermUIShowing(Z)V

    .line 2173
    invoke-virtual {v0}, Lcom/android/server/am/AppPcService$PermControlService$PermReq;->quitHandle()V

    .line 2178
    :cond_0
    const-string v1, "Security_PermControlService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAppPermissionResult end uid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2179
    return-void

    :cond_1
    move v1, v2

    .line 2171
    goto :goto_0
.end method
