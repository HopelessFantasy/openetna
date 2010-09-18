.class Lcom/android/camera/ImageManager$VideoList;
.super Lcom/android/camera/ImageManager$BaseImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VideoList"
.end annotation


# instance fields
.field final INDEX_CATEGORY:I

.field final INDEX_DATA:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_DESCRIPTION:I

.field final INDEX_DISPLAY_NAME:I

.field final INDEX_ID:I

.field final INDEX_LANGUAGE:I

.field final INDEX_LATITUDE:I

.field final INDEX_LONGITUDE:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_MINI_THUMB_MAGIC:I

.field final INDEX_PRIVATE:I

.field final INDEX_TAGS:I

.field final INDEX_THUMB_ID:I

.field final INDEX_TITLE:I

.field private final sProjection:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 22
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "uri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 3334
    iput-object p1, p0, Lcom/android/camera/ImageManager$VideoList;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p6

    move-object/from16 v5, p7

    .line 3335
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 3300
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "datetaken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "description"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "isprivate"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "tags"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "category"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "language"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "latitude"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "longitude"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mini_thumb_magic"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    .line 3317
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_id"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_ID:I

    .line 3318
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_data"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATA:I

    .line 3319
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "datetaken"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATE_TAKEN:I

    .line 3320
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "title"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TITLE:I

    .line 3321
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_display_name"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DISPLAY_NAME:I

    .line 3322
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "mime_type"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    .line 3323
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "description"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DESCRIPTION:I

    .line 3324
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "isprivate"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_PRIVATE:I

    .line 3325
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "tags"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TAGS:I

    .line 3326
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "category"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_CATEGORY:I

    .line 3327
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "language"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LANGUAGE:I

    .line 3328
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "latitude"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LATITUDE:I

    .line 3329
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "longitude"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LONGITUDE:I

    .line 3330
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "mini_thumb_magic"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MINI_THUMB_MAGIC:I

    .line 3331
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    const-string v1, "_id"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_THUMB_ID:I

    .line 3337
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    .line 3338
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_122

    .line 3339
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create video cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$VideoList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3340
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3348
    :cond_122
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_12c

    .line 3349
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 3351
    :cond_12c
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_173

    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_173

    .line 3352
    const/4 v10, 0x0

    .line 3354
    .local v10, row:I
    :goto_139
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->indexId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 3355
    .local v2, imageId:J
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->indexDateTaken()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 3356
    .local v8, dateTaken:J
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->indexMiniThumbId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 3357
    .local v4, miniThumbId:J
    iget-object v12, p0, Lcom/android/camera/ImageManager$VideoList;->mCache:Ljava/util/HashMap;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    new-instance v0, Lcom/android/camera/ImageManager$VideoObject;

    iget-object v6, p0, Lcom/android/camera/ImageManager$VideoList;->mContentResolver:Landroid/content/ContentResolver;

    add-int/lit8 v11, v10, 0x1

    .end local v10           #row:I
    .local v11, row:I
    move-object v1, p1

    move-object v7, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/ImageManager$VideoObject;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$VideoList;JI)V

    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3359
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_174

    .line 3361
    .end local v2           #imageId:J
    .end local v4           #miniThumbId:J
    .end local v8           #dateTaken:J
    .end local v11           #row:I
    :cond_173
    return-void

    .restart local v2       #imageId:J
    .restart local v4       #miniThumbId:J
    .restart local v8       #dateTaken:J
    .restart local v11       #row:I
    :cond_174
    move v10, v11

    .end local v11           #row:I
    .restart local v10       #row:I
    goto :goto_139
.end method

.method private sortOrder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 3471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datetaken"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/ImageManager$VideoList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1b

    const-string v1, " ASC "

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1b
    const-string v1, " DESC"

    goto :goto_12
.end method


