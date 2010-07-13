.class public Lcom/android/camera/ImageGallery2;
.super Landroid/app/Activity;
.source "ImageGallery2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ImageGallery2$GridViewSpecial;
    }
.end annotation


# static fields
.field public static final CROP_MSG:I = 0x2

.field private static final INSTANCE_STATE_TAG:Ljava/lang/String; = "scrollY"

.field private static final TAG:Ljava/lang/String; = "ImageGallery2"

.field public static final VIEW_MSG:I = 0x3


# instance fields
.field private mAllImages:Lcom/android/camera/ImageManager$IImageList;

.field private mDeletePhotoRunnable:Ljava/lang/Runnable;

.field mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

.field mHandler:Landroid/os/Handler;

.field private mInclusion:I

.field mLayoutComplete:Z

.field private mLongPressCallback:Ljava/lang/Runnable;

.field private mMediaScanningDialog:Landroid/app/Dialog;

.field private mNoImagesView:Landroid/view/View;

.field mPausing:Z

.field private mPrefs:Landroid/content/SharedPreferences;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

.field private mSlideShowItem:Landroid/view/MenuItem;

.field private mSortAscending:Z

.field mStopThumbnailChecking:Z

.field mTargetScroll:I

.field mThumbnailCheckThread:Lcom/android/camera/CameraThread;

