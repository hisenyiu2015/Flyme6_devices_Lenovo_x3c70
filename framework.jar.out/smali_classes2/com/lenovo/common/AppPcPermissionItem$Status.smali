.class public final Lcom/lenovo/common/AppPcPermissionItem$Status;
.super Ljava/lang/Object;
.source "AppPcPermissionItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/common/AppPcPermissionItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Status"
.end annotation


# static fields
.field public static final PERMISSION_STATUS_ASK:I = 0x0

.field public static final PERMISSION_STATUS_DISABLE:I = -0x1

.field public static final PERMISSION_STATUS_ENABLE:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
