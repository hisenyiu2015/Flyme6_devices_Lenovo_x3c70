.class final Lcom/zui/fingerprint/RectParcelable$1;
.super Ljava/lang/Object;
.source "RectParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/fingerprint/RectParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/zui/fingerprint/RectParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/zui/fingerprint/RectParcelable;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 46
    new-instance v0, Lcom/zui/fingerprint/RectParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/zui/fingerprint/RectParcelable;-><init>(Landroid/os/Parcel;Lcom/zui/fingerprint/RectParcelable$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/zui/fingerprint/RectParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/zui/fingerprint/RectParcelable;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/zui/fingerprint/RectParcelable;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 52
    new-array v0, p1, [Lcom/zui/fingerprint/RectParcelable;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/zui/fingerprint/RectParcelable$1;->newArray(I)[Lcom/zui/fingerprint/RectParcelable;

    move-result-object v0

    return-object v0
.end method
