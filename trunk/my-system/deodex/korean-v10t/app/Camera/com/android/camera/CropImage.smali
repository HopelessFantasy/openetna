.class public Lcom/android/camera/CropImage;
.super Landroid/app/Activity;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/CropImage$CropImageView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CropImage"


# instance fields
.field private mAllImages:Lcom/android/camera/ImageManager$IImageList;

.field private mAspectX:I

.field private mAspectY:I

.field mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field mContentResolver:Landroid/content/ContentResolver;

.field mCrop:Lcom/android/camera/HighlightView;

.field mCroppedImage:Landroid/graphics/Bitmap;

.field private mDoFaceDetection:Z

.field private mFaceDetectionDialog:Landroid/app/ProgressDialog;

.field mHandler:Landroid/os/Handler;

.field mImage:Lcom/android/camera/ImageManager$IImage;

.field mImageView:Lcom/android/camera/CropImage$CropImageView;

.field private mOutputX:I

.field private mOutputY:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mSaveUri:Landroid/net/Uri;

.field private mSaving:Z

.field private mSavingProgressDialog:Landroid/app/ProgressDialog;

.field private mScale:Z

.field private mScaleUp:Z

.field private mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 55
    iput-object v1, p0, Lcom/android/camera/CropImage;->mFaceDetectionDialog:Landroid/app/ProgressDialog;

    .line 56
    iput-object v1, p0, Lcom/android/camera/CropImage;->mSavingProgressDialog:Landroid/app/ProgressDialog;

    .line 58
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/android/camera/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 59
    iput-object v1, p0, Lcom/android/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 62
    iput-boolean v2, p0, Lcom/android/camera/CropImage;->mDoFaceDetection:Z

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/CropImage;->mCircleCrop:Z

    .line 67
    iput-boolean v2, p0, Lcom/android/camera/CropImage;->mScaleUp:Z

    .line 642
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/camera/CropImage;->mHandler:Landroid/os/Handler;

    .line 644
    new-instance v0, Lcom/android/camera/CropImage$4;

    invoke-direct {v0, p0}, Lcom/android/camera/CropImage$4;-><init>(Lcom/android/camera/CropImage;)V

    iput-object v0, p0, Lcom/android/camera/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->mSaving:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/camera/CropImage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/CropImage;->mSaving:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/camera/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->mWaitingToPick:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/camera/CropImage;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/camera/CropImage;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/android/camera/CropImage;->mWaitingToPick:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/camera/CropImage;)Landroid/graphics/Bitmap$CompressFormat;
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/camera/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/camera/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CropImage;->mAspectX:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/CropImage;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/camera/CropImage;->closeProgressDialog()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/camera/CropImage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CropImage;->mFaceDetectionDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/camera/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/CropImage;IILandroid/graphics/Canvas;)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/CropImage;->fillCanvas(IILandroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CropImage;->mOutputX:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/CropImage;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget v0, p0, Lcom/android/camera/CropImage;->mOutputY:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->mScale:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/CropImage;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/camera/CropImage;->mScaleUp:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/camera/CropImage;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/camera/CropImage;->mSavingProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private declared-synchronized closeProgressDialog()V
    .registers 2

    .prologue
    .line 793
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/camera/CropImage;->mFaceDetectionDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_d

    .line 794
    iget-object v0, p0, Lcom/android/camera/CropImage;->mFaceDetectionDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 795
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImage;->mFaceDetectionDialog:Landroid/app/ProgressDialog;

    .line 797
    :cond_d
    iget-object v0, p0, Lcom/android/camera/CropImage;->mSavingProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_19

    .line 798
    iget-object v0, p0, Lcom/android/camera/CropImage;->mSavingProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 799
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/CropImage;->mSavingProgressDialog:Landroid/app/ProgressDialog;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 801
    :cond_19
    monitor-exit p0

    return-void

    .line 793
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private fillCanvas(IILandroid/graphics/Canvas;)V
    .registers 10
    .parameter "width"
    .parameter "height"
    .parameter "c"

    .prologue
    const/4 v1, 0x0

    .line 330
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 331
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 332
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 333
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 334
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 335
    int-to-float v3, p1

    int-to-float v4, p2

    move-object v0, p3

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 336
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x1

    const-string v6, "noFaceDetection"

    .line 340
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 341
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 343
    invoke-virtual {p0, v8}, Lcom/android/camera/CropImage;->requestWindowFeature(I)Z

    .line 344
    const v6, 0x7f030001

    invoke-virtual {p0, v6}, Lcom/android/camera/CropImage;->setContentView(I)V

    .line 346
    const v6, 0x7f0b0008

    invoke-virtual {p0, v6}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/camera/CropImage$CropImageView;

    iput-object v6, p0, Lcom/android/camera/CropImage;->mImageView:Lcom/android/camera/CropImage$CropImageView;

    .line 348
    invoke-static {p0}, Lcom/android/camera/MenuHelper;->showStorageToast(Landroid/app/Activity;)V

    .line 351
    :try_start_23
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 352
    .local v4, intent:Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 355
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_be

    .line 356
    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_42

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto :goto_35

    .line 360
    :cond_42
    const-string v6, "circleCrop"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_53

    .line 361
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/camera/CropImage;->mCircleCrop:Z

    .line 362
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/camera/CropImage;->mAspectX:I

    .line 363
    const/4 v6, 0x1

    iput v6, p0, Lcom/android/camera/CropImage;->mAspectY:I

    .line 365
    :cond_53
    const-string v6, "output"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/Uri;

    iput-object v6, p0, Lcom/android/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 366
    iget-object v6, p0, Lcom/android/camera/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v6, :cond_6f

    .line 367
    const-string v6, "outputFormat"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 368
    .local v0, compressFormatString:Ljava/lang/String;
    if-eqz v0, :cond_6f

    .line 369
    invoke-static {v0}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CropImage;->mSaveFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 371
    .end local v0           #compressFormatString:Ljava/lang/String;
    :cond_6f
    const-string v6, "data"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/graphics/Bitmap;

    iput-object v6, p0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 372
    const-string v6, "aspectX"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/CropImage;->mAspectX:I

    .line 373
    const-string v6, "aspectY"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/CropImage;->mAspectY:I

    .line 374
    const-string v6, "outputX"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/CropImage;->mOutputX:I

    .line 375
    const-string v6, "outputY"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lcom/android/camera/CropImage;->mOutputY:I

    .line 376
    const-string v6, "scale"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/CropImage;->mScale:Z

    .line 377
    const-string v6, "scaleUpIfNeeded"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/camera/CropImage;->mScaleUp:Z

    .line 378
    const-string v6, "noFaceDetection"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_eb

    const-string v6, "noFaceDetection"

    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_e9

    move v6, v8

    :goto_bc
    iput-boolean v6, p0, Lcom/android/camera/CropImage;->mDoFaceDetection:Z

    .line 381
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_be
    iget-object v6, p0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_e1

    .line 382
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 383
    .local v5, target:Landroid/net/Uri;
    const/4 v6, 0x1

    invoke-static {v5, p0, v6}, Lcom/android/camera/ImageManager;->makeImageList(Landroid/net/Uri;Landroid/content/Context;I)Lcom/android/camera/ImageManager$IImageList;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CropImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    .line 384
    iget-object v6, p0, Lcom/android/camera/CropImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v6, v5}, Lcom/android/camera/ImageManager$IImageList;->getImageForUri(Landroid/net/Uri;)Lcom/android/camera/ImageManager$IImage;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    .line 385
    iget-object v6, p0, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    if-eqz v6, :cond_e1

    .line 389
    iget-object v6, p0, Lcom/android/camera/CropImage;->mImage:Lcom/android/camera/ImageManager$IImage;

    invoke-interface {v6}, Lcom/android/camera/ImageManager$IImage;->thumbBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, p0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 395
    .end local v5           #target:Landroid/net/Uri;
    :cond_e1
    iget-object v6, p0, Lcom/android/camera/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_ed

    .line 396
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V

    .line 635
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :goto_e8
    return-void

    .line 378
    .restart local v2       #extras:Landroid/os/Bundle;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #intent:Landroid/content/Intent;
    :cond_e9
    const/4 v6, 0x0

    goto :goto_bc

    :cond_eb
    move v6, v8

    goto :goto_bc

    .line 400
    .end local v3           #i$:Ljava/util/Iterator;
    :cond_ed
    iget-object v6, p0, Lcom/android/camera/CropImage;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/camera/CropImage$1;

    invoke-direct {v7, p0}, Lcom/android/camera/CropImage$1;-><init>(Lcom/android/camera/CropImage;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_f9
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_f9} :catch_118

    .line 438
    .end local v2           #extras:Landroid/os/Bundle;
    .end local v4           #intent:Landroid/content/Intent;
    :goto_f9
    const v6, 0x7f0b000a

    invoke-virtual {p0, v6}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/camera/CropImage$2;

    invoke-direct {v7, p0}, Lcom/android/camera/CropImage$2;-><init>(Lcom/android/camera/CropImage;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    const v6, 0x7f0b0009

    invoke-virtual {p0, v6}, Lcom/android/camera/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/camera/CropImage$3;

    invoke-direct {v7, p0}, Lcom/android/camera/CropImage$3;-><init>(Lcom/android/camera/CropImage;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_e8

    .line 433
    :catch_118
    move-exception v6

    move-object v1, v6

    .line 434
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "CropImage"

    const-string v7, "Failed to load bitmap"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    invoke-virtual {p0}, Lcom/android/camera/CropImage;->finish()V

    goto :goto_f9
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 3
    .parameter "menu"

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .registers 1

    .prologue
    .line 639
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 640
    return-void
.end method

.method public onStop()V
    .registers 2

    .prologue
    .line 786
    invoke-direct {p0}, Lcom/android/camera/CropImage;->closeProgressDialog()V

    .line 787
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 788
    iget-object v0, p0, Lcom/android/camera/CropImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    if-eqz v0, :cond_f

    .line 789
    iget-object v0, p0, Lcom/android/camera/CropImage;->mAllImages:Lcom/android/camera/ImageManager$IImageList;

    invoke-interface {v0}, Lcom/android/camera/ImageManager$IImageList;->deactivate()V

    .line 790
    :cond_f
    return-void
.end method
