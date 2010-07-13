.class Lcom/android/camera/ImageManager$Image;
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
    name = "Image"
.end annotation


# instance fields
.field mRotation:I

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method protected constructor <init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V
    .registers 10
    .parameter
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "container"
    .parameter "cursorRow"
    .parameter "rotation"

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/android/camera/ImageManager$Image;->this$0:Lcom/android/camera/ImageManager;

    .line 1823
    invoke-direct/range {p0 .. p8}, Lcom/android/camera/ImageManager$BaseImage;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V

    .line 1824
    iput p9, p0, Lcom/android/camera/ImageManager$Image;->mRotation:I

    .line 1825
    return-void
.end method

.method private setExifRotation(I)V
    .registers 11
    .parameter "degrees"

    .prologue
    .line 2041
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 2043
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_5c

    .line 2044
    :try_start_5
    iget-object v5, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$BaseImageList;->indexData()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2045
    .local v3, filePath:Ljava/lang/String;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_59

    .line 2046
    :try_start_10
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v5

    monitor-enter v5
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_15} :catch_5c

    .line 2047
    :try_start_15
    invoke-static {}, Landroid/media/ExifInterface;->createInstance()Landroid/media/ExifInterface;

    move-result-object v2

    .line 2048
    .local v2, exif:Landroid/media/ExifInterface;
    invoke-virtual {v2, v3}, Landroid/media/ExifInterface;->setFilename(Ljava/lang/String;)V

    .line 2050
    iget-object v6, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-nez v6, :cond_26

    .line 2051
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getAttributes()Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 2053
    :cond_26
    if-gez p1, :cond_2a

    .line 2054
    add-int/lit16 p1, p1, 0x168

    .line 2056
    :cond_2a
    const/4 v4, 0x1

    .line 2057
    .local v4, orientation:I
    sparse-switch p1, :sswitch_data_88

    .line 2072
    :goto_2e
    const-string v6, "Orientation"

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ImageManager$Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2073
    const-string v6, "UserComment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "saveRotatedImage comment orientation: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/camera/ImageManager$Image;->replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 2074
    iget-object v6, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Landroid/media/ExifInterface;->saveAttributes(Ljava/util/HashMap;)V

    .line 2075
    invoke-virtual {v2}, Landroid/media/ExifInterface;->commitChanges()V

    .line 2076
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_15 .. :try_end_58} :catchall_84

    .line 2080
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #orientation:I
    :goto_58
    return-void

    .line 2045
    .restart local v0       #c:Landroid/database/Cursor;
    :catchall_59
    move-exception v5

    :try_start_5a
    monitor-exit v0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_59

    :try_start_5b
    throw v5
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5c} :catch_5c

    .line 2077
    .end local v0           #c:Landroid/database/Cursor;
    :catch_5c
    move-exception v5

    move-object v1, v5

    .line 2078
    .local v1, ex:Ljava/lang/Exception;
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unable to save exif data with new orientation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58

    .line 2059
    .end local v1           #ex:Ljava/lang/Exception;
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v4       #orientation:I
    :sswitch_7b
    const/4 v4, 0x1

    .line 2060
    goto :goto_2e

    .line 2062
    :sswitch_7d
    const/4 v4, 0x6

    .line 2063
    goto :goto_2e

    .line 2065
    :sswitch_7f
    const/4 v4, 0x3

    .line 2066
    goto :goto_2e

    .line 2068
    :sswitch_81
    const/16 v4, 0x8

    goto :goto_2e

    .line 2076
    .end local v2           #exif:Landroid/media/ExifInterface;
    .end local v4           #orientation:I
    :catchall_84
    move-exception v6

    :try_start_85
    monitor-exit v5
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_84

    :try_start_86
    throw v6
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_87} :catch_5c

    .line 2057
    nop

    :sswitch_data_88
    .sparse-switch
        0x0 -> :sswitch_7b
        0x5a -> :sswitch_7d
        0xb4 -> :sswitch_7f
        0x10e -> :sswitch_81
    .end sparse-switch
.end method


# virtual methods
.method public addExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1878
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 1880
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1881
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1885
    :cond_18
    return-void
.end method

.method protected compressionType()Landroid/graphics/Bitmap$CompressFormat;
    .registers 4

    .prologue
    const-string v2, "image/png"

    .line 1859
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1860
    .local v0, mimeType:Ljava/lang/String;
    if-nez v0, :cond_b

    .line 1861
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1868
    :goto_a
    return-object v1

    .line 1863
    :cond_b
    const-string v1, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 1864
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_a

    .line 1865
    :cond_16
    const-string v1, "image/png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1866
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_a

    .line 1868
    :cond_21
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_a
.end method

