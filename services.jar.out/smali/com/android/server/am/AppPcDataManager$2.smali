.class Lcom/android/server/am/AppPcDataManager$2;
.super Landroid/database/ContentObserver;
.source "AppPcDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$2;->this$0:Lcom/android/server/am/AppPcDataManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 131
    const-string v0, "Security/AppPcDataManager"

    const-string v1, "CONTENT_PERM_SYS_URI onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$2;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->startSyncSystemPermissionMaps()V
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$100(Lcom/android/server/am/AppPcDataManager;)V

    .line 133
    return-void
.end method
