.class abstract Lcom/android/camera/ImageManager$BaseImageList;
.super Ljava/lang/Object;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "BaseImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;
    }
.end annotation


# instance fields
.field mBaseUri:Landroid/net/Uri;

.field mBucketId:Ljava/lang/String;

.field protected mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/camera/ImageManager$IImage;",
            ">;"
        }
    .end annotation
.end field

.field mContentResolver:Landroid/content/ContentResolver;

.field mContext:Landroid/content/Context;

.field mCursor:Landroid/database/Cursor;

.field mCursorDeactivated:Z

.field mDistinct:Z

.field mHandler:Landroid/os/Handler;

.field mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

.field protected mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

.field protected mMiniThumbData:Ljava/io/RandomAccessFile;

.field mRandom:Ljava/util/Random;

.field mSort:I

.field protected mThumbUri:Landroid/net/Uri;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 9
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    .line 837
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    .line 963
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    .line 965
    new-instance v0, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;-><init>(Lcom/android/camera/ImageManager$BaseImageList;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    .line 843
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContext:Landroid/content/Context;

    .line 844
    iput p4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mSort:I

    .line 845
    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    .line 846
    iput-object p3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    .line 847
    iput-object p5, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBucketId:Ljava/lang/String;

    .line 849
    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 850
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ImageManager$BaseImageList;J[BJ)[B
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 826
    invoke-direct/range {p0 .. p5}, Lcom/android/camera/ImageManager$BaseImageList;->getMiniThumbFromFile(J[BJ)[B

    move-result-object v0

    return-object v0
.end method

.method private createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;
    .registers 14
    .parameter "filePath"
    .parameter "id"

    .prologue
    const/16 v9, 0x140

    const/4 v8, 0x0

    .line 1006
    if-eqz p1, :cond_4c

    .line 1007
    const/4 v1, 0x0

    .line 1008
    .local v1, thumbData:[B
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    monitor-enter v0

    .line 1009
    :try_start_b
    invoke-static {}, Landroid/media/ExifInterface;->createInstance()Landroid/media/ExifInterface;

    move-result-object v7

    .line 1010
    .local v7, tempExif:Landroid/media/ExifInterface;
    invoke-virtual {v7, p1}, Landroid/media/ExifInterface;->setFilename(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {v7}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v1

    .line 1012
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_49

    .line 1013
    if-eqz v1, :cond_4c

    .line 1016
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1017
    .local v6, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1018
    array-length v0, v1

    invoke-static {v1, v8, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1019
    iget v4, v6, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 1020
    .local v4, width:I
    iget v5, v6, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 1021
    .local v5, height:I
    if-lt v4, v9, :cond_4c

    if-lt v5, v9, :cond_4c

    move-object v0, p0

    move-wide v2, p2

    .line 1022
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail([BJII)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 1030
    invoke-static {v6, v9}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v0

    iput v0, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1035
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 1036
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, v6, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 1037
    iput-boolean v8, v6, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1038
    array-length v0, v1

    invoke-static {v1, v8, v0, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1043
    .end local v1           #thumbData:[B
    .end local v4           #width:I
    .end local v5           #height:I
    .end local v6           #options:Landroid/graphics/BitmapFactory$Options;
    .end local v7           #tempExif:Landroid/media/ExifInterface;
    :goto_48
    return-object v0

    .line 1012
    .restart local v1       #thumbData:[B
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw v2

    .line 1043
    .end local v1           #thumbData:[B
    :cond_4c
    const/4 v0, 0x0

    goto :goto_48
.end method

.method private createThumbnailFromUri(Landroid/database/Cursor;JZ)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "c"
    .parameter "id"
    .parameter "noInternalStore"

    .prologue
    const/4 v3, 0x0

    .line 1049
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1050
    .local v1, uri:Landroid/net/Uri;
    const/16 v2, 0x140

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1051
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_19

    .line 1057
    if-eqz p4, :cond_25

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/camera/ImageManager$BaseImageList;->storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_25

    move-object v2, v3

    .line 1065
    :goto_18
    return-object v2

    .line 1062
    :cond_19
    iget-object v2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v2, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 1063
    const/16 v2, 0x60

    invoke-virtual {p0, v2, v1, v3, v3}, Lcom/android/camera/ImageManager$BaseImageList;->makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_25
    move-object v2, v0

    .line 1065
    goto :goto_18
.end method

.method private getMiniThumbFromFile(J[BJ)[B
    .registers 23
    .parameter "id"
    .parameter "data"
    .parameter "magicCheck"

    .prologue
    .line 1418
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v14

    .line 1419
    .local v14, r:Ljava/io/RandomAccessFile;
    if-nez v14, :cond_8

    .line 1420
    const/4 v15, 0x0

    .line 1449
    :goto_7
    return-object v15

    .line 1422
    :cond_8
    const-wide/16 v15, 0x2710

    mul-long v12, p1, v15

    .line 1423
    .local v12, pos:J
    move-object v6, v14

    .line 1424
    .local v6, f:Ljava/io/RandomAccessFile;
    monitor-enter v6

    .line 1426
    :try_start_e
    invoke-virtual {v6, v12, v13}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1427
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v15

    const/16 v16, 0x1

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3b

    .line 1428
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_1f
    .catchall {:try_start_e .. :try_end_1f} :catchall_27
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1f} :catch_3e

    move-result-wide v10

    .line 1429
    .local v10, magic:J
    cmp-long v15, v10, p4

    if-eqz v15, :cond_2a

    .line 1431
    const/4 v15, 0x0

    :try_start_25
    monitor-exit v6

    goto :goto_7

    .line 1451
    .end local v10           #magic:J
    :catchall_27
    move-exception v15

    monitor-exit v6
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_27

    throw v15

    .line 1433
    .restart local v10       #magic:J
    :cond_2a
    :try_start_2a
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v9

    .line 1434
    .local v9, length:I
    const/4 v15, 0x0

    move-object v0, v6

    move-object/from16 v1, p3

    move v2, v15

    move v3, v9

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/RandomAccessFile;->read([BII)I
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_27
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_37} :catch_3e

    .line 1435
    :try_start_37
    monitor-exit v6

    move-object/from16 v15, p3

    goto :goto_7

    .line 1437
    .end local v9           #length:I
    .end local v10           #magic:J
    :cond_3b
    const/4 v15, 0x0

    monitor-exit v6
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_27

    goto :goto_7

    .line 1439
    :catch_3e
    move-exception v15

    move-object v4, v15

    .line 1442
    .local v4, ex:Ljava/io/IOException;
    :try_start_40
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->length()J
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_27
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_47

    move-result-wide v7

    .line 1449
    .local v7, fileLength:J
    :goto_44
    const/4 v15, 0x0

    :try_start_45
    monitor-exit v6
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_27

    goto :goto_7

    .line 1443
    .end local v7           #fileLength:J
    :catch_47
    move-exception v5

    .line 1444
    .local v5, ex1:Ljava/io/IOException;
    const-wide/16 v7, -0x1

    .restart local v7       #fileLength:J
    goto :goto_44
.end method

.method private getThumbnailUri(JII)Landroid/net/Uri;
    .registers 16
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 928
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    if-nez v0, :cond_8

    move-object v0, v1

    .line 960
    :goto_7
    return-object v0

    .line 932
    :cond_8
    const/4 v7, 0x0

    .line 933
    .local v7, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 935
    .local v6, c:Landroid/database/Cursor;
    :try_start_a
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v2

    const-string v3, "image_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 941
    if-eqz v6, :cond_3c

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 945
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexThumbId()I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    .line 946
    invoke-interface {v6}, Landroid/database/Cursor;->commitUpdates()Z
    :try_end_3c
    .catchall {:try_start_a .. :try_end_3c} :catchall_77

    .line 949
    :cond_3c
    if-eqz v6, :cond_41

    .line 950
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_41
    if-nez v7, :cond_75

    .line 953
    new-instance v8, Landroid/content/ContentValues;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 954
    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "kind"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 955
    const-string v0, "image_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 956
    const-string v0, "height"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 957
    const-string v0, "width"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mThumbUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v8}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v7

    .end local v8           #values:Landroid/content/ContentValues;
    :cond_75
    move-object v0, v7

    .line 960
    goto :goto_7

    .line 949
    :catchall_77
    move-exception v0

    if-eqz v6, :cond_7d

    .line 950
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_7d
    throw v0
.end method


# virtual methods
.method protected activateCursor()V
    .registers 1

    .prologue
    .line 1368
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    .line 1369
    return-void
.end method

.method public checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .registers 6
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1070
    const/4 v0, 0x0

    check-cast v0, [[B

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I[[B)J

    move-result-wide v0

    return-wide v0
.end method

.method public checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I[[B)J
    .registers 34
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"
    .parameter "createdThumbnailData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1090
    const-wide/16 v15, 0x0

    .line 1092
    .local v15, fileMagic:J
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->lock()V

    .line 1093
    if-nez p1, :cond_90

    .line 1096
    monitor-enter p2
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_86

    .line 1097
    :try_start_d
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1098
    const-wide/16 v23, -0x1

    monitor-exit p2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_83

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    .end local p4
    :goto_1e
    return-wide v23

    .line 1100
    .restart local p4
    :cond_1f
    :try_start_1f
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1101
    .local v9, magic:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexId()I

    move-result v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 1102
    .local v7, id:J
    monitor-exit p2
    :try_end_36
    .catchall {:try_start_1f .. :try_end_36} :catchall_83

    .line 1109
    :goto_36
    const-wide/16 v23, 0x0

    cmp-long v5, v9, v23

    if-eqz v5, :cond_b5

    .line 1112
    :try_start_3c
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v22

    .line 1113
    .local v22, r:Ljava/io/RandomAccessFile;
    if-eqz v22, :cond_b5

    .line 1114
    monitor-enter v22
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_86

    .line 1115
    const-wide/16 v23, 0x2710

    mul-long v20, v7, v23

    .line 1118
    .local v20, pos:J
    :try_start_47
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v23

    const-wide/16 v25, 0x1

    add-long v25, v25, v20

    const-wide/16 v27, 0x8

    add-long v25, v25, v27

    cmp-long v5, v23, v25

    if-ltz v5, :cond_b4

    .line 1119
    move-object/from16 v0, v22

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1120
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b4

    .line 1121
    invoke-virtual/range {v22 .. v22}, Ljava/io/RandomAccessFile;->readLong()J
    :try_end_68
    .catchall {:try_start_47 .. :try_end_68} :catchall_149
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_68} :catch_9a

    move-result-wide v15

    .line 1122
    cmp-long v5, v15, v9

    if-nez v5, :cond_b4

    const-wide/16 v23, 0x0

    cmp-long v5, v9, v23

    if-eqz v5, :cond_b4

    cmp-long v5, v9, v7

    if-eqz v5, :cond_b4

    .line 1123
    :try_start_77
    monitor-exit v22
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_149

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    move-wide/from16 v23, v9

    goto :goto_1e

    .line 1102
    .end local v7           #id:J
    .end local v9           #magic:J
    .end local v20           #pos:J
    .end local v22           #r:Ljava/io/RandomAccessFile;
    :catchall_83
    move-exception v5

    :try_start_84
    monitor-exit p2
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_83

    :try_start_85
    throw v5
    :try_end_86
    .catchall {:try_start_85 .. :try_end_86} :catchall_86

    .line 1212
    .end local p4
    :catchall_86
    move-exception v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    throw v5

    .line 1105
    .restart local p4
    :cond_90
    :try_start_90
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    move-wide v9, v0

    .line 1106
    .restart local v9       #magic:J
    invoke-virtual/range {p1 .. p1}, Lcom/android/camera/ImageManager$BaseImage;->fullSizeImageId()J
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_86

    move-result-wide v7

    .restart local v7       #id:J
    goto :goto_36

    .line 1127
    .restart local v20       #pos:J
    .restart local v22       #r:Ljava/io/RandomAccessFile;
    :catch_9a
    move-exception v5

    move-object v14, v5

    .line 1128
    .local v14, ex:Ljava/io/IOException;
    :try_start_9c
    const-string v5, "ImageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "got exception checking file magic: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    .end local v14           #ex:Ljava/io/IOException;
    :cond_b4
    monitor-exit v22
    :try_end_b5
    .catchall {:try_start_9c .. :try_end_b5} :catchall_149

    .line 1139
    .end local v20           #pos:J
    .end local v22           #r:Ljava/io/RandomAccessFile;
    :cond_b5
    const/4 v11, 0x0

    .line 1140
    .local v11, bitmap:Landroid/graphics/Bitmap;
    const/16 v17, 0x0

    .line 1141
    .local v17, filePath:Ljava/lang/String;
    :try_start_b8
    monitor-enter p2
    :try_end_b9
    .catchall {:try_start_b8 .. :try_end_b9} :catchall_86

    .line 1142
    :try_start_b9
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_ca

    .line 1143
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexData()I

    move-result v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 1145
    :cond_ca
    monitor-exit p2
    :try_end_cb
    .catchall {:try_start_b9 .. :try_end_cb} :catchall_14c

    .line 1146
    if-eqz v17, :cond_fe

    .line 1147
    :try_start_cd
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMimeType()I

    move-result v5

    move-object/from16 v0, p2

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 1148
    .local v19, mimeType:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Lcom/android/camera/ImageManager;->isVideoMimeType(Ljava/lang/String;)Z

    move-result v18

    .line 1149
    .local v18, isVideo:Z
    if-eqz v18, :cond_14f

    .line 1150
    invoke-static/range {v17 .. v17}, Lcom/android/camera/ImageManager;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1163
    :cond_e2
    monitor-enter p2
    :try_end_e3
    .catchall {:try_start_cd .. :try_end_e3} :catchall_86

    .line 1164
    const/4 v13, 0x0

    .line 1165
    .local v13, degrees:I
    :try_start_e4
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_f7

    .line 1166
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexOrientation()I

    move-result v12

    .line 1167
    .local v12, column:I
    if-ltz v12, :cond_f7

    .line 1168
    move-object/from16 v0, p2

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 1170
    .end local v12           #column:I
    :cond_f7
    if-eqz v13, :cond_fd

    .line 1171
    invoke-static {v11, v13}, Lcom/android/camera/ImageManager;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1173
    :cond_fd
    monitor-exit p2
    :try_end_fe
    .catchall {:try_start_e4 .. :try_end_fe} :catchall_177

    .line 1178
    .end local v13           #degrees:I
    .end local v18           #isVideo:Z
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_fe
    :try_start_fe
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mRandom:Ljava/util/Random;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    .line 1179
    const-wide/16 v23, 0x0

    cmp-long v5, v9, v23

    if-eqz v5, :cond_fe

    .line 1180
    if-eqz v11, :cond_11d

    .line 1181
    invoke-static {v11}, Lcom/android/camera/ImageManager;->miniThumbData(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 1182
    .local v6, data:[B
    if-eqz p4, :cond_118

    .line 1183
    const/4 v5, 0x0

    aput-object v6, p4, v5

    :cond_118
    move-object/from16 v5, p0

    .line 1185
    invoke-virtual/range {v5 .. v10}, Lcom/android/camera/ImageManager$BaseImageList;->saveMiniThumbToFile([BJJ)V

    .line 1188
    .end local v6           #data:[B
    :cond_11d
    if-eqz p1, :cond_17a

    .line 1189
    move-wide v0, v9

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J

    .line 1202
    .end local p4
    :cond_124
    :goto_124
    monitor-enter p2
    :try_end_125
    .catchall {:try_start_fe .. :try_end_125} :catchall_86

    .line 1203
    :try_start_125
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1204
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v5

    move-object/from16 v0, p2

    move v1, v5

    move-wide v2, v9

    invoke-interface {v0, v1, v2, v3}, Landroid/database/Cursor;->updateLong(IJ)Z

    .line 1205
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->commitUpdates()Z

    .line 1206
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->requery()Z

    .line 1207
    invoke-interface/range {p2 .. p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1209
    monitor-exit p2
    :try_end_13d
    .catchall {:try_start_125 .. :try_end_13d} :catchall_195

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    move-wide/from16 v23, v9

    goto/16 :goto_1e

    .line 1130
    .end local v11           #bitmap:Landroid/graphics/Bitmap;
    .end local v17           #filePath:Ljava/lang/String;
    .restart local v20       #pos:J
    .restart local v22       #r:Ljava/io/RandomAccessFile;
    .restart local p4
    :catchall_149
    move-exception v5

    :try_start_14a
    monitor-exit v22
    :try_end_14b
    .catchall {:try_start_14a .. :try_end_14b} :catchall_149

    :try_start_14b
    throw v5
    :try_end_14c
    .catchall {:try_start_14b .. :try_end_14c} :catchall_86

    .line 1145
    .end local v20           #pos:J
    .end local v22           #r:Ljava/io/RandomAccessFile;
    .restart local v11       #bitmap:Landroid/graphics/Bitmap;
    .restart local v17       #filePath:Ljava/lang/String;
    :catchall_14c
    move-exception v5

    :try_start_14d
    monitor-exit p2
    :try_end_14e
    .catchall {:try_start_14d .. :try_end_14e} :catchall_14c

    :try_start_14e
    throw v5

    .line 1152
    .restart local v18       #isVideo:Z
    .restart local v19       #mimeType:Ljava/lang/String;
    :cond_14f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-wide v2, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/camera/ImageManager$BaseImageList;->createThumbnailFromEXIF(Ljava/lang/String;J)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 1153
    if-nez v11, :cond_e2

    .line 1154
    if-nez p4, :cond_175

    const/4 v5, 0x1

    :goto_15d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide v2, v7

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ImageManager$BaseImageList;->createThumbnailFromUri(Landroid/database/Cursor;JZ)Landroid/graphics/Bitmap;
    :try_end_166
    .catchall {:try_start_14e .. :try_end_166} :catchall_86

    move-result-object v11

    .line 1158
    if-nez v11, :cond_e2

    .line 1159
    const-wide/16 v23, 0x0

    .line 1212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mLock:Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageManager$BaseImageList$SomewhatFairLock;->unlock()V

    goto/16 :goto_1e

    .line 1154
    :cond_175
    const/4 v5, 0x0

    goto :goto_15d

    .line 1173
    .restart local v13       #degrees:I
    :catchall_177
    move-exception v5

    :try_start_178
    monitor-exit p2
    :try_end_179
    .catchall {:try_start_178 .. :try_end_179} :catchall_177

    :try_start_179
    throw v5

    .line 1196
    .end local v13           #degrees:I
    .end local v18           #isVideo:Z
    .end local v19           #mimeType:Ljava/lang/String;
    :cond_17a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    move-object v5, v0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    .end local p4
    move-object/from16 v0, p4

    check-cast v0, Lcom/android/camera/ImageManager$BaseImage;

    move-object/from16 p1, v0

    .line 1197
    if-eqz p1, :cond_124

    .line 1198
    move-wide v0, v9

    move-object/from16 v2, p1

    iput-wide v0, v2, Lcom/android/camera/ImageManager$BaseImage;->mMiniThumbMagic:J
    :try_end_194
    .catchall {:try_start_179 .. :try_end_194} :catchall_86

    goto :goto_124

    .line 1210
    :catchall_195
    move-exception v5

    :try_start_196
    monitor-exit p2
    :try_end_197
    .catchall {:try_start_196 .. :try_end_197} :catchall_195

    :try_start_197
    throw v5
    :try_end_198
    .catchall {:try_start_197 .. :try_end_198} :catchall_86
.end method

.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;I)V
    .registers 16
    .parameter "cb"
    .parameter "totalThumbnails"

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "mini_thumb_magic"

    aput-object v4, v2, v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->thumbnailWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->thumbnailWhereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    const-string v5, "_id ASC"

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1225
    .local v6, c:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1229
    .local v7, count:I
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1231
    invoke-static {}, Lcom/android/camera/ImageManager;->hasStorage()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 1283
    :cond_2c
    :goto_2c
    return-void

    .line 1237
    :cond_2d
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v12

    .line 1238
    .local v12, oldPath:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1240
    .local v11, oldFile:Ljava/io/File;
    if-nez v7, :cond_3f

    .line 1243
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 1248
    :cond_3f
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v6

    .line 1251
    const/4 v8, 0x0

    .line 1252
    .local v8, current:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_45
    :try_start_45
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_6d

    move-result v0

    if-ge v10, v0, :cond_5d

    .line 1259
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :try_start_4e
    invoke-virtual {p0, v2, v6, v10}, Lcom/android/camera/ImageManager$BaseImageList;->checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_72

    .line 1260
    const-string v0, "ImageManager"

    const-string v1, "Failed to store thumbnails on sdcard"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_6d
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5d} :catch_63

    .line 1278
    :cond_5d
    :goto_5d
    :try_start_5d
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_61

    goto :goto_2c

    .line 1279
    :catch_61
    move-exception v0

    goto :goto_2c

    .line 1263
    :catch_63
    move-exception v0

    move-object v9, v0

    .line 1264
    .local v9, ex:Ljava/lang/Exception;
    :try_start_65
    const-string v0, "ImageManager"

    const-string v1, "!!!!! failed to check thumbnail... was the sd card removed?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6c
    .catchall {:try_start_65 .. :try_end_6c} :catchall_6d

    goto :goto_5d

    .line 1276
    .end local v9           #ex:Ljava/lang/Exception;
    :catchall_6d
    move-exception v0

    .line 1278
    :try_start_6e
    invoke-virtual {v11}, Ljava/io/File;->delete()Z
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_6e .. :try_end_71} :catch_7f

    .line 1281
    :goto_71
    throw v0

    .line 1267
    :cond_72
    if-eqz p1, :cond_7a

    .line 1268
    :try_start_74
    invoke-interface {p1, v8, p2}, Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;->checking(II)Z
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_6d

    move-result v0

    if-eqz v0, :cond_5d

    .line 1273
    :cond_7a
    add-int/lit8 v8, v8, 0x1

    .line 1252
    add-int/lit8 v10, v10, 0x1

    goto :goto_45

    .line 1279
    :catch_7f
    move-exception v1

    goto :goto_71
.end method

.method public commitChanges()V
    .registers 3

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 1295
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->commitUpdates()Z

    .line 1296
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    .line 1297
    monitor-exit v0

    .line 1298
    return-void

    .line 1297
    :catchall_d
    move-exception v1

    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw v1
.end method

.method protected contentUri(J)Landroid/net/Uri;
    .registers 8
    .parameter "id"

    .prologue
    .line 1303
    :try_start_0
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    .line 1304
    .local v1, existingId:J
    cmp-long v3, v1, p1

    if-eqz v3, :cond_11

    .line 1305
    const-string v3, "ImageManager"

    const-string v4, "id mismatch"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_11
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_13} :catch_14

    .line 1309
    .end local v1           #existingId:J
    :goto_13
    return-object v3

    .line 1307
    :catch_14
    move-exception v3

    move-object v0, v3

    .line 1309
    .local v0, ex:Ljava/lang/NumberFormatException;
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {v3, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_13
.end method

.method public deactivate()V
    .registers 4

    .prologue
    .line 1314
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 1316
    :try_start_3
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->deactivate()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_8} :catch_15

    .line 1321
    :goto_8
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_14

    .line 1323
    :try_start_c
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 1324
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_14} :catch_1f

    .line 1329
    :cond_14
    :goto_14
    return-void

    .line 1317
    :catch_15
    move-exception v1

    move-object v0, v1

    .line 1319
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "ImageManager"

    const-string v2, "Caught exception while deactivating cursor."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 1325
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1f
    move-exception v1

    goto :goto_14
.end method

.method public dump(Ljava/lang/String;)V
    .registers 5
    .parameter "msg"

    .prologue
    .line 1332
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v0

    .line 1334
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_10

    .line 1335
    invoke-virtual {p0, v1}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    .line 1336
    .local v2, img:Lcom/android/camera/ImageManager$IImage;
    if-nez v2, :cond_d

    .line 1334
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1342
    .end local v2           #img:Lcom/android/camera/ImageManager$IImage;
    :cond_10
    return-void
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 1344
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1345
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 1347
    :try_start_5
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_b

    move-result v1

    :try_start_9
    monitor-exit v0

    .line 1350
    :goto_a
    return v1

    .line 1348
    :catch_b
    move-exception v1

    .line 1350
    const/4 v1, 0x0

    monitor-exit v0

    goto :goto_a

    .line 1351
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_f

    throw v1
.end method

.method protected getCursor()Landroid/database/Cursor;
    .registers 3

    .prologue
    .line 1359
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-enter v0

    .line 1360
    :try_start_3
    iget-boolean v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursorDeactivated:Z

    if-eqz v1, :cond_a

    .line 1361
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->activateCursor()V

    .line 1363
    :cond_a
    iget-object v1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    monitor-exit v0

    return-object v1

    .line 1364
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .registers 19
    .parameter "i"

    .prologue
    .line 1372
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v13

    .line 1373
    .local v13, c:Landroid/database/Cursor;
    monitor-enter v13

    .line 1376
    :try_start_5
    move-object v0, v13

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_6c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_b} :catch_68

    move-result v16

    .line 1380
    .local v16, moved:Z
    if-eqz v16, :cond_8c

    .line 1382
    const/4 v2, 0x0

    :try_start_f
    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 1383
    .local v3, id:J
    const-wide/16 v5, 0x0

    .line 1384
    .local v5, miniThumbId:J
    const/4 v12, 0x0

    .line 1385
    .local v12, rotation:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_25

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexMiniThumbId()I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 1388
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexOrientation()I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_34

    .line 1389
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->indexOrientation()I

    move-result v2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1391
    :cond_34
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 1392
    .local v9, timestamp:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    move-object v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/camera/ImageManager$IImage;

    .line 1393
    .local v15, img:Lcom/android/camera/ImageManager$IImage;
    if-nez v15, :cond_65

    .line 1394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object v7, v0

    move-object/from16 v2, p0

    move-object/from16 v8, p0

    move/from16 v11, p1

    invoke-virtual/range {v2 .. v12}, Lcom/android/camera/ImageManager$BaseImageList;->make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;

    move-result-object v15

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    move-object v2, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .end local v3           #id:J
    invoke-virtual {v2, v3, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_65
    .catchall {:try_start_f .. :try_end_65} :catchall_6c
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_65} :catch_6f

    .line 1397
    :cond_65
    :try_start_65
    monitor-exit v13

    move-object v2, v15

    .line 1404
    .end local v5           #miniThumbId:J
    .end local v9           #timestamp:J
    .end local v12           #rotation:I
    .end local v15           #img:Lcom/android/camera/ImageManager$IImage;
    .end local v16           #moved:Z
    :goto_67
    return-object v2

    .line 1377
    :catch_68
    move-exception v14

    .line 1378
    .local v14, ex:Ljava/lang/Exception;
    const/4 v2, 0x0

    monitor-exit v13

    goto :goto_67

    .line 1406
    .end local v14           #ex:Ljava/lang/Exception;
    :catchall_6c
    move-exception v2

    monitor-exit v13
    :try_end_6e
    .catchall {:try_start_65 .. :try_end_6e} :catchall_6c

    throw v2

    .line 1398
    .restart local v16       #moved:Z
    :catch_6f
    move-exception v2

    move-object v14, v2

    .line 1399
    .restart local v14       #ex:Ljava/lang/Exception;
    :try_start_71
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got this exception trying to create image object: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1400
    const/4 v2, 0x0

    monitor-exit v13

    goto :goto_67

    .line 1403
    .end local v14           #ex:Ljava/lang/Exception;
    :cond_8c
    const-string v2, "ImageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to moveTo to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; count is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    const/4 v2, 0x0

    monitor-exit v13
    :try_end_b7
    .catchall {:try_start_71 .. :try_end_b7} :catchall_6c

    goto :goto_67
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .registers 4
    .parameter "uri"

    .prologue
    .line 1410
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 1411
    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1412
    invoke-virtual {p0, v0}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 1415
    :goto_19
    return-object v1

    .line 1410
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1415
    :cond_1d
    const/4 v1, 0x0

    goto :goto_19
.end method

.method protected getRowFor(Lcom/android/camera/ImageManager$IImage;)I
    .registers 8
    .parameter "imageObj"

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1455
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 1456
    const/4 v1, 0x0

    .line 1457
    .local v1, index:I
    :try_start_6
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageId()J

    move-result-wide v2

    .line 1458
    .local v2, targetId:J
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 1460
    :cond_10
    const/4 v4, 0x0

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-nez v4, :cond_1c

    .line 1461
    monitor-exit v0

    move v4, v1

    .line 1466
    :goto_1b
    return v4

    .line 1463
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    .line 1464
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_10

    .line 1466
    :cond_24
    const/4 v4, -0x1

    monitor-exit v0

    goto :goto_1b

    .line 1467
    .end local v2           #targetId:J
    :catchall_27
    move-exception v4

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_6 .. :try_end_29} :catchall_27

    throw v4
.end method

.method protected abstract indexData()I
.end method

.method protected abstract indexDateTaken()I
.end method

.method protected abstract indexDescription()I
.end method

.method protected abstract indexDisplayName()I
.end method

.method protected abstract indexId()I
.end method

.method protected abstract indexLatitude()I
.end method

.method protected abstract indexLongitude()I
.end method

.method protected abstract indexMimeType()I
.end method

.method protected abstract indexMiniThumbId()I
.end method

.method protected abstract indexOrientation()I
.end method

.method protected abstract indexPicasaWeb()I
.end method

.method protected abstract indexPrivate()I
.end method

.method protected abstract indexThumbId()I
.end method

.method protected abstract indexTitle()I
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 1355
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;
    .registers 12
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 1486
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.end method

.method miniThumbDataFile()Ljava/io/RandomAccessFile;
    .registers 7

    .prologue
    .line 859
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    if-nez v3, :cond_4d

    .line 860
    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/camera/ImageManager$BaseImageList;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v2

    .line 861
    .local v2, path:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 862
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 863
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 864
    const-string v3, "ImageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "!!!! unable to create .thumbnails directory "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    :cond_3f
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 870
    .local v1, f:Ljava/io/File;
    :try_start_44
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v3, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4d} :catch_50

    .line 875
    .end local v0           #directory:Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v2           #path:Ljava/lang/String;
    :cond_4d
    :goto_4d
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mMiniThumbData:Ljava/io/RandomAccessFile;

    return-object v3

    .line 871
    .restart local v0       #directory:Ljava/io/File;
    .restart local v1       #f:Ljava/io/File;
    .restart local v2       #path:Ljava/lang/String;
    :catch_50
    move-exception v3

    goto :goto_4d
.end method

.method randomAccessFilePath(I)Ljava/lang/String;
    .registers 6
    .parameter "version"

    .prologue
    .line 853
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/DCIM/.thumbnails"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    .local v0, directoryName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/.thumbdata"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mUri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 855
    .local v1, path:Ljava/lang/String;
    return-object v1
.end method

.method public removeImage(Lcom/android/camera/ImageManager$IImage;)Z
    .registers 9
    .parameter "image"

    .prologue
    .line 1492
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1493
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 1501
    :try_start_5
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->getRow()I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_23

    move-result v2

    .line 1506
    .local v2, moved:Z
    if-eqz v2, :cond_20

    .line 1507
    :try_start_f
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    .line 1508
    .local v3, u:Landroid/net/Uri;
    iget-object v4, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1509
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->onRemove()V

    .line 1510
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    .line 1512
    .end local v3           #u:Landroid/net/Uri;
    :cond_20
    monitor-exit v0

    .line 1513
    const/4 v4, 0x1

    .end local v2           #moved:Z
    :goto_22
    return v4

    .line 1502
    :catch_23
    move-exception v4

    move-object v1, v4

    .line 1503
    .local v1, ex:Ljava/lang/Exception;
    const-string v4, "ImageManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "removeImage got exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    const/4 v4, 0x0

    monitor-exit v0

    goto :goto_22

    .line 1512
    .end local v1           #ex:Ljava/lang/Exception;
    :catchall_44
    move-exception v4

    monitor-exit v0
    :try_end_46
    .catchall {:try_start_f .. :try_end_46} :catchall_44

    throw v4
.end method

.method public removeImageAt(I)V
    .registers 10
    .parameter "i"

    .prologue
    .line 1521
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1522
    .local v0, c:Landroid/database/Cursor;
    monitor-enter v0

    .line 1528
    :try_start_5
    const-string v5, "before delete"

    invoke-virtual {p0, v5}, Lcom/android/camera/ImageManager$BaseImageList;->dump(Ljava/lang/String;)V

    .line 1529
    invoke-virtual {p0, p1}, Lcom/android/camera/ImageManager$BaseImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_2f

    move-result-object v2

    .line 1532
    .local v2, image:Lcom/android/camera/ImageManager$IImage;
    :try_start_e
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_2c

    move-result v3

    .line 1536
    .local v3, moved:Z
    if-eqz v3, :cond_25

    .line 1537
    :try_start_14
    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v4

    .line 1538
    .local v4, u:Landroid/net/Uri;
    iget-object v5, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v4, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1539
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$BaseImageList;->requery()V

    .line 1540
    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->onRemove()V

    .line 1542
    .end local v4           #u:Landroid/net/Uri;
    :cond_25
    const-string v5, "after delete"

    invoke-virtual {p0, v5}, Lcom/android/camera/ImageManager$BaseImageList;->dump(Ljava/lang/String;)V

    .line 1543
    monitor-exit v0

    .line 1544
    .end local v3           #moved:Z
    :goto_2b
    return-void

    .line 1533
    :catch_2c
    move-exception v1

    .line 1534
    .local v1, ex:Ljava/lang/Exception;
    monitor-exit v0

    goto :goto_2b

    .line 1543
    .end local v1           #ex:Ljava/lang/Exception;
    .end local v2           #image:Lcom/android/camera/ImageManager$IImage;
    :catchall_2f
    move-exception v5

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_14 .. :try_end_31} :catchall_2f

    throw v5
.end method

.method public removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
    .registers 3
    .parameter "changeCallback"

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    if-ne p1, v0, :cond_7

    .line 1548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    .line 1549
    :cond_7
    return-void
.end method

.method protected requery()V
    .registers 2

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1553
    iget-object v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    .line 1554
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$BaseImageList;->mCursorDeactivated:Z

    .line 1555
    return-void
.end method

.method protected saveMiniThumbToFile(Landroid/graphics/Bitmap;JJ)V
    .registers 12
    .parameter "bitmap"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1558
    invoke-static {p1}, Lcom/android/camera/ImageManager;->miniThumbData(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .local v1, data:[B
    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 1559
    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;->saveMiniThumbToFile([BJJ)V

    .line 1560
    return-void
.end method

.method protected saveMiniThumbToFile([BJJ)V
    .registers 22
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1563
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ImageManager$BaseImageList;->miniThumbDataFile()Ljava/io/RandomAccessFile;

    move-result-object v6

    .line 1564
    .local v6, r:Ljava/io/RandomAccessFile;
    if-nez v6, :cond_7

    .line 1600
    :goto_6
    return-void

    .line 1567
    :cond_7
    const-wide/16 v13, 0x2710

    mul-long v4, p2, v13

    .line 1568
    .local v4, pos:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1569
    .local v7, t0:J
    monitor-enter v6

    .line 1571
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1572
    .local v9, t1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 1573
    .local v11, t2:J
    if-eqz p1, :cond_50

    .line 1574
    move-object/from16 v0, p1

    array-length v0, v0

    move v13, v0
    :try_end_1e
    .catchall {:try_start_10 .. :try_end_1e} :catchall_24
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_1e} :catch_59

    const/16 v14, 0x2710

    if-le v13, v14, :cond_27

    .line 1576
    :try_start_22
    monitor-exit v6

    goto :goto_6

    .line 1599
    .end local v9           #t1:J
    .end local v11           #t2:J
    :catchall_24
    move-exception v13

    monitor-exit v6
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_24

    throw v13

    .line 1578
    .restart local v9       #t1:J
    .restart local v11       #t2:J
    :cond_27
    :try_start_27
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1579
    const/4 v13, 0x0

    invoke-virtual {v6, v13}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 1582
    const-wide/16 v13, 0x0

    cmp-long v13, p4, v13

    if-nez v13, :cond_52

    .line 1583
    const/16 v13, 0x8

    invoke-virtual {v6, v13}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 1586
    :goto_39
    move-object/from16 v0, p1

    array-length v0, v0

    move v13, v0

    invoke-virtual {v6, v13}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 1587
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1589
    invoke-virtual {v6, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 1590
    const/4 v13, 0x1

    invoke-virtual {v6, v13}, Ljava/io/RandomAccessFile;->writeByte(I)V

    .line 1591
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_50
    .catchall {:try_start_27 .. :try_end_50} :catchall_24
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_50} :catch_59

    .line 1599
    :cond_50
    :try_start_50
    monitor-exit v6
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_24

    goto :goto_6

    .line 1585
    :cond_52
    :try_start_52
    move-object v0, v6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_24
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_58} :catch_59

    goto :goto_39

    .line 1595
    .end local v9           #t1:J
    .end local v11           #t2:J
    :catch_59
    move-exception v13

    move-object v3, v13

    .line 1596
    .local v3, ex:Ljava/io/IOException;
    :try_start_5b
    const-string v13, "ImageManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object v0, v14

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "; "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    throw v3
    :try_end_85
    .catchall {:try_start_5b .. :try_end_85} :catchall_24
.end method

.method public setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .registers 3
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 1603
    iput-object p1, p0, Lcom/android/camera/ImageManager$BaseImageList;->mListener:Lcom/android/camera/ImageManager$IImageList$OnChange;

    .line 1604
    iput-object p2, p0, Lcom/android/camera/ImageManager$BaseImageList;->mHandler:Landroid/os/Handler;

    .line 1605
    return-void
.end method

.method protected storeThumbnail(Landroid/graphics/Bitmap;J)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "thumb"
    .parameter "imageId"

    .prologue
    const/4 v5, 0x0

    .line 882
    if-nez p1, :cond_5

    move-object v3, v5

    .line 897
    :goto_4
    return-object v3

    .line 886
    :cond_5
    :try_start_5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {p0, p2, p3, v3, v4}, Lcom/android/camera/ImageManager$BaseImageList;->getThumbnailUri(JII)Landroid/net/Uri;

    move-result-object v2

    .line 887
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_15

    move-object v3, p1

    .line 888
    goto :goto_4

    .line 890
    :cond_15
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 891
    .local v1, thumbOut:Ljava/io/OutputStream;
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x3c

    invoke-virtual {p1, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 892
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_25} :catch_27

    move-object v3, p1

    .line 893
    goto :goto_4

    .line 895
    .end local v1           #thumbOut:Ljava/io/OutputStream;
    .end local v2           #uri:Landroid/net/Uri;
    :catch_27
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/lang/Exception;
    move-object v3, v5

    .line 897
    goto :goto_4
.end method

.method protected storeThumbnail([BJII)Z
    .registers 11
    .parameter "jpegThumbnail"
    .parameter "imageId"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 905
    if-nez p1, :cond_5

    move v3, v4

    .line 922
    :goto_4
    return v3

    .line 908
    :cond_5
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/camera/ImageManager$BaseImageList;->getThumbnailUri(JII)Landroid/net/Uri;

    move-result-object v2

    .line 909
    .local v2, uri:Landroid/net/Uri;
    if-nez v2, :cond_d

    move v3, v4

    .line 910
    goto :goto_4

    .line 913
    :cond_d
    :try_start_d
    iget-object v3, p0, Lcom/android/camera/ImageManager$BaseImageList;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v3, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v1

    .line 914
    .local v1, thumbOut:Ljava/io/OutputStream;
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 915
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_1b
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_1f

    .line 916
    const/4 v3, 0x1

    goto :goto_4

    .line 918
    .end local v1           #thumbOut:Ljava/io/OutputStream;
    :catch_1b
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/io/FileNotFoundException;
    move v3, v4

    .line 919
    goto :goto_4

    .line 921
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1f
    move-exception v3

    move-object v0, v3

    .local v0, ex:Ljava/io/IOException;
    move v3, v4

    .line 922
    goto :goto_4
.end method

.method protected thumbnailWhereClause()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1286
    const-string v0, "mini_thumb_magic isnull and (mime_type=? or mime_type=?)"

    return-object v0
.end method

.method protected thumbnailWhereClauseArgs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1290
    invoke-static {}, Lcom/android/camera/ImageManager;->access$400()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
