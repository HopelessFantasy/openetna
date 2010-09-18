.class Lcom/android/camera/ImageManager$ImageList;
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
    name = "ImageList"
.end annotation


# instance fields
.field final INDEX_DATA:I

.field final INDEX_DATE_TAKEN:I

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final INDEX_MINI_THUMB_MAGIC:I

.field final INDEX_ORIENTATION:I

.field final INDEX_THUMB_HEIGHT:I

.field final INDEX_THUMB_ID:I

.field final INDEX_THUMB_IMAGE_ID:I

.field final INDEX_THUMB_WIDTH:I

.field mContentObserver:Landroid/database/ContentObserver;

.field mDataSetObserver:Landroid/database/DataSetObserver;

.field mIsRegistered:Z

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 16
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "thumbUri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    const-string v7, "_id"

    .line 2221
    iput-object p1, p0, Lcom/android/camera/ImageManager$ImageList;->this$0:Lcom/android/camera/ImageManager;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p6

    move-object v5, p7

    .line 2222
    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageManager$BaseImageList;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V

    .line 2181
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    invoke-static {v0, v7}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ID:I

    .line 2182
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_data"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATA:I

    .line 2183
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "mime_type"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    .line 2184
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    .line 2185
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "mini_thumb_magic"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    .line 2186
    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "orientation"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ORIENTATION:I

    .line 2188
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "_id"

    invoke-static {v0, v7}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    .line 2189
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "image_id"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_IMAGE_ID:I

    .line 2190
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "width"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_WIDTH:I

    .line 2191
    invoke-static {}, Lcom/android/camera/ImageManager;->access$200()[Ljava/lang/String;

    move-result-object v0

    const-string v1, "height"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_HEIGHT:I

    .line 2193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    .line 2223
    iput-object p4, p0, Lcom/android/camera/ImageManager$ImageList;->mBaseUri:Landroid/net/Uri;

    .line 2224
    iput-object p5, p0, Lcom/android/camera/ImageManager$ImageList;->mThumbUri:Landroid/net/Uri;

    .line 2225
    iput p6, p0, Lcom/android/camera/ImageManager$ImageList;->mSort:I

    .line 2227
    iput-object p3, p0, Lcom/android/camera/ImageManager$ImageList;->mContentResolver:Landroid/content/ContentResolver;

    .line 2229
    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->createCursor()Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mCursor:Landroid/database/Cursor;

    .line 2230
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_ba

    .line 2231
    const-string v0, "ImageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to create image cursor for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ImageManager$ImageList;->mBaseUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 2239
    :cond_ba
    new-instance v6, Lcom/android/camera/ImageManager$ImageList$1;

    invoke-direct {v6, p0, p1}, Lcom/android/camera/ImageManager$ImageList$1;-><init>(Lcom/android/camera/ImageManager$ImageList;Lcom/android/camera/ImageManager;)V

    .line 2254
    .local v6, updateRunnable:Ljava/lang/Runnable;
    new-instance v0, Lcom/android/camera/ImageManager$ImageList$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v6}, Lcom/android/camera/ImageManager$ImageList$2;-><init>(Lcom/android/camera/ImageManager$ImageList;Landroid/os/Handler;Lcom/android/camera/ImageManager;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    .line 2267
    new-instance v0, Lcom/android/camera/ImageManager$ImageList$3;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ImageManager$ImageList$3;-><init>(Lcom/android/camera/ImageManager$ImageList;Lcom/android/camera/ImageManager;)V

    iput-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 2280
    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->registerObservers()V

    .line 2281
    return-void
.end method

.method private closeSilently(Landroid/os/ParcelFileDescriptor;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 2406
    if-eqz p1, :cond_5

    .line 2408
    :try_start_2
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_5} :catch_6

    .line 2413
    :cond_5
    :goto_5
    return-void

    .line 2409
    :catch_6
    move-exception v0

    goto :goto_5
.end method

.method private makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "uri"

    .prologue
    .line 2417
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    .line 2419
    :goto_8
    return-object v1

    .line 2418
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 2419
    .local v0, ex:Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_8
.end method

.method private registerObservers()V
    .registers 3

    .prologue
    .line 2284
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    if-eqz v0, :cond_5

    .line 2290
    :goto_4
    return-void

    .line 2287
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 2288
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    goto :goto_4
.end method

.method private sortOrder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2427
    iget v1, p0, Lcom/android/camera/ImageManager$ImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2c

    const-string v1, " ASC"

    move-object v0, v1

    .line 2428
    .local v0, ascending:Ljava/lang/String;
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "datetaken"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2427
    .end local v0           #ascending:Ljava/lang/String;
    :cond_2c
    const-string v1, " DESC"

    move-object v0, v1

    goto :goto_8
.end method

.method private unregisterObservers()V
    .registers 3

    .prologue
    .line 2293
    iget-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 2299
    :goto_4
    return-void

    .line 2296
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mContentObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 2297
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageManager$ImageList;->mIsRegistered:Z

    goto :goto_4
.end method


# virtual methods
.method protected activateCursor()V
    .registers 1

    .prologue
    .line 2307
    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->activateCursor()V

    .line 2308
    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->registerObservers()V

    .line 2309
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .registers 8

    .prologue
    .line 2324
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mBaseUri:Landroid/net/Uri;

    invoke-static {}, Lcom/android/camera/ImageManager;->access$500()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2334
    .local v6, c:Landroid/database/Cursor;
    return-object v6
.end method

.method public deactivate()V
    .registers 1

    .prologue
    .line 2302
    invoke-super {p0}, Lcom/android/camera/ImageManager$BaseImageList;->deactivate()V

    .line 2303
    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->unregisterObservers()V

    .line 2304
    return-void
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

    .line 2198
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mBaseUri:Landroid/net/Uri;

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

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ImageManager$ImageList;->whereClauseArgs()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/camera/ImageManager$ImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Landroid/provider/MediaStore$Images$Media;->query(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2209
    .local v6, c:Landroid/database/Cursor;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 2210
    .local v7, hash:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v6, :cond_4f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 2212
    :cond_3e
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2213
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 2215
    :cond_4f
    return-object v7
.end method

.method protected indexData()I
    .registers 2

    .prologue
    .line 2341
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATA:I

    return v0
.end method

.method protected indexDateTaken()I
    .registers 2

    .prologue
    .line 2338
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_DATE_TAKEN:I

    return v0
.end method

.method protected indexDescription()I
    .registers 2

    .prologue
    .line 2339
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .registers 2

    .prologue
    .line 2350
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .registers 2

    .prologue
    .line 2342
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ID:I

    return v0
.end method

.method protected indexLatitude()I
    .registers 2

    .prologue
    .line 2343
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .registers 2

    .prologue
    .line 2344
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .registers 2

    .prologue
    .line 2340
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MIME_TYPE:I

    return v0
.end method

.method protected indexMiniThumbId()I
    .registers 2

    .prologue
    .line 2345
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_MINI_THUMB_MAGIC:I

    return v0
.end method

.method protected indexOrientation()I
    .registers 2

    .prologue
    .line 2337
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_ORIENTATION:I

    return v0
.end method

.method protected indexPicasaWeb()I
    .registers 2

    .prologue
    .line 2347
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .registers 2

    .prologue
    .line 2348
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .registers 2

    .prologue
    .line 2351
    iget v0, p0, Lcom/android/camera/ImageManager$ImageList;->INDEX_THUMB_ID:I

    return v0
.end method

.method protected indexTitle()I
    .registers 2

    .prologue
    .line 2349
    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;
    .registers 21
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 2355
    new-instance v0, Lcom/android/camera/ImageManager$Image;

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->this$0:Lcom/android/camera/ImageManager;

    iget-object v6, p0, Lcom/android/camera/ImageManager$ImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-wide v2, p1

    move-wide v4, p3

    move-object v7, p0

    move/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/camera/ImageManager$Image;-><init>(Lcom/android/camera/ImageManager;JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;II)V

    return-object v0
.end method

.method protected makeBitmap(ILandroid/net/Uri;Landroid/os/ParcelFileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .registers 16
    .parameter "targetWidthHeight"
    .parameter "uri"
    .parameter "pfd"
    .parameter "options"

    .prologue
    .line 2359
    const/4 v0, 0x0

    .line 2362
    .local v0, b:Landroid/graphics/Bitmap;
    if-nez p3, :cond_7

    .line 2363
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/camera/ImageManager$ImageList;->makeInputStream(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_82
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_6} :catch_63

    move-result-object p3

    .line 2365
    :cond_7
    if-nez p3, :cond_e

    .line 2366
    const/4 v8, 0x0

    .line 2397
    invoke-direct {p0, p3}, Lcom/android/camera/ImageManager$ImageList;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    .line 2399
    :goto_d
    return-object v8

    .line 2368
    :cond_e
    if-nez p4, :cond_16

    .line 2369
    :try_start_10
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .end local p4
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    move-object p4, v3

    .line 2371
    .end local v3           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local p4
    :cond_16
    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 2372
    .local v2, fd:Ljava/io/FileDescriptor;
    const/4 v8, 0x1

    iput v8, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2373
    const/4 v8, -0x1

    if-eq p1, v8, :cond_4b

    .line 2374
    const/4 v8, 0x1

    iput-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2376
    .local v4, t1:J
    const/4 v8, 0x0

    invoke-static {v2, v8, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 2377
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2378
    .local v6, t2:J
    iget-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-nez v8, :cond_3d

    iget v8, p4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3d

    iget v8, p4, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_3a
    .catchall {:try_start_10 .. :try_end_3a} :catchall_82
    .catch Ljava/lang/OutOfMemoryError; {:try_start_10 .. :try_end_3a} :catch_63

    const/4 v9, -0x1

    if-ne v8, v9, :cond_42

    .line 2379
    :cond_3d
    const/4 v8, 0x0

    .line 2397
    invoke-direct {p0, p3}, Lcom/android/camera/ImageManager$ImageList;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    .line 2381
    :cond_42
    :try_start_42
    invoke-static {p4, p1}, Lcom/android/camera/ImageManager;->access$300(Landroid/graphics/BitmapFactory$Options;I)I

    move-result v8

    iput v8, p4, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 2382
    const/4 v8, 0x0

    iput-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 2385
    .end local v4           #t1:J
    .end local v6           #t2:J
    :cond_4b
    const/4 v8, 0x0

    iput-boolean v8, p4, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 2386
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v8, p4, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 2387
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 2388
    .restart local v4       #t1:J
    const/4 v8, 0x0

    invoke-static {v2, v8, p4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_5e
    .catchall {:try_start_42 .. :try_end_5e} :catchall_82
    .catch Ljava/lang/OutOfMemoryError; {:try_start_42 .. :try_end_5e} :catch_63

    .line 2397
    invoke-direct {p0, p3}, Lcom/android/camera/ImageManager$ImageList;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    move-object v8, v0

    .line 2399
    goto :goto_d

    .line 2393
    .end local v2           #fd:Ljava/io/FileDescriptor;
    .end local v4           #t1:J
    :catch_63
    move-exception v8

    move-object v1, v8

    .line 2394
    .local v1, ex:Ljava/lang/OutOfMemoryError;
    :try_start_65
    const-string v8, "ImageManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to allocate memory for thumbnail in makebitmap function "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catchall {:try_start_65 .. :try_end_7d} :catchall_82

    .line 2395
    const/4 v8, 0x0

    .line 2397
    invoke-direct {p0, p3}, Lcom/android/camera/ImageManager$ImageList;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_d

    .end local v1           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_82
    move-exception v8

    invoke-direct {p0, p3}, Lcom/android/camera/ImageManager$ImageList;->closeSilently(Landroid/os/ParcelFileDescriptor;)V

    throw v8
.end method

.method protected whereClause()Ljava/lang/String;
    .registers 3

    .prologue
    .line 2312
    iget-object v0, p0, Lcom/android/camera/ImageManager$ImageList;->mBucketId:Ljava/lang/String;

    if-eqz v0, :cond_20

    .line 2313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(mime_type=? or mime_type=?) and bucket_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ImageManager$ImageList;->mBucketId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2315
    :goto_1f
    return-object v0

    :cond_20
    const-string v0, "(mime_type=? or mime_type=?)"

    goto :goto_1f
.end method

.method protected whereClauseArgs()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 2320
    invoke-static {}, Lcom/android/camera/ImageManager;->access$400()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
