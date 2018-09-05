.class Lcom/android/server/am/ActivityManagerService$14;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    .prologue
    .line 12248
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 12250
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 12251
    .local v1, "mMemInfo":Lcom/android/internal/util/MemInfoReader;
    if-eqz v1, :cond_0

    .line 12252
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 12253
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getRawInfo()[J

    move-result-object v0

    .line 12254
    .local v0, "infos":[J
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$14;->this$0:Lcom/android/server/am/ActivityManagerService;

    const/4 v3, 0x1

    aget-wide v4, v0, v3

    const/4 v3, 0x3

    aget-wide v6, v0, v3

    add-long/2addr v4, v6

    const-wide/16 v6, 0x400

    div-long/2addr v4, v6

    # setter for: Lcom/android/server/am/ActivityManagerService;->mMemLeft:J
    invoke-static {v2, v4, v5}, Lcom/android/server/am/ActivityManagerService;->access$2102(Lcom/android/server/am/ActivityManagerService;J)J

    .line 12256
    .end local v0    # "infos":[J
    :cond_0
    # getter for: Lcom/android/server/am/ActivityManagerService;->mMemLeftHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->access$2200()Landroid/os/Handler;

    move-result-object v2

    const-wide/32 v4, 0xea60

    invoke-virtual {v2, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 12257
    return-void
.end method
