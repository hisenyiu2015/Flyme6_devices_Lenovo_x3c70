.class final Lcom/lenovo/common/AppPcUtils$1;
.super Ljava/lang/Thread;
.source "AppPcUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lenovo/common/AppPcUtils;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 381
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 384
    # invokes: Lcom/lenovo/common/AppPcUtils;->getControllableSystemApps()Ljava/util/List;
    invoke-static {}, Lcom/lenovo/common/AppPcUtils;->access$100()Ljava/util/List;

    move-result-object v0

    # setter for: Lcom/lenovo/common/AppPcUtils;->sControllableSystemApps:Ljava/util/List;
    invoke-static {v0}, Lcom/lenovo/common/AppPcUtils;->access$002(Ljava/util/List;)Ljava/util/List;

    .line 385
    return-void
.end method
