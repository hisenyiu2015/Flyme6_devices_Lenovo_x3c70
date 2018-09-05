.class Lcom/android/server/am/AppPcDataManager$9;
.super Ljava/lang/Thread;
.source "AppPcDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissions(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 711
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$9;->this$0:Lcom/android/server/am/AppPcDataManager;

    iput-object p2, p0, Lcom/android/server/am/AppPcDataManager$9;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 714
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$9;->this$0:Lcom/android/server/am/AppPcDataManager;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$9;->val$packageName:Ljava/lang/String;

    # invokes: Lcom/android/server/am/AppPcDataManager;->removePackageUserPermissionsInternal(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcDataManager;->access$2400(Lcom/android/server/am/AppPcDataManager;Ljava/lang/String;)V

    .line 715
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$9;->this$0:Lcom/android/server/am/AppPcDataManager;

    # invokes: Lcom/android/server/am/AppPcDataManager;->reInitAppLockOnAppCount()V
    invoke-static {v0}, Lcom/android/server/am/AppPcDataManager;->access$2200(Lcom/android/server/am/AppPcDataManager;)V

    .line 716
    return-void
.end method
