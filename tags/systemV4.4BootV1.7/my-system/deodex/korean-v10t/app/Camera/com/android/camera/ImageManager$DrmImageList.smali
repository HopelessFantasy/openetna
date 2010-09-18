.class Lcom/android/camera/ImageManager$DrmImageList;
.super Lcom/android/camera/ImageManager$ImageList;
.source "ImageManager.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ImageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrmImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageManager$DrmImageList$DrmImage;
    }
.end annotation


# instance fields
.field private final DRM_IMAGE_PROJECTION:[Ljava/lang/String;

.field final INDEX_ID:I

.field final INDEX_MIME_TYPE:I

.field final synthetic this$0:Lcom/android/camera/ImageManager;


# direct methods
.method public constructor <init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
    .registers 15
    .parameter
    .parameter "ctx"
    .parameter "cr"
    .parameter "imageUri"
    .parameter "sort"
    .parameter "bucketId"

    .prologue
    .line 2448
    iput-object p1, p0, Lcom/android/camera/ImageManager$DrmImageList;->this$0:Lcom/android/camera/ImageManager;

    .line 2449
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/camera/ImageManager$ImageList;-><init>(Lcom/android/camera/ImageManager;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/net/Uri;ILjava/lang/String;)V

    .line 2439
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    .line 2445
    iget-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "_id"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_ID:I

    .line 2446
    iget-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    const-string v1, "mime_type"

    invoke-static {v0, v1}, Lcom/android/camera/ImageManager;->access$600([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->INDEX_MIME_TYPE:I

    .line 2450
    return-void
.end method

.method private sortOrder()Ljava/lang/String;
    .registers 4

    .prologue
    .line 2513
    iget v1, p0, Lcom/android/camera/ImageManager$DrmImageList;->mSort:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_28

    const-string v1, " ASC"

    move-object v0, v1

    .line 2514
    .local v0, ascending:Ljava/lang/String;
    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "title"

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2513
    .end local v0           #ascending:Ljava/lang/String;
    :cond_28
    const-string v1, " DESC"

    move-object v0, v1

    goto :goto_8
.end method


# virtual methods
.method public checkThumbnail(Lcom/android/camera/ImageManager$BaseImage;Landroid/database/Cursor;I)J
    .registers 6
    .parameter "existingImage"
    .parameter "c"
    .parameter "i"

    .prologue
    .line 2463
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;I)V
    .registers 3
    .parameter "cb"
    .parameter "totalCount"

    .prologue
    .line 2459
    return-void
.end method

.method protected createCursor()Landroid/database/Cursor;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 2453
    iget-object v0, p0, Lcom/android/camera/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/camera/ImageManager$DrmImageList;->mBaseUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/camera/ImageManager$DrmImageList;->DRM_IMAGE_PROJECTION:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/camera/ImageManager$DrmImageList;->sortOrder()Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method protected indexDateTaken()I
    .registers 2

    .prologue
    .line 2498
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDescription()I
    .registers 2

    .prologue
    .line 2499
    const/4 v0, -0x1

    return v0
.end method

.method protected indexDisplayName()I
    .registers 2

    .prologue
    .line 2508
    const/4 v0, -0x1

    return v0
.end method

.method protected indexId()I
    .registers 2

    .prologue
    .line 2501
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLatitude()I
    .registers 2

    .prologue
    .line 2502
    const/4 v0, -0x1

    return v0
.end method

.method protected indexLongitude()I
    .registers 2

    .prologue
    .line 2503
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMimeType()I
    .registers 2

    .prologue
    .line 2500
    const/4 v0, -0x1

    return v0
.end method

.method protected indexMiniThumbId()I
    .registers 2

    .prologue
    .line 2504
    const/4 v0, -0x1

    return v0
.end method

.method protected indexOrientation()I
    .registers 2

    .prologue
    .line 2497
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPicasaWeb()I
    .registers 2

    .prologue
    .line 2505
    const/4 v0, -0x1

    return v0
.end method

.method protected indexPrivate()I
    .registers 2

    .prologue
    .line 2506
    const/4 v0, -0x1

    return v0
.end method

.method protected indexThumbId()I
    .registers 2

    .prologue
    .line 2509
    const/4 v0, -0x1

    return v0
.end method

.method protected indexTitle()I
    .registers 2

    .prologue
    .line 2507
    const/4 v0, -0x1

    return v0
.end method

.method protected make(JJLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$IImageList;JII)Lcom/android/camera/ImageManager$IImage;
    .registers 18
    .parameter "id"
    .parameter "miniThumbId"
    .parameter "cr"
    .parameter "list"
    .parameter "timestamp"
    .parameter "index"
    .parameter "rotation"

    .prologue
    .line 2494
    new-instance v0, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;

    iget-object v4, p0, Lcom/android/camera/ImageManager$DrmImageList;->mContentResolver:Landroid/content/ContentResolver;

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p0

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/camera/ImageManager$DrmImageList$DrmImage;-><init>(Lcom/android/camera/ImageManager$DrmImageList;JLandroid/content/ContentResolver;Lcom/android/camera/ImageManager$BaseImageList;I)V

    return-object v0
.end method
