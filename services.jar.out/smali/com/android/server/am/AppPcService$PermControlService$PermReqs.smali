.class public final Lcom/android/server/am/AppPcService$PermControlService$PermReqs;
.super Ljava/util/HashMap;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService$PermControlService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PermReqs"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/Integer;",
        "Lcom/android/server/am/AppPcService$PermControlService$PermReq;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final packageName:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/am/AppPcService$PermControlService;

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPcService$PermControlService;Ljava/lang/String;I)V
    .locals 0
    .param p2, "_packageName"    # Ljava/lang/String;
    .param p3, "_uid"    # I

    .prologue
    .line 1995
    iput-object p1, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->this$1:Lcom/android/server/am/AppPcService$PermControlService;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 1996
    iput-object p2, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->packageName:Ljava/lang/String;

    .line 1997
    iput p3, p0, Lcom/android/server/am/AppPcService$PermControlService$PermReqs;->uid:I

    .line 1999
    return-void
.end method
