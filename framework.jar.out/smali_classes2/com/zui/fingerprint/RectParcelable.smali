.class public Lcom/zui/fingerprint/RectParcelable;
.super Ljava/lang/Object;
.source "RectParcelable.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/zui/fingerprint/RectParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mBottomLeft:Landroid/graphics/Point;

.field public mBottomRight:Landroid/graphics/Point;

.field public mTopLeft:Landroid/graphics/Point;

.field public mTopRight:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/zui/fingerprint/RectParcelable$1;

    invoke-direct {v0}, Lcom/zui/fingerprint/RectParcelable$1;-><init>()V

    sput-object v0, Lcom/zui/fingerprint/RectParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .locals 1
    .param p1, "topLeftX"    # I
    .param p2, "topLeftY"    # I
    .param p3, "topRightX"    # I
    .param p4, "topRightY"    # I
    .param p5, "bottomLeftX"    # I
    .param p6, "bottomLeftY"    # I
    .param p7, "bottomRightX"    # I
    .param p8, "bottomRightY"    # I

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mTopLeft:Landroid/graphics/Point;

    .line 26
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mTopRight:Landroid/graphics/Point;

    .line 27
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p5, p6}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomLeft:Landroid/graphics/Point;

    .line 28
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p7, p8}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomRight:Landroid/graphics/Point;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 3
    .param p1, "topLeft"    # Landroid/graphics/Point;
    .param p2, "topRight"    # Landroid/graphics/Point;
    .param p3, "bottomLeft"    # Landroid/graphics/Point;
    .param p4, "bottomRight"    # Landroid/graphics/Point;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mTopLeft:Landroid/graphics/Point;

    .line 18
    new-instance v0, Landroid/graphics/Point;

    iget v1, p2, Landroid/graphics/Point;->x:I

    iget v2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mTopRight:Landroid/graphics/Point;

    .line 19
    new-instance v0, Landroid/graphics/Point;

    iget v1, p3, Landroid/graphics/Point;->x:I

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomLeft:Landroid/graphics/Point;

    .line 20
    new-instance v0, Landroid/graphics/Point;

    iget v1, p4, Landroid/graphics/Point;->x:I

    iget v2, p4, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomRight:Landroid/graphics/Point;

    .line 21
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mTopLeft:Landroid/graphics/Point;

    .line 59
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mTopRight:Landroid/graphics/Point;

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomLeft:Landroid/graphics/Point;

    .line 61
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomRight:Landroid/graphics/Point;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/zui/fingerprint/RectParcelable$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/zui/fingerprint/RectParcelable$1;

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/zui/fingerprint/RectParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getRectString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 66
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "mTopLeft = (%d,%d) mTopRight = (%d,%d) mBottomLeft = (%d,%d) mBottomRight = (%d,%d)"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mTopLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mTopRight:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mTopRight:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomLeft:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomRight:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x7

    iget-object v5, p0, Lcom/zui/fingerprint/RectParcelable;->mBottomRight:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "rectString":Ljava/lang/String;
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 39
    return-void
.end method