.field private mVideoSizeLimit:J


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 81
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    iput-boolean v2, p0, Lcom/android/camera/ImageGallery2;->mSortAscending:Z

    .line 79
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/camera/ImageGallery2;->mVideoSizeLimit:J

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 86
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    .line 88
    iput-boolean v2, p0, Lcom/android/camera/ImageGallery2;->mPausing:Z

    .line 89
    iput-boolean v2, p0, Lcom/android/camera/ImageGallery2;->mStopThumbnailChecking:Z

    .line 194
    new-instance v0, Lcom/android/camera/ImageGallery2$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageGallery2$3;-><init>(Lcom/android/camera/ImageGallery2;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance v0, Lcom/android/camera/ImageGallery2$4;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageGallery2$4;-><init>(Lcom/android/camera/ImageGallery2;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    .line 231
    new-instance v0, Lcom/android/camera/ImageGallery2$5;

    invoke-direct {v0, p0}, Lcom/android/camera/ImageGallery2$5;-><init>(Lcom/android/camera/ImageGallery2;)V

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mLongPressCallback:Ljava/lang/Runnable;

    .line 82
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/SelectedImageGetter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ImageGallery2;ZZ)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ImageGallery2;->rebake(ZZ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/ImageGallery2;Z)Lcom/android/camera/ImageManager$IImageList;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2;->allImages(Z)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/camera/ImageGallery2;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2;->mSortAscending:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ImageGallery2;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ImageGallery2;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/camera/ImageGallery2;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->canHandleEvent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5300(Lcom/android/camera/ImageGallery2;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->isPickIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5400(Lcom/android/camera/ImageGallery2;Lcom/android/camera/ImageManager$IImage;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/android/camera/ImageGallery2;->launchCropperOrFinish(Lcom/android/camera/ImageManager$IImage;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/camera/ImageGallery2;)Lcom/android/camera/ImageManager$IImageList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ImageGallery2;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mNoImagesView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ImageGallery2;Landroid/view/Menu;I)Landroid/view/MenuItem;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ImageGallery2;->addSlideShowMenu(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method private addSlideShowMenu(Landroid/view/Menu;I)Landroid/view/MenuItem;
    .registers 6
    .parameter "menu"
    .parameter "position"

    .prologue
    .line 167
    const/4 v0, 0x0

    const/16 v1, 0xcf

    const v2, 0x7f09001b

    invoke-interface {p1, v0, v1, p2, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ImageGallery2$2;

    invoke-direct {v1, p0}, Lcom/android/camera/ImageGallery2$2;-><init>(Lcom/android/camera/ImageGallery2;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized allImages(Z)Lcom/android/camera/ImageManager$IImageList;
    .registers 16
    .parameter "assumeMounted"

    .prologue
    const/4 v13, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 681
    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    if-nez v0, :cond_b5

    .line 682
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageGallery2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mNoImagesView:Landroid/view/View;

    .line 684
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    .line 686
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 687
    .local v8, intent:Landroid/content/Intent;
    if-eqz v8, :cond_a1

    .line 688
    invoke-virtual {v8, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 691
    .local v11, type:Ljava/lang/String;
    const v0, 0x7f0b000c

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageGallery2;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 692
    .local v9, leftText:Landroid/widget/TextView;
    if-eqz v11, :cond_67

    .line 693
    const-string v0, "vnd.android.cursor.dir/image"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    const-string v0, "image/*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 694
    :cond_39
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    .line 695
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->isPickIntent()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 696
    const v0, 0x7f09009e

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 700
    :cond_48
    :goto_48
    const-string v0, "vnd.android.cursor.dir/video"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_58

    const-string v0, "video/*"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_67

    .line 701
    :cond_58
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    .line 702
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->isPickIntent()Z

    move-result v0

    if-eqz v0, :cond_c3

    .line 703
    const v0, 0x7f0900a0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    .line 708
    :cond_67
    :goto_67
    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 709
    .local v7, extras:Landroid/os/Bundle;
    if-eqz v7, :cond_ca

    const-string v0, "windowTitle"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    .line 710
    .local v10, title:Ljava/lang/String;
    :goto_74
    if-eqz v10, :cond_7f

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_7f

    .line 711
    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 714
    :cond_7f
    if-eqz v7, :cond_8d

    .line 715
    const-string v0, "mediaTypes"

    iget v1, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    .line 719
    :cond_8d
    if-eqz v7, :cond_a1

    const-string v0, "pick-drm"

    invoke-virtual {v7, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 720
    const-string v0, "ImageGallery2"

    const-string v1, "pick-drm is true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    .line 727
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #leftText:Landroid/widget/TextView;
    .end local v10           #title:Ljava/lang/String;
    .end local v11           #type:Ljava/lang/String;
    :cond_a1
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v12

    .line 728
    .local v12, uri:Landroid/net/Uri;
    if-nez p1, :cond_cc

    .line 729
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ImageManager;->emptyImageList()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    .line 740
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_b5
    :goto_b5
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;
    :try_end_b7
    .catchall {:try_start_4 .. :try_end_b7} :catchall_c0

    monitor-exit p0

    return-object v0

    .line 698
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #leftText:Landroid/widget/TextView;
    .restart local v11       #type:Ljava/lang/String;
    :cond_b9
    const v0, 0x7f09009d

    :try_start_bc
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V
    :try_end_bf
    .catchall {:try_start_bc .. :try_end_bf} :catchall_c0

    goto :goto_48

    .line 681
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #leftText:Landroid/widget/TextView;
    .end local v11           #type:Ljava/lang/String;
    :catchall_c0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 705
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #leftText:Landroid/widget/TextView;
    .restart local v11       #type:Ljava/lang/String;
    :cond_c3
    const v0, 0x7f09009f

    :try_start_c6
    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_67

    .restart local v7       #extras:Landroid/os/Bundle;
    :cond_ca
    move-object v10, v13

    .line 709
    goto :goto_74

    .line 731
    .end local v7           #extras:Landroid/os/Bundle;
    .end local v9           #leftText:Landroid/widget/TextView;
    .end local v11           #type:Ljava/lang/String;
    .restart local v12       #uri:Landroid/net/Uri;
    :cond_cc
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ImageManager$DataLocation;->NONE:Lcom/android/camera/ImageManager$DataLocation;

    iget v4, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    iget-boolean v1, p0, Lcom/android/camera/ImageGallery2;->mSortAscending:Z

    if-eqz v1, :cond_ed

    :goto_dc
    if-eqz v12, :cond_ef

    const-string v1, "bucketId"

    invoke-virtual {v12, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    :goto_e5
    move-object v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/ImageManager;->allImages(Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/camera/ImageManager$DataLocation;IILjava/lang/String;)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;
    :try_end_ec
    .catchall {:try_start_c6 .. :try_end_ec} :catchall_c0

    goto :goto_b5

    :cond_ed
    move v5, v6

    goto :goto_dc

    :cond_ef
    move-object v6, v13

    goto :goto_e5
.end method

.method private canHandleEvent()Z
    .registers 2

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/android/camera/ImageGallery2;->mPausing:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private checkThumbnails()V
    .registers 9

    .prologue
    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 561
    .local v2, startTime:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 562
    .local v4, t1:J
    new-instance v7, Lcom/android/camera/CameraThread;

    new-instance v0, Lcom/android/camera/ImageGallery2$8;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ImageGallery2$8;-><init>(Lcom/android/camera/ImageGallery2;JJ)V

    invoke-direct {v7, v0}, Lcom/android/camera/CameraThread;-><init>(Ljava/lang/Runnable;)V

    iput-object v7, p0, Lcom/android/camera/ImageGallery2;->mThumbnailCheckThread:Lcom/android/camera/CameraThread;

    .line 622
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mThumbnailCheckThread:Lcom/android/camera/CameraThread;

    const-string v1, "check_thumbnails"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraThread;->setName(Ljava/lang/String;)V

    .line 623
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mThumbnailCheckThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->start()V

    .line 624
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mThumbnailCheckThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->toBackground()V

    .line 626
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/camera/ImageGallery2;->allImages(Z)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v6

    .line 627
    .local v6, list:Lcom/android/camera/ImageManager$IImageList;
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mNoImagesView:Landroid/view/View;

    invoke-interface {v6}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lez v1, :cond_39

    const/16 v1, 0x8

    :goto_35
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 628
    return-void

    .line 627
    :cond_39
    const/4 v1, 0x0

    goto :goto_35
.end method

.method private isImageSelected()Z
    .registers 3

    .prologue
    .line 671
    iget-object v1, p0, Lcom/android/camera/ImageGallery2;->mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    invoke-interface {v1}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    .line 672
    .local v0, image:Lcom/android/camera/ImageManager$IImage;
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/camera/ImageManager;->isImage(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private isPickIntent()Z
    .registers 3

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    const/4 v1, 0x1

    :goto_19
    return v1

    :cond_1a
    const/4 v1, 0x0

    goto :goto_19
.end method

.method private isVideoSelected()Z
    .registers 3

    .prologue
    .line 676
    iget-object v1, p0, Lcom/android/camera/ImageGallery2;->mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    invoke-interface {v1}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    .line 677
    .local v0, image:Lcom/android/camera/ImageManager$IImage;
    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/android/camera/ImageManager;->isVideo(Lcom/android/camera/ImageManager$IImage;)Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    :goto_f
    return v1

    :cond_10
    const/4 v1, 0x0

    goto :goto_f
.end method

.method private launchCropperOrFinish(Lcom/android/camera/ImageManager$IImage;)V
    .registers 14
    .parameter "img"

    .prologue
    const/4 v11, 0x0

    .line 342
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 344
    .local v4, myExtras:Landroid/os/Bundle;
    invoke-static {p1}, Lcom/android/camera/MenuHelper;->getImageFileSize(Lcom/android/camera/ImageManager$IImage;)J

    move-result-wide v7

    .line 345
    .local v7, size:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gez v9, :cond_14

    .line 392
    :goto_13
    return-void

    .line 350
    :cond_14
    iget-wide v9, p0, Lcom/android/camera/ImageGallery2;->mVideoSizeLimit:J

    cmp-long v9, v7, v9

    if-lez v9, :cond_44

    .line 352
    new-instance v1, Lcom/android/camera/ImageGallery2$6;

    invoke-direct {v1, p0}, Lcom/android/camera/ImageGallery2$6;-><init>(Lcom/android/camera/ImageGallery2;)V

    .line 358
    .local v1, buttonListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Landroid/app/AlertDialog$Builder;

    invoke-direct {v9, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v10, 0x108009b

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0900af

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f0900b0

    invoke-virtual {v9, v10}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x7f090099

    invoke-virtual {v9, v10, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_13

    .line 367
    .end local v1           #buttonListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_44
    if-eqz v4, :cond_7f

    const-string v9, "crop"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v3, v9

    .line 368
    .local v3, cropValue:Ljava/lang/String;
    :goto_4d
    if-eqz v3, :cond_81

    .line 369
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 370
    .local v5, newExtras:Landroid/os/Bundle;
    const-string v9, "circle"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 371
    const-string v9, "circleCrop"

    const-string v10, "true"

    invoke-virtual {v5, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    :cond_63
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v2, cropIntent:Landroid/content/Intent;
    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 375
    const-class v9, Lcom/android/camera/CropImage;

    invoke-virtual {v2, p0, v9}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 376
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 379
    invoke-virtual {v2, v4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 381
    const/4 v9, 0x2

    invoke-virtual {p0, v2, v9}, Lcom/android/camera/ImageGallery2;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .end local v2           #cropIntent:Landroid/content/Intent;
    .end local v3           #cropValue:Ljava/lang/String;
    .end local v5           #newExtras:Landroid/os/Bundle;
    :cond_7f
    move-object v3, v11

    .line 367
    goto :goto_4d

    .line 383
    .restart local v3       #cropValue:Ljava/lang/String;
    :cond_81
    new-instance v6, Landroid/content/Intent;

    invoke-interface {p1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v6, v11, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 384
    .local v6, result:Landroid/content/Intent;
    if-eqz v4, :cond_a1

    const-string v9, "return-data"

    invoke-virtual {v4, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a1

    .line 385
    const/16 v9, 0x3e8

    invoke-interface {p1, v9}, Lcom/android/camera/ImageManager$IImage;->fullSizeBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 386
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a1

    .line 387
    const-string v9, "data"

    invoke-virtual {v6, v9, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 389
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_a1
    const/4 v9, -0x1

    invoke-virtual {p0, v9, v6}, Lcom/android/camera/ImageGallery2;->setResult(ILandroid/content/Intent;)V

    .line 390
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->finish()V

    goto/16 :goto_13
.end method

.method private rebake(ZZ)V
    .registers 7
    .parameter "unmounted"
    .parameter "scanning"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 448
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->stopCheckingThumbnails()V

    .line 449
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->clearCache()V

    .line 450
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    if-eqz v0, :cond_15

    .line 451
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 452
    iput-object v3, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    .line 454
    :cond_15
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mMediaScanningDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_20

    .line 455
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mMediaScanningDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    .line 456
    iput-object v3, p0, Lcom/android/camera/ImageGallery2;->mMediaScanningDialog:Landroid/app/Dialog;

    .line 458
    :cond_20
    if-eqz p2, :cond_3e

    .line 459
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3, v0, v2, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mMediaScanningDialog:Landroid/app/Dialog;

    .line 465
    invoke-static {}, Lcom/android/camera/ImageManager;->instance()Lcom/android/camera/ImageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ImageManager;->emptyImageList()Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    .line 475
    :goto_3d
    return-void

    .line 467
    :cond_3e
    if-nez p1, :cond_5c

    move v0, v2

    :goto_41
    invoke-direct {p0, v0}, Lcom/android/camera/ImageGallery2;->allImages(Z)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    .line 470
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v1, p0, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->init(Landroid/os/Handler;)V

    .line 471
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->start()V

    .line 472
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->requestLayout()V

    .line 473
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->checkThumbnails()V

    goto :goto_3d

    .line 467
    :cond_5c
    const/4 v0, 0x0

    goto :goto_41
.end method

.method private stopCheckingThumbnails()V
    .registers 2

    .prologue
    .line 552
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ImageGallery2;->mStopThumbnailChecking:Z

    .line 553
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mThumbnailCheckThread:Lcom/android/camera/CameraThread;

    if-eqz v0, :cond_c

    .line 554
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mThumbnailCheckThread:Lcom/android/camera/CameraThread;

    invoke-virtual {v0}, Lcom/android/camera/CameraThread;->join()V

    .line 556
    :cond_c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ImageGallery2;->mStopThumbnailChecking:Z

    .line 557
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 10
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 398
    sparse-switch p1, :sswitch_data_3c

    .line 429
    :cond_5
    :goto_5
    return-void

    .line 400
    :sswitch_6
    if-ne p2, v4, :cond_5

    .line 403
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 404
    .local v0, dataUri:Landroid/net/Uri;
    invoke-direct {p0, v5, v5}, Lcom/android/camera/ImageGallery2;->rebake(ZZ)V

    .line 405
    iget-object v4, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v4, v0}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 406
    .local v1, image:Lcom/android/camera/ImageManager$IImage;
    if-eqz v1, :cond_5

    .line 407
    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->getRow()I

    move-result v3

    .line 408
    .local v3, rowId:I
    iget-object v4, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v4, v3, v5}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    goto :goto_5

    .line 415
    .end local v0           #dataUri:Landroid/net/Uri;
    .end local v1           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v3           #rowId:I
    :sswitch_25
    if-ne p2, v4, :cond_5

    .line 416
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/ImageGallery2;->setResult(ILandroid/content/Intent;)V

    .line 417
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->finish()V

    goto :goto_5

    .line 424
    :sswitch_2e
    iget-object v4, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    .line 425
    .local v2, img:Lcom/android/camera/ImageManager$IImage;
    invoke-direct {p0, v2}, Lcom/android/camera/ImageGallery2;->launchCropperOrFinish(Lcom/android/camera/ImageManager$IImage;)V

    goto :goto_5

    .line 398
    :sswitch_data_3c
    .sparse-switch
        0x2 -> :sswitch_25
        0x3 -> :sswitch_2e
        0x1ea -> :sswitch_6
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .parameter "newConfig"

    .prologue
    .line 227
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 228
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    .line 229
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const-wide v3, 0x7fffffffffffffffL

    const/4 v2, 0x7

    .line 97
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 99
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mPrefs:Landroid/content/SharedPreferences;

    .line 101
    invoke-virtual {p0, v2}, Lcom/android/camera/ImageGallery2;->requestWindowFeature(I)Z

    .line 102
    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageGallery2;->setContentView(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x7f030002

    invoke-virtual {v0, v2, v1}, Landroid/view/Window;->setFeatureInt(II)V

    .line 108
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageGallery2;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    .line 109
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->requestFocus()Z

    .line 111
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->isPickIntent()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 112
    invoke-virtual {p0}, Lcom/android/camera/ImageGallery2;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ImageGallery2;->mVideoSizeLimit:J

    .line 114
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-wide v1, p0, Lcom/android/camera/ImageGallery2;->mVideoSizeLimit:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$002(Lcom/android/camera/ImageGallery2$GridViewSpecial;J)J

    .line 164
    :goto_4b
    return-void

    .line 116
    :cond_4c
    iput-wide v3, p0, Lcom/android/camera/ImageGallery2;->mVideoSizeLimit:J

    .line 117
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-wide v1, p0, Lcom/android/camera/ImageGallery2;->mVideoSizeLimit:J

    invoke-static {v0, v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$002(Lcom/android/camera/ImageGallery2$GridViewSpecial;J)J

    .line 118
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    new-instance v1, Lcom/android/camera/ImageGallery2$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ImageGallery2$1;-><init>(Lcom/android/camera/ImageGallery2;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto :goto_4b
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 633
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->isPickIntent()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 634
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->addCapturePictureMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V

    .line 642
    :cond_a
    :goto_a
    const/16 v1, 0x3e8

    const v2, 0x7f09007b

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 643
    .local v0, item:Landroid/view/MenuItem;
    new-instance v1, Lcom/android/camera/ImageGallery2$9;

    invoke-direct {v1, p0}, Lcom/android/camera/ImageGallery2$9;-><init>(Lcom/android/camera/ImageGallery2;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 651
    const/16 v1, 0x70

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 652
    const v1, 0x1080049

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 654
    const/4 v1, 0x1

    return v1

    .line 636
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_28
    invoke-static {p1, p0}, Lcom/android/camera/MenuHelper;->addCaptureMenuItems(Landroid/view/Menu;Landroid/app/Activity;)V

    .line 637
    iget v1, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_a

    .line 638
    const/4 v1, 0x5

    invoke-direct {p0, p1, v1}, Lcom/android/camera/ImageGallery2;->addSlideShowMenu(Landroid/view/Menu;I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/camera/ImageGallery2;->mSlideShowItem:Landroid/view/MenuItem;

    goto :goto_a
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 16
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 264
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->canHandleEvent()Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x0

    .line 333
    :goto_7
    return v9

    .line 266
    :cond_8
    const/4 v2, 0x1

    .line 267
    .local v2, handled:Z
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v7

    .line 268
    .local v7, sel:I
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$900(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;

    move-result-object v9

    iget v0, v9, Lcom/android/camera/ImageGallery2$GridViewSpecial$LayoutSpec;->mColumns:I

    .line 269
    .local v0, columns:I
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v9}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    .line 270
    .local v1, count:I
    const/4 v4, 0x0

    .line 271
    .local v4, pressed:Z
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1000(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Z

    move-result v9

    if-eqz v9, :cond_79

    .line 272
    sparse-switch p1, :sswitch_data_b6

    .line 302
    const/4 v2, 0x0

    .line 328
    :cond_2a
    :goto_2a
    if-eqz v2, :cond_b0

    .line 329
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v9, v7, v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    .line 330
    const/4 v9, 0x1

    goto :goto_7

    .line 274
    :sswitch_33
    if-eq v7, v1, :cond_2a

    rem-int v9, v7, v0

    const/4 v10, 0x1

    sub-int v10, v0, v10

    if-ge v9, v10, :cond_2a

    .line 275
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    .line 279
    :sswitch_3f
    if-lez v7, :cond_2a

    rem-int v9, v7, v0

    if-eqz v9, :cond_2a

    .line 280
    add-int/lit8 v7, v7, -0x1

    goto :goto_2a

    .line 284
    :sswitch_48
    div-int v9, v7, v0

    if-eqz v9, :cond_2a

    .line 285
    sub-int/2addr v7, v0

    goto :goto_2a

    .line 289
    :sswitch_4e
    div-int v9, v7, v0

    div-int v10, v0, v0

    add-int/2addr v10, v7

    if-eq v9, v10, :cond_2a

    .line 290
    const/4 v9, 0x1

    sub-int v9, v1, v9

    add-int v10, v7, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    goto :goto_2a

    .line 294
    :sswitch_5f
    const/4 v4, 0x1

    .line 295
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    iget-object v10, p0, Lcom/android/camera/ImageGallery2;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    .line 298
    :sswitch_6d
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    iget-object v10, p0, Lcom/android/camera/ImageGallery2;->mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    invoke-interface {v10}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v10

    invoke-static {p0, v9, v10}, Lcom/android/camera/MenuHelper;->deleteImage(Landroid/app/Activity;Ljava/lang/Runnable;Lcom/android/camera/ImageManager$IImage;)V

    goto :goto_2a

    .line 306
    :cond_79
    packed-switch p1, :pswitch_data_d0

    .line 324
    const/4 v2, 0x0

    goto :goto_2a

    .line 311
    :pswitch_7e
    const/4 v9, 0x2

    new-array v6, v9, [I

    .line 312
    .local v6, range:[I
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-result-object v3

    .line 313
    .local v3, ibm:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;
    if-eqz v3, :cond_2a

    .line 314
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1100(Lcom/android/camera/ImageGallery2$GridViewSpecial;)Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;

    move-result-object v9

    invoke-static {v9, v6}, Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;->access$1200(Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;[I)V

    .line 315
    const/4 v9, 0x0

    aget v8, v6, v9

    .line 316
    .local v8, topPos:I
    iget-object v9, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v9, v8}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$1300(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 317
    .local v5, r:Landroid/graphics/Rect;
    iget v9, v5, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v10}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getScrollY()I

    move-result v10

    if-ge v9, v10, :cond_a6

    .line 318
    add-int/2addr v8, v0

    .line 319
    :cond_a6
    const/4 v9, 0x1

    sub-int v9, v1, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 320
    move v7, v8

    .line 321
    goto/16 :goto_2a

    .line 333
    .end local v3           #ibm:Lcom/android/camera/ImageGallery2$GridViewSpecial$ImageBlockManager;
    .end local v5           #r:Landroid/graphics/Rect;
    .end local v6           #range:[I
    .end local v8           #topPos:I
    :cond_b0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v9

    goto/16 :goto_7

    .line 272
    :sswitch_data_b6
    .sparse-switch
        0x13 -> :sswitch_48
        0x14 -> :sswitch_4e
        0x15 -> :sswitch_3f
        0x16 -> :sswitch_33
        0x17 -> :sswitch_5f
        0x43 -> :sswitch_6d
    .end sparse-switch

    .line 306
    :pswitch_data_d0
    .packed-switch 0x13
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
        :pswitch_7e
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->canHandleEvent()Z

    move-result v0

    if-nez v0, :cond_9

    move v0, v2

    .line 259
    :goto_8
    return v0

    .line 247
    :cond_9
    const/16 v0, 0x17

    if-ne p1, v0, :cond_2f

    .line 248
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    const/4 v1, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->select(IZ)V

    .line 251
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/ImageGallery2;->mLongPressCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mSelectedImageGetter:Lcom/android/camera/SelectedImageGetter;

    invoke-interface {v0}, Lcom/android/camera/SelectedImageGetter;->getCurrentImage()Lcom/android/camera/ImageManager$IImage;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 255
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v1, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-static {v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$200(Lcom/android/camera/ImageGallery2$GridViewSpecial;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->access$300(Lcom/android/camera/ImageGallery2$GridViewSpecial;I)V

    .line 257
    :cond_2d
    const/4 v0, 0x1

    goto :goto_8

    .line 259
    :cond_2f
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_8
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 433
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ImageGallery2;->mPausing:Z

    .line 435
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->stopCheckingThumbnails()V

    .line 436
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->onPause()V

    .line 438
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1a

    .line 439
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/camera/ImageGallery2;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 440
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ImageGallery2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 444
    :cond_1a
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 445
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 659
    iget v1, p0, Lcom/android/camera/ImageGallery2;->mInclusion:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_17

    .line 660
    invoke-direct {p0}, Lcom/android/camera/ImageGallery2;->isVideoSelected()Z

    move-result v0

    .line 662
    .local v0, videoSelected:Z
    iget-object v1, p0, Lcom/android/camera/ImageGallery2;->mSlideShowItem:Landroid/view/MenuItem;

    if-eqz v1, :cond_17

    .line 663
    iget-object v1, p0, Lcom/android/camera/ImageGallery2;->mSlideShowItem:Landroid/view/MenuItem;

    if-nez v0, :cond_18

    move v2, v3

    :goto_14
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 667
    .end local v0           #videoSelected:Z
    :cond_17
    return v3

    .line 663
    .restart local v0       #videoSelected:Z
    :cond_18
    const/4 v2, 0x0

    goto :goto_14
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 486
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 487
    const-string v0, "scrollY"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    .line 488
    return-void
.end method

.method public onResume()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 494
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 497
    :try_start_4
    iget-object v2, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    iget-object v3, p0, Lcom/android/camera/ImageGallery2;->mPrefs:Landroid/content/SharedPreferences;

    const-string v4, "pref_gallery_size_key"

    const-string v5, "1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iget v4, p0, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    invoke-virtual {v2, v3, v4}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->setSizeChoice(II)V

    .line 499
    iget-object v2, p0, Lcom/android/camera/ImageGallery2;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "pref_gallery_sort_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, sortOrder:Ljava/lang/String;
    if-eqz v1, :cond_2c

    .line 501
    const-string v2, "ascending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/camera/ImageGallery2;->mSortAscending:Z
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_2c} :catch_67

    .line 506
    .end local v1           #sortOrder:Ljava/lang/String;
    :cond_2c
    :goto_2c
    iput-boolean v6, p0, Lcom/android/camera/ImageGallery2;->mPausing:Z

    .line 509
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 510
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 511
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 512
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 513
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 514
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 516
    new-instance v2, Lcom/android/camera/ImageGallery2$7;

    invoke-direct {v2, p0}, Lcom/android/camera/ImageGallery2$7;-><init>(Lcom/android/camera/ImageGallery2;)V

    iput-object v2, p0, Lcom/android/camera/ImageGallery2;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 544
    iget-object v2, p0, Lcom/android/camera/ImageGallery2;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/ImageGallery2;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 546
    iget-object v2, p0, Lcom/android/camera/ImageGallery2;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Lcom/android/camera/MenuHelper;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    .line 548
    invoke-static {p0}, Lcom/android/camera/ImageManager;->isMediaScannerScanning(Landroid/content/Context;)Z

    move-result v2

    invoke-direct {p0, v6, v2}, Lcom/android/camera/ImageGallery2;->rebake(ZZ)V

    .line 549
    return-void

    .line 503
    .end local v0           #intentFilter:Landroid/content/IntentFilter;
    :catch_67
    move-exception v2

    goto :goto_2c
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "state"

    .prologue
    .line 479
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 480
    iget-object v0, p0, Lcom/android/camera/ImageGallery2;->mGvs:Lcom/android/camera/ImageGallery2$GridViewSpecial;

    invoke-virtual {v0}, Lcom/android/camera/ImageGallery2$GridViewSpecial;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    .line 481
    const-string v0, "scrollY"

    iget v1, p0, Lcom/android/camera/ImageGallery2;->mTargetScroll:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 482
    return-void
.end method