.method public getDataPath()Ljava/lang/String;
    .registers 5

    .prologue
    .line 1828
    const/4 v2, 0x0

    .line 1829
    .local v2, path:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1830
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 1831
    :try_start_6
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getRow()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 1832
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/ImageManager$ImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->indexData()I

    move-result v1

    .line 1833
    .local v1, column:I
    if-ltz v1, :cond_20

    .line 1834
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1836
    .end local v1           #column:I
    :cond_20
    monitor-exit v0

    .line 1837
    return-object v2

    .line 1836
    :catchall_22
    move-exception v3

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_6 .. :try_end_24} :catchall_22

    throw v3
.end method

.method protected getDegreesRotated()I
    .registers 2

    .prologue
    .line 1841
    iget v0, p0, Lcom/android/camera/ImageManager$Image;->mRotation:I

    return v0
.end method

.method public getExifTagInt(Ljava/lang/String;)I
    .registers 4
    .parameter "tag"

    .prologue
    .line 1893
    iget-object v1, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-eqz v1, :cond_13

    .line 1894
    iget-object v1, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1895
    .local v0, tagValue:Ljava/lang/String;
    if-eqz v0, :cond_13

    .line 1896
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1899
    .end local v0           #tagValue:Ljava/lang/String;
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public isDrm()Z
    .registers 2

    .prologue
    .line 1908
    const/4 v0, 0x0

    return v0
.end method

.method public isReadonly()Z
    .registers 3

    .prologue
    .line 1903
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getMimeType()Ljava/lang/String;

    move-result-object v0

    .line 1904
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "image/jpeg"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const-string v1, "image/png"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    const/4 v1, 0x1

    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x0

    goto :goto_15
.end method

.method public removeExifTag(Ljava/lang/String;)V
    .registers 3
    .parameter "tag"

    .prologue
    .line 1916
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1917
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 1919
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1920
    return-void
.end method

.method public replaceExifTag(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "tag"
    .parameter "value"

    .prologue
    .line 1928
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 1929
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    .line 1931
    :cond_b
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 1932
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    :cond_18
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mExifData:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1935
    return-void
.end method

.method public rotateImageBy(I)Z
    .registers 6
    .parameter "degrees"

    .prologue
    .line 2088
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getDegreesRotated()I

    move-result v1

    add-int v0, v1, p1

    .line 2089
    .local v0, newDegrees:I
    invoke-direct {p0, v0}, Lcom/android/camera/ImageManager$Image;->setExifRotation(I)V

    .line 2090
    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$Image;->setDegreesRotated(I)V

    .line 2093
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/camera/ImageManager$Image;->mMiniThumbMagic:J

    .line 2095
    :try_start_10
    iget-object v1, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v2, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getRow()I

    move-result v3

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1f} :catch_21

    .line 2100
    :goto_1f
    const/4 v1, 0x1

    return v1

    .line 2096
    :catch_21
    move-exception v1

    goto :goto_1f
.end method

