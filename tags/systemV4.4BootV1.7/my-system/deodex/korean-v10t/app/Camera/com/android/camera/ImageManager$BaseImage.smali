.class abstract Lcom/android/camera/ImageManager$BaseImage;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x400
    name = "BaseImage"
.end annotation


# instance fields
.field protected mContainer:Lcom/android/camera/ImageManager$BaseImageList;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mCursorRow:I

.field protected mExifData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mId:J

.field protected mMiniThumbMagic:J

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V
    .registers 9
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImage;->this$0:Lcom/android/camera/ImageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p6, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 236
    iput-wide p2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    .line 237
    iput-wide p4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 238
    iput-object p7, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    .line 239
    iput p8, p0, Lcom/android/camera/ImageManager$BaseImage;->mCursorRow:I

    .line 240
    return-void
.end method

.method private makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "targetWidthOrHeight"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    .line 665
    const/4 v1, 0x0

    .line 667
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_2
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "r"

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 668
    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_e
    .catchall {:try_start_2 .. :try_end_e} :catchall_1e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_e} :catch_15

    move-result-object v2

    .line 673
    if-eqz v1, :cond_14

    .line 674
    :try_start_11
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_25

    .line 677
    :cond_14
    :goto_14
    return-object v2

    .line 669
    :catch_15
    move-exception v2

    move-object v0, v2

    .line 673
    .local v0, ex:Ljava/io/IOException;
    if-eqz v1, :cond_1c

    .line 674
    :try_start_19
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_27

    :cond_1c
    :goto_1c
    move-object v2, v4

    .line 677
    goto :goto_14

    .line 672
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_1e
    move-exception v2

    .line 673
    if-eqz v1, :cond_24

    .line 674
    :try_start_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_29

    .line 677
    :cond_24
    :goto_24
    throw v2

    .line 676
    :catch_25
    move-exception v3

    goto :goto_14

    .restart local v0       #ex:Ljava/io/IOException;
    :catch_27
    move-exception v2

    goto :goto_1c

    .end local v0           #ex:Ljava/io/IOException;
    :catch_29
    move-exception v3

    goto :goto_24
.end method


# virtual methods
.method public commitChanges()V
    .registers 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 246
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 247
    :try_start_5
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 248
    invoke-interface {v0}, Landroid/database/Cursor;->commitUpdates()Z

    .line 249
    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 251
    :cond_15
    monitor-exit v0

    .line 252
    return-void

    .line 251
    :catchall_17
    move-exception v1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw v1
.end method