# virtual methods
.method protected createCursor()Landroid/database/Cursor;
    .registers 8

    .prologue
    .line 3407
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$VideoList;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/ImageManager$VideoList;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$VideoList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3417
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3364
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$VideoList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "distinct"

    const-string v3, "true"

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "bucket_display_name"

    aput-object v3, v2, v8

    const-string v3, "bucket_id"

    aput-object v3, v2, v9

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$VideoList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$VideoList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3375
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 3376
    .local v7, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_4f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 3378
    :cond_3e
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3379
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 3381
    :cond_4f
    return-object v7
.end method

.method protected indexData()I
    .registers 2

    .prologue
    .line 3424
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateTaken()I
    .registers 2

    .prologue
    .line 3421
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DATE_TAKEN:I

    return v0
.end method

.method protected indexDescription()I
    .registers 2

    .prologue
    .line 3422
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_DESCRIPTION:I

    return v0
.end method

.method protected indexDisplayName()I
    .registers 2

    .prologue
    .line 3432
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .registers 2

    .prologue
    .line 3425
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .registers 2

    .prologue
    .line 3426
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LATITUDE:I

    return v0
.end method

.method protected indexLongitude()I
    .registers 2

    .prologue
    .line 3427
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_LONGITUDE:I

    return v0
.end method

.method protected indexMimeType()I
    .registers 2

    .prologue
    .line 3423
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .registers 2

    .prologue
    .line 3428
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_MINI_THUMB_MAGIC:I

    return v0
.end method

.method protected indexOrientation()I
    .registers 2

    .prologue
    .line 3420
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .registers 2

    .prologue
    .line 3429
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .registers 2

    .prologue
    .line 3430
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_PRIVATE:I

    return v0
.end method

.method protected indexThumbId()I
    .registers 2

    .prologue
    .line 3433
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTitle()I
    .registers 2

    .prologue
    .line 3431
    iget v0, p0, Lcom/android/camera/ImageManager$VideoList;->INDEX_TITLE:I

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;
    .registers 22
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 3438
    new-instance v0, Lcom/android/camera/ImageManager$VideoObject;

    iget-object v1, p0, Lcom/android/camera/ImageManager$VideoList;->this$0:Lcom/android/camera/ImageManager;

    iget-object v6, p0, Lcom/android/camera/ImageManager$VideoList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p0

    move-wide/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/camera/ImageManager$VideoObject;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$VideoList;JI)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 9
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfdInput"
    .parameter "options"

    .prologue
    .line 3444
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 3445
    .local v1, mp:Landroid/media/MediaPlayer;
    invoke-static {}, Lcom/android/camera/ImageManager;->access$1000()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 3447
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    :try_start_9
    iget-object v3, p0, Lcom/android/camera/ImageManager$VideoList;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 3450
    const/16 v0, 0x3e8

    .line 3451
    .local v0, at:I
    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->getFrameAt(I)Landroid/graphics/Bitmap;
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_27
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_13} :catch_18
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_13} :catch_1d
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_13} :catch_22

    move-result-object v2

    .line 3464
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 3466
    .end local v0           #at:I
    :goto_17
    return-object v2

    .line 3460
    :catch_18
    move-exception v3

    .line 3464
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_17

    .line 3461
    :catch_1d
    move-exception v3

    .line 3464
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_17

    .line 3462
    :catch_22
    move-exception v3

    .line 3464
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_17

    :catchall_27
    move-exception v3

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    throw v3
.end method

.method protected thumbnailWhereClause()Ljava/lang/String;
    .registers 2

    .prologue
    .line 3398
    const-string v0, "mini_thumb_magic isnull"

    return-object v0
.end method

.method protected thumbnailWhereClauseArgs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3403
    const/4 v0, 0x0

    return-object v0
.end method

.method protected whereClause()Ljava/lang/String;
    .registers 3

    .prologue
    .line 3385
    iget-object v0, p0, Lcom/android/camera/ImageManager$VideoList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 3386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$VideoList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3388
    :goto_1f
    return-object v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 3393
    const/4 v0, 0x0

    return-object v0
.end method
