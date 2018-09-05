.class final Landroid/view/animation/LenovoTransformation$1;
.super Ljava/lang/Object;
.source "LenovoTransformation.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/animation/LenovoTransformation;
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
        "Landroid/view/animation/LenovoTransformation;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/view/animation/LenovoTransformation;
    .locals 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 41
    new-instance v1, Landroid/view/animation/LenovoTransformation;

    invoke-direct {v1}, Landroid/view/animation/LenovoTransformation;-><init>()V

    .line 42
    .local v1, "t":Landroid/view/animation/LenovoTransformation;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 43
    .local v2, "type":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 44
    .local v0, "alpha":F
    const/16 v4, 0x9

    new-array v3, v4, [F

    .line 45
    .local v3, "values":[F
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 46
    invoke-virtual {v1, v2}, Landroid/view/animation/LenovoTransformation;->setTransformationType(I)V

    .line 47
    invoke-virtual {v1, v0}, Landroid/view/animation/LenovoTransformation;->setAlpha(F)V

    .line 48
    invoke-virtual {v1}, Landroid/view/animation/LenovoTransformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 49
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/animation/LenovoTransformation$1;->createFromParcel(Landroid/os/Parcel;)Landroid/view/animation/LenovoTransformation;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/view/animation/LenovoTransformation;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 53
    new-array v0, p1, [Landroid/view/animation/LenovoTransformation;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Landroid/view/animation/LenovoTransformation$1;->newArray(I)[Landroid/view/animation/LenovoTransformation;

    move-result-object v0

    return-object v0
.end method
