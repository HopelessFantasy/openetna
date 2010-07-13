.class Lcom/android/camera/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageLoader$WorkItem;,
        Lcom/android/camera/ImageLoader$LoadedCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageLoader"


# instance fields
.field private mDecodeThreads:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private mDone:Z

.field private mHandler:Landroid/os/Handler;

.field private mInProgress:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ImageLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/ImageLoader$WorkItem;",
            ">;"
        }
    .end annotation
.end field

.field private mThreadCount:I


# direct methods
.method public constructor <init>(Landroid/os/Handler;I)V
    .registers 4
    .parameter "handler"
    .parameter "threadCount"

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    .line 42
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ImageLoader;->mThreadCount:I

    .line 168
    iput p2, p0, Lcom/android/camera/ImageLoader;->mThreadCount:I

    .line 169
    iput-object p1, p0, Lcom/android/camera/ImageLoader;->mHandler:Landroid/os/Handler;

    .line 170
    invoke-direct {p0}, Lcom/android/camera/ImageLoader;->start()V

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ImageLoader;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/camera/ImageLoader;->mDone:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ImageLoader;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ImageLoader;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private dumpQueue(Ljava/lang/String;)V
    .registers 7
    .parameter "s"

    .prologue
    .line 126
    iget-object v3, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v3

    .line 127
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_9
    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_34

    .line 129
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/camera/ImageLoader$WorkItem;

    iget v2, v2, Lcom/android/camera/ImageLoader$WorkItem;->mTag:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 133
    :cond_34
    monitor-exit v3

    .line 134
    return-void

    .line 133
    .end local v0           #i:I
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :catchall_36
    move-exception v2

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v2
.end method

