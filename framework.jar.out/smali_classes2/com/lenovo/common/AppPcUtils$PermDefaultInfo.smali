.class public Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;
.super Ljava/lang/Object;
.source "AppPcUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/common/AppPcUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermDefaultInfo"
.end annotation


# instance fields
.field code:I

.field pemissions:[Ljava/lang/String;

.field sysDefaultState:I

.field userDefaultState:I


# direct methods
.method public constructor <init>(I[Ljava/lang/String;II)V
    .locals 0
    .param p1, "code"    # I
    .param p2, "pemissions"    # [Ljava/lang/String;
    .param p3, "userDefaultState"    # I
    .param p4, "sysDefaultState"    # I

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput p1, p0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->code:I

    .line 68
    iput-object p2, p0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->pemissions:[Ljava/lang/String;

    .line 69
    iput p3, p0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->userDefaultState:I

    .line 70
    iput p4, p0, Lcom/lenovo/common/AppPcUtils$PermDefaultInfo;->sysDefaultState:I

    .line 71
    return-void
.end method
