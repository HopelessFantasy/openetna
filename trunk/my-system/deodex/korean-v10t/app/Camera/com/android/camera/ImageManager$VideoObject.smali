.class Lcom/android/camera/ImageManager$VideoObject;
.super Lcom/android/camera/ImageManager$BaseImage;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoObject"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$VideoList;JI)V
    .registers 20
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "dateTaken"
    .parameter "row"

    .prologue
    .line 3491
    iput-object p1, p0, Lcom/android/camera/ImageManager$VideoObject;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p10

    .line 3492
    invoke-direct/range {v0 .. v8}, Lcom/android/camera/ImageManager$BaseImage;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V

    .line 3493
    return-void
.end method

.method private getStringEntry(I)Ljava/lang/String;
    .registers 5
    .parameter "entryName"

    .prologue
    .line 3570
    const/4 v1, 0x0

    .line 3571
    .local v1, entry:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3572
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3573
    :try_start_6
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3574
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3576
    :cond_14
    monitor-exit v0

    .line 3577
    return-object v1

    .line 3576
    :catchall_16
    move-exception v2

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_16

    throw v2
.end method

.method private setStringEntry(Ljava/lang/String;I)V
    .registers 5
    .parameter "entry"
    .parameter "entryName"

    .prologue
    .line 3616
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3617
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3618
    :try_start_5
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3619
    invoke-interface {v0, p2, p1}, Landroid/database/Cursor;->updateString(ILjava/lang/String;)Z

    .line 3621
    :cond_12
    monitor-exit v0

    .line 3622
    return-void

    .line 3621
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_14

    throw v1
.end method


# virtual methods
.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .registers 2

    .prologue
    .line 3496
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "other"

    .prologue
    const/4 v1, 0x0

    .line 3501
    if-nez p1, :cond_5

    move v0, v1

    .line 3506
    .end local p1
    :goto_4
    return v0

    .line 3503
    .restart local p1
    :cond_5
    instance-of v0, p1, Lcom/android/camera/ImageManager$VideoObject;

    if-nez v0, :cond_b

    move v0, v1

    .line 3504
    goto :goto_4

    .line 3506
    :cond_b
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    check-cast p1, Lcom/android/camera/ImageManager$VideoObject;

    .end local p1
    invoke-virtual {p1}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_4
.end method

.method public fullSizeBitmap(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "targetWidthHeight"

    .prologue
    .line 3526
    invoke-static {}, Lcom/android/camera/ImageManager;->access$1100()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public fullSizeBitmap_cancelable(I)Lcom/android/camera/ImageManager$IGetBitmap_cancelable;
    .registers 3
    .parameter "targetWidthHeight"

    .prologue
    .line 3530
    const/4 v0, 0x0

    return-object v0
.end method

.method public fullSizeImageData()Ljava/io/InputStream;
    .registers 5

    .prologue
    .line 3538
    :try_start_0
    iget-object v2, p0, Lcom/android/camera/ImageManager$VideoObject;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_9} :catch_c

    move-result-object v1

    .local v1, input:Ljava/io/InputStream;
    move-object v2, v1

    .line 3542
    .end local v1           #input:Ljava/io/InputStream;
    :goto_b
    return-object v2

    .line 3541
    :catch_c
    move-exception v2

    move-object v0, v2

    .line 3542
    .local v0, ex:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_b
.end method

.method public fullSizeImageId()J
    .registers 3

    .prologue
    .line 3550
    iget-wide v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mId:J

    return-wide v0
.end method

.method public getCategory()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3554
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3510
    const/4 v2, 0x0

    .line 3511
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 3512
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 3513
    :try_start_6
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 3514
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoObject;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/ImageManager$VideoList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->indexData()I

    move-result v1

    .line 3515
    .local v1, column:I
    if-ltz v1, :cond_20

    .line 3516
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 3518
    .end local v1           #column:I
    :cond_20
    monitor-exit v0

    .line 3519
    return-object v2

    .line 3518
    :catchall_22
    move-exception v3

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v3
.end method

.method public getHeight()I
    .registers 2

    .prologue
    .line 3558
    const/4 v0, 0x0

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3562
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPicasaId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3566
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3581
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TAGS:I

    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->getStringEntry(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .registers 2

    .prologue
    .line 3585
    const/4 v0, 0x0

    return v0
.end method

.method public imageId()J
    .registers 3

    .prologue
    .line 3592
    iget-wide v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mId:J

    return-wide v0
.end method

.method public isDrm()Z
    .registers 2

    .prologue
    .line 3600
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .registers 2

    .prologue
    .line 3596
    const/4 v0, 0x0

    return v0
.end method

.method public rotateImageBy(I)Z
    .registers 3
    .parameter "degrees"

    .prologue
    .line 3604
    const/4 v0, 0x0

    return v0
.end method

.method public setCategory(Ljava/lang/String;)V
    .registers 3
    .parameter "category"

    .prologue
    .line 3608
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_CATEGORY:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;I)V

    .line 3609
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .registers 3
    .parameter "language"

    .prologue
    .line 3612
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LANGUAGE:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;I)V

    .line 3613
    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .registers 3
    .parameter "tags"

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoObject;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$VideoList;

    iget v0, v0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TAGS:I

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ImageManager$VideoObject;->setStringEntry(Ljava/lang/String;I)V

    .line 3626
    return-void
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 3632
    const/16 v0, 0x140

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$VideoObject;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 3637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3638
    .local v0, sb:Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/camera/ImageManager$VideoObject;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3639
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