.method protected compressImageToFile(Landroid/graphics/Bitmap;[BLandroid/net/Uri;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
    .registers 5
    .parameter "bitmap"
    .parameter "jpegData"
    .parameter "uri"

    .prologue
    .line 320
    new-instance v0, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/camera/ImageManager$BaseImage$1CompressImageToFile;-><init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/net/Uri;Landroid/graphics/Bitmap;[B)V

    return-object v0
.end method

.method abstract compressionType()Landroid/graphics/Bitmap$CompressFormat;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 325
    if-nez p1, :cond_5

    move v0, v1

    .line 330
    .end local p1
    :goto_4
    return v0

    .line 327
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/android/camera/ImageManager$Image;

    if-nez v0, :cond_b

    move v0, v1

    .line 328
    goto :goto_4

    .line 330
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/android/camera/ImageManager$Image;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "targetWidthHeight"

    .prologue
    .line 334
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected fullSizeBitmap(IZ)Landroid/graphics/Bitmap;
    .registers 8
    .parameter "targetWidthHeight"
    .parameter "rotateAsNeeded"

    .prologue
    .line 338
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-wide v3, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 340
    .local v1, url:Landroid/net/Uri;
    if-nez v1, :cond_c

    .line 341
    const/4 v2, 0x0

    .line 350
    :goto_b
    return-object v2

    .line 343
    :cond_c
    const/4 v0, 0x0

    .line 344
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez v0, :cond_1f

    .line 345
    invoke-direct {p0, p1, v1}, Lcom/android/camera/ImageManager$BaseImage;->makeBitmap(ILandroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 346
    if-eqz v0, :cond_1f

    if-eqz p2, :cond_1f

    .line 347
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getDegreesRotated()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_1f
    move-object v2, v0

    .line 350
    goto :goto_b
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .registers 8
    .parameter "targetWidthHeight"

    .prologue
    const/4 v5, 0x0

    .line 392
    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "r"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 393
    .local v1, pfdInput:Landroid/os/ParcelFileDescriptor;
    new-instance v2, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/camera/ImageManager$BaseImage$1LoadBitmapCancelable;-><init>(Lcom/android/camera/ImageManager$BaseImage;Landroid/os/ParcelFileDescriptor;I)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_12} :catch_13
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_12} :catch_17

    .line 397
    .end local v1           #pfdInput:Landroid/os/ParcelFileDescriptor;
    :goto_12
    return-object v2

    .line 394
    :catch_13
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/io/FileNotFoundException;
    move-object v2, v5

    .line 395
    goto :goto_12

    .line 396
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_17
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/UnsupportedOperationException;
    move-object v2, v5

    .line 397
    goto :goto_12
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 403
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_c

    move-result-object v1

    .local v1, input:Ljava/io/InputStream;
    move-object v2, v1

    .line 407
    .end local v1           #input:Ljava/io/InputStream;
    :goto_b
    return-object v2

    .line 406
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 407
    .local v0, ex:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public fullSizeImageId()J
    .registers 3

    .prologue
    .line 412
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method public fullSizeImageUri()Landroid/net/Uri;
    .registers 4

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ImageManager$BaseImageList;->contentUri(J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getContainer()Lcom/android/camera/ImageManager$IImageList;
    .registers 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    return-object v0
.end method

.method getCursor()Landroid/database/Cursor;
    .registers 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getDateTaken()J
    .registers 4

    .prologue
    .line 428
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    if-gez v1, :cond_b

    const-wide/16 v1, 0x0

    .line 432
    :goto_a
    return-wide v1

    .line 429
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 430
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 431
    :try_start_10
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 432
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    monitor-exit v0

    goto :goto_a

    .line 433
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v1
.end method

.method protected getDegreesRotated()I
    .registers 2

    .prologue
    .line 437
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 9

    .prologue
    .line 474
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    if-gez v0, :cond_45

    .line 475
    const/4 v6, 0x0

    .line 477
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "description"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 482
    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 483
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_3e

    move-result-object v0

    .line 488
    if-eqz v6, :cond_35

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_35
    :goto_35
    return-object v0

    .line 485
    :cond_36
    :try_start_36
    const-string v0, ""
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_3e

    .line 488
    if-eqz v6, :cond_35

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_35

    .line 488
    :catchall_3e
    move-exception v0

    if-eqz v6, :cond_44

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0

    .line 492
    .end local v6           #c:Landroid/database/Cursor;
    :cond_45
    const/4 v7, 0x0

    .line 493
    .local v7, description:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 494
    .restart local v6       #c:Landroid/database/Cursor;
    monitor-enter v6

    .line 495
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 496
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 498
    :cond_5f
    monitor-exit v6

    move-object v0, v7

    .line 499
    goto :goto_35

    .line 498
    :catchall_62
    move-exception v0

    monitor-exit v6
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_62

    throw v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .registers 9

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    if-gez v0, :cond_49

    .line 557
    const/4 v6, 0x0

    .line 559
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_display_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 564
    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 565
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_42

    move-result-object v0

    .line 568
    if-eqz v6, :cond_35

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_35
    :goto_35
    return-object v0

    .line 568
    :cond_36
    if-eqz v6, :cond_3b

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 582
    :cond_3b
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_35

    .line 568
    :catchall_42
    move-exception v0

    if-eqz v6, :cond_48

    .line 569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_48
    throw v0

    .line 572
    .end local v6           #c:Landroid/database/Cursor;
    :cond_49
    const/4 v7, 0x0

    .line 573
    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 574
    .restart local v6       #c:Landroid/database/Cursor;
    monitor-enter v6

    .line 575
    :try_start_4f
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 576
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexDisplayName()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 578
    :cond_63
    monitor-exit v6
    :try_end_64
    .catchall {:try_start_4f .. :try_end_64} :catchall_6e

    .line 579
    if-eqz v7, :cond_3b

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    move-object v0, v7

    .line 580
    goto :goto_35

    .line 578
    :catchall_6e
    move-exception v0

    :try_start_6f
    monitor-exit v6
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    throw v0
.end method

.method public getHeight()I
    .registers 7

    .prologue
    .line 623
    const/4 v1, 0x0

    .line 625
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 626
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 627
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 628
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 629
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 630
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_25

    .line 635
    if-eqz v1, :cond_24

    .line 636
    :try_start_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_37

    .line 639
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_24
    :goto_24
    return v4

    .line 631
    :catch_25
    move-exception v4

    move-object v0, v4

    .line 632
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 635
    if-eqz v1, :cond_24

    .line 636
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_24

    .line 638
    :catch_2e
    move-exception v5

    goto :goto_24

    .line 634
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_30
    move-exception v4

    .line 635
    if-eqz v1, :cond_36

    .line 636
    :try_start_33
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_39

    .line 639
    :cond_36
    :goto_36
    throw v4

    .line 638
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_37
    move-exception v5

    goto :goto_24

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_39
    move-exception v5

    goto :goto_36
.end method

.method public getIsPrivate()Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 507
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v2

    if-gez v2, :cond_b

    move v2, v3

    .line 515
    :goto_a
    return v2

    .line 508
    :cond_b
    const/4 v1, 0x0

    .line 509
    .local v1, isPrivate:Z
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 510
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 511
    :try_start_11
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 512
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_2c

    const/4 v2, 0x1

    move v1, v2

    .line 514
    :cond_29
    :goto_29
    monitor-exit v0

    move v2, v1

    .line 515
    goto :goto_a

    :cond_2c
    move v1, v3

    .line 512
    goto :goto_29

    .line 514
    :catchall_2e
    move-exception v2

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_11 .. :try_end_30} :catchall_2e

    throw v2
.end method

.method public getLatitude()D
    .registers 4

    .prologue
    .line 519
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    if-gez v1, :cond_b

    const-wide/16 v1, 0x0

    .line 523
    :goto_a
    return-wide v1

    .line 520
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 521
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 522
    :try_start_10
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 523
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_a

    .line 524
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getLongitude()D
    .registers 4

    .prologue
    .line 528
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    if-gez v1, :cond_b

    const-wide/16 v1, 0x0

    .line 532
    :goto_a
    return-wide v1

    .line 529
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 530
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 531
    :try_start_10
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 532
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v1

    monitor-exit v0

    goto :goto_a

    .line 533
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_10 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public getMimeType()Ljava/lang/String;
    .registers 9

    .prologue
    .line 441
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    if-gez v0, :cond_45

    .line 442
    const/4 v6, 0x0

    .line 444
    .local v6, c:Landroid/database/Cursor;
    :try_start_9
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mime_type"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 449
    if-eqz v6, :cond_36

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 450
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2f
    .catchall {:try_start_9 .. :try_end_2f} :catchall_3e

    move-result-object v0

    .line 455
    if-eqz v6, :cond_35

    .line 456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 466
    :cond_35
    :goto_35
    return-object v0

    .line 452
    :cond_36
    :try_start_36
    const-string v0, ""
    :try_end_38
    .catchall {:try_start_36 .. :try_end_38} :catchall_3e

    .line 455
    if-eqz v6, :cond_35

    .line 456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_35

    .line 455
    :catchall_3e
    move-exception v0

    if-eqz v6, :cond_44

    .line 456
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_44
    throw v0

    .line 459
    .end local v6           #c:Landroid/database/Cursor;
    :cond_45
    const/4 v7, 0x0

    .line 460
    .local v7, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 461
    .restart local v6       #c:Landroid/database/Cursor;
    monitor-enter v6

    .line 462
    :try_start_4b
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 463
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 465
    :cond_5f
    monitor-exit v6

    move-object v0, v7

    .line 466
    goto :goto_35

    .line 465
    :catchall_62
    move-exception v0

    monitor-exit v6
    :try_end_64
    .catchall {:try_start_4b .. :try_end_64} :catchall_62

    throw v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 594
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRow()I
    .registers 2

    .prologue
    .line 598
    iget v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mCursorRow:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 5

    .prologue
    .line 540
    const/4 v1, 0x0

    .line 541
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 542
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 543
    :try_start_6
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 544
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_23

    .line 545
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 548
    :cond_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_2e

    .line 549
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_31

    move-object v2, v1

    :goto_2d
    return-object v2

    .line 548
    :catchall_2e
    move-exception v2

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw v2

    .line 549
    :cond_31
    iget-wide v2, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    goto :goto_2d
.end method

.method public getWidth()I
    .registers 7

    .prologue
    .line 602
    const/4 v1, 0x0

    .line 604
    .local v1, input:Landroid/os/ParcelFileDescriptor;
    :try_start_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 605
    .local v3, uri:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "r"

    invoke-virtual {v4, v3, v5}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 606
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 607
    .local v2, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v4, 0x1

    iput-boolean v4, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 608
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 609
    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1f} :catch_25

    .line 614
    if-eqz v1, :cond_24

    .line 615
    :try_start_21
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_37

    .line 618
    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :cond_24
    :goto_24
    return v4

    .line 610
    :catch_25
    move-exception v4

    move-object v0, v4

    .line 611
    .local v0, ex:Ljava/io/IOException;
    const/4 v4, 0x0

    .line 614
    if-eqz v1, :cond_24

    .line 615
    :try_start_2a
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_2e

    goto :goto_24

    .line 617
    :catch_2e
    move-exception v5

    goto :goto_24

    .line 613
    .end local v0           #ex:Ljava/io/IOException;
    :catchall_30
    move-exception v4

    .line 614
    if-eqz v1, :cond_36

    .line 615
    :try_start_33
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_36} :catch_39

    .line 618
    :cond_36
    :goto_36
    throw v4

    .line 617
    .restart local v2       #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v3       #uri:Landroid/net/Uri;
    :catch_37
    move-exception v5

    goto :goto_24

    .end local v2           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v3           #uri:Landroid/net/Uri;
    :catch_39
    move-exception v5

    goto :goto_36
