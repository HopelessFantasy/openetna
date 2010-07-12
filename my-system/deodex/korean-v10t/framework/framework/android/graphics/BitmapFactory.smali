.class public Landroid/graphics/BitmapFactory;
.super Ljava/lang/Object;
.source "BitmapFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/BitmapFactory$Options;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public static decodeByteArray([BII)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "opts"

    .prologue
    .line 381
    or-int v0, p1, p2

    if-ltz v0, :cond_9

    array-length v0, p0

    add-int v1, p1, p2

    if-ge v0, v1, :cond_f

    .line 382
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 384
    :cond_f
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/BitmapFactory;->nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "pathName"

    .prologue
    .line 295
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "pathName"
    .parameter "opts"

    .prologue
    .line 266
    const/4 v0, 0x0

    .line 267
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 269
    .local v1, stream:Ljava/io/InputStream;
    :try_start_2
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_13
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_1a

    .line 270
    .end local v1           #stream:Ljava/io/InputStream;
    .local v2, stream:Ljava/io/InputStream;
    const/4 v3, 0x0

    :try_start_8
    invoke-static {v2, v3, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_27
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_2a

    move-result-object v0

    .line 276
    if-eqz v2, :cond_11

    .line 278
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_25

    :cond_11
    :goto_11
    move-object v1, v2

    .line 284
    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :cond_12
    :goto_12
    return-object v0

    .line 276
    :catchall_13
    move-exception v3

    :goto_14
    if-eqz v1, :cond_19

    .line 278
    :try_start_16
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_19} :catch_23

    .line 276
    :cond_19
    :goto_19
    throw v3

    .line 271
    :catch_1a
    move-exception v3

    .line 276
    :goto_1b
    if-eqz v1, :cond_12

    .line 278
    :try_start_1d
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_12

    .line 279
    :catch_21
    move-exception v3

    goto :goto_12

    :catch_23
    move-exception v4

    goto :goto_19

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_25
    move-exception v3

    goto :goto_11

    .line 276
    :catchall_27
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_14

    .line 271
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v2       #stream:Ljava/io/InputStream;
    :catch_2a
    move-exception v3

    move-object v1, v2

    .end local v2           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    goto :goto_1b
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "fd"

    .prologue
    const/4 v0, 0x0

    .line 533
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "fd"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    .line 521
    invoke-static {p0, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "res"
    .parameter "id"

    .prologue
    .line 364
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "res"
    .parameter "id"
    .parameter "opts"

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 341
    .local v0, bm:Landroid/graphics/Bitmap;
    :try_start_1
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 342
    .local v2, value:Landroid/util/TypedValue;
    invoke-virtual {p0, p1, v2}, Landroid/content/res/Resources;->openRawResource(ILandroid/util/TypedValue;)Ljava/io/InputStream;

    move-result-object v1

    .line 344
    .local v1, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    invoke-static {p0, v2, v1, v3, p2}, Landroid/graphics/BitmapFactory;->decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 345
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_13

    .line 352
    .end local v1           #is:Ljava/io/InputStream;
    .end local v2           #value:Landroid/util/TypedValue;
    :goto_12
    return-object v0

    .line 346
    :catch_13
    move-exception v3

    goto :goto_12
.end method

.method public static decodeResourceStream(Landroid/content/res/Resources;Landroid/util/TypedValue;Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 7
    .parameter "res"
    .parameter "value"
    .parameter "is"
    .parameter "pad"
    .parameter "opts"

    .prologue
    .line 305
    if-nez p4, :cond_7

    .line 306
    new-instance p4, Landroid/graphics/BitmapFactory$Options;

    .end local p4
    invoke-direct {p4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 309
    .restart local p4
    :cond_7
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    if-nez v1, :cond_15

    if-eqz p1, :cond_15

    .line 310
    iget v0, p1, Landroid/util/TypedValue;->density:I

    .line 311
    .local v0, density:I
    if-nez v0, :cond_28

    .line 312
    const/16 v1, 0xa0

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 318
    .end local v0           #density:I
    :cond_15
    :goto_15
    iget v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    if-nez v1, :cond_23

    if-eqz p0, :cond_23

    .line 319
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    iput v1, p4, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 322
    :cond_23
    invoke-static {p2, p3, p4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    return-object v1

    .line 313
    .restart local v0       #density:I
    :cond_28
    const v1, 0xffff

    if-eq v0, v1, :cond_15

    .line 314
    iput v0, p4, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    goto :goto_15
.end method

.method public static decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .registers 2
    .parameter "is"

    .prologue
    const/4 v0, 0x0

    .line 503
    invoke-static {p0, v0, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "is"
    .parameter "outPadding"
    .parameter "opts"

    .prologue
    const/16 v10, 0x4000

    const/4 v12, 0x1

    const/high16 v11, 0x3f00

    .line 421
    if-nez p0, :cond_9

    .line 422
    const/4 v9, 0x0

    .line 487
    .end local p0
    :goto_8
    return-object v9

    .line 427
    .restart local p0
    :cond_9
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v9

    if-nez v9, :cond_15

    .line 428
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, p0, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p0
    .local v2, is:Ljava/io/InputStream;
    move-object p0, v2

    .line 434
    .end local v2           #is:Ljava/io/InputStream;
    .restart local p0
    :cond_15
    const/16 v9, 0x400

    invoke-virtual {p0, v9}, Ljava/io/InputStream;->mark(I)V

    .line 438
    instance-of v9, p0, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v9, :cond_2e

    .line 439
    check-cast p0, Landroid/content/res/AssetManager$AssetInputStream;

    .end local p0
    invoke-virtual {p0}, Landroid/content/res/AssetManager$AssetInputStream;->getAssetInt()I

    move-result v9

    invoke-static {v9, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 454
    .local v0, bm:Landroid/graphics/Bitmap;
    :goto_28
    if-eqz v0, :cond_2c

    if-nez p2, :cond_3c

    :cond_2c
    move-object v9, v0

    .line 455
    goto :goto_8

    .line 446
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .restart local p0
    :cond_2e
    const/4 v8, 0x0

    .line 447
    .local v8, tempStorage:[B
    if-eqz p2, :cond_33

    .line 448
    iget-object v8, p2, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 449
    :cond_33
    if-nez v8, :cond_37

    .line 450
    new-array v8, v10, [B

    .line 451
    :cond_37
    invoke-static {p0, v8, p1, p2}, Landroid/graphics/BitmapFactory;->nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0       #bm:Landroid/graphics/Bitmap;
    goto :goto_28

    .line 458
    .end local v8           #tempStorage:[B
    .end local p0
    :cond_3c
    iget v1, p2, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 459
    .local v1, density:I
    if-nez v1, :cond_42

    move-object v9, v0

    .line 460
    goto :goto_8

    .line 463
    :cond_42
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 464
    iget v7, p2, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 465
    .local v7, targetDensity:I
    if-eqz v7, :cond_4f

    if-eq v1, v7, :cond_4f

    iget v9, p2, Landroid/graphics/BitmapFactory$Options;->inScreenDensity:I

    if-ne v1, v9, :cond_51

    :cond_4f
    move-object v9, v0

    .line 467
    goto :goto_8

    .line 470
    :cond_51
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v4

    .line 471
    .local v4, np:[B
    if-eqz v4, :cond_8f

    invoke-static {v4}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v9

    if-eqz v9, :cond_8f

    move v3, v12

    .line 472
    .local v3, isNinePatch:Z
    :goto_5e
    iget-boolean v9, p2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    if-nez v9, :cond_64

    if-eqz v3, :cond_8c

    .line 473
    :cond_64
    int-to-float v9, v7

    int-to-float v10, v1

    div-float v6, v9, v10

    .line 475
    .local v6, scale:F
    move-object v5, v0

    .line 476
    .local v5, oldBitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v6

    add-float/2addr v9, v11

    float-to-int v9, v9

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v6

    add-float/2addr v10, v11

    float-to-int v10, v10

    invoke-static {v5, v9, v10, v12}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 480
    if-eqz v3, :cond_89

    .line 481
    invoke-static {v4, v6, p1}, Landroid/graphics/BitmapFactory;->nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B

    move-result-object v4

    .line 482
    invoke-virtual {v0, v4}, Landroid/graphics/Bitmap;->setNinePatchChunk([B)V

    .line 484
    :cond_89
    invoke-virtual {v0, v7}, Landroid/graphics/Bitmap;->setDensity(I)V

    .end local v5           #oldBitmap:Landroid/graphics/Bitmap;
    .end local v6           #scale:F
    :cond_8c
    move-object v9, v0

    .line 487
    goto/16 :goto_8

    .line 471
    .end local v3           #isNinePatch:Z
    :cond_8f
    const/4 v9, 0x0

    move v3, v9

    goto :goto_5e
.end method

.method private static native nativeDecodeAsset(ILandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeDecodeStream(Ljava/io/InputStream;[BLandroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method private static native nativeScaleNinePatch([BFLandroid/graphics/Rect;)[B
.end method
