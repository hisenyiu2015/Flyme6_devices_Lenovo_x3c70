.class Lcom/android/server/am/ActivityManagerService$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 21759
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$PkgSizeObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "x1"    # Lcom/android/server/am/ActivityManagerService$1;

    .prologue
    .line 21759
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerService$PkgSizeObserver;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 6
    .param p1, "pStats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21765
    if-eqz p2, :cond_0

    .line 21766
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 21767
    .local v0, "cacheSize":J
    iget-object v2, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    .line 21768
    .local v2, "packageName":Ljava/lang/String;
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cache files size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21769
    # getter for: Lcom/android/server/am/ActivityManagerService;->MAX_APP_CACHE_FILES:J
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$2900()J

    move-result-wide v4

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    .line 21770
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$PkgSizeObserver;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Landroid/content/pm/PackageStats;->packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/ActivityManagerService;->deleteAppCache(Ljava/lang/String;)V
    invoke-static {v3, v4}, Lcom/android/server/am/ActivityManagerService;->access$3000(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;)V

    .line 21773
    .end local v0    # "cacheSize":J
    .end local v2    # "packageName":Ljava/lang/String;
    :cond_0
    return-void
.end method
