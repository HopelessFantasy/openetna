.class Lcom/android/camera/SlideShow$FileImageList;
.super Ljava/lang/Object;
.source "SlideShow.java"

# interfaces
.implements Lcom/android/camera/ImageManager$IImageList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SlideShow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FileImageList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SlideShow$FileImageList$FileImage;
    }
.end annotation


# instance fields
.field private mCache:Ljava/util/HashMap;
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

.field private mImages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/SlideShow$FileImageList$FileImage;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/camera/SlideShow;


# direct methods
.method public constructor <init>(Lcom/android/camera/SlideShow;)V
    .registers 8
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/camera/SlideShow$FileImageList;->this$0:Lcom/android/camera/SlideShow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/camera/SlideShow$FileImageList;->mImages:Ljava/util/ArrayList;

    .line 309
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/camera/SlideShow$FileImageList;->mCache:Ljava/util/HashMap;

    .line 374
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/android/camera/SlideShow$FileImageList;->enumerate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 376
    const-string v3, "/data/images"

    invoke-direct {p0, v3, v2}, Lcom/android/camera/SlideShow$FileImageList;->enumerate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 378
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4d

    .line 379
    new-instance v1, Lcom/android/camera/SlideShow$FileImageList$FileImage;

    int-to-long v4, v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, p0, v4, v5, v3}, Lcom/android/camera/SlideShow$FileImageList$FileImage;-><init>(Lcom/android/camera/SlideShow$FileImageList;JLjava/lang/String;)V

    .line 380
    .local v1, img:Lcom/android/camera/SlideShow$FileImageList$FileImage;
    iget-object v3, p0, Lcom/android/camera/SlideShow$FileImageList;->mCache:Ljava/util/HashMap;

    int-to-long v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v3, p0, Lcom/android/camera/SlideShow$FileImageList;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_29

    .line 383
    .end local v1           #img:Lcom/android/camera/SlideShow$FileImageList$FileImage;
    :cond_4d
    return-void
.end method

.method private enumerate(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 10
    .parameter "path"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 355
    .local p2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 356
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 357
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 358
    .local v0, children:[Ljava/lang/String;
    if-eqz v0, :cond_64

    .line 359
    const/4 v2, 0x0

    .local v2, i:I
    :goto_12
    array-length v3, v0

    if-ge v2, v3, :cond_64

    .line 360
    aget-object v3, v0, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_3c

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lcom/android/camera/SlideShow$FileImageList;->enumerate(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 359
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 365
    .end local v0           #children:[Ljava/lang/String;
    .end local v2           #i:I
    :cond_3f
    const-string v3, ".jpeg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, ".jpg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_57

    const-string v3, ".png"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    .line 366
    :cond_57
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_64

    .line 367
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_64
    return-void
.end method


# virtual methods
.method public checkThumbnails(Lcom/android/camera/ImageManager$IImageList$ThumbCheckCallback;I)V
    .registers 3
    .parameter "cb"
    .parameter "totalThumbnails"

    .prologue
    .line 290
    return-void
.end method

.method public commitChanges()V
    .registers 1

    .prologue
    .line 295
    return-void
.end method

.method public deactivate()V
    .registers 1

    .prologue
    .line 426
    return-void
.end method

.method public getBucketIds()Ljava/util/HashMap;
    .registers 2
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
    .line 284
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/SlideShow$FileImageList;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getImageAt(I)Lcom/android/camera/ImageManager$IImage;
    .registers 3
    .parameter "i"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/android/camera/SlideShow$FileImageList;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_a

    .line 387
    const/4 v0, 0x0

    .line 389
    .end local p0
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    iget-object v0, p0, Lcom/android/camera/SlideShow$FileImageList;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/camera/ImageManager$IImage;

    move-object v0, p0

    goto :goto_9
.end method

.method public getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;
    .registers 6
    .parameter "uri"

    .prologue
    .line 394
    invoke-virtual {p0}, Lcom/android/camera/SlideShow$FileImageList;->getCount()I

    move-result v0

    .line 395
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v0, :cond_1a

    .line 396
    invoke-virtual {p0, v1}, Lcom/android/camera/SlideShow$FileImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    .line 397
    .local v2, image:Lcom/android/camera/ImageManager$IImage;
    invoke-interface {v2}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    move-object v3, v2

    .line 401
    .end local v2           #image:Lcom/android/camera/ImageManager$IImage;
    :goto_16
    return-object v3

    .line 395
    .restart local v2       #image:Lcom/android/camera/ImageManager$IImage;
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 401
    .end local v2           #image:Lcom/android/camera/ImageManager$IImage;
    :cond_1a
    const/4 v3, 0x0

    goto :goto_16
.end method

.method public getImageWithId(J)Lcom/android/camera/ImageManager$IImage;
    .registers 4
    .parameter "id"

    .prologue
    .line 405
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/SlideShow$FileImageList;->mImages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public removeImage(Lcom/android/camera/ImageManager$IImage;)Z
    .registers 3
    .parameter "image"

    .prologue
    .line 413
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeImageAt(I)V
    .registers 3
    .parameter "i"

    .prologue
    .line 409
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;)V
    .registers 2
    .parameter "changeCallback"

    .prologue
    .line 300
    return-void
.end method

.method public setOnChangeListener(Lcom/android/camera/ImageManager$IImageList$OnChange;Landroid/os/Handler;)V
    .registers 3
    .parameter "changeCallback"
    .parameter "h"

    .prologue
    .line 305
    return-void
.end method
