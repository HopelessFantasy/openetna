.class public Lcom/android/camera/ViewImage;
.super Landroid/app/Activity;
.source "ViewImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ViewImage$LocalHandler;,
        Lcom/android/camera/ViewImage$ImageGetter;,
        Lcom/android/camera/ViewImage$ImageGetterCallback;,
        Lcom/android/camera/ViewImage$ScrollHandler;,
        Lcom/android/camera/ViewImage$ImageViewTouch;,
        Lcom/android/camera/ViewImage$MyGestureListener;
    }
.end annotation


# static fields
.field private static final MODE_NORMAL:I = 0x1

.field private static final MODE_SLIDESHOW:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewImage"

.field private static final sAnimateTransitions:Z = false

.field static final sBaseScrollDuration:I = 0x3e8

.field static final sHysteresis:I = 0x28

.field private static final sOrder_adjacents:[I = null

.field private static final sOrder_slideshow:[I = null

.field static final sPadding:I = 0x14

.field static final sSlideShowHidesStatusBar:Z = true

.field private static final sUseBounce:Z


# instance fields
.field bAutoAllTest:Ljava/lang/Integer;

.field private mActionIconPanel:Landroid/view/View;

.field private mAllImages:Lcom/android/camera/ImageManager$IImageList;

.field private mAnimationIndex:I

.field private mCameraReviewMode:Z

.field private mCurrentPosition:I

.field protected mDeletePhotoRunnable:Ljava/lang/Runnable;

.field private mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

.field private mFirst:Z

.field private mFullScreenInNormalMode:Z

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGetter:Lcom/android/camera/ViewImage$ImageGetter;

.field private mHandler:Lcom/android/camera/ViewImage$LocalHandler;

.field private mHideNextImageViewAnimation:Landroid/view/animation/Animation;

.field private mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

.field private mImageMenuRunnable:Lcom/android/camera/MenuHelper$MenuItemsResult;

.field private mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

.field private mLastSlideShowImage:I

.field private mLayoutComplete:Z

.field private mMode:I

.field private mNextImageView:Landroid/view/View;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mPrevImageView:Landroid/view/View;

.field private mRandom:Ljava/util/Random;

.field private mSavedUri:Landroid/net/Uri;

.field private mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

.field private mShowActionIcons:Z

.field private mShowNextImageViewAnimation:Landroid/view/animation/Animation;

.field private mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

.field private mShuffleOrder:[I

.field private mShutterButton:Landroid/view/View;

.field private mSlideShowImageCurrent:I

.field private mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

.field private mSlideShowInAnimation:[Landroid/view/animation/Animation;

.field private mSlideShowInterval:I

.field private mSlideShowLoop:Z

.field private mSlideShowOutAnimation:[Landroid/view/animation/Animation;

.field private mSortAscending:Z

.field private mThumbBitmaps:[Landroid/graphics/Bitmap;

.field private mUseShuffleOrder:Z

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/camera/ViewImage;->sOrder_adjacents:[I

    .line 66
    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    sput-object v0, Lcom/android/camera/ViewImage;->sOrder_slideshow:[I

    return-void

    .line 65
    nop

    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/high16 v5, 0x3f80

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 68
    new-instance v0, Lcom/android/camera/ViewImage$LocalHandler;

    invoke-direct {v0}, Lcom/android/camera/ViewImage$LocalHandler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    .line 70
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mRandom:Ljava/util/Random;

    .line 72
    iput-boolean v3, p0, Lcom/android/camera/ViewImage;->mUseShuffleOrder:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/camera/ViewImage;->mSlideShowLoop:Z

    .line 77
    iput v6, p0, Lcom/android/camera/ViewImage;->mMode:I

    .line 83
    iput-boolean v3, p0, Lcom/android/camera/ViewImage;->mSortAscending:Z

    .line 86
    iput-boolean v6, p0, Lcom/android/camera/ViewImage;->mFirst:Z

    .line 87
    iput v3, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    .line 88
    iput-boolean v3, p0, Lcom/android/camera/ViewImage;->mLayoutComplete:Z

    .line 98
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 99
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 100
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mShowNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 101
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 109
    iput v3, p0, Lcom/android/camera/ViewImage;->mSlideShowImageCurrent:I

    .line 110
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/camera/ViewImage$ImageViewTouch;

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    .line 111
    new-array v0, v7, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mThumbBitmaps:[Landroid/graphics/Bitmap;

    .line 119
    new-array v0, v7, [Lcom/android/camera/ViewImage$ImageViewTouch;

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    .line 581
    new-instance v0, Lcom/android/camera/ViewImage$8;

    invoke-direct {v0, p0}, Lcom/android/camera/ViewImage$8;-><init>(Lcom/android/camera/ViewImage;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    .line 1569
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ViewImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ViewImage;)Lcom/android/camera/ViewImage$ScrollHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ViewImage;)Landroid/view/GestureDetector;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mGestureDetector:Landroid/view/GestureDetector;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/ViewImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/ViewImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/ViewImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->isPickIntent()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/ViewImage;)Lcom/android/camera/ImageManager$IImageList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/camera/ViewImage;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ViewImage;->setImage(I)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/camera/ViewImage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/camera/ViewImage;->mLayoutComplete:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/camera/ViewImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->onLayoutChanged()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/camera/ViewImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ViewImage;->mLastSlideShowImage:I

    return v0
.end method

.method static synthetic access$1802(Lcom/android/camera/ViewImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ViewImage;->mLastSlideShowImage:I

    return p1
.end method

.method static synthetic access$1900(Lcom/android/camera/ViewImage;IJZ)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 55
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ViewImage;->loadNextImage(IJZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ViewImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->showOnScreenControls()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/camera/ViewImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->scheduleDismissOnScreenControls()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/camera/ViewImage;)[Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mThumbBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ViewImage;)Lcom/android/camera/ViewImage$LocalHandler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ViewImage;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/camera/ViewImage;->setMode(I)V

    return-void
.end method

.method static synthetic access$3100()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/ViewImage;->sOrder_adjacents:[I

    return-object v0
.end method

.method static synthetic access$3200()[I
    .registers 1

    .prologue
    .line 55
    sget-object v0, Lcom/android/camera/ViewImage;->sOrder_slideshow:[I

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/camera/ViewImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ViewImage;->mMode:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/camera/ViewImage;)[Lcom/android/camera/ViewImage$ImageViewTouch;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/camera/ViewImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ViewImage;->mSlideShowImageCurrent:I

    return v0
.end method

.method static synthetic access$3502(Lcom/android/camera/ViewImage;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput p1, p0, Lcom/android/camera/ViewImage;->mSlideShowImageCurrent:I

    return p1
.end method

.method static synthetic access$3504(Lcom/android/camera/ViewImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ViewImage;->mSlideShowImageCurrent:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ViewImage;->mSlideShowImageCurrent:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/camera/ViewImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ViewImage;->mAnimationIndex:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ViewImage;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mSlideShowInAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ViewImage;)Ljava/util/Random;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/camera/ViewImage;)[Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mSlideShowOutAnimation:[Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ViewImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/ViewImage;->mShowActionIcons:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/ViewImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/ViewImage;->mSlideShowLoop:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/camera/ViewImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/camera/ViewImage;->mUseShuffleOrder:Z

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/ViewImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->generateShuffleOrder()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/camera/ViewImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget v0, p0, Lcom/android/camera/ViewImage;->mSlideShowInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/ViewImage;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ViewImage;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ViewImage;)Landroid/view/View;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/camera/ViewImage;)Landroid/view/animation/Animation;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ViewImage;)Landroid/widget/ZoomButtonsController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method private animateScrollTo(II)V
    .registers 4
    .parameter "xNew"
    .parameter "yNew"

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ViewImage$ScrollHandler;->startScrollTo(II)V

    .line 503
    return-void
.end method

.method private desiredSortOrder()Z
    .registers 6

    .prologue
    .line 1358
    iget-object v2, p0, Lcom/android/camera/ViewImage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v3, "pref_gallery_sort_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1359
    .local v1, sortOrder:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1360
    .local v0, sortAscending:Z
    if-eqz v1, :cond_12

    .line 1361
    const-string v2, "ascending"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1363
    :cond_12
    iget-boolean v2, p0, Lcom/android/camera/ViewImage;->mCameraReviewMode:Z

    if-eqz v2, :cond_17

    .line 1365
    const/4 v0, 0x1

    .line 1367
    :cond_17
    return v0
.end method

.method private generateShuffleOrder()V
    .registers 6

    .prologue
    .line 1236
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    array-length v3, v3

    iget-object v4, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v4}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v4

    if-eq v3, v4, :cond_19

    .line 1237
    :cond_f
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v3

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    .line 1240
    :cond_19
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    array-length v3, v3

    if-ge v0, v3, :cond_26

    .line 1241
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    aput v0, v3, v0

    .line 1240
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 1244
    :cond_26
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    array-length v3, v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    :goto_2c
    if-lez v0, :cond_47

    .line 1245
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 1246
    .local v1, r:I
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    aget v2, v3, v1

    .line 1247
    .local v2, tmp:I
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    iget-object v4, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    aget v4, v4, v0

    aput v4, v3, v1

    .line 1248
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    aput v2, v3, v0

    .line 1244
    add-int/lit8 v0, v0, -0x1

    goto :goto_2c

    .line 1250
    .end local v1           #r:I
    .end local v2           #tmp:I
    :cond_47
    return-void
.end method

.method private getCurrentUri()Landroid/net/Uri;
    .registers 7

    .prologue
    const-string v5, "bucketId"

    .line 1391
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    iget v4, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 1392
    .local v1, image:Lcom/android/camera/ImageManager$IImage;
    const/4 v2, 0x0

    .line 1393
    .local v2, uri:Landroid/net/Uri;
    if-eqz v1, :cond_40

    .line 1394
    const/4 v0, 0x0

    .line 1395
    .local v0, bucket:Ljava/lang/String;
    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 1396
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_30

    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 1397
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "bucketId"

    invoke-virtual {v3, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1399
    :cond_30
    if-eqz v0, :cond_40

    .line 1400
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "bucketId"

    invoke-virtual {v3, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 1402
    .end local v0           #bucket:Ljava/lang/String;
    :cond_40
    return-object v2
.end method

.method private init(Landroid/net/Uri;)V
    .registers 7
    .parameter "uri"

    .prologue
    .line 1371
    if-nez p1, :cond_3

    .line 1388
    :cond_2
    :goto_2
    return-void

    .line 1374
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->desiredSortOrder()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/camera/ViewImage;->mSortAscending:Z

    .line 1375
    iget-boolean v3, p0, Lcom/android/camera/ViewImage;->mSortAscending:Z

    if-eqz v3, :cond_42

    const/4 v3, 0x1

    move v2, v3

    .line 1376
    .local v2, sort:I
    :goto_f
    invoke-static {p1, p0, v2}, Lcom/android/camera/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;I)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    .line 1378
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->query(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 1380
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1381
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v3, v0}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 1382
    .local v1, image:Lcom/android/camera/ImageManager$IImage;
    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 1383
    iput v0, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    .line 1384
    iget v3, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    iput v3, p0, Lcom/android/camera/ViewImage;->mLastSlideShowImage:I

    goto :goto_2

    .line 1375
    .end local v0           #i:I
    .end local v1           #image:Lcom/android/camera/ImageManager$IImage;
    .end local v2           #sort:I
    :cond_42
    const/4 v3, 0x2

    move v2, v3

    goto :goto_f

    .line 1380
    .restart local v0       #i:I
    .restart local v1       #image:Lcom/android/camera/ImageManager$IImage;
    .restart local v2       #sort:I
    :cond_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_23
.end method

.method private isPickIntent()Z
    .registers 3

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 298
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

.method private loadNextImage(IJZ)V
    .registers 12
    .parameter "requestedPos"
    .parameter "delay"
    .parameter "firstCall"

    .prologue
    .line 1253
    if-eqz p4, :cond_9

    iget-boolean v1, p0, Lcom/android/camera/ViewImage;->mUseShuffleOrder:Z

    if-eqz v1, :cond_9

    .line 1254
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->generateShuffleOrder()V

    .line 1257
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long v2, v4, p2

    .line 1259
    .local v2, targetDisplayTime:J
    new-instance v0, Lcom/android/camera/ViewImage$10;

    move-object v1, p0

    move v4, p1

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ViewImage$10;-><init>(Lcom/android/camera/ViewImage;JIZ)V

    .line 1344
    .local v0, cb:Lcom/android/camera/ViewImage$ImageGetterCallback;
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    if-eqz v1, :cond_29

    .line 1345
    move v6, p1

    .line 1346
    .local v6, pos:I
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    if-eqz v1, :cond_24

    .line 1347
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    aget v6, v1, v6

    .line 1349
    :cond_24
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-virtual {v1, v6, v0}, Lcom/android/camera/ViewImage$ImageGetter;->setPosition(ILcom/android/camera/ViewImage$ImageGetterCallback;)V

    .line 1351
    .end local v6           #pos:I
    :cond_29
    return-void
.end method

.method private makeGetter()V
    .registers 2

    .prologue
    .line 1354
    new-instance v0, Lcom/android/camera/ViewImage$ImageGetter;

    invoke-direct {v0, p0}, Lcom/android/camera/ViewImage$ImageGetter;-><init>(Lcom/android/camera/ViewImage;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    .line 1355
    return-void
.end method

.method private makeInAnimation(I)Landroid/view/animation/Animation;
    .registers 3
    .parameter "id"

    .prologue
    .line 1129
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1130
    .local v0, inAnimation:Landroid/view/animation/Animation;
    return-object v0
.end method

.method private makeOutAnimation(I)Landroid/view/animation/Animation;
    .registers 3
    .parameter "id"

    .prologue
    .line 1134
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1135
    .local v0, outAnimation:Landroid/view/animation/Animation;
    return-object v0
.end method

.method private moveNextOrPrevious(I)V
    .registers 4
    .parameter "delta"

    .prologue
    .line 1550
    iget v1, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    add-int v0, v1, p1

    .line 1551
    .local v0, nextImagePos:I
    if-ltz v0, :cond_11

    iget-object v1, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_11

    .line 1552
    invoke-direct {p0, v0}, Lcom/android/camera/ViewImage;->setImage(I)V

    .line 1554
    :cond_11
    return-void
.end method

.method private onLayoutChanged()V
    .registers 6

    .prologue
    .line 626
    iget-object v4, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    if-nez v4, :cond_5

    .line 634
    :goto_4
    return-void

    .line 627
    :cond_5
    iget-object v4, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 628
    iget-object v4, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v4}, Lcom/android/camera/ViewImage$ImageGetter;->access$2200(Lcom/android/camera/ViewImage$ImageGetter;)V

    .line 629
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    .local v0, arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_13
    if-ge v1, v3, :cond_1d

    aget-object v2, v0, v1

    .line 630
    .local v2, iv:Lcom/android/camera/ViewImage$ImageViewTouch;
    invoke-virtual {v2}, Lcom/android/camera/ViewImage$ImageViewTouch;->clear()V

    .line 629
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 632
    .end local v2           #iv:Lcom/android/camera/ViewImage$ImageViewTouch;
    :cond_1d
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/ViewImage;->mFirst:Z

    .line 633
    iget v4, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-direct {p0, v4}, Lcom/android/camera/ViewImage;->setImage(I)V

    goto :goto_4
.end method

.method private scheduleDismissOnScreenControls()V
    .registers 5

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    iget-object v1, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage$LocalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 207
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    iget-object v1, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ViewImage$LocalHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 208
    return-void
.end method

.method private setImage(I)V
    .registers 16
    .parameter "pos"

    .prologue
    .line 886
    iget-boolean v11, p0, Lcom/android/camera/ViewImage;->mLayoutComplete:Z

    if-nez v11, :cond_5

    .line 993
    :goto_4
    return-void

    .line 888
    :cond_5
    iget v11, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    if-ne p1, v11, :cond_56

    const/4 v11, 0x1

    move v6, v11

    .line 889
    .local v6, left:Z
    :goto_d
    iget v11, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    add-int/lit8 v11, v11, 0x1

    if-ne p1, v11, :cond_59

    const/4 v11, 0x1

    move v8, v11

    .line 891
    .local v8, right:Z
    :goto_15
    iput p1, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    .line 893
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v12, 0x1

    aget-object v2, v11, v12

    .line 894
    .local v2, current:Lcom/android/camera/ImageViewTouchBase;
    iget-object v11, v2, Lcom/android/camera/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v11}, Landroid/graphics/Matrix;->reset()V

    .line 895
    invoke-virtual {v2}, Lcom/android/camera/ViewImage$ImageViewTouch;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v11

    invoke-virtual {v2, v11}, Lcom/android/camera/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 903
    iget-boolean v11, p0, Lcom/android/camera/ViewImage;->mFirst:Z

    if-nez v11, :cond_48

    .line 904
    if-eqz v6, :cond_5c

    .line 905
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v12, 0x2

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/camera/ViewImage$ImageViewTouch;->copyFrom(Lcom/android/camera/ImageViewTouchBase;)V

    .line 906
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v13, 0x0

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/camera/ViewImage$ImageViewTouch;->copyFrom(Lcom/android/camera/ImageViewTouchBase;)V

    .line 918
    :cond_48
    :goto_48
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    .local v0, arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    array-length v7, v0

    .local v7, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4c
    if-ge v4, v7, :cond_79

    aget-object v5, v0, v4

    .line 919
    .local v5, ivt:Lcom/android/camera/ImageViewTouchBase;
    const/4 v11, 0x0

    iput-boolean v11, v5, Lcom/android/camera/ImageViewTouchBase;->mIsZooming:Z

    .line 918
    add-int/lit8 v4, v4, 0x1

    goto :goto_4c

    .line 888
    .end local v0           #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    .end local v2           #current:Lcom/android/camera/ImageViewTouchBase;
    .end local v4           #i$:I
    .end local v5           #ivt:Lcom/android/camera/ImageViewTouchBase;
    .end local v6           #left:Z
    .end local v7           #len$:I
    .end local v8           #right:Z
    :cond_56
    const/4 v11, 0x0

    move v6, v11

    goto :goto_d

    .line 889
    .restart local v6       #left:Z
    :cond_59
    const/4 v11, 0x0

    move v8, v11

    goto :goto_15

    .line 907
    .restart local v2       #current:Lcom/android/camera/ImageViewTouchBase;
    .restart local v8       #right:Z
    :cond_5c
    if-eqz v8, :cond_48

    .line 908
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v12, 0x0

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/camera/ViewImage$ImageViewTouch;->copyFrom(Lcom/android/camera/ImageViewTouchBase;)V

    .line 909
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    iget-object v12, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Lcom/android/camera/ViewImage$ImageViewTouch;->copyFrom(Lcom/android/camera/ImageViewTouchBase;)V

    goto :goto_48

    .line 921
    .restart local v0       #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    .restart local v4       #i$:I
    .restart local v7       #len$:I
    :cond_79
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v11}, Lcom/android/camera/ViewImage$ImageViewTouch;->getWidth()I

    move-result v10

    .line 923
    .local v10, width:I
    add-int/lit8 v9, v10, 0x14

    .line 924
    .local v9, to:I
    iget-boolean v11, p0, Lcom/android/camera/ViewImage;->mFirst:Z

    if-eqz v11, :cond_a8

    .line 925
    move v3, v9

    .line 926
    .local v3, from:I
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/camera/ViewImage;->mFirst:Z

    .line 936
    :goto_8c
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

    const/4 v12, 0x0

    invoke-virtual {v11, v9, v12}, Lcom/android/camera/ViewImage$ScrollHandler;->scrollTo(II)V

    .line 939
    new-instance v1, Lcom/android/camera/ViewImage$9;

    invoke-direct {v1, p0}, Lcom/android/camera/ViewImage$9;-><init>(Lcom/android/camera/ViewImage;)V

    .line 987
    .local v1, cb:Lcom/android/camera/ViewImage$ImageGetterCallback;
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    if-eqz v11, :cond_a0

    .line 988
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-virtual {v11, p1, v1}, Lcom/android/camera/ViewImage$ImageGetter;->setPosition(ILcom/android/camera/ViewImage$ImageGetterCallback;)V

    .line 991
    :cond_a0
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->showOnScreenControls()V

    .line 992
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->scheduleDismissOnScreenControls()V

    goto/16 :goto_4

    .line 928
    .end local v1           #cb:Lcom/android/camera/ViewImage$ImageGetterCallback;
    .end local v3           #from:I
    :cond_a8
    if-eqz v6, :cond_b5

    add-int/lit8 v11, v10, 0x14

    iget-object v12, p0, Lcom/android/camera/ViewImage;->mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

    invoke-virtual {v12}, Lcom/android/camera/ViewImage$ScrollHandler;->getScrollX()I

    move-result v12

    add-int/2addr v11, v12

    move v3, v11

    .restart local v3       #from:I
    :goto_b4
    goto :goto_8c

    .end local v3           #from:I
    :cond_b5
    iget-object v11, p0, Lcom/android/camera/ViewImage;->mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

    invoke-virtual {v11}, Lcom/android/camera/ViewImage$ScrollHandler;->getScrollX()I

    move-result v11

    add-int/lit8 v12, v10, 0x14

    sub-int/2addr v11, v12

    move v3, v11

    goto :goto_b4
.end method

.method private setMode(I)V
    .registers 16
    .parameter "mode"

    .prologue
    const/4 v13, -0x1

    const/4 v12, 0x1

    const/16 v11, 0x400

    const/16 v9, 0x8

    const/4 v10, 0x0

    .line 1139
    iget v7, p0, Lcom/android/camera/ViewImage;->mMode:I

    if-ne v7, p1, :cond_c

    .line 1233
    :goto_b
    return-void

    .line 1143
    :cond_c
    const v7, 0x7f0b0043

    invoke-virtual {p0, v7}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/4 v8, 0x2

    if-ne p1, v8, :cond_46

    move v8, v10

    :goto_17
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    const v7, 0x7f0b0046

    invoke-virtual {p0, v7}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-ne p1, v12, :cond_48

    move v8, v10

    :goto_24
    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1146
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getWindow()Landroid/view/Window;

    move-result-object v6

    .line 1147
    .local v6, win:Landroid/view/Window;
    iput p1, p0, Lcom/android/camera/ViewImage;->mMode:I

    .line 1148
    const/4 v7, 0x2

    if-ne p1, v7, :cond_ea

    .line 1149
    const/16 v7, 0x480

    invoke-virtual {v6, v7}, Landroid/view/Window;->addFlags(I)V

    .line 1152
    invoke-virtual {v6, v11}, Landroid/view/Window;->addFlags(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    .local v0, arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_3c
    if-ge v3, v5, :cond_4a

    aget-object v4, v0, v3

    .line 1155
    .local v4, ivt:Lcom/android/camera/ImageViewTouchBase;
    invoke-virtual {v4}, Lcom/android/camera/ViewImage$ImageViewTouch;->clear()V

    .line 1154
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .end local v0           #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    .end local v3           #i$:I
    .end local v4           #ivt:Lcom/android/camera/ImageViewTouchBase;
    .end local v5           #len$:I
    .end local v6           #win:Landroid/view/Window;
    :cond_46
    move v8, v9

    .line 1143
    goto :goto_17

    :cond_48
    move v8, v9

    .line 1144
    goto :goto_24

    .line 1157
    .restart local v0       #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    .restart local v6       #win:Landroid/view/Window;
    :cond_4a
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mActionIconPanel:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1166
    const v7, 0x7f0b0043

    invoke-virtual {p0, v7}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->requestLayout()V

    .line 1167
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "pref_gallery_slideshow_shuffle_key"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/ViewImage;->mUseShuffleOrder:Z

    .line 1168
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "pref_gallery_slideshow_repeat_key"

    invoke-interface {v7, v8, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/camera/ViewImage;->mSlideShowLoop:Z

    .line 1170
    :try_start_76
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "pref_gallery_slideshow_transition_key"

    const-string v9, "0"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/camera/ViewImage;->mAnimationIndex:I
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_86} :catch_a6

    .line 1176
    :goto_86
    :try_start_86
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mPrefs:Landroid/content/SharedPreferences;

    const-string v8, "pref_gallery_slideshow_interval_key"

    const-string v9, "3"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    iput v7, p0, Lcom/android/camera/ViewImage;->mSlideShowInterval:I
    :try_end_98
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_98} :catch_c7

    .line 1189
    :goto_98
    iget-boolean v7, p0, Lcom/android/camera/ViewImage;->mUseShuffleOrder:Z

    if-eqz v7, :cond_9f

    .line 1190
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->generateShuffleOrder()V

    .line 1232
    :cond_9f
    :goto_9f
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

    invoke-virtual {v7}, Lcom/android/camera/ViewImage$ScrollHandler;->requestLayout()V

    goto/16 :goto_b

    .line 1171
    :catch_a6
    move-exception v7

    move-object v2, v7

    .line 1172
    .local v2, ex:Ljava/lang/Exception;
    const-string v7, "ViewImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t parse preference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iput v10, p0, Lcom/android/camera/ViewImage;->mAnimationIndex:I

    goto :goto_86

    .line 1177
    .end local v2           #ex:Ljava/lang/Exception;
    :catch_c7
    move-exception v7

    move-object v2, v7

    .line 1178
    .restart local v2       #ex:Ljava/lang/Exception;
    const-string v7, "ViewImage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "couldn\'t parse preference: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1179
    const/16 v7, 0xbb8

    iput v7, p0, Lcom/android/camera/ViewImage;->mSlideShowInterval:I

    goto :goto_98

    .line 1195
    .end local v0           #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_ea
    const/16 v7, 0x80

    invoke-virtual {v6, v7}, Landroid/view/Window;->clearFlags(I)V

    .line 1196
    iget-boolean v7, p0, Lcom/android/camera/ViewImage;->mFullScreenInNormalMode:Z

    if-eqz v7, :cond_126

    .line 1197
    invoke-virtual {v6, v11}, Landroid/view/Window;->addFlags(I)V

    .line 1202
    :goto_f6
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    if-eqz v7, :cond_ff

    .line 1203
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v7}, Lcom/android/camera/ViewImage$ImageGetter;->access$2200(Lcom/android/camera/ViewImage$ImageGetter;)V

    .line 1206
    :cond_ff
    invoke-virtual {v6, v11}, Landroid/view/Window;->clearFlags(I)V

    .line 1208
    iget-boolean v7, p0, Lcom/android/camera/ViewImage;->mShowActionIcons:Z

    if-eqz v7, :cond_110

    .line 1209
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mActionIconPanel:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1210
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mShutterButton:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1213
    :cond_110
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    aget-object v1, v7, v12

    .line 1214
    .local v1, dst:Lcom/android/camera/ImageViewTouchBase;
    iput v13, v1, Lcom/android/camera/ImageViewTouchBase;->mLastXTouchPos:I

    .line 1215
    iput v13, v1, Lcom/android/camera/ImageViewTouchBase;->mLastYTouchPos:I

    .line 1217
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    .restart local v0       #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_11c
    if-ge v3, v5, :cond_12a

    aget-object v4, v0, v3

    .line 1218
    .restart local v4       #ivt:Lcom/android/camera/ImageViewTouchBase;
    invoke-virtual {v4}, Lcom/android/camera/ViewImage$ImageViewTouch;->clear()V

    .line 1217
    add-int/lit8 v3, v3, 0x1

    goto :goto_11c

    .line 1199
    .end local v0           #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    .end local v1           #dst:Lcom/android/camera/ImageViewTouchBase;
    .end local v3           #i$:I
    .end local v4           #ivt:Lcom/android/camera/ImageViewTouchBase;
    .end local v5           #len$:I
    :cond_126
    invoke-virtual {v6, v11}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_f6

    .line 1221
    .restart local v0       #arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    .restart local v1       #dst:Lcom/android/camera/ImageViewTouchBase;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_12a
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/camera/ViewImage;->mShuffleOrder:[I

    .line 1224
    iget-object v7, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    if-eqz v7, :cond_9f

    .line 1225
    iput-boolean v12, p0, Lcom/android/camera/ViewImage;->mFirst:Z

    .line 1226
    iget v7, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-direct {p0, v7}, Lcom/android/camera/ViewImage;->setImage(I)V

    goto/16 :goto_9f
.end method

.method private setRequestedOrientation()V
    .registers 5

    .prologue
    const-string v3, "android.intent.extra.screenOrientation"

    .line 1116
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1117
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.screenOrientation"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 1118
    const-string v2, "android.intent.extra.screenOrientation"

    const/4 v2, -0x1

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1120
    .local v1, orientation:I
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getRequestedOrientation()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 1121
    invoke-virtual {p0, v1}, Lcom/android/camera/ViewImage;->setRequestedOrientation(I)V

    .line 1126
    .end local v1           #orientation:I
    :cond_1e
    :goto_1e
    return-void

    .line 1124
    :cond_1f
    iget-object v2, p0, Lcom/android/camera/ViewImage;->mPrefs:Landroid/content/SharedPreferences;

    invoke-static {p0, v2}, Lcom/android/camera/MenuHelper;->requestOrientation(Landroid/app/Activity;Landroid/content/SharedPreferences;)V

    goto :goto_1e
.end method

.method private setupDismissOnScreenControlRunnable()V
    .registers 2

    .prologue
    .line 272
    new-instance v0, Lcom/android/camera/ViewImage$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ViewImage$2;-><init>(Lcom/android/camera/ViewImage;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    .line 294
    return-void
.end method

.method private setupZoomButtonController(Landroid/view/View;)V
    .registers 5
    .parameter "rootView"

    .prologue
    .line 229
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ViewImage$MyGestureListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ViewImage$MyGestureListener;-><init>(Lcom/android/camera/ViewImage;Lcom/android/camera/ViewImage$1;)V

    invoke-direct {v0, p0, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mGestureDetector:Landroid/view/GestureDetector;

    .line 230
    new-instance v0, Landroid/widget/ZoomButtonsController;

    invoke-direct {v0, p1}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 231
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setAutoDismissed(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    new-instance v1, Lcom/android/camera/ViewImage$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ViewImage$1;-><init>(Lcom/android/camera/ViewImage;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 248
    return-void
.end method

.method private showOnScreenControls()V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    iget-object v1, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage$LocalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 169
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->updateNextPrevControls()V

    .line 170
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->updateZoomButtonsEnabled()V

    .line 171
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 172
    return-void
.end method

.method private updateNextPrevControls()V
    .registers 13

    .prologue
    const/16 v11, 0x8

    const-wide/16 v9, 0x1f4

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 132
    iget v5, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    if-lez v5, :cond_56

    move v4, v8

    .line 133
    .local v4, showPrev:Z
    :goto_b
    iget v5, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    iget-object v6, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v6}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v6

    sub-int/2addr v6, v8

    if-ge v5, v6, :cond_58

    move v3, v8

    .line 135
    .local v3, showNext:Z
    :goto_17
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5a

    move v2, v8

    .line 136
    .local v2, prevIsVisible:Z
    :goto_20
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5c

    move v1, v8

    .line 138
    .local v1, nextIsVisible:Z
    :goto_29
    if-eqz v4, :cond_5e

    if-nez v2, :cond_5e

    .line 139
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mShowPrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 140
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 141
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 142
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 143
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_3f
    :goto_3f
    if-eqz v3, :cond_75

    if-nez v1, :cond_75

    .line 153
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mShowNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 154
    .restart local v0       #a:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 155
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 156
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 157
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 165
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_55
    :goto_55
    return-void

    .end local v1           #nextIsVisible:Z
    .end local v2           #prevIsVisible:Z
    .end local v3           #showNext:Z
    .end local v4           #showPrev:Z
    :cond_56
    move v4, v7

    .line 132
    goto :goto_b

    .restart local v4       #showPrev:Z
    :cond_58
    move v3, v7

    .line 133
    goto :goto_17

    .restart local v3       #showNext:Z
    :cond_5a
    move v2, v7

    .line 135
    goto :goto_20

    .restart local v2       #prevIsVisible:Z
    :cond_5c
    move v1, v7

    .line 136
    goto :goto_29

    .line 144
    .restart local v1       #nextIsVisible:Z
    :cond_5e
    if-nez v4, :cond_3f

    if-eqz v2, :cond_3f

    .line 145
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHidePrevImageViewAnimation:Landroid/view/animation/Animation;

    .line 146
    .restart local v0       #a:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 147
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 148
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 149
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3f

    .line 158
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_75
    if-nez v3, :cond_55

    if-eqz v1, :cond_55

    .line 159
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mHideNextImageViewAnimation:Landroid/view/animation/Animation;

    .line 160
    .restart local v0       #a:Landroid/view/animation/Animation;
    invoke-virtual {v0, v9, v10}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 161
    invoke-virtual {v0}, Landroid/view/animation/Animation;->startNow()V

    .line 162
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 163
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_55
.end method

.method private updateZoomButtonsEnabled()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 211
    iget-object v2, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    aget-object v0, v2, v4

    .line 212
    .local v0, imageView:Lcom/android/camera/ViewImage$ImageViewTouch;
    invoke-virtual {v0}, Lcom/android/camera/ViewImage$ImageViewTouch;->getScale()F

    move-result v1

    .line 213
    .local v1, scale:F
    iget-object v2, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget v3, v0, Lcom/android/camera/ViewImage$ImageViewTouch;->mMaxZoom:F

    cmpg-float v3, v1, v3

    if-gez v3, :cond_23

    move v3, v4

    :goto_13
    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 214
    iget-object v2, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/high16 v3, 0x3f80

    cmpl-float v3, v1, v3

    if-lez v3, :cond_25

    move v3, v4

    :goto_1f
    invoke-virtual {v2, v3}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    .line 215
    return-void

    :cond_23
    move v3, v5

    .line 213
    goto :goto_13

    :cond_25
    move v3, v5

    .line 214
    goto :goto_1f
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .parameter "m"

    .prologue
    const/4 v3, 0x1

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 183
    .local v0, sup:Z
    iget v1, p0, Lcom/android/camera/ViewImage;->mMode:I

    if-ne v1, v3, :cond_10

    .line 184
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_38

    .line 194
    :cond_10
    :goto_10
    if-nez v0, :cond_36

    .line 195
    iget v1, p0, Lcom/android/camera/ViewImage;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2a

    .line 196
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    iget v2, p0, Lcom/android/camera/ViewImage;->mSlideShowImageCurrent:I

    aget-object v1, v1, v2

    invoke-virtual {v1, p1}, Lcom/android/camera/ViewImage$ImageViewTouch;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_20
    :goto_20
    move v1, v3

    .line 202
    :goto_21
    return v1

    .line 186
    :pswitch_22
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->showOnScreenControls()V

    goto :goto_10

    .line 189
    :pswitch_26
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->scheduleDismissOnScreenControls()V

    goto :goto_10

    .line 197
    :cond_2a
    iget v1, p0, Lcom/android/camera/ViewImage;->mMode:I

    if-ne v1, v3, :cond_20

    .line 198
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Lcom/android/camera/ViewImage$ImageViewTouch;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_20

    :cond_36
    move v1, v3

    .line 202
    goto :goto_21

    .line 184
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_22
        :pswitch_26
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1558
    packed-switch p1, :pswitch_data_12

    .line 1567
    :cond_3
    :goto_3
    return-void

    .line 1560
    :pswitch_4
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 1563
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mSavedUri:Landroid/net/Uri;

    goto :goto_3

    .line 1558
    :pswitch_data_12
    .packed-switch 0x1ea
        :pswitch_4
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    const/4 v5, 0x0

    .line 1490
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_9e

    .line 1547
    :cond_8
    :goto_8
    return-void

    .line 1493
    :sswitch_9
    iget-boolean v3, p0, Lcom/android/camera/ViewImage;->mCameraReviewMode:Z

    if-eqz v3, :cond_11

    .line 1494
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->finish()V

    goto :goto_8

    .line 1496
    :cond_11
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoStillImageCapture(Landroid/app/Activity;)V

    goto :goto_8

    .line 1502
    :sswitch_15
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->gotoCameraImageGallery(Landroid/app/Activity;)V

    goto :goto_8

    .line 1507
    :sswitch_19
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v3}, Lcom/android/camera/MenuHelper;->deletePhoto(Landroid/app/Activity;Ljava/lang/Runnable;)V

    goto :goto_8

    .line 1512
    :sswitch_1f
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    iget v4, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 1513
    .local v2, u:Landroid/net/Uri;
    invoke-static {v2}, Lcom/android/camera/MenuHelper;->isMMSUri(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 1514
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1515
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1516
    const-string v3, "image/jpeg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1517
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1519
    const v3, 0x7f0900a2

    :try_start_48
    invoke-virtual {p0, v3}, Lcom/android/camera/ViewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ViewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_53
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_53} :catch_54

    goto :goto_8

    .line 1520
    :catch_54
    move-exception v3

    move-object v0, v3

    .line 1521
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f09002c

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_8

    .line 1527
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #u:Landroid/net/Uri;
    :sswitch_61
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    iget v4, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v2

    .line 1528
    .restart local v2       #u:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.ATTACH_DATA"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1530
    .restart local v1       #intent:Landroid/content/Intent;
    const v3, 0x7f0900a3

    :try_start_77
    invoke-virtual {p0, v3}, Lcom/android/camera/ViewImage;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ViewImage;->startActivity(Landroid/content/Intent;)V
    :try_end_82
    .catch Landroid/content/ActivityNotFoundException; {:try_start_77 .. :try_end_82} :catch_83

    goto :goto_8

    .line 1531
    :catch_83
    move-exception v3

    move-object v0, v3

    .line 1532
    .restart local v0       #ex:Landroid/content/ActivityNotFoundException;
    const v3, 0x7f09002d

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_8

    .line 1538
    .end local v0           #ex:Landroid/content/ActivityNotFoundException;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #u:Landroid/net/Uri;
    :sswitch_91
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/android/camera/ViewImage;->moveNextOrPrevious(I)V

    goto/16 :goto_8

    .line 1543
    :sswitch_97
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lcom/android/camera/ViewImage;->moveNextOrPrevious(I)V

    goto/16 :goto_8

    .line 1490
    nop

    :sswitch_data_9e
    .sparse-switch
        0x7f0b0002 -> :sswitch_9
        0x7f0b000a -> :sswitch_19
        0x7f0b002e -> :sswitch_15
        0x7f0b0041 -> :sswitch_1f
        0x7f0b004d -> :sswitch_97
        0x7f0b004e -> :sswitch_91
        0x7f0b0050 -> :sswitch_61
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 26
    .parameter "instanceState"

    .prologue
    .line 997
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 998
    const/16 v20, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->bAutoAllTest:Ljava/lang/Integer;

    .line 1000
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v12

    .line 1001
    .local v12, intent:Landroid/content/Intent;
    const-string v20, "com.android.camera.ReviewMode"

    const/16 v21, 0x0

    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ViewImage;->mCameraReviewMode:Z

    .line 1002
    const-string v20, "android.intent.extra.fullScreen"

    const/16 v21, 0x1

    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ViewImage;->mFullScreenInNormalMode:Z

    .line 1003
    const-string v20, "android.intent.extra.showActionIcons"

    const/16 v21, 0x0

    move-object v0, v12

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/camera/ViewImage;->mShowActionIcons:Z

    .line 1005
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ViewImage;->setRequestedOrientation()V

    .line 1007
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mPrefs:Landroid/content/SharedPreferences;

    .line 1009
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->setDefaultKeyMode(I)V

    .line 1010
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->requestWindowFeature(I)Z

    .line 1011
    const v20, 0x7f030010

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->setContentView(I)V

    .line 1013
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f0b0048

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ViewImage$ImageViewTouch;

    aput-object v5, v20, v21

    .line 1014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const v22, 0x7f0b004a

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ViewImage$ImageViewTouch;

    aput-object v5, v20, v21

    .line 1015
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-object/from16 v20, v0

    const/16 v21, 0x2

    const v22, 0x7f0b004c

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ViewImage$ImageViewTouch;

    aput-object v5, v20, v21

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-object v6, v0

    .local v6, arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    array-length v13, v6

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_c1
    if-ge v10, v13, :cond_dc

    aget-object v18, v6, v10

    .line 1018
    .local v18, v:Lcom/android/camera/ViewImage$ImageViewTouch;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ViewImage;->mShowActionIcons:Z

    move/from16 v20, v0

    if-nez v20, :cond_d9

    const/16 v20, 0x1

    :goto_cf
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage$ImageViewTouch;->setEnableTrackballScroll(Z)V

    .line 1017
    add-int/lit8 v10, v10, 0x1

    goto :goto_c1

    .line 1018
    :cond_d9
    const/16 v20, 0x0

    goto :goto_cf

    .line 1021
    .end local v18           #v:Lcom/android/camera/ViewImage$ImageViewTouch;
    :cond_dc
    const v20, 0x7f0b0047

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ViewImage$ScrollHandler;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mScroller:Lcom/android/camera/ViewImage$ScrollHandler;

    .line 1022
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ViewImage;->makeGetter()V

    .line 1024
    const/16 v20, -0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/camera/ViewImage;->mAnimationIndex:I

    .line 1026
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/animation/Animation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f040007

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->makeInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const v22, 0x7f040003

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->makeInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const v22, 0x7f040004

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->makeInAnimation(I)Landroid/view/animation/Animation;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mSlideShowInAnimation:[Landroid/view/animation/Animation;

    .line 1032
    const/16 v20, 0x3

    move/from16 v0, v20

    new-array v0, v0, [Landroid/view/animation/Animation;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f040008

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->makeOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const v22, 0x7f040005

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->makeOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const v22, 0x7f040006

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->makeOutAnimation(I)Landroid/view/animation/Animation;

    move-result-object v22

    aput-object v22, v20, v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mSlideShowOutAnimation:[Landroid/view/animation/Animation;

    .line 1038
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const v22, 0x7f0b0044

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ViewImage$ImageViewTouch;

    aput-object v5, v20, v21

    .line 1039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const v22, 0x7f0b0045

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/camera/ViewImage$ImageViewTouch;

    aput-object v5, v20, v21

    .line 1040
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    move-object v6, v0

    array-length v13, v6

    const/4 v10, 0x0

    :goto_1a4
    if-ge v10, v13, :cond_1d9

    aget-object v18, v6, v10

    .line 1041
    .restart local v18       #v:Lcom/android/camera/ViewImage$ImageViewTouch;
    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/ViewImage$ImageViewTouch;->setImageBitmapResetBase(Landroid/graphics/Bitmap;ZZ)V

    .line 1042
    const/16 v20, 0x4

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage$ImageViewTouch;->setVisibility(I)V

    .line 1043
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ViewImage;->mShowActionIcons:Z

    move/from16 v20, v0

    if-nez v20, :cond_1d6

    const/16 v20, 0x1

    :goto_1cc
    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage$ImageViewTouch;->setEnableTrackballScroll(Z)V

    .line 1040
    add-int/lit8 v10, v10, 0x1

    goto :goto_1a4

    .line 1043
    :cond_1d6
    const/16 v20, 0x0

    goto :goto_1cc

    .line 1046
    .end local v18           #v:Lcom/android/camera/ViewImage$ImageViewTouch;
    :cond_1d9
    const v20, 0x7f0b004f

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mActionIconPanel:Landroid/view/View;

    .line 1048
    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object v15, v0

    fill-array-data v15, :array_38e

    .line 1049
    .local v15, pickIds:[I
    const/16 v20, 0x4

    move/from16 v0, v20

    new-array v0, v0, [I

    move-object v14, v0

    fill-array-data v14, :array_396

    .line 1050
    .local v14, normalIds:[I
    move-object v9, v15

    .line 1051
    .local v9, hideIds:[I
    move-object v8, v14

    .line 1052
    .local v8, connectIds:[I
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ViewImage;->isPickIntent()Z

    move-result v20

    if-eqz v20, :cond_208

    .line 1053
    move-object v9, v14

    .line 1054
    move-object v8, v15

    .line 1056
    :cond_208
    move-object v6, v9

    .local v6, arr$:[I
    array-length v13, v6

    const/4 v10, 0x0

    :goto_20b
    if-ge v10, v13, :cond_224

    aget v11, v6, v10

    .line 1057
    .local v11, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mActionIconPanel:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    add-int/lit8 v10, v10, 0x1

    goto :goto_20b

    .line 1059
    .end local v11           #id:I
    :cond_224
    move-object v6, v8

    array-length v13, v6

    const/4 v10, 0x0

    :goto_227
    if-ge v10, v13, :cond_25e

    aget v11, v6, v10

    .line 1060
    .restart local v11       #id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mActionIconPanel:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 1061
    .local v19, view:Landroid/view/View;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1062
    new-instance v5, Landroid/view/animation/AlphaAnimation;

    const/16 v20, 0x0

    const/high16 v21, 0x3f80

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1063
    .local v5, animation:Landroid/view/animation/Animation;
    const-wide/16 v20, 0x1f4

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1064
    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1059
    add-int/lit8 v10, v10, 0x1

    goto :goto_227

    .line 1067
    .end local v5           #animation:Landroid/view/animation/Animation;
    .end local v11           #id:I
    .end local v19           #view:Landroid/view/View;
    :cond_25e
    const v20, 0x7f0b0002

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mShutterButton:Landroid/view/View;

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mShutterButton:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1070
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v17

    .line 1074
    .local v17, uri:Landroid/net/Uri;
    if-eqz p1, :cond_2a0

    .line 1075
    const-string v20, "uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_2a0

    .line 1076
    const-string v20, "uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 1079
    :cond_2a0
    if-nez v17, :cond_2a6

    .line 1080
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ViewImage;->finish()V

    .line 1113
    :cond_2a5
    :goto_2a5
    return-void

    .line 1083
    :cond_2a6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->init(Landroid/net/Uri;)V

    .line 1085
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    .line 1087
    .local v7, b:Landroid/os/Bundle;
    if-eqz v7, :cond_357

    const-string v20, "slideshow"

    const/16 v21, 0x0

    move-object v0, v7

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    move/from16 v16, v20

    .line 1088
    .local v16, slideShow:Z
    :goto_2c6
    if-eqz v16, :cond_35d

    .line 1089
    const/16 v20, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->setMode(I)V

    .line 1090
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    move/from16 v20, v0

    const-wide/16 v21, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v21

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/ViewImage;->loadNextImage(IJZ)V

    .line 1101
    :cond_2e6
    :goto_2e6
    const v20, 0x7f0b0042

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/camera/ViewImage;->setupZoomButtonController(Landroid/view/View;)V

    .line 1102
    invoke-direct/range {p0 .. p0}, Lcom/android/camera/ViewImage;->setupDismissOnScreenControlRunnable()V

    .line 1104
    const v20, 0x7f0b004e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    .line 1105
    const v20, 0x7f0b004d

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/camera/ViewImage;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    .line 1106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1109
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ViewImage;->mShowActionIcons:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2a5

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mNextImageView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setFocusable(Z)V

    .line 1111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mPrevImageView:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setFocusable(Z)V

    goto/16 :goto_2a5

    .line 1087
    .end local v16           #slideShow:Z
    :cond_357
    const/16 v20, 0x0

    move/from16 v16, v20

    goto/16 :goto_2c6

    .line 1092
    .restart local v16       #slideShow:Z
    :cond_35d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ViewImage;->mFullScreenInNormalMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_36e

    .line 1093
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ViewImage;->getWindow()Landroid/view/Window;

    move-result-object v20

    const/16 v21, 0x400

    invoke-virtual/range {v20 .. v21}, Landroid/view/Window;->addFlags(I)V

    .line 1095
    :cond_36e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/camera/ViewImage;->mShowActionIcons:Z

    move/from16 v20, v0

    if-eqz v20, :cond_2e6

    .line 1096
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mActionIconPanel:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/camera/ViewImage;->mShutterButton:Landroid/view/View;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2e6

    .line 1048
    :array_38e
    .array-data 0x4
        0x3bt 0x0t 0xbt 0x7ft
        0x3ct 0x0t 0xbt 0x7ft
    .end array-data

    .line 1049
    :array_396
    .array-data 0x4
        0x2et 0x0t 0xbt 0x7ft
        0x50t 0x0t 0xbt 0x7ft
        0x41t 0x0t 0xbt 0x7ft
        0xat 0x0t 0xbt 0x7ft
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 15
    .parameter "menu"

    .prologue
    const v12, 0x7f09007b

    const/4 v2, 0x1

    const/high16 v11, 0x3

    const/16 v10, 0xcb

    const/4 v9, 0x0

    .line 507
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 509
    iget-boolean v0, p0, Lcom/android/camera/ViewImage;->mCameraReviewMode:Z

    if-nez v0, :cond_25

    .line 510
    const v0, 0x7f09001b

    invoke-interface {p1, v11, v10, v9, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 511
    .local v7, item:Landroid/view/MenuItem;
    new-instance v0, Lcom/android/camera/ViewImage$3;

    invoke-direct {v0, p0}, Lcom/android/camera/ViewImage$3;-><init>(Lcom/android/camera/ViewImage;)V

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 519
    const v0, 0x1080053

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 522
    .end local v7           #item:Landroid/view/MenuItem;
    :cond_25
    new-instance v8, Lcom/android/camera/ViewImage$4;

    invoke-direct {v8, p0}, Lcom/android/camera/ViewImage$4;-><init>(Lcom/android/camera/ViewImage;)V

    .line 532
    .local v8, selectedImageGetter:Lcom/android/camera/SelectedImageGetter;
    const/4 v1, -0x1

    iget-object v4, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    iget-object v5, p0, Lcom/android/camera/ViewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/camera/ViewImage$5;

    invoke-direct {v6, p0, v8}, Lcom/android/camera/ViewImage$5;-><init>(Lcom/android/camera/ViewImage;Lcom/android/camera/SelectedImageGetter;)V

    move-object v0, p1

    move-object v3, p0

    invoke-static/range {v0 .. v6}, Lcom/android/camera/MenuHelper;->addImageMenuItems(Landroid/view/Menu;IZLandroid/app/Activity;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/camera/MenuHelper$MenuInvoker;)Lcom/android/camera/MenuHelper$MenuItemsResult;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ViewImage;->mImageMenuRunnable:Lcom/android/camera/MenuHelper$MenuItemsResult;

    .line 552
    const/16 v0, 0x3e8

    invoke-interface {p1, v11, v10, v0, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v7

    .line 553
    .restart local v7       #item:Landroid/view/MenuItem;
    new-instance v0, Lcom/android/camera/ViewImage$6;

    invoke-direct {v0, p0}, Lcom/android/camera/ViewImage$6;-><init>(Lcom/android/camera/ViewImage;)V

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 561
    const/16 v0, 0x70

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 562
    const v0, 0x1080049

    invoke-interface {v7, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 566
    invoke-interface {p1, v11, v10, v9, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    new-instance v1, Lcom/android/camera/ViewImage$7;

    invoke-direct {v1, p0}, Lcom/android/camera/ViewImage$7;-><init>(Lcom/android/camera/ViewImage;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x7a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 578
    return v2
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_a

    .line 222
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 225
    :cond_a
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 226
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 1600
    sparse-switch p1, :sswitch_data_16

    .line 1609
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 1602
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->finish()V

    move v0, v1

    .line 1603
    goto :goto_8

    .line 1605
    :sswitch_e
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mDeletePhotoRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Lcom/android/camera/MenuHelper;->deletePhoto(Landroid/app/Activity;Ljava/lang/Runnable;)V

    move v0, v1

    .line 1607
    goto :goto_8

    .line 1600
    nop

    :sswitch_data_16
    .sparse-switch
        0x63 -> :sswitch_9
        0x67 -> :sswitch_e
    .end sparse-switch
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .registers 7
    .parameter "featureId"
    .parameter "item"

    .prologue
    .line 638
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    .line 639
    .local v0, b:Z
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mImageMenuRunnable:Lcom/android/camera/MenuHelper$MenuItemsResult;

    if-eqz v1, :cond_15

    .line 640
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mImageMenuRunnable:Lcom/android/camera/MenuHelper$MenuItemsResult;

    iget-object v2, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    iget v3, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-interface {v2, v3}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Lcom/android/camera/MenuHelper$MenuItemsResult;->aboutToCall(Landroid/view/MenuItem;Lcom/android/camera/ImageManager$IImage;)V

    .line 641
    :cond_15
    return v0
.end method

.method public onPause()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1451
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1453
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-static {v5}, Lcom/android/camera/ViewImage$ImageGetter;->access$2200(Lcom/android/camera/ViewImage$ImageGetter;)V

    .line 1454
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    invoke-virtual {v5}, Lcom/android/camera/ViewImage$ImageGetter;->stop()V

    .line 1455
    iput-object v8, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    .line 1456
    invoke-direct {p0, v7}, Lcom/android/camera/ViewImage;->setMode(I)V

    .line 1459
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    invoke-virtual {v5}, Lcom/android/camera/ViewImage$LocalHandler;->removeAllGetterCallbacks()V

    .line 1461
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->getCurrentUri()Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/camera/ViewImage;->mSavedUri:Landroid/net/Uri;

    .line 1463
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v5}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 1464
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1465
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    if-eqz v5, :cond_34

    .line 1466
    iget-object v5, p0, Lcom/android/camera/ViewImage;->mHandler:Lcom/android/camera/ViewImage$LocalHandler;

    iget-object v6, p0, Lcom/android/camera/ViewImage;->mDismissOnScreenControlsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Lcom/android/camera/ViewImage$LocalHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1468
    :cond_34
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    .local v0, arr$:[Lcom/android/camera/ViewImage$ImageViewTouch;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_38
    if-ge v1, v3, :cond_45

    aget-object v2, v0, v1

    .line 1469
    .local v2, iv:Lcom/android/camera/ViewImage$ImageViewTouch;
    invoke-virtual {v2}, Lcom/android/camera/ViewImage$ImageViewTouch;->recycleBitmaps()V

    .line 1470
    invoke-virtual {v2, v8, v7}, Lcom/android/camera/ViewImage$ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1468
    add-int/lit8 v1, v1, 0x1

    goto :goto_38

    .line 1473
    .end local v2           #iv:Lcom/android/camera/ViewImage$ImageViewTouch;
    :cond_45
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mSlideShowImageViews:[Lcom/android/camera/ViewImage$ImageViewTouch;

    array-length v3, v0

    const/4 v1, 0x0

    :goto_49
    if-ge v1, v3, :cond_56

    aget-object v2, v0, v1

    .line 1474
    .restart local v2       #iv:Lcom/android/camera/ViewImage$ImageViewTouch;
    invoke-virtual {v2}, Lcom/android/camera/ViewImage$ImageViewTouch;->recycleBitmaps()V

    .line 1475
    invoke-virtual {v2, v8, v7}, Lcom/android/camera/ViewImage$ImageViewTouch;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 1473
    add-int/lit8 v1, v1, 0x1

    goto :goto_49

    .line 1478
    .end local v2           #iv:Lcom/android/camera/ViewImage$ImageViewTouch;
    :cond_56
    iget-object v0, p0, Lcom/android/camera/ViewImage;->mThumbBitmaps:[Landroid/graphics/Bitmap;

    .local v0, arr$:[Landroid/graphics/Bitmap;
    array-length v3, v0

    const/4 v1, 0x0

    :goto_5a
    if-ge v1, v3, :cond_66

    aget-object v4, v0, v1

    .line 1479
    .local v4, thumb:Landroid/graphics/Bitmap;
    if-eqz v4, :cond_63

    .line 1480
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 1478
    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_5a

    .line 1483
    .end local v4           #thumb:Landroid/graphics/Bitmap;
    :cond_66
    iget-object v5, p0, Lcom/android/camera/ViewImage;->bAutoAllTest:Ljava/lang/Integer;

    if-eqz v5, :cond_75

    iget-object v5, p0, Lcom/android/camera/ViewImage;->bAutoAllTest:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v7, :cond_75

    .line 1485
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->finish()V

    .line 1487
    :cond_75
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .registers 7
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    .line 611
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 612
    invoke-direct {p0, v4}, Lcom/android/camera/ViewImage;->setMode(I)V

    .line 614
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mImageMenuRunnable:Lcom/android/camera/MenuHelper$MenuItemsResult;

    if-eqz v1, :cond_18

    .line 615
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mImageMenuRunnable:Lcom/android/camera/MenuHelper$MenuItemsResult;

    iget-object v2, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    iget v3, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-interface {v2, v3}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/android/camera/MenuHelper$MenuItemsResult;->gettingReadyToOpen(Landroid/view/Menu;Lcom/android/camera/ImageManager$IImage;)V

    .line 618
    :cond_18
    iget-object v1, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    iget v2, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-interface {v1, v2}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->fullSizeImageUri()Landroid/net/Uri;

    move-result-object v0

    .line 619
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/android/camera/MenuHelper;->isMMSUri(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2f

    move v1, v4

    :goto_2b
    invoke-static {p1, v1}, Lcom/android/camera/MenuHelper;->enableShareMenuItem(Landroid/view/Menu;Z)V

    .line 621
    return v4

    .line 619
    :cond_2f
    const/4 v1, 0x0

    goto :goto_2b
.end method

.method public onResume()V
    .registers 7

    .prologue
    const/4 v5, 0x1

    .line 1421
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1424
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1425
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "AutoAllTest"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    check-cast v3, Ljava/lang/Integer;

    iput-object v3, p0, Lcom/android/camera/ViewImage;->bAutoAllTest:Ljava/lang/Integer;

    .line 1427
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mSavedUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/camera/ViewImage;->init(Landroid/net/Uri;)V

    .line 1432
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v3}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v0

    .line 1433
    .local v0, count:I
    if-nez v0, :cond_3b

    .line 1434
    invoke-virtual {p0}, Lcom/android/camera/ViewImage;->finish()V

    .line 1439
    :cond_24
    :goto_24
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    iget v4, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-interface {v3, v4}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 1441
    .local v1, image:Lcom/android/camera/ImageManager$IImage;
    iget-object v3, p0, Lcom/android/camera/ViewImage;->mGetter:Lcom/android/camera/ViewImage$ImageGetter;

    if-nez v3, :cond_33

    .line 1442
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->makeGetter()V

    .line 1445
    :cond_33
    iput-boolean v5, p0, Lcom/android/camera/ViewImage;->mFirst:Z

    .line 1446
    iget v3, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    invoke-direct {p0, v3}, Lcom/android/camera/ViewImage;->setImage(I)V

    .line 1447
    return-void

    .line 1435
    .end local v1           #image:Lcom/android/camera/ImageManager$IImage;
    :cond_3b
    iget v3, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    if-gt v0, v3, :cond_24

    .line 1436
    sub-int v3, v0, v5

    iput v3, p0, Lcom/android/camera/ViewImage;->mCurrentPosition:I

    goto :goto_24
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "b"

    .prologue
    .line 1407
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1409
    invoke-direct {p0}, Lcom/android/camera/ViewImage;->getCurrentUri()Landroid/net/Uri;

    move-result-object v0

    .line 1410
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_12

    .line 1411
    const-string v1, "uri"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1414
    :cond_12
    iget v1, p0, Lcom/android/camera/ViewImage;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1d

    .line 1415
    const-string v1, "slideshow"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1417
    :cond_1d
    return-void
.end method