.method private declared-synchronized start()V
    .registers 6

    .prologue
    .line 177
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_47

    .line 178
    :try_start_4
    iget-object v3, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_f

    .line 179
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_44

    .line 244
    :goto_d
    monitor-exit p0

    return-void

    .line 181
    :cond_f
    const/4 v3, 0x0

    :try_start_10
    iput-boolean v3, p0, Lcom/android/camera/ImageLoader;->mDone:Z

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_13
    iget v3, p0, Lcom/android/camera/ImageLoader;->mThreadCount:I

    if-ge v0, v3, :cond_42

    .line 183
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/camera/ImageLoader$1;

    invoke-direct {v3, p0}, Lcom/android/camera/ImageLoader$1;-><init>(Lcom/android/camera/ImageLoader;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    .local v1, t:Ljava/lang/Thread;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "image-loader-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 240
    iget-object v3, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 182
    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 243
    .end local v1           #t:Ljava/lang/Thread;
    :cond_42
    monitor-exit v2

    goto :goto_d

    .end local v0           #i:I
    :catchall_44
    move-exception v3

    monitor-exit v2
    :try_end_46
    .catchall {:try_start_10 .. :try_end_46} :catchall_44

    :try_start_46
    throw v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_47

    .line 177
    :catchall_47
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public static transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .registers 12
    .parameter "scaler"
    .parameter "source"
    .parameter "targetWidth"
    .parameter "targetHeight"
    .parameter "scaleUp"

    .prologue
    .line 248
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int/2addr v0, p2

    .line 249
    .local v0, deltaX:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    .line 250
    .local v1, deltaY:I
    if-nez p4, :cond_5c

    if-ltz v0, :cond_10

    if-gez v1, :cond_5c

    .line 256
    :cond_10
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0
    invoke-static {p2, p3, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 257
    .local p0, b2:Landroid/graphics/Bitmap;
    new-instance p4, Landroid/graphics/Canvas;

    .end local p4
    invoke-direct {p4, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 259
    .local p4, c:Landroid/graphics/Canvas;
    const/4 v2, 0x0

    div-int/lit8 v0, v0, 0x2

    .end local v0           #deltaX:I
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 260
    .local v0, deltaXHalf:I
    const/4 v2, 0x0

    div-int/lit8 v1, v1, 0x2

    .end local v1           #deltaY:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 261
    .local v1, deltaYHalf:I
    new-instance v3, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-direct {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 266
    .local v3, src:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    .end local v0           #deltaXHalf:I
    sub-int v0, p2, v0

    div-int/lit8 v1, v0, 0x2

    .line 267
    .local v1, dstX:I
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v2, v0, 0x2

    .line 268
    .local v2, dstY:I
    new-instance v0, Landroid/graphics/Rect;

    sub-int/2addr p2, v1

    sub-int/2addr p3, v2

    invoke-direct {v0, v1, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 275
    .end local p2
    .end local p3
    .local v0, dst:Landroid/graphics/Rect;
    const/4 p2, 0x0

    invoke-virtual {p4, p1, v3, v0, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 322
    .end local v0           #dst:Landroid/graphics/Rect;
    .end local v1           #dstX:I
    .end local v2           #dstY:I
    .end local v3           #src:Landroid/graphics/Rect;
    .end local p4           #c:Landroid/graphics/Canvas;
    :goto_5b
    return-object p0

    .line 278
    .local v0, deltaX:I
    .local v1, deltaY:I
    .local p0, scaler:Landroid/graphics/Matrix;
    .restart local p2
    .restart local p3
    .local p4, scaleUp:Z
    :cond_5c
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p4

    .end local p4           #scaleUp:Z
    int-to-float v1, p4

    .line 279
    .local v1, bitmapWidthF:F
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    int-to-float v0, p4

    .line 281
    .local v0, bitmapHeightF:F
    div-float p4, v1, v0

    .line 282
    .local p4, bitmapAspect:F
    int-to-float v2, p2

    int-to-float v3, p3

    div-float/2addr v2, v3

    .line 284
    .local v2, viewAspect:F
    cmpl-float p4, p4, v2

    if-lez p4, :cond_b9

    .line 285
    .end local p4           #bitmapAspect:F
    int-to-float p4, p3

    div-float/2addr p4, v0

    .line 286
    .local p4, scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_7e

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_b7

    .line 287
    :cond_7e
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 301
    :goto_81
    if-eqz p0, :cond_ce

    .line 303
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .end local v1           #bitmapWidthF:F
    .end local v2           #viewAspect:F
    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 309
    .local p0, b1:Landroid/graphics/Bitmap;
    :goto_94
    const/4 p4, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    .end local p4           #scale:F
    move-result v0

    sub-int/2addr v0, p2

    invoke-static {p4, v0}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 310
    .local p4, dx1:I
    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sub-int/2addr v1, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 312
    .local v0, dy1:I
    div-int/lit8 p4, p4, 0x2

    .end local p4           #dx1:I
    div-int/lit8 v0, v0, 0x2

    .end local v0           #dy1:I
    invoke-static {p0, p4, v0, p2, p3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 319
    .local p2, b2:Landroid/graphics/Bitmap;
    if-eq p0, p1, :cond_b5

    .line 320
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_b5
    move-object p0, p2

    .line 322
    .end local p2           #b2:Landroid/graphics/Bitmap;
    .local p0, b2:Landroid/graphics/Bitmap;
    goto :goto_5b

    .line 289
    .restart local v1       #bitmapWidthF:F
    .restart local v2       #viewAspect:F
    .local p0, scaler:Landroid/graphics/Matrix;
    .local p2, targetWidth:I
    .local p4, scale:F
    :cond_b7
    const/4 p0, 0x0

    goto :goto_81

    .line 292
    .end local p4           #scale:F
    .local v0, bitmapHeightF:F
    :cond_b9
    int-to-float p4, p2

    div-float/2addr p4, v1

    .line 293
    .restart local p4       #scale:F
    const v0, 0x3f666666

    cmpg-float v0, p4, v0

    if-ltz v0, :cond_c8

    .end local v0           #bitmapHeightF:F
    const/high16 v0, 0x3f80

    cmpl-float v0, p4, v0

    if-lez v0, :cond_cc

    .line 294
    :cond_c8
    invoke-virtual {p0, p4, p4}, Landroid/graphics/Matrix;->setScale(FF)V

    goto :goto_81

    .line 296
    :cond_cc
    const/4 p0, 0x0

    goto :goto_81

    .line 306
    :cond_ce
    move-object p0, p1

    .local p0, b1:Landroid/graphics/Bitmap;
    goto :goto_94
.end method


# virtual methods
.method bitmapSize(Landroid/graphics/Bitmap;)J
    .registers 4
    .parameter "b"

    .prologue
    .line 137
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public cancel(Lcom/android/camera/ImageManager$IImage;)Z
    .registers 11
    .parameter "image"

    .prologue
    const/4 v8, 0x0

    .line 72
    iget-object v7, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v7

    .line 73
    :try_start_4
    new-instance v0, Lcom/android/camera/ImageLoader$WorkItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageLoader$WorkItem;-><init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V

    .line 75
    .local v0, w:Lcom/android/camera/ImageLoader$WorkItem;
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 76
    .local v6, existing:I
    if-ltz v6, :cond_1e

    .line 77
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 78
    const/4 v1, 0x1

    monitor-exit v7

    .line 80
    :goto_1d
    return v1

    :cond_1e
    monitor-exit v7

    move v1, v8

    goto :goto_1d

    .line 81
    .end local v0           #w:Lcom/android/camera/ImageLoader$WorkItem;
    .end local v6           #existing:I
    :catchall_21
    move-exception v1

    monitor-exit v7
    :try_end_23
    .catchall {:try_start_4 .. :try_end_23} :catchall_21

    throw v1
.end method

.method declared-synchronized clear(Landroid/net/Uri;)V
    .registers 2
    .parameter "uri"

    .prologue
    .line 45
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized dump()V
    .registers 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a

    .line 51
    :try_start_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_4 .. :try_end_5} :catchall_7

    .line 52
    monitor-exit p0

    return-void

    .line 51
    :catchall_7
    move-exception v1

    :try_start_8
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_8 .. :try_end_9} :catchall_7

    :try_start_9
    throw v1
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_a

    .line 48
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBitmap(Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;
    .registers 21
    .parameter "image"
    .parameter "tag"
    .parameter "imageLoadedRunnable"
    .parameter "postAtFront"
    .parameter "postBack"

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    monitor-enter v1

    .line 90
    :try_start_3
    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_e

    .line 91
    invoke-direct {p0}, Lcom/android/camera/ImageLoader;->start()V

    .line 93
    :cond_e
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_50

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 96
    .local v7, t1:J
    iget-object v7, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    .end local v7           #t1:J
    monitor-enter v7

    .line 97
    :try_start_16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 98
    .local v9, t2:J
    new-instance v0, Lcom/android/camera/ImageLoader$WorkItem;

    move-object v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageLoader$WorkItem;-><init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V

    .line 100
    .local v0, w:Lcom/android/camera/ImageLoader$WorkItem;
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mInProgress:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    .line 101
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 102
    .local v6, contains:Z
    if-eqz v6, :cond_53

    .line 103
    if-eqz p4, :cond_45

    .line 105
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 118
    .end local v6           #contains:Z
    :cond_45
    :goto_45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 119
    .local v11, t3:J
    monitor-exit v7
    :try_end_4a
    .catchall {:try_start_16 .. :try_end_4a} :catchall_61

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 122
    .local v13, t4:J
    const/4 v1, 0x0

    return-object v1

    .line 93
    .end local v0           #w:Lcom/android/camera/ImageLoader$WorkItem;
    .end local v9           #t2:J
    .end local v11           #t3:J
    .end local v13           #t4:J
    :catchall_50
    move-exception v2

    :try_start_51
    monitor-exit v1
    :try_end_52
    .catchall {:try_start_51 .. :try_end_52} :catchall_50

    throw v2

    .line 109
    .restart local v0       #w:Lcom/android/camera/ImageLoader$WorkItem;
    .restart local v6       #contains:Z
    .restart local v9       #t2:J
    :cond_53
    if-eqz p4, :cond_64

    .line 110
    :try_start_55
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 113
    :goto_5b
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_45

    .line 119
    .end local v0           #w:Lcom/android/camera/ImageLoader$WorkItem;
    .end local v6           #contains:Z
    .end local v9           #t2:J
    :catchall_61
    move-exception v1

    monitor-exit v7
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_61

    throw v1

    .line 112
    .restart local v0       #w:Lcom/android/camera/ImageLoader$WorkItem;
    .restart local v6       #contains:Z
    .restart local v9       #t2:J
    :cond_64
    :try_start_64
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_69
    .catchall {:try_start_64 .. :try_end_69} :catchall_61

    goto :goto_5b
.end method

.method public getBitmap(Lcom/android/camera/ImageManager$IImage;Lcom/android/camera/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "image"
    .parameter "imageLoadedRunnable"
    .parameter "postAtFront"
    .parameter "postBack"

    .prologue
    .line 85
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/ImageLoader;->getBitmap(Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;ZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public pushToFront(Lcom/android/camera/ImageManager$IImage;)V
    .registers 11
    .parameter "image"

    .prologue
    .line 59
    iget-object v8, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 60
    :try_start_3
    new-instance v0, Lcom/android/camera/ImageLoader$WorkItem;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageLoader$WorkItem;-><init>(Lcom/android/camera/ImageLoader;Lcom/android/camera/ImageManager$IImage;ILcom/android/camera/ImageLoader$LoadedCallback;Z)V

    .line 62
    .local v0, w:Lcom/android/camera/ImageLoader$WorkItem;
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 63
    .local v6, existing:I
    const/4 v1, 0x1

    if-lt v6, v1, :cond_29

    .line 64
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/camera/ImageLoader$WorkItem;

    .line 65
    .local v7, existingWorkItem:Lcom/android/camera/ImageLoader$WorkItem;
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 66
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 68
    .end local v7           #existingWorkItem:Lcom/android/camera/ImageLoader$WorkItem;
    :cond_29
    monitor-exit v8

    .line 69
    return-void

    .line 68
    .end local v0           #w:Lcom/android/camera/ImageLoader$WorkItem;
    .end local v6           #existing:I
    :catchall_2b
    move-exception v1

    monitor-exit v8
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 328
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/ImageLoader;->mDone:Z

    .line 329
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 330
    :try_start_7
    iget-object v2, p0, Lcom/android/camera/ImageLoader;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 331
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_29

    .line 332
    :goto_d
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 333
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 335
    .local v0, t:Ljava/lang/Thread;
    :try_start_1d
    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 336
    iget-object v1, p0, Lcom/android/camera/ImageLoader;->mDecodeThreads:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_26} :catch_27

    goto :goto_d

    .line 337
    :catch_27
    move-exception v1

    goto :goto_d

    .line 331
    .end local v0           #t:Ljava/lang/Thread;
    :catchall_29
    move-exception v2

    :try_start_2a
    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v2

    .line 341
    :cond_2c
    return-void
.end method
