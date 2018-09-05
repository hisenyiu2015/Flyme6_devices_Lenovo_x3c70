.class Lcom/android/server/am/AppPcService$PermControlService$1;
.super Landroid/os/Handler;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;)V
    .locals 0

    .prologue
    .line 1473
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$1;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1476
    iget v0, p1, Landroid/os/Message;->what:I

    .line 1490
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1492
    return-void
.end method