.end method

.method public hasLatLong()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 644
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    if-ltz v1, :cond_11

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    if-gez v1, :cond_13

    :cond_11
    move v1, v2

    .line 648
    :goto_12
    return v1

    .line 645
    :cond_13
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 646
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 647
    :try_start_18
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 648
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLatitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexLongitude()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_3d

    const/4 v1, 0x1

    :goto_38
    monitor-exit v0

    goto :goto_12

    .line 649
    :catchall_3a
    move-exception v1

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_3a

    throw v1

    :cond_3d
    move v1, v2

    .line 648
    goto :goto_38
.end method

.method public imageId()J
    .registers 3

    .prologue
    .line 656
    iget-wide v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    return-wide v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 682
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public miniThumbBitmap()Landroid/graphics/Bitmap;
    .registers 14

    .prologue
    const/4 v12, 0x0

    .line 690
    :try_start_1
    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    .line 691
    .local v1, id:J
    iget-wide v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 692
    .local v4, dbMagic:J
    const-wide/16 v10, 0x0

    cmp-long v0, v4, v10

    if-eqz v0, :cond_f

    cmp-long v0, v4, v1

    if-nez v0, :cond_21

    .line 693
    :cond_f
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v10

    invoke-virtual {v0, p0, v3, v10}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v4

    .line 697
    :cond_21
    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v10

    monitor-enter v10
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_26} :catch_6d

    .line 698
    :try_start_26
    iget-wide v4, p0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 699
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 700
    .local v8, data:[B
    if-nez v8, :cond_4c

    .line 701
    const/4 v0, 0x1

    new-array v7, v0, [[B
    :try_end_37
    .catchall {:try_start_26 .. :try_end_37} :catchall_6a

    .line 703
    .local v7, createdThumbData:[[B
    :try_start_37
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v11

    invoke-virtual {v0, p0, v3, v11, v7}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I[[B)J
    :try_end_48
    .catchall {:try_start_37 .. :try_end_48} :catchall_6a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_48} :catch_71

    move-result-wide v4

    .line 709
    :goto_49
    const/4 v0, 0x0

    :try_start_4a
    aget-object v8, v7, v0

    .line 711
    .end local v7           #createdThumbData:[[B
    :cond_4c
    if-nez v8, :cond_58

    .line 712
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$000()[B

    move-result-object v3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B

    move-result-object v8

    .line 714
    :cond_58
    if-nez v8, :cond_5a

    .line 718
    :cond_5a
    if-eqz v8, :cond_67

    .line 719
    const/4 v0, 0x0

    array-length v3, v8

    invoke-static {v8, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 720
    .local v6, b:Landroid/graphics/Bitmap;
    if-nez v6, :cond_64

    .line 725
    :cond_64
    monitor-exit v10

    move-object v0, v6

    .line 736
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    .end local v6           #b:Landroid/graphics/Bitmap;
    .end local v8           #data:[B
    :goto_66
    return-object v0

    .line 727
    .restart local v1       #id:J
    .restart local v4       #dbMagic:J
    .restart local v8       #data:[B
    :cond_67
    monitor-exit v10

    move-object v0, v12

    .line 728
    goto :goto_66

    .line 727
    .end local v8           #data:[B
    :catchall_6a
    move-exception v0

    monitor-exit v10
    :try_end_6c
    .catchall {:try_start_4a .. :try_end_6c} :catchall_6a

    :try_start_6c
    throw v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_6d} :catch_6d

    .line 729
    .end local v1           #id:J
    .end local v4           #dbMagic:J
    :catch_6d
    move-exception v0

    move-object v9, v0

    .local v9, ex:Ljava/lang/Exception;
    move-object v0, v12

    .line 736
    goto :goto_66

    .line 705
    .end local v9           #ex:Ljava/lang/Exception;
    .restart local v1       #id:J
    .restart local v4       #dbMagic:J
    .restart local v7       #createdThumbData:[[B
    .restart local v8       #data:[B
    :catch_71
    move-exception v0

    goto :goto_49
.end method

.method public onRemove()V
    .registers 4

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    iget-wide v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 742
    return-void
.end method

.method protected saveMiniThumb(Landroid/graphics/Bitmap;)V
    .registers 8
    .parameter "source"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageId()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V

    .line 746
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 4
    .parameter "description"

    .prologue
    .line 752
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v1

    if-gez v1, :cond_9

    .line 759
    :goto_8
    return-void

    .line 753
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 754
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 755
    :try_start_e
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 756
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexDescription()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 758
    :cond_21
    monitor-exit v0

    goto :goto_8

    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_23

    throw v1
.end method

.method public setIsPrivate(Z)V
    .registers 5
    .parameter "isPrivate"

    .prologue
    .line 765
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v1

    if-gez v1, :cond_9

    .line 772
    :goto_8
    return-void

    .line 766
    :cond_9
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 767
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 768
    :try_start_e
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 769
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexPrivate()I

    move-result v1

    if-eqz p1, :cond_29

    const/4 v2, 0x1

    :goto_21
    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->updateInt(II)Z

    .line 771
    :cond_24
    monitor-exit v0

    goto :goto_8

    :catchall_26
    move-exception v1

    monitor-exit v0
    :try_end_28
    .catchall {:try_start_e .. :try_end_28} :catchall_26

    throw v1

    .line 769
    :cond_29
    const/4 v2, 0x0

    goto :goto_21
.end method

.method public setName(Ljava/lang/String;)V
    .registers 4
    .parameter "name"

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 779
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 780
    :try_start_5
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 781
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImage;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v1}, Lcom/android/camera/ImageManager$BaseImageList;->indexTitle()I

    move-result v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 783
    :cond_18
    monitor-exit v0

    .line 784
    return-void

    .line 783
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_5 .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method public setPicasaId(Ljava/lang/String;)V
    .registers 9
    .parameter "id"

    .prologue
    .line 787
    const/4 v6, 0x0

    .line 789
    .local v6, c:Landroid/database/Cursor;
    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "picasa_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 794
    if-eqz v6, :cond_2a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 798
    const/4 v0, 0x1

    invoke-interface {v6, v0, p1}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 799
    invoke-interface {v6}, Landroid/database/Cursor;->commitUpdates()Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_30

    .line 805
    :cond_2a
    if-eqz v6, :cond_2f

    .line 806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 808
    :cond_2f
    return-void

    .line 805
    :catchall_30
    move-exception v0

    if-eqz v6, :cond_36

    .line 806
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_36
    throw v0
.end method

.method public thumbUri()Landroid/net/Uri;
    .registers 5

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 816
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "thumb"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 817
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
