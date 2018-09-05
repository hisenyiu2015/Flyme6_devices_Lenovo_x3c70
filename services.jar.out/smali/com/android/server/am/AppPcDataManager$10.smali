.class Lcom/android/server/am/AppPcDataManager$10;
.super Ljava/lang/Object;
.source "AppPcDataManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppPcDataManager;->changeAppPcPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppPcDataManager;

.field final synthetic val$item:Lcom/lenovo/common/AppPcPermissionItem;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcDataManager;Lcom/lenovo/common/AppPcPermissionItem;)V
    .locals 0

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/server/am/AppPcDataManager$10;->this$0:Lcom/android/server/am/AppPcDataManager;

    iput-object p2, p0, Lcom/android/server/am/AppPcDataManager$10;->val$item:Lcom/lenovo/common/AppPcPermissionItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 958
    iget-object v0, p0, Lcom/android/server/am/AppPcDataManager$10;->this$0:Lcom/android/server/am/AppPcDataManager;

    iget-object v1, p0, Lcom/android/server/am/AppPcDataManager$10;->val$item:Lcom/lenovo/common/AppPcPermissionItem;

    # invokes: Lcom/android/server/am/AppPcDataManager;->changeDbPermissionStatus(Lcom/lenovo/common/AppPcPermissionItem;)V
    invoke-static {v0, v1}, Lcom/android/server/am/AppPcDataManager;->access$2500(Lcom/android/server/am/AppPcDataManager;Lcom/lenovo/common/AppPcPermissionItem;)V

    .line 959
    return-void
.end method
