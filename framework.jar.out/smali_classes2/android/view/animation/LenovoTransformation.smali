.class public Landroid/view/animation/LenovoTransformation;
.super Ljava/lang/Object;
.source "LenovoTransformation.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/animation/LenovoTransformation;",
            ">;"
        }
    .end annotation
.end field

.field public static final TYPE_ALPHA:I = 0x1

.field public static final TYPE_BOTH:I = 0x3

.field public static final TYPE_IDENTITY:I = 0x0

.field public static final TYPE_MATRIX:I = 0x2


# instance fields
.field protected mAlpha:F

.field private mClipRect:Landroid/graphics/Rect;

.field private mHasClipRect:Z

.field protected mMatrix:Landroid/graphics/Matrix;

.field protected mTransformationType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Landroid/view/animation/LenovoTransformation$1;

    invoke-direct {v0}, Landroid/view/animation/LenovoTransformation$1;-><init>()V

    sput-object v0, Landroid/view/animation/LenovoTransformation;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {p0}, Landroid/view/animation/LenovoTransformation;->clear()V

    .line 99
    return-void
.end method

.method public static switchToLenovoTransformation(Landroid/view/animation/Transformation;)Landroid/view/animation/LenovoTransformation;
    .locals 9
    .param p0, "mTrans"    # Landroid/view/animation/Transformation;

    .prologue
    .line 291
    if-eqz p0, :cond_0

    .line 292
    invoke-virtual {p0}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 293
    .local v4, "tmpMatrix":Landroid/graphics/Matrix;
    const/16 v8, 0x9

    new-array v5, v8, [F

    .line 294
    .local v5, "values":[F
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 295
    const/4 v8, 0x0

    aget v2, v5, v8

    .line 296
    .local v2, "scaleX":F
    const/4 v8, 0x4

    aget v3, v5, v8

    .line 297
    .local v3, "scaleY":F
    const/4 v8, 0x2

    aget v6, v5, v8

    .line 298
    .local v6, "x":F
    const/4 v8, 0x5

    aget v7, v5, v8

    .line 299
    .local v7, "y":F
    new-instance v1, Landroid/view/animation/LenovoTransformation;

    invoke-direct {v1}, Landroid/view/animation/LenovoTransformation;-><init>()V

    .line 300
    .local v1, "mLenovoTransformation":Landroid/view/animation/LenovoTransformation;
    invoke-virtual {v1}, Landroid/view/animation/LenovoTransformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 301
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 302
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 303
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 306
    .end local v0    # "m":Landroid/graphics/Matrix;
    .end local v1    # "mLenovoTransformation":Landroid/view/animation/LenovoTransformation;
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v5    # "values":[F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static switchToTransformation(Landroid/view/animation/LenovoTransformation;)Landroid/view/animation/Transformation;
    .locals 9
    .param p0, "mTrans"    # Landroid/view/animation/LenovoTransformation;

    .prologue
    .line 313
    if-eqz p0, :cond_0

    .line 314
    invoke-virtual {p0}, Landroid/view/animation/LenovoTransformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    .line 315
    .local v4, "tmpMatrix":Landroid/graphics/Matrix;
    const/16 v8, 0x9

    new-array v5, v8, [F

    .line 316
    .local v5, "values":[F
    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->getValues([F)V

    .line 317
    const/4 v8, 0x0

    aget v2, v5, v8

    .line 318
    .local v2, "scaleX":F
    const/4 v8, 0x4

    aget v3, v5, v8

    .line 319
    .local v3, "scaleY":F
    const/4 v8, 0x2

    aget v6, v5, v8

    .line 320
    .local v6, "x":F
    const/4 v8, 0x5

    aget v7, v5, v8

    .line 321
    .local v7, "y":F
    new-instance v1, Landroid/view/animation/Transformation;

    invoke-direct {v1}, Landroid/view/animation/Transformation;-><init>()V

    .line 322
    .local v1, "mTransformation":Landroid/view/animation/Transformation;
    invoke-virtual {v1}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 323
    .local v0, "m":Landroid/graphics/Matrix;
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 324
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 325
    invoke-virtual {v0, v6, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 328
    .end local v0    # "m":Landroid/graphics/Matrix;
    .end local v1    # "mTransformation":Landroid/view/animation/Transformation;
    .end local v2    # "scaleX":F
    .end local v3    # "scaleY":F
    .end local v4    # "tmpMatrix":Landroid/graphics/Matrix;
    .end local v5    # "values":[F
    .end local v6    # "x":F
    .end local v7    # "y":F
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    .line 112
    :goto_0
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    .line 114
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    .line 115
    const/4 v0, 0x3

    iput v0, p0, Landroid/view/animation/LenovoTransformation;->mTransformationType:I

    .line 116
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    goto :goto_0
.end method

.method public compose(Landroid/view/animation/LenovoTransformation;)V
    .locals 6
    .param p1, "t"    # Landroid/view/animation/LenovoTransformation;

    .prologue
    .line 162
    iget v1, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    .line 163
    iget-object v1, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 164
    iget-boolean v1, p1, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    if-eqz v1, :cond_0

    .line 165
    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 166
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    if-eqz v1, :cond_1

    .line 167
    iget-object v1, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/LenovoTransformation;->setClipRect(IIII)V

    .line 173
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 170
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/animation/LenovoTransformation;->setClipRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    return v0
.end method

.method public getClipRect()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getTransformationType()I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Landroid/view/animation/LenovoTransformation;->mTransformationType:I

    return v0
.end method

.method public hasClipRect()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    return v0
.end method

.method public postCompose(Landroid/view/animation/LenovoTransformation;)V
    .locals 6
    .param p1, "t"    # Landroid/view/animation/LenovoTransformation;

    .prologue
    .line 181
    iget v1, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getAlpha()F

    move-result v2

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    .line 182
    iget-object v1, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 183
    iget-boolean v1, p1, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 185
    .local v0, "bounds":Landroid/graphics/Rect;
    iget-boolean v1, p0, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    if-eqz v1, :cond_1

    .line 186
    iget-object v1, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget-object v3, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v4

    iget-object v4, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/view/animation/LenovoTransformation;->setClipRect(IIII)V

    .line 192
    .end local v0    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    return-void

    .line 189
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    :cond_1
    invoke-virtual {p0, v0}, Landroid/view/animation/LenovoTransformation;->setClipRect(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public printShortString(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 281
    const-string v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 282
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->printShortString(Ljava/io/PrintWriter;)V

    .line 284
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 285
    return-void
.end method

.method public set(Landroid/view/animation/LenovoTransformation;)V
    .locals 2
    .param p1, "t"    # Landroid/view/animation/LenovoTransformation;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    .line 146
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 147
    iget-boolean v0, p1, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getClipRect()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/animation/LenovoTransformation;->setClipRect(Landroid/graphics/Rect;)V

    .line 153
    :goto_0
    invoke-virtual {p1}, Landroid/view/animation/LenovoTransformation;->getTransformationType()I

    move-result v0

    iput v0, p0, Landroid/view/animation/LenovoTransformation;->mTransformationType:I

    .line 154
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    .line 151
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 207
    iput p1, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    .line 208
    return-void
.end method

.method public setClipRect(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 223
    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 224
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/animation/LenovoTransformation;->mHasClipRect:Z

    .line 225
    return-void
.end method

.method public setClipRect(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 215
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/animation/LenovoTransformation;->setClipRect(IIII)V

    .line 216
    return-void
.end method

.method public setTransformationType(I)V
    .locals 0
    .param p1, "transformationType"    # I

    .prologue
    .line 136
    iput p1, p0, Landroid/view/animation/LenovoTransformation;->mTransformationType:I

    .line 137
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Landroid/view/animation/LenovoTransformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 264
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 271
    const-string v0, "{alpha="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 272
    const-string v0, " matrix="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->toShortString(Ljava/lang/StringBuilder;)V

    .line 273
    const/16 v0, 0x7d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 274
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 253
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Transformation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/animation/LenovoTransformation;->toShortString(Ljava/lang/StringBuilder;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/view/animation/LenovoTransformation;->getTransformationType()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    iget v1, p0, Landroid/view/animation/LenovoTransformation;->mAlpha:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 65
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 66
    .local v0, "values":[F
    iget-object v1, p0, Landroid/view/animation/LenovoTransformation;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 68
    return-void
.end method