.method public saveImageContents(Landroid/graphics/Bitmap;[BIZLandroid/database/Cursor;)Lcom/android/camera/ImageManager$IGetBoolean_cancelable;
    .registers 12
    .parameter "image"
    .parameter "jpegData"
    .parameter "orientation"
    .parameter "newFile"
    .parameter "cursor"

    .prologue
    .line 2036
    new-instance v0, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p5

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$Image$1SaveImageContentsCancelable;-><init>(Lcom/android/camera/ImageManager$Image;Landroid/graphics/Bitmap;[BLandroid/database/Cursor;I)V

    return-object v0
.end method

.method protected setDegreesRotated(I)V
    .registers 5
    .parameter "degrees"

    .prologue
    .line 1845
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1846
    .local v0, c:Landroid/database/Cursor;
    iput p1, p0, Lcom/android/camera/ImageManager$Image;->mRotation:I

    .line 1847
    monitor-enter v0

    .line 1848
    :try_start_7
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getRow()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 1849
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ImageManager$ImageList;

    invoke-virtual {v2}, Lcom/android/camera/ImageManager$ImageList;->indexOrientation()I

    move-result v1

    .line 1850
    .local v1, column:I
    if-ltz v1, :cond_27

    .line 1851
    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->updateInt(II)Z

    .line 1852
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getContainer()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImageList;->commitChanges()V

    .line 1855
    .end local v1           #column:I
    :cond_27
    monitor-exit v0

    .line 1856
    return-void

    .line 1855
    :catchall_29
    move-exception v2

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw v2
.end method

.method public thumbBitmap()Landroid/graphics/Bitmap;
    .registers 15

    .prologue
    .line 2104
    const/4 v6, 0x0

    .line 2105
    .local v6, bitmap:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 2106
    .local v7, c:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    if-eqz v0, :cond_66

    .line 2108
    :try_start_8
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v1, v1, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->fullSizeImageId()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2114
    if-eqz v7, :cond_61

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 2115
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    iget-object v1, v0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    check-cast v0, Lcom/android/camera/ImageManager$ImageList;

    iget v0, v0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;
    :try_end_40
    .catchall {:try_start_8 .. :try_end_40} :catchall_dc
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_40} :catch_ae

    move-result-object v13

    .line 2118
    .local v13, thumbUri:Landroid/net/Uri;
    :try_start_41
    new-instance v11, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v11}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 2119
    .local v11, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x0

    iput-boolean v0, v11, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2120
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2121
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "r"

    invoke-virtual {v0, v13, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 2122
    .local v12, pfdInput:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v11}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2123
    invoke-virtual {v12}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_61
    .catchall {:try_start_41 .. :try_end_61} :catchall_dc
    .catch Ljava/io/FileNotFoundException; {:try_start_41 .. :try_end_61} :catch_89
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_61} :catch_b7
    .catch Ljava/lang/NullPointerException; {:try_start_41 .. :try_end_61} :catch_e3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_41 .. :try_end_61} :catch_109
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_61} :catch_ae

    .line 2140
    .end local v11           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v12           #pfdInput:Landroid/os/ParcelFileDescriptor;
    .end local v13           #thumbUri:Landroid/net/Uri;
    :cond_61
    :goto_61
    if-eqz v7, :cond_66

    .line 2141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2145
    :cond_66
    if-nez v6, :cond_79

    .line 2146
    const/16 v0, 0x140

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ImageManager$Image;->fullSizeBitmap(IZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2150
    iget-object v0, p0, Lcom/android/camera/ImageManager$Image;->mContainer:Lcom/android/camera/ImageManager$BaseImageList;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->fullSizeImageId()J

    move-result-wide v1

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2153
    :cond_79
    if-eqz v6, :cond_83

    .line 2154
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$Image;->getDegreesRotated()I

    move-result v0

    invoke-static {v6, v0}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 2157
    :cond_83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .local v8, elapsed:J
    move-object v0, v6

    .line 2158
    .end local v8           #elapsed:J
    :cond_88
    :goto_88
    return-object v0

    .line 2124
    .restart local v13       #thumbUri:Landroid/net/Uri;
    :catch_89
    move-exception v0

    move-object v10, v0

    .line 2125
    .local v10, ex:Ljava/io/FileNotFoundException;
    :try_start_8b
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t open thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_8b .. :try_end_ad} :catchall_dc
    .catch Ljava/lang/Exception; {:try_start_8b .. :try_end_ad} :catch_ae

    goto :goto_61

    .line 2136
    .end local v10           #ex:Ljava/io/FileNotFoundException;
    .end local v13           #thumbUri:Landroid/net/Uri;
    :catch_ae
    move-exception v0

    move-object v10, v0

    .line 2138
    .local v10, ex:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 2140
    if-eqz v7, :cond_88

    .line 2141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_88

    .line 2126
    .end local v10           #ex:Ljava/lang/Exception;
    .restart local v13       #thumbUri:Landroid/net/Uri;
    :catch_b7
    move-exception v0

    move-object v10, v0

    .line 2127
    .local v10, ex:Ljava/io/IOException;
    :try_start_b9
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t open thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_db
    .catchall {:try_start_b9 .. :try_end_db} :catchall_dc
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_db} :catch_ae

    goto :goto_61

    .line 2140
    .end local v10           #ex:Ljava/io/IOException;
    .end local v13           #thumbUri:Landroid/net/Uri;
    :catchall_dc
    move-exception v0

    if-eqz v7, :cond_e2

    .line 2141
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_e2
    throw v0

    .line 2128
    .restart local v13       #thumbUri:Landroid/net/Uri;
    :catch_e3
    move-exception v0

    move-object v10, v0

    .line 2130
    .local v10, ex:Ljava/lang/NullPointerException;
    :try_start_e5
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t open thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_61

    .line 2131
    .end local v10           #ex:Ljava/lang/NullPointerException;
    :catch_109
    move-exception v0

    move-object v10, v0

    .line 2132
    .local v10, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed to allocate memory for thumbnail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12d
    .catchall {:try_start_e5 .. :try_end_12d} :catchall_dc
    .catch Ljava/lang/Exception; {:try_start_e5 .. :try_end_12d} :catch_ae

    goto/16 :goto_61
.end method
