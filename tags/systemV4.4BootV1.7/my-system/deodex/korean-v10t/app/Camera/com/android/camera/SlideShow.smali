.class public Lcom/android/camera/SlideShow;
.super Landroid/app/Activity;
.source "SlideShow.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SlideShow$FileImageList;,
        Lcom/android/camera/SlideShow$ImageViewTouch;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SlideShow"

.field static final sLag:I = 0x7d0

.field static final sNextImageInterval:I = 0xbb8


# instance fields
.field private mCurrentPosition:I

.field private final mHandler:Landroid/os/Handler;

.field private mImageList:Lcom/android/camera/ImageManager$IImageList;

.field private mNextImageRunnable:Ljava/lang/Runnable;

.field private mPosted:Z

.field private mSwitcher:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 60
    iput v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    .line 62
    iput-boolean v0, p0, Lcom/android/camera/SlideShow;->mPosted:Z

    .line 245
    new-instance v0, Lcom/android/camera/SlideShow$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SlideShow$1;-><init>(Lcom/android/camera/SlideShow;)V

    iput-object v0, p0, Lcom/android/camera/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    .line 276
    new-instance v0, Lcom/android/camera/SlideShow$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SlideShow$2;-><init>(Lcom/android/camera/SlideShow;)V

    iput-object v0, p0, Lcom/android/camera/SlideShow;->mHandler:Landroid/os/Handler;

    .line 282
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SlideShow;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->cancelPost()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/SlideShow;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->loadNextImage()V

    return-void
.end method

.method private cancelPost()V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/camera/SlideShow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 224
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SlideShow;->mPosted:Z

    .line 225
    return-void
.end method

.method private loadImage()V
    .registers 5

    .prologue
    .line 233
    iget-object v2, p0, Lcom/android/camera/SlideShow;->mImageList:Lcom/android/camera/ImageManager$IImageList;

    iget v3, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    invoke-interface {v2, v3}, Lcom/android/camera/ImageManager$IImageList;->getImageAt(I)Lcom/android/camera/ImageManager$IImage;

    move-result-object v1

    .line 234
    .local v1, image:Lcom/android/camera/ImageManager$IImage;
    if-nez v1, :cond_b

    .line 243
    :cond_a
    :goto_a
    return-void

    .line 237
    :cond_b
    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 238
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_a

    .line 241
    iget-object v2, p0, Lcom/android/camera/SlideShow;->mSwitcher:Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->post()V

    goto :goto_a
.end method

.method private loadNextImage()V
    .registers 3

    .prologue
    .line 254
    iget v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    iget-object v1, p0, Lcom/android/camera/SlideShow;->mImageList:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v1}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v1

    if-lt v0, v1, :cond_11

    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    .line 256
    :cond_11
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->loadImage()V

    .line 257
    return-void
.end method

.method private loadPreviousImage()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 260
    iget v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    if-nez v0, :cond_12

    .line 261
    iget-object v0, p0, Lcom/android/camera/SlideShow;->mImageList:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->getCount()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    .line 265
    :goto_e
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->loadImage()V

    .line 266
    return-void

    .line 263
    :cond_12
    iget v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    goto :goto_e
.end method

.method private post()V
    .registers 5

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/camera/SlideShow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/SlideShow;->mNextImageRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SlideShow;->mPosted:Z

    .line 230
    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 269
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 270
    .local v0, i:Landroid/widget/ImageView;
    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 271
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 272
    new-instance v1, Landroid/widget/Gallery$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    const/16 v1, 0x80

    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/SlideShow;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 69
    .local v0, wp:Landroid/view/Window;
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 71
    const v1, 0x7f03000e

    invoke-virtual {p0, v1}, Lcom/android/camera/SlideShow;->setContentView(I)V

    .line 73
    const v1, 0x7f0b003d

    invoke-virtual {p0, v1}, Lcom/android/camera/SlideShow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/camera/SlideShow;->mSwitcher:Landroid/widget/ImageView;

    .line 76
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 5
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 201
    packed-switch p1, :pswitch_data_26

    .line 219
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_8
    return v0

    .line 203
    :pswitch_9
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->cancelPost()V

    .line 204
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->loadPreviousImage()V

    move v0, v1

    .line 205
    goto :goto_8

    .line 208
    :pswitch_11
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->cancelPost()V

    .line 209
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->loadNextImage()V

    move v0, v1

    .line 210
    goto :goto_8

    .line 213
    :pswitch_19
    iget-boolean v0, p0, Lcom/android/camera/SlideShow;->mPosted:Z

    if-eqz v0, :cond_22

    .line 214
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->cancelPost()V

    :goto_20
    move v0, v1

    .line 217
    goto :goto_8

    .line 216
    :cond_22
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->loadNextImage()V

    goto :goto_20

    .line 201
    :pswitch_data_26
    .packed-switch 0x15
        :pswitch_9
        :pswitch_11
        :pswitch_19
    .end packed-switch
.end method

.method protected onPause()V
    .registers 1

    .prologue
    .line 92
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 93
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->cancelPost()V

    .line 94
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 81
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/android/camera/SlideShow;->mImageList:Lcom/android/camera/ImageManager$IImageList;

    if-nez v0, :cond_11

    .line 84
    new-instance v0, Lcom/android/camera/SlideShow$FileImageList;

    invoke-direct {v0, p0}, Lcom/android/camera/SlideShow$FileImageList;-><init>(Lcom/android/camera/SlideShow;)V

    iput-object v0, p0, Lcom/android/camera/SlideShow;->mImageList:Lcom/android/camera/ImageManager$IImageList;

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SlideShow;->mCurrentPosition:I

    .line 87
    :cond_11
    invoke-direct {p0}, Lcom/android/camera/SlideShow;->loadImage()V

    .line 88
    return-void
.end method
