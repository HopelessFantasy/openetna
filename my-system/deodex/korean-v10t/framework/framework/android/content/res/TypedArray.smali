.class public Landroid/content/res/TypedArray;
.super Ljava/lang/Object;
.source "TypedArray.java"


# instance fields
.field mData:[I

.field mIndices:[I

.field mLength:I

.field private final mResources:Landroid/content/res/Resources;

.field mRsrcs:[I

.field private mValue:Landroid/util/TypedValue;

.field mXml:Landroid/content/res/XmlBlock$Parser;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;[I[II)V
    .registers 6
    .parameter "resources"
    .parameter "data"
    .parameter "indices"
    .parameter "len"

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 680
    iput-object p1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    .line 681
    iput-object p2, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 682
    iput-object p3, p0, Landroid/content/res/TypedArray;->mIndices:[I

    .line 683
    iput p4, p0, Landroid/content/res/TypedArray;->mLength:I

    .line 684
    return-void
.end method

.method private getValueAt(ILandroid/util/TypedValue;)Z
    .registers 6
    .parameter "index"
    .parameter "outValue"

    .prologue
    .line 647
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 648
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 649
    .local v1, type:I
    if-nez v1, :cond_a

    .line 650
    const/4 v2, 0x0

    .line 661
    :goto_9
    return v2

    .line 652
    :cond_a
    iput v1, p2, Landroid/util/TypedValue;->type:I

    .line 653
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->data:I

    .line 654
    add-int/lit8 v2, p1, 0x2

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->assetCookie:I

    .line 655
    add-int/lit8 v2, p1, 0x3

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->resourceId:I

    .line 656
    add-int/lit8 v2, p1, 0x4

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->changingConfigurations:I

    .line 657
    add-int/lit8 v2, p1, 0x5

    aget v2, v0, v2

    iput v2, p2, Landroid/util/TypedValue;->density:I

    .line 658
    const/4 v2, 0x3

    if-ne v1, v2, :cond_33

    .line 659
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p2, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    .line 661
    :cond_33
    const/4 v2, 0x1

    goto :goto_9
.end method

.method private loadStringValueAt(I)Ljava/lang/CharSequence;
    .registers 6
    .parameter "index"

    .prologue
    .line 665
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 666
    .local v1, data:[I
    add-int/lit8 v2, p1, 0x2

    aget v0, v1, v2

    .line 667
    .local v0, cookie:I
    if-gez v0, :cond_19

    .line 668
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v2, :cond_17

    .line 669
    iget-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 675
    :goto_16
    return-object v2

    .line 672
    :cond_17
    const/4 v2, 0x0

    goto :goto_16

    .line 675
    :cond_19
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v2, v2, Landroid/content/res/Resources;->mAssets:Landroid/content/res/AssetManager;

    add-int/lit8 v3, p1, 0x1

    aget v3, v1, v3

    invoke-virtual {v2, v0, v3}, Landroid/content/res/AssetManager;->getPooledString(II)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_16
.end method


# virtual methods
.method public getBoolean(IZ)Z
    .registers 9
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v5, "Resources"

    .line 158
    mul-int/lit8 p1, p1, 0x6

    .line 159
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 160
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 161
    .local v1, type:I
    if-nez v1, :cond_e

    move v3, p2

    .line 176
    :goto_d
    return v3

    .line 163
    :cond_e
    const/16 v3, 0x10

    if-lt v1, v3, :cond_20

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_20

    .line 165
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    goto :goto_d

    :cond_1e
    const/4 v3, 0x0

    goto :goto_d

    .line 168
    :cond_20
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 169
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 170
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to boolean: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToBoolean(Ljava/lang/CharSequence;Z)Z

    move-result v3

    goto :goto_d

    .line 174
    :cond_49
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBoolean of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    .line 176
    goto :goto_d
.end method

.method public getColor(II)I
    .registers 10
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 255
    mul-int/lit8 p1, p1, 0x6

    .line 256
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 257
    .local v1, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 258
    .local v2, type:I
    if-nez v2, :cond_c

    move v4, p2

    .line 270
    :goto_b
    return v4

    .line 260
    :cond_c
    const/16 v4, 0x10

    if-lt v2, v4, :cond_19

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_19

    .line 262
    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    goto :goto_b

    .line 263
    :cond_19
    const/4 v4, 0x3

    if-ne v2, v4, :cond_33

    .line 264
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 265
    .local v3, value:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 266
    iget-object v4, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v5, v3, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 268
    .local v0, csl:Landroid/content/res/ColorStateList;
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    goto :goto_b

    .end local v0           #csl:Landroid/content/res/ColorStateList;
    :cond_31
    move v4, p2

    .line 270
    goto :goto_b

    .line 273
    .end local v3           #value:Landroid/util/TypedValue;
    :cond_33
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t convert to color: type=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getColorStateList(I)Landroid/content/res/ColorStateList;
    .registers 5
    .parameter "index"

    .prologue
    .line 287
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 288
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 289
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->loadColorStateList(Landroid/util/TypedValue;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 291
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getDimension(IF)F
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 335
    mul-int/lit8 p1, p1, 0x6

    .line 336
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 337
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 338
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 341
    :goto_b
    return v2

    .line 340
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 341
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimension(ILandroid/util/DisplayMetrics;)F

    move-result v2

    goto :goto_b

    .line 345
    :cond_1c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelOffset(II)I
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 367
    mul-int/lit8 p1, p1, 0x6

    .line 368
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 369
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 370
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 373
    :goto_b
    return v2

    .line 372
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 373
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_b

    .line 377
    :cond_1c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDimensionPixelSize(II)I
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 400
    mul-int/lit8 p1, p1, 0x6

    .line 401
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 402
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 403
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 406
    :goto_b
    return v2

    .line 405
    :cond_c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    .line 406
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_b

    .line 410
    :cond_1c
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to dimension: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .registers 5
    .parameter "index"

    .prologue
    .line 537
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 538
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 548
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->loadDrawable(Landroid/util/TypedValue;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 550
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getFloat(IF)F
    .registers 10
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v6, "Resources"

    .line 217
    mul-int/lit8 p1, p1, 0x6

    .line 218
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 219
    .local v0, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v0, v4

    .line 220
    .local v2, type:I
    if-nez v2, :cond_e

    move v4, p2

    .line 239
    :goto_d
    return v4

    .line 222
    :cond_e
    const/4 v4, 0x4

    if-ne v2, v4, :cond_1a

    .line 223
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    goto :goto_d

    .line 224
    :cond_1a
    const/16 v4, 0x10

    if-lt v2, v4, :cond_28

    const/16 v4, 0x1f

    if-gt v2, v4, :cond_28

    .line 226
    add-int/lit8 v4, p1, 0x1

    aget v4, v0, v4

    int-to-float v4, v4

    goto :goto_d

    .line 229
    :cond_28
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 230
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 231
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to float: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v1

    .line 233
    .local v1, str:Ljava/lang/CharSequence;
    if-eqz v1, :cond_57

    .line 234
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    goto :goto_d

    .line 237
    .end local v1           #str:Ljava/lang/CharSequence;
    :cond_57
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFloat of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v4, p2

    .line 239
    goto :goto_d
.end method

.method public getFraction(IIIF)F
    .registers 10
    .parameter "index"
    .parameter "base"
    .parameter "pbase"
    .parameter "defValue"

    .prologue
    .line 486
    mul-int/lit8 p1, p1, 0x6

    .line 487
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 488
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 489
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p4

    .line 492
    :goto_b
    return v2

    .line 491
    :cond_c
    const/4 v2, 0x6

    if-ne v1, v2, :cond_1a

    .line 492
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    int-to-float v3, p2

    int-to-float v4, p3

    invoke-static {v2, v3, v4}, Landroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    goto :goto_b

    .line 496
    :cond_1a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to fraction: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIndex(I)I
    .registers 4
    .parameter "at"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getIndexCount()I
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Landroid/content/res/TypedArray;->mIndices:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getInt(II)I
    .registers 9
    .parameter "index"
    .parameter "defValue"

    .prologue
    const-string v5, "Resources"

    .line 188
    mul-int/lit8 p1, p1, 0x6

    .line 189
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 190
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 191
    .local v1, type:I
    if-nez v1, :cond_e

    move v3, p2

    .line 206
    :goto_d
    return v3

    .line 193
    :cond_e
    const/16 v3, 0x10

    if-lt v1, v3, :cond_1b

    const/16 v3, 0x1f

    if-gt v1, v3, :cond_1b

    .line 195
    add-int/lit8 v3, p1, 0x1

    aget v3, v0, v3

    goto :goto_d

    .line 198
    :cond_1b
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 199
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 200
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to int: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I

    move-result v3

    goto :goto_d

    .line 204
    :cond_44
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInt of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, p2

    .line 206
    goto :goto_d
.end method

.method public getInteger(II)I
    .registers 8
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 304
    mul-int/lit8 p1, p1, 0x6

    .line 305
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 306
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 307
    .local v1, type:I
    if-nez v1, :cond_c

    move v2, p2

    .line 311
    :goto_b
    return v2

    .line 309
    :cond_c
    const/16 v2, 0x10

    if-lt v1, v2, :cond_19

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_19

    .line 311
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    goto :goto_b

    .line 314
    :cond_19
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t convert to integer: type=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getLayoutDimension(II)I
    .registers 7
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 456
    mul-int/lit8 p1, p1, 0x6

    .line 457
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 458
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 459
    .local v1, type:I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_15

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_15

    .line 461
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 467
    :goto_14
    return v2

    .line 462
    :cond_15
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 463
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_14

    :cond_25
    move v2, p2

    .line 467
    goto :goto_14
.end method

.method public getLayoutDimension(ILjava/lang/String;)I
    .registers 8
    .parameter "index"
    .parameter "name"

    .prologue
    .line 427
    mul-int/lit8 p1, p1, 0x6

    .line 428
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 429
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 430
    .local v1, type:I
    const/16 v2, 0x10

    if-lt v1, v2, :cond_15

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_15

    .line 432
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    .line 434
    :goto_14
    return v2

    .line 433
    :cond_15
    const/4 v2, 0x5

    if-ne v1, v2, :cond_25

    .line 434
    add-int/lit8 v2, p1, 0x1

    aget v2, v0, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v3, v3, Landroid/content/res/Resources;->mMetrics:Landroid/util/DisplayMetrics;

    invoke-static {v2, v3}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v2

    goto :goto_14

    .line 438
    :cond_25
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": You must supply a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " attribute."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getNonResourceString(I)Ljava/lang/String;
    .registers 7
    .parameter "index"

    .prologue
    .line 136
    mul-int/lit8 p1, p1, 0x6

    .line 137
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 138
    .local v1, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v2, v1, v3

    .line 139
    .local v2, type:I
    const/4 v3, 0x3

    if-ne v2, v3, :cond_20

    .line 140
    add-int/lit8 v3, p1, 0x2

    aget v0, v1, v3

    .line 141
    .local v0, cookie:I
    if-gez v0, :cond_20

    .line 142
    iget-object v3, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    add-int/lit8 v4, p1, 0x1

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Landroid/content/res/XmlBlock$Parser;->getPooledString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    .end local v0           #cookie:I
    :goto_1f
    return-object v3

    :cond_20
    const/4 v3, 0x0

    goto :goto_1f
.end method

.method public getPositionDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 630
    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    invoke-virtual {v0}, Landroid/content/res/XmlBlock$Parser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const-string v0, "<internal>"

    goto :goto_a
.end method

.method public getResourceId(II)I
    .registers 6
    .parameter "index"
    .parameter "defValue"

    .prologue
    .line 515
    mul-int/lit8 p1, p1, 0x6

    .line 516
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 517
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v2, v0, v2

    if-eqz v2, :cond_12

    .line 518
    add-int/lit8 v2, p1, 0x3

    aget v1, v0, v2

    .line 519
    .local v1, resid:I
    if-eqz v1, :cond_12

    move v2, v1

    .line 523
    .end local v1           #resid:I
    :goto_11
    return v2

    :cond_12
    move v2, p2

    goto :goto_11
.end method

.method public getResources()Landroid/content/res/Resources;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 10
    .parameter "index"

    .prologue
    const/4 v6, 0x0

    const-string v7, "Resources"

    .line 101
    mul-int/lit8 p1, p1, 0x6

    .line 102
    iget-object v1, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 103
    .local v1, data:[I
    add-int/lit8 v4, p1, 0x0

    aget v2, v1, v4

    .line 104
    .local v2, type:I
    if-nez v2, :cond_f

    move-object v4, v6

    .line 118
    :goto_e
    return-object v4

    .line 106
    :cond_f
    const/4 v4, 0x3

    if-ne v2, v4, :cond_1b

    .line 107
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    .line 110
    :cond_1b
    iget-object v3, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 111
    .local v3, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v3}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 112
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Converting to string: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {v3}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    .local v0, cs:Ljava/lang/CharSequence;
    if-eqz v0, :cond_46

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_e

    :cond_46
    move-object v4, v6

    goto :goto_e

    .line 116
    .end local v0           #cs:Ljava/lang/CharSequence;
    :cond_48
    const-string v4, "Resources"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getString of bad type: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .line 118
    goto :goto_e
.end method

.method public getText(I)Ljava/lang/CharSequence;
    .registers 9
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const-string v6, "Resources"

    .line 73
    mul-int/lit8 p1, p1, 0x6

    .line 74
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 75
    .local v0, data:[I
    add-int/lit8 v3, p1, 0x0

    aget v1, v0, v3

    .line 76
    .local v1, type:I
    if-nez v1, :cond_f

    move-object v3, v5

    .line 89
    :goto_e
    return-object v3

    .line 78
    :cond_f
    const/4 v3, 0x3

    if-ne v1, v3, :cond_17

    .line 79
    invoke-direct {p0, p1}, Landroid/content/res/TypedArray;->loadStringValueAt(I)Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_e

    .line 82
    :cond_17
    iget-object v2, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 83
    .local v2, v:Landroid/util/TypedValue;
    invoke-direct {p0, p1, v2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 84
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Converting to string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v2}, Landroid/util/TypedValue;->coerceToString()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_e

    .line 87
    :cond_3c
    const-string v3, "Resources"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getString of bad type: 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 89
    goto :goto_e
.end method

.method public getTextArray(I)[Ljava/lang/CharSequence;
    .registers 5
    .parameter "index"

    .prologue
    .line 564
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 565
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 575
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 577
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getValue(ILandroid/util/TypedValue;)Z
    .registers 4
    .parameter "index"
    .parameter "outValue"

    .prologue
    .line 590
    mul-int/lit8 v0, p1, 0x6

    invoke-direct {p0, v0, p2}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v0

    return v0
.end method

.method public hasValue(I)Z
    .registers 5
    .parameter "index"

    .prologue
    .line 601
    mul-int/lit8 p1, p1, 0x6

    .line 602
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    .line 603
    .local v0, data:[I
    add-int/lit8 v2, p1, 0x0

    aget v1, v0, v2

    .line 604
    .local v1, type:I
    if-eqz v1, :cond_c

    const/4 v2, 0x1

    :goto_b
    return v2

    :cond_c
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public length()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Landroid/content/res/TypedArray;->mLength:I

    return v0
.end method

.method public peekValue(I)Landroid/util/TypedValue;
    .registers 4
    .parameter "index"

    .prologue
    .line 619
    iget-object v0, p0, Landroid/content/res/TypedArray;->mValue:Landroid/util/TypedValue;

    .line 620
    .local v0, value:Landroid/util/TypedValue;
    mul-int/lit8 v1, p1, 0x6

    invoke-direct {p0, v1, v0}, Landroid/content/res/TypedArray;->getValueAt(ILandroid/util/TypedValue;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-object v1, v0

    .line 623
    :goto_b
    return-object v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method public recycle()V
    .registers 5

    .prologue
    .line 637
    iget-object v1, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v1, v1, Landroid/content/res/Resources;->mTmpValue:Landroid/util/TypedValue;

    monitor-enter v1

    .line 638
    :try_start_5
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iget-object v0, v2, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 639
    .local v0, cached:Landroid/content/res/TypedArray;
    if-eqz v0, :cond_13

    iget-object v2, v0, Landroid/content/res/TypedArray;->mData:[I

    array-length v2, v2

    iget-object v3, p0, Landroid/content/res/TypedArray;->mData:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1a

    .line 640
    :cond_13
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/content/res/TypedArray;->mXml:Landroid/content/res/XmlBlock$Parser;

    .line 641
    iget-object v2, p0, Landroid/content/res/TypedArray;->mResources:Landroid/content/res/Resources;

    iput-object p0, v2, Landroid/content/res/Resources;->mCachedStyledAttributes:Landroid/content/res/TypedArray;

    .line 643
    :cond_1a
    monitor-exit v1

    .line 644
    return-void

    .line 643
    .end local v0           #cached:Landroid/content/res/TypedArray;
    :catchall_1c
    move-exception v2

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 687
    iget-object v0, p0, Landroid/content/res/TypedArray;->mData:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
