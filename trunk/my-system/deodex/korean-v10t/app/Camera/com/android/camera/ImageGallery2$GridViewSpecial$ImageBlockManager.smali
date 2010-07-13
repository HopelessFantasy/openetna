.class Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;
.super Ljava/lang/Object;
.source "ImageGallery2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageGallery2$GridViewSpecial;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImageBlockManager"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    }
.end annotation


# static fields
.field private static final sPagesPostCache:I = 0x2

.field private static final sPagesPreCache:I = 0x2

.field private static final sRowsPerPage:I = 0x6


# instance fields
.field private mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

.field private mBlockCacheFirstBlockNumber:I

.field private mBlockCacheStartOffset:I

.field private mDone:Z

.field private mLoader:Lcom/android/camera/ImageLoader;

.field private mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mMissingVideoThumbnailBitmap:Landroid/graphics/Bitmap;

.field private mVideoMmsErrorOverlay:Landroid/graphics/drawable/Drawable;

.field private mVideoOverlay:Landroid/graphics/drawable/Drawable;

.field private mWorkCounter:I

.field private mWorkerThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;


# direct methods
.method constructor <init>(Lcom/android/camera/ImageGallery2$GridViewSpecial;)V
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1059
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1019
    iput v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    .line 1023
    iput v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    .line 1031
    iput v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkCounter:I

    .line 1032
    iput-boolean v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mDone:Z

    .line 1060
    new-instance v1, Lcom/android/camera/ImageLoader;

    invoke-static {p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$2500(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/camera/ImageLoader;-><init>(Landroid/os/Handler;I)V

    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mLoader:Lcom/android/camera/ImageLoader;

    .line 1062
    const/16 v1, 0x1e

    new-array v1, v1, [Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    .line 1063
    const/4 v0, 0x0

    .local v0, i:I
    :goto_21
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    array-length v1, v1

    if-ge v0, v1, :cond_32

    .line 1064
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    new-instance v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    invoke-direct {v2, p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)V

    aput-object v2, v1, v0

    .line 1063
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    .line 1067
    :cond_32
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;

    invoke-direct {v2, p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$1;-><init>(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;Lcom/android/camera/ImageGallery2$GridViewSpecial;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkerThread:Ljava/lang/Thread;

    .line 1109
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkerThread:Ljava/lang/Thread;

    const-string v2, "image-block-manager"

    invoke-virtual {v1, v2}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1110
    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1111
    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;[I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->getVisibleRange([I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->repaintSelection(I)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 1017
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->moveDataWindow(ZZ)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->onPause()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 1017
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkCounter:I

    return v0
.end method

.method static synthetic access$2612(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    iget v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkCounter:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkCounter:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 1017
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mDone:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Lcom/android/camera/ImageLoader;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mLoader:Lcom/android/camera/ImageLoader;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    iput p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    iput p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 1017
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->loadNext()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mVideoOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4502(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mVideoOverlay:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$4600(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mVideoMmsErrorOverlay:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mVideoMmsErrorOverlay:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private check()V
    .registers 10

    .prologue
    .line 1306
    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    .line 1307
    .local v2, blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    array-length v1, v2

    .line 1310
    .local v1, blockLength:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_4
    if-ge v3, v1, :cond_5d

    .line 1311
    iget v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    add-int/2addr v6, v3

    rem-int v4, v6, v1

    .line 1312
    .local v4, index:I
    aget-object v6, v2, v4

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    iget v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    add-int/2addr v7, v3

    if-eq v6, v7, :cond_5a

    .line 1313
    aget-object v6, v2, v4

    iget v6, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_5a

    .line 1314
    const-string v6, "ImageGallery2"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " block cache corrupted; found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v4

    iget v8, v8, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but wanted "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    add-int/2addr v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "; offset is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1318
    .end local v4           #index:I
    :cond_5d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 1319
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    :goto_63
    if-ge v3, v1, :cond_95

    .line 1320
    iget v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    add-int/2addr v6, v3

    rem-int v4, v6, v1

    .line 1321
    .restart local v4       #index:I
    aget-object v0, v2, v4

    .line 1322
    .local v0, b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    iget v6, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mRequestedMask:I

    if-eqz v6, :cond_78

    .line 1323
    const-string v6, "X"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1319
    :goto_75
    add-int/lit8 v3, v3, 0x1

    goto :goto_63

    .line 1325
    :cond_78
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_75

    .line 1330
    .end local v0           #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v4           #index:I
    :cond_95
    return-void
.end method

.method private getBlockForPos(I)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .registers 8
    .parameter "pos"

    .prologue
    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_1
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v4

    iget v4, v4, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    div-int v1, p1, v4

    .line 1133
    .local v1, blockNumber:I
    iget v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    sub-int v2, v1, v4

    .line 1134
    .local v2, delta:I
    if-ltz v2, :cond_25

    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    array-length v4, v4

    if-ge v2, v4, :cond_25

    .line 1135
    iget v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    add-int/2addr v4, v2

    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    array-length v5, v5

    rem-int v3, v4, v5

    .line 1136
    .local v3, index:I
    iget-object v4, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    aget-object v0, v4, v3

    .line 1137
    .local v0, b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    monitor-exit p0

    move-object v4, v0

    .line 1140
    .end local v0           #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v3           #index:I
    :goto_24
    return-object v4

    .line 1139
    :cond_25
    monitor-exit p0

    .line 1140
    const/4 v4, 0x0

    goto :goto_24

    .line 1139
    .end local v1           #blockNumber:I
    .end local v2           #delta:I
    :catchall_28
    move-exception v4

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_28

    throw v4
.end method

.method private getVisibleRange([I)V
    .registers 14
    .parameter "range"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1171
    :try_start_2
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_3} :catch_52

    .line 1172
    :try_start_3
    iget-object v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    array-length v1, v7

    .line 1173
    .local v1, blockLength:I
    const/4 v5, 0x1

    .line 1174
    .local v5, lookingForStart:Z
    const/4 v6, 0x0

    .line 1175
    .local v6, prevBlock:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_9
    if-ge v3, v1, :cond_4d

    .line 1176
    iget v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    add-int/2addr v7, v3

    rem-int v4, v7, v1

    .line 1177
    .local v4, index:I
    iget-object v7, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    aget-object v0, v7, v4

    .line 1178
    .local v0, block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    if-eqz v5, :cond_2d

    .line 1179
    iget-boolean v7, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mIsVisible:Z

    if-eqz v7, :cond_29

    .line 1180
    const/4 v7, 0x0

    iget v8, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v9

    iget v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int/2addr v8, v9

    aput v8, p1, v7

    .line 1181
    const/4 v5, 0x0

    .line 1189
    :cond_29
    move-object v6, v0

    .line 1175
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1184
    :cond_2d
    iget-boolean v7, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mIsVisible:Z

    if-eqz v7, :cond_35

    sub-int v7, v1, v10

    if-ne v3, v7, :cond_29

    .line 1185
    :cond_35
    const/4 v7, 0x1

    iget v8, v6, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v9

    iget v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    mul-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v9

    iget v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    add-int/2addr v8, v9

    sub-int/2addr v8, v10

    aput v8, p1, v7

    .line 1191
    .end local v0           #block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v4           #index:I
    :cond_4d
    monitor-exit p0

    .line 1196
    .end local v1           #blockLength:I
    .end local v3           #i:I
    .end local v5           #lookingForStart:Z
    .end local v6           #prevBlock:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    :goto_4e
    return-void

    .line 1191
    :catchall_4f
    move-exception v7

    monitor-exit p0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    :try_start_51
    throw v7
    :try_end_52
    .catch Ljava/lang/NullPointerException; {:try_start_51 .. :try_end_52} :catch_52

    .line 1192
    :catch_52
    move-exception v7

    move-object v2, v7

    .line 1193
    .local v2, ex:Ljava/lang/NullPointerException;
    const-string v7, "ImageGallery2"

    const-string v8, "this is somewhat null, what up?"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    aput v11, p1, v10

    aput v11, p1, v11

    goto :goto_4e
.end method

.method private loadNext()V
    .registers 13

    .prologue
    .line 1199
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v9

    iget v9, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int v1, v9, v10

    .line 1201
    .local v1, blockHeight:I
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$3500(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v10

    iget-object v11, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v11}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v11

    iget v11, v11, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    sub-int/2addr v10, v11

    div-int/2addr v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 1202
    .local v4, firstVisBlock:I
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$3600(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v9

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v10

    iget v10, v10, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    div-int v7, v9, v1

    .line 1206
    .local v7, lastVisBlock:I
    monitor-enter p0

    .line 1207
    :try_start_40
    iget-object v2, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    .line 1208
    .local v2, blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    array-length v8, v2

    .line 1209
    .local v8, numBlocks:I
    iget-object v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$3700(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z

    move-result v9

    if-eqz v9, :cond_6a

    .line 1210
    iget v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    iget v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    sub-int v10, v4, v10

    add-int/2addr v9, v10

    array-length v10, v2

    rem-int v3, v9, v10

    .line 1211
    .local v3, first:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_56
    if-ge v5, v8, :cond_65

    .line 1212
    add-int v6, v3, v5

    .line 1213
    .local v6, j:I
    if-lt v6, v8, :cond_5d

    .line 1214
    sub-int/2addr v6, v8

    .line 1215
    :cond_5d
    aget-object v0, v2, v6

    .line 1216
    .local v0, b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$3800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)I

    move-result v9

    if-lez v9, :cond_67

    .line 1232
    .end local v0           #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v6           #j:I
    :cond_65
    monitor-exit p0

    .line 1233
    return-void

    .line 1211
    .restart local v0       #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .restart local v6       #j:I
    :cond_67
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 1220
    .end local v0           #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v3           #first:I
    .end local v5           #i:I
    .end local v6           #j:I
    :cond_6a
    iget v9, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    iget v10, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    sub-int v10, v7, v10

    add-int/2addr v9, v10

    array-length v10, v2

    rem-int v3, v9, v10

    .line 1221
    .restart local v3       #first:I
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_75
    if-ge v5, v8, :cond_65

    .line 1222
    sub-int v6, v3, v5

    .line 1223
    .restart local v6       #j:I
    if-gez v6, :cond_7c

    .line 1224
    add-int/2addr v6, v8

    .line 1225
    :cond_7c
    aget-object v0, v2, v6

    .line 1226
    .restart local v0       #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$3800(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)I

    move-result v9

    if-gtz v9, :cond_65

    .line 1221
    add-int/lit8 v5, v5, 0x1

    goto :goto_75

    .line 1232
    .end local v0           #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v2           #blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v3           #first:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v8           #numBlocks:I
    :catchall_87
    move-exception v9

    monitor-exit p0
    :try_end_89
    .catchall {:try_start_40 .. :try_end_89} :catchall_87

    throw v9
.end method

.method private moveDataWindow(ZZ)V
    .registers 21
    .parameter "directionBiasDown"
    .parameter "forceRefresh"

    .prologue
    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v16

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    move/from16 v17, v0

    add-int v4, v16, v17

    .line 1238
    .local v4, blockHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$3900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int v8, v16, v4

    .line 1239
    .local v8, firstVisBlock:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$4000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getHeight()I

    move-result v17

    add-int v16, v16, v17

    div-int v12, v16, v4

    .line 1241
    .local v12, lastVisBlock:I
    const/4 v14, 0x2

    .line 1242
    .local v14, preCache:I
    const/16 v16, 0x0

    const/16 v17, 0xc

    sub-int v17, v8, v17

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 1245
    .local v15, startBlock:I
    monitor-enter p0

    .line 1246
    const/4 v2, 0x0

    .line 1247
    .local v2, any:Z
    :try_start_77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    move-object v6, v0

    .line 1248
    .local v6, blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    array-length v13, v6

    .line 1250
    .local v13, numBlocks:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    move/from16 v16, v0

    sub-int v7, v15, v16

    .line 1252
    .local v7, delta:I
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    .line 1253
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v16

    move/from16 v0, v16

    move v1, v13

    if-gt v0, v1, :cond_95

    if-eqz p2, :cond_cd

    .line 1254
    :cond_95
    const/4 v9, 0x0

    .local v9, i:I
    :goto_96
    if-ge v9, v13, :cond_a6

    .line 1255
    add-int v5, v15, v9

    .line 1256
    .local v5, blockNum:I
    aget-object v16, v6, v9

    move-object/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$4100(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;I)V

    .line 1257
    const/4 v2, 0x1

    .line 1254
    add-int/lit8 v9, v9, 0x1

    goto :goto_96

    .line 1259
    .end local v5           #blockNum:I
    :cond_a6
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    .line 1284
    .end local v9           #i:I
    :cond_ae
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_af
    if-ge v9, v13, :cond_16f

    .line 1285
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    add-int v16, v16, v9

    rem-int v10, v16, v13

    .line 1286
    .local v10, index:I
    aget-object v3, v6, v10

    .line 1287
    .local v3, block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    iget v5, v3, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBlockNumber:I

    .line 1288
    .restart local v5       #blockNum:I
    if-lt v5, v8, :cond_169

    if-gt v5, v12, :cond_169

    const/16 v16, 0x1

    move/from16 v11, v16

    .line 1290
    .local v11, isVis:Z
    :goto_c7
    invoke-static {v3, v11}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$4200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;Z)Z

    .line 1284
    add-int/lit8 v9, v9, 0x1

    goto :goto_af

    .line 1260
    .end local v3           #block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v5           #blockNum:I
    .end local v9           #i:I
    .end local v10           #index:I
    .end local v11           #isVis:Z
    :cond_cd
    if-lez v7, :cond_11b

    .line 1261
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    add-int v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    .line 1262
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v13

    if-lt v0, v1, :cond_f6

    .line 1263
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    sub-int v16, v16, v13

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    .line 1265
    :cond_f6
    move v9, v7

    .restart local v9       #i:I
    :goto_f7
    if-lez v9, :cond_ae

    .line 1266
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    add-int v16, v16, v13

    sub-int v16, v16, v9

    rem-int v10, v16, v13

    .line 1267
    .restart local v10       #index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    move/from16 v16, v0

    add-int v16, v16, v13

    sub-int v5, v16, v9

    .line 1268
    .restart local v5       #blockNum:I
    aget-object v16, v6, v10

    move-object/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$4100(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;I)V

    .line 1269
    const/4 v2, 0x1

    .line 1265
    add-int/lit8 v9, v9, -0x1

    goto :goto_f7

    .line 1271
    .end local v5           #blockNum:I
    .end local v9           #i:I
    .end local v10           #index:I
    :cond_11b
    if-gez v7, :cond_ae

    .line 1272
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    add-int v16, v16, v7

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    .line 1273
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    if-gez v16, :cond_141

    .line 1274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    add-int v16, v16, v13

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    .line 1276
    :cond_141
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_142
    move v0, v7

    neg-int v0, v0

    move/from16 v16, v0

    move v0, v9

    move/from16 v1, v16

    if-ge v0, v1, :cond_ae

    .line 1277
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move/from16 v16, v0

    add-int v16, v16, v9

    rem-int v10, v16, v13

    .line 1278
    .restart local v10       #index:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    move/from16 v16, v0

    add-int v5, v16, v9

    .line 1279
    .restart local v5       #blockNum:I
    aget-object v16, v6, v10

    move-object/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$4100(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;I)V

    .line 1280
    const/4 v2, 0x1

    .line 1276
    add-int/lit8 v9, v9, 0x1

    goto :goto_142

    .line 1288
    .restart local v3       #block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    :cond_169
    const/16 v16, 0x0

    move/from16 v11, v16

    goto/16 :goto_c7

    .line 1296
    .end local v3           #block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v5           #blockNum:I
    .end local v10           #index:I
    :cond_16f
    if-eqz v2, :cond_182

    .line 1297
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 1298
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkCounter:I

    move/from16 v16, v0

    add-int/lit8 v16, v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkCounter:I

    .line 1300
    :cond_182
    monitor-exit p0

    .line 1303
    return-void

    .line 1300
    .end local v6           #blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v7           #delta:I
    .end local v9           #i:I
    .end local v13           #numBlocks:I
    :catchall_184
    move-exception v16

    monitor-exit p0
    :try_end_186
    .catchall {:try_start_77 .. :try_end_186} :catchall_184

    throw v16
.end method

.method private onPause()V
    .registers 3

    .prologue
    .line 1153
    monitor-enter p0

    .line 1154
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mDone:Z

    .line 1155
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1156
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_1c

    .line 1157
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkerThread:Ljava/lang/Thread;

    if-eqz v0, :cond_14

    .line 1159
    :try_start_c
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 1160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mWorkerThread:Ljava/lang/Thread;
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_14} :catch_1f

    .line 1165
    :cond_14
    :goto_14
    const-string v0, "ImageGallery2"

    const-string v1, "/ImageBlockManager.onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    return-void

    .line 1156
    :catchall_1c
    move-exception v0

    :try_start_1d
    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw v0

    .line 1161
    :catch_1f
    move-exception v0

    goto :goto_14
.end method

.method private repaintSelection(I)V
    .registers 4
    .parameter "pos"

    .prologue
    .line 1144
    monitor-enter p0

    .line 1145
    :try_start_1
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->getBlockForPos(I)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    move-result-object v0

    .line 1146
    .local v0, b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    if-eqz v0, :cond_a

    .line 1147
    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->access$3400(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;)V

    .line 1149
    :cond_a
    monitor-exit p0

    .line 1150
    return-void

    .line 1149
    .end local v0           #b:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    :catchall_c
    move-exception v1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method blockHeight()I
    .registers 3

    .prologue
    .line 1380
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellSpacing:I

    iget-object v1, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v1

    iget v1, v1, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mCellHeight:I

    add-int/2addr v0, v1

    return v0
.end method

.method doDraw(Landroid/graphics/Canvas;)V
    .registers 25
    .parameter "canvas"

    .prologue
    .line 1333
    monitor-enter p0

    .line 1334
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    move-object v14, v0

    .line 1335
    .local v14, blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    const/4 v13, 0x0

    .line 1337
    .local v13, blockCount:I
    const/4 v5, 0x0

    aget-object v5, v14, v5

    if-nez v5, :cond_e

    .line 1338
    monitor-exit p0

    .line 1377
    :goto_d
    return-void

    .line 1341
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getHeight()I

    move-result v20

    .line 1342
    .local v20, thisHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getWidth()I

    move-result v21

    .line 1343
    .local v21, thisWidth:I
    const/4 v5, 0x0

    aget-object v5, v14, v5

    iget-object v5, v5, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v18

    .line 1344
    .local v18, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$4300(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v19

    .line 1346
    .local v19, scrollPos:I
    if-gez v19, :cond_4d

    sub-int v5, v19, v18

    add-int/lit8 v5, v5, 0x1

    div-int v5, v5, v18

    move v15, v5

    .local v15, currentBlock:I
    :goto_3b
    move/from16 v16, v15

    .line 1349
    .end local v15           #currentBlock:I
    .local v16, currentBlock:I
    :goto_3d
    mul-int v22, v16, v18

    .line 1350
    .local v22, yPos:I
    add-int v5, v19, v20

    move/from16 v0, v22

    move v1, v5

    if-lt v0, v1, :cond_51

    move/from16 v15, v16

    .line 1376
    .end local v16           #currentBlock:I
    .restart local v15       #currentBlock:I
    :cond_48
    :goto_48
    monitor-exit p0

    goto :goto_d

    .end local v13           #blockCount:I
    .end local v14           #blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v15           #currentBlock:I
    .end local v18           #height:I
    .end local v19           #scrollPos:I
    .end local v20           #thisHeight:I
    .end local v21           #thisWidth:I
    .end local v22           #yPos:I
    :catchall_4a
    move-exception v5

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4a

    throw v5

    .line 1346
    .restart local v13       #blockCount:I
    .restart local v14       #blocks:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .restart local v18       #height:I
    .restart local v19       #scrollPos:I
    .restart local v20       #thisHeight:I
    .restart local v21       #thisWidth:I
    :cond_4d
    :try_start_4d
    div-int v5, v19, v18

    move v15, v5

    goto :goto_3b

    .line 1353
    .restart local v16       #currentBlock:I
    .restart local v22       #yPos:I
    :cond_51
    if-gez v16, :cond_70

    .line 1354
    const/4 v6, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$4400(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/graphics/Paint;

    move-result-object v10

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1355
    add-int/lit8 v15, v16, 0x1

    .end local v16           #currentBlock:I
    .restart local v15       #currentBlock:I
    move/from16 v16, v15

    .line 1356
    .end local v15           #currentBlock:I
    .restart local v16       #currentBlock:I
    goto :goto_3d

    .line 1358
    :cond_70
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    move v5, v0

    add-int/lit8 v15, v16, 0x1

    .end local v16           #currentBlock:I
    .restart local v15       #currentBlock:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheFirstBlockNumber:I

    move v6, v0

    sub-int v6, v16, v6

    add-int/2addr v5, v6

    array-length v6, v14

    rem-int v17, v5, v6

    .line 1359
    .local v17, effectiveOffset:I
    if-ltz v17, :cond_48

    array-length v5, v14

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_48

    .line 1363
    aget-object v12, v14, v17

    .line 1364
    .local v12, block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    if-eqz v12, :cond_48

    .line 1367
    monitor-enter v12
    :try_end_8f
    .catchall {:try_start_4d .. :try_end_8f} :catchall_4a

    .line 1368
    :try_start_8f
    iget-object v11, v12, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->mBitmap:Landroid/graphics/Bitmap;

    .line 1369
    .local v11, b:Landroid/graphics/Bitmap;
    if-nez v11, :cond_98

    .line 1370
    monitor-exit v12

    goto :goto_48

    .line 1374
    .end local v11           #b:Landroid/graphics/Bitmap;
    :catchall_95
    move-exception v5

    monitor-exit v12
    :try_end_97
    .catchall {:try_start_8f .. :try_end_97} :catchall_95

    :try_start_97
    throw v5
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_4a

    .line 1372
    .restart local v11       #b:Landroid/graphics/Bitmap;
    :cond_98
    const/4 v5, 0x0

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    :try_start_9d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    move-object v7, v0

    invoke-static {v7}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$4400(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Landroid/graphics/Paint;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v11

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1373
    add-int/lit8 v13, v13, 0x1

    .line 1374
    monitor-exit v12
    :try_end_b2
    .catchall {:try_start_9d .. :try_end_b2} :catchall_95

    move/from16 v16, v15

    .line 1375
    .end local v15           #currentBlock:I
    .restart local v16       #currentBlock:I
    goto :goto_3d
.end method

.method public dump()V
    .registers 8

    .prologue
    .line 1042
    monitor-enter p0

    .line 1043
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1044
    .local v3, line1:Ljava/lang/StringBuilder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1047
    .local v4, line2:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_c
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    array-length v5, v5

    if-ge v1, v5, :cond_23

    .line 1048
    iget v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCacheStartOffset:I

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    array-length v6, v6

    rem-int v2, v5, v6

    .line 1049
    .local v2, index:I
    iget-object v5, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mBlockCache:[Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;

    aget-object v0, v5, v2

    .line 1050
    .local v0, block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    invoke-virtual {v0, v3, v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;->dump(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)V

    .line 1047
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 1056
    .end local v0           #block:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager$ImageBlock;
    .end local v2           #index:I
    :cond_23
    monitor-exit p0

    .line 1057
    return-void

    .line 1056
    .end local v1           #i:I
    .end local v3           #line1:Ljava/lang/StringBuilder;
    .end local v4           #line2:Ljava/lang/StringBuilder;
    :catchall_25
    move-exception v5

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_25

    throw v5
.end method

.method public getErrorBitmap(Lcom/android/camera/ImageManager$IImage;)Landroid/graphics/Bitmap;
    .registers 4
    .parameter "image"

    .prologue
    .line 1115
    invoke-static {p1}, Lcom/android/camera/ImageManager;->isImage(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1116
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_19

    .line 1117
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020046

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1120
    :cond_19
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mMissingImageThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1126
    :goto_1b
    return-object v0

    .line 1122
    :cond_1c
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mMissingVideoThumbnailBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_2f

    .line 1123
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->this$0:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020047

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mMissingVideoThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 1126
    :cond_2f
    iget-object v0, p0, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->mMissingVideoThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_1b
.end method
