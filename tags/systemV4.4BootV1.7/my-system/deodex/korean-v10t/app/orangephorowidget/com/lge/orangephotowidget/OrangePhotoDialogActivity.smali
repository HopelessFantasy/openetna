.class public Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;
.super Landroid/app/Activity;
.source "OrangePhotoDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$OrangePhotoGestureListener;
    }
.end annotation


# static fields
.field private static final ORGPHOTO_PREFER_NAME:Ljava/lang/String; = "com.lge.orangephotowidget"

.field public static final ORGSETIMAGE:Ljava/lang/String; = "orgwidgetsetimage"

.field public static final ORGWIDGETGONE:Ljava/lang/String; = "orgwidgetgone"

.field private static final PHOTO_PICKED_WITH_DATA:I = 0xbcd

.field public static final SETNOIMAGE:Ljava/lang/String; = "setnoimage"

.field private static final TAG:Ljava/lang/String; = "OrangePhotoDialogActivity"

.field private static final TAG_COMPOSER:I = 0x1


# instance fields
.field private bUploadButton:Z

.field public content_size:I

.field public end_position:I

.field private mBitmaps:[Landroid/graphics/Bitmap;

.field mContentResolver:Landroid/content/ContentResolver;

.field private mGalleryButton:Landroid/widget/ImageButton;

.field mGalleryButtonListener:Landroid/view/View$OnClickListener;

.field public mGalleryFlag:Z

.field mGestureDetector:Landroid/view/GestureDetector;

.field private mImageView:Landroid/widget/ImageView;

.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPhoto:Landroid/graphics/Bitmap;

.field private mPhotoChanged:Z

.field private mPhotoImageView:Landroid/widget/ImageView;

.field private mPhotoPresent:Z

.field private mPlayButton:Landroid/widget/ImageButton;

.field mPlayButtonListener:Landroid/view/View$OnClickListener;

.field private mPreviousButton:Landroid/widget/ImageButton;

.field mPreviousButtonListener:Landroid/view/View$OnClickListener;

.field mRunnable:Ljava/lang/Runnable;

.field mSetImageListener:Landroid/view/View$OnClickListener;

.field private mStopButton:Landroid/widget/ImageButton;

.field private mTextView:Landroid/widget/TextView;

.field public mTimeHandler:Landroid/os/Handler;

.field private mTimer:Ljava/util/Timer;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mUploadButton:Landroid/widget/ImageButton;

.field private mname:Ljava/lang/String;

.field private mpath:Ljava/lang/String;

.field private mposition:I

.field muploadButtonListener:Landroid/view/View$OnClickListener;

.field private slideshow_button:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 90
    iput-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 103
    iput-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->bUploadButton:Z

    .line 105
    iput-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->slideshow_button:Z

    .line 106
    iput v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    .line 107
    iput v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->end_position:I

    .line 108
    iput-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryFlag:Z

    .line 112
    iput-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPhotoChanged:Z

    .line 114
    iput-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPhotoPresent:Z

    .line 123
    iput-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 390
    new-instance v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$2;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryButtonListener:Landroid/view/View$OnClickListener;

    .line 517
    new-instance v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$3;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mSetImageListener:Landroid/view/View$OnClickListener;

    .line 526
    new-instance v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$4;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$4;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    .line 534
    new-instance v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$5;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$5;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPreviousButtonListener:Landroid/view/View$OnClickListener;

    .line 544
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mTimeHandler:Landroid/os/Handler;

    .line 546
    new-instance v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$6;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->muploadButtonListener:Landroid/view/View$OnClickListener;

    .line 569
    new-instance v0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$7;

    invoke-direct {v0, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$7;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mRunnable:Ljava/lang/Runnable;

    .line 1021
    return-void
.end method

.method private SetNextImage()V
    .registers 3

    .prologue
    .line 716
    :cond_0
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 718
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    if-le v0, v1, :cond_f

    .line 719
    const/4 v0, 0x1

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 720
    :cond_f
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1d

    .line 726
    :goto_17
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->show(I)V

    .line 729
    return-void

    .line 722
    :cond_1d
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_check(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_17
.end method

.method private SetNextImage_slideshow()V
    .registers 5

    .prologue
    .line 733
    invoke-direct {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->SetNextImage()V

    .line 734
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 735
    return-void
.end method

.method private SetPrevImage()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 741
    :cond_1
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 743
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    if-ge v0, v2, :cond_e

    .line 744
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 745
    :cond_e
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_1c

    .line 751
    :goto_16
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->show(I)V

    .line 754
    return-void

    .line 747
    :cond_1c
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_check(I)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_16
.end method

.method static synthetic access$002(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->bUploadButton:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->doPickPhotoAction()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    return v0
.end method

.method static synthetic access$300(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->SetNextImage()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->SetPrevImage()V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->slideshow_button:Z

    return v0
.end method

.method static synthetic access$502(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->slideshow_button:Z

    return p1
.end method

.method static synthetic access$600(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)Landroid/widget/ImageButton;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUploadButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->SetNextImage_slideshow()V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)[Landroid/graphics/Bitmap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static computeSampleSize(III)I
    .registers 8
    .parameter "w"
    .parameter "h"
    .parameter "target"

    .prologue
    const/4 v4, 0x1

    .line 970
    div-int v2, p0, p2

    .line 971
    .local v2, candidateW:I
    div-int v1, p1, p2

    .line 972
    .local v1, candidateH:I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 974
    .local v0, candidate:I
    if-nez v0, :cond_d

    move v3, v4

    .line 990
    :goto_c
    return v3

    .line 977
    :cond_d
    if-le v0, v4, :cond_17

    .line 978
    if-le p0, p2, :cond_17

    div-int v3, p0, v0

    if-ge v3, p2, :cond_17

    .line 979
    add-int/lit8 v0, v0, -0x1

    .line 982
    :cond_17
    if-le v0, v4, :cond_21

    .line 983
    if-le p1, p2, :cond_21

    div-int v3, p1, v0

    if-ge v3, p2, :cond_21

    .line 984
    add-int/lit8 v0, v0, -0x1

    :cond_21
    move v3, v0

    .line 990
    goto :goto_c
.end method

.method private doPickPhotoAction()V
    .registers 4

    .prologue
    .line 408
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 410
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    :try_start_d
    const-string v1, "return-data"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 418
    const/16 v1, 0xbcd

    invoke-virtual {p0, v0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_18
    .catch Landroid/content/ActivityNotFoundException; {:try_start_d .. :try_end_18} :catch_19

    .line 427
    :goto_18
    return-void

    .line 419
    :catch_19
    move-exception v1

    goto :goto_18
.end method

.method private declared-synchronized getThumbnail(I)Landroid/graphics/Bitmap;
    .registers 5
    .parameter "pos"

    .prologue
    .line 758
    monitor-enter p0

    const/4 v0, 0x0

    .line 760
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_2
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    if-nez v1, :cond_10

    .line 761
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->makeThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, p1

    .line 763
    :cond_10
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    aget-object v0, v1, p1

    .line 765
    const/4 v1, 0x3

    invoke-direct {p0, p1, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->runDecodeThreads(II)V
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1a

    .line 767
    monitor-exit p0

    return-object v0

    .line 758
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private loadPreferences()I
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 614
    const-string v0, "com.lge.orangephotowidget"

    invoke-virtual {p0, v0, v12}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 616
    .local v9, prefs:Landroid/content/SharedPreferences;
    const-string v0, "PhotoPath"

    const-string v3, ""

    invoke-interface {v9, v0, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 618
    .local v10, search_path:Ljava/lang/String;
    const/4 v11, 0x1

    .line 619
    .local v11, search_position:I
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, mUri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 622
    invoke-virtual/range {v0 .. v5}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 630
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3f

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 633
    const/4 v8, 0x0

    .local v8, j:I
    :goto_28
    iget v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    if-ge v8, v0, :cond_3b

    .line 635
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 637
    .local v7, current_path:Ljava/lang/String;
    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 638
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 649
    .end local v7           #current_path:Ljava/lang/String;
    :cond_3b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 650
    const/4 v6, 0x0

    .line 655
    .end local v8           #j:I
    :cond_3f
    return v11

    .line 645
    .restart local v7       #current_path:Ljava/lang/String;
    .restart local v8       #j:I
    :cond_40
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 633
    add-int/lit8 v8, v8, 0x1

    goto :goto_28
.end method

.method private declared-synchronized runDecodeThreads(II)V
    .registers 7
    .parameter "center_pos"
    .parameter "count"

    .prologue
    .line 662
    monitor-enter p0

    sub-int v2, p1, p2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 663
    .local v0, left_delete_pos:I
    if-lez v0, :cond_11

    :try_start_8
    iget v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    if-gt v0, v2, :cond_11

    .line 664
    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 666
    :cond_11
    add-int v2, p1, p2

    add-int/lit8 v1, v2, 0x1

    .line 667
    .local v1, right_delete_pos:I
    if-lez v1, :cond_20

    iget v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    if-gt v1, v2, :cond_20

    .line 668
    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 671
    :cond_20
    new-instance v2, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$8;

    const-string v3, "Forward"

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$8;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Ljava/lang/String;II)V

    invoke-virtual {v2}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$8;->start()V

    .line 690
    new-instance v2, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;

    const-string v3, "Back"

    invoke-direct {v2, p0, v3, p1, p2}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;Ljava/lang/String;II)V

    invoke-virtual {v2}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$9;->start()V
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_36

    .line 707
    monitor-exit p0

    return-void

    .line 662
    .end local v1           #right_delete_pos:I
    :catchall_36
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private searchposition(Landroid/net/Uri;)I
    .registers 5
    .parameter "data_uri"

    .prologue
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, search_path:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    sget-object v2, Lcom/lge/orangephotowidget/PhotoWidgetList;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1d

    .line 501
    sget-object v2, Lcom/lge/orangephotowidget/PhotoWidgetList;->items:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;

    iget-object v1, v2, Lcom/lge/orangephotowidget/PhotoWidgetList$FileInfo;->mFilePath:Ljava/lang/String;

    .line 504
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    if-ne v1, v2, :cond_1a

    .line 500
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 514
    :cond_1d
    iget v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    return v2
.end method


# virtual methods
.method public SetPreference(I)V
    .registers 11
    .parameter "pos"

    .prologue
    const/4 v2, 0x0

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, current_Uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 584
    invoke-virtual/range {v0 .. v5}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 590
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_3a

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 591
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mname:Ljava/lang/String;

    .line 592
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mpath:Ljava/lang/String;

    .line 595
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 596
    const/4 v6, 0x0

    .line 600
    :cond_3a
    const-string v0, "com.lge.orangephotowidget"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 601
    .local v8, prefs:Landroid/content/SharedPreferences;
    invoke-interface {v8}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 602
    .local v7, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "PhotoID"

    invoke-interface {v7, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 603
    const-string v0, "PhotoPath"

    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mpath:Ljava/lang/String;

    invoke-interface {v7, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 604
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 607
    return-void
.end method

.method public content_check(I)Ljava/lang/Boolean;
    .registers 12
    .parameter "mposition"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/images/media/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, content_uri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 931
    invoke-virtual/range {v0 .. v5}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 937
    .local v6, cur:Landroid/database/Cursor;
    if-eqz v6, :cond_46

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_46

    .line 939
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/lge/lgdrm/DrmManager;->isDRM(Ljava/lang/String;)I

    move-result v7

    .line 941
    .local v7, drm:I
    if-lez v7, :cond_3d

    .line 943
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 944
    const/4 v6, 0x0

    .line 945
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 957
    .end local v7           #drm:I
    :goto_3c
    return-object v0

    .line 948
    .restart local v7       #drm:I
    :cond_3d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 949
    const/4 v6, 0x0

    .line 950
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3c

    .line 957
    .end local v7           #drm:I
    :cond_46
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3c
.end method

.method public getfullitem()V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 476
    const-string v0, "content://media/external/images/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, mUri:Landroid/net/Uri;
    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 478
    invoke-virtual/range {v0 .. v5}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 483
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_2b

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 484
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    .line 485
    invoke-interface {v6}, Landroid/database/Cursor;->moveToLast()Z

    .line 486
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->end_position:I

    .line 489
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 490
    const/4 v6, 0x0

    .line 495
    :cond_2b
    return-void
.end method

.method declared-synchronized makeThumbnail(I)Landroid/graphics/Bitmap;
    .registers 15
    .parameter "show_mposition"

    .prologue
    .line 785
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://media/external/images/media/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 789
    .local v1, mUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 790
    .local v8, content_path:Ljava/lang/String;
    const/4 v9, 0x0

    .line 791
    .local v9, content_size_byte:I
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 796
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_39

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 797
    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 798
    const/4 v0, 0x2

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 801
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 802
    const/4 v7, 0x0

    .line 816
    :cond_39
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 817
    new-instance v12, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v12}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 818
    .local v12, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v0, 0x1

    iput-boolean v0, v12, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 826
    invoke-virtual {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_4e
    .catchall {:try_start_1 .. :try_end_4e} :catchall_80

    .line 827
    const/4 v11, 0x0

    .line 829
    .local v11, input:Landroid/os/ParcelFileDescriptor;
    :try_start_4f
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "r"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 830
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2, v12}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5f
    .catchall {:try_start_4f .. :try_end_5f} :catchall_80
    .catch Ljava/io/FileNotFoundException; {:try_start_4f .. :try_end_5f} :catch_7a

    .line 839
    :goto_5f
    if-eqz v11, :cond_64

    .line 840
    :try_start_61
    invoke-virtual {v11}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_80
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_64} :catch_83

    .line 845
    :cond_64
    :goto_64
    :try_start_64
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget v2, v12, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v12, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/16 v4, 0x9f

    invoke-static {v2, v3, v4}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->computeSampleSize(III)I

    move-result v2

    iput v2, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 848
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-static {v8, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_77
    .catchall {:try_start_64 .. :try_end_77} :catchall_80

    move-result-object v6

    .line 873
    .local v6, bitmap:Landroid/graphics/Bitmap;
    monitor-exit p0

    return-object v6

    .line 831
    .end local v6           #bitmap:Landroid/graphics/Bitmap;
    :catch_7a
    move-exception v0

    move-object v10, v0

    .line 833
    .local v10, e:Ljava/io/FileNotFoundException;
    :try_start_7c
    invoke-virtual {v10}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_5f

    .line 785
    .end local v1           #mUri:Landroid/net/Uri;
    .end local v7           #c:Landroid/database/Cursor;
    .end local v8           #content_path:Ljava/lang/String;
    .end local v9           #content_size_byte:I
    .end local v10           #e:Ljava/io/FileNotFoundException;
    .end local v11           #input:Landroid/os/ParcelFileDescriptor;
    .end local v12           #options:Landroid/graphics/BitmapFactory$Options;
    :catchall_80
    move-exception v0

    monitor-exit p0

    throw v0

    .line 842
    .restart local v1       #mUri:Landroid/net/Uri;
    .restart local v7       #c:Landroid/database/Cursor;
    .restart local v8       #content_path:Ljava/lang/String;
    .restart local v9       #content_size_byte:I
    .restart local v11       #input:Landroid/os/ParcelFileDescriptor;
    .restart local v12       #options:Landroid/graphics/BitmapFactory$Options;
    :catch_83
    move-exception v0

    goto :goto_64
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 436
    const/4 v3, -0x1

    if-eq p2, v3, :cond_4

    .line 473
    :cond_3
    :goto_3
    return-void

    .line 439
    :cond_4
    packed-switch p1, :pswitch_data_3a

    goto :goto_3

    .line 444
    :pswitch_8
    if-eqz p3, :cond_3

    .line 449
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 453
    .local v0, data_uri:Landroid/net/Uri;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_f
    iget v3, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->end_position:I

    add-int/lit8 v3, v3, 0x1

    if-ge v1, v3, :cond_3

    .line 455
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/images/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 457
    .local v2, search_uri:Landroid/net/Uri;
    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 459
    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->show(I)V

    goto :goto_3

    .line 453
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 439
    nop

    :pswitch_data_3a
    .packed-switch 0xbcd
        :pswitch_8
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x0

    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 136
    invoke-virtual {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->getfullitem()V

    .line 137
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    if-eqz v1, :cond_c7

    .line 138
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->requestWindowFeature(I)Z

    .line 140
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->setContentView(I)V

    .line 143
    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mImageView:Landroid/widget/ImageView;

    .line 144
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mTextView:Landroid/widget/TextView;

    .line 145
    const v1, 0x7f070009

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPlayButton:Landroid/widget/ImageButton;

    .line 146
    const v1, 0x7f070008

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPreviousButton:Landroid/widget/ImageButton;

    .line 147
    const v1, 0x7f07000a

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryButton:Landroid/widget/ImageButton;

    .line 148
    const v1, 0x7f070007

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUploadButton:Landroid/widget/ImageButton;

    .line 150
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPlayButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPlayButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPreviousButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mPreviousButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUploadButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->muploadButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    invoke-direct {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->loadPreferences()I

    move-result v1

    iput v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 158
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$OrangePhotoGestureListener;

    invoke-direct {v2, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$OrangePhotoGestureListener;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    invoke-direct {v1, p0, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGestureDetector:Landroid/view/GestureDetector;

    .line 162
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->end_position:I

    iput v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    .line 164
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_9c

    .line 165
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8e
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-ge v0, v1, :cond_9a

    .line 166
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    aput-object v3, v1, v0

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 167
    :cond_9a
    iput-object v3, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 171
    .end local v0           #i:I
    :cond_9c
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mBitmaps:[Landroid/graphics/Bitmap;

    .line 173
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a5
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_size:I

    if-ge v0, v1, :cond_b5

    .line 174
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->content_check(I)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_be

    .line 184
    :cond_b5
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->show(I)V

    .line 220
    invoke-virtual {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->registerExternalStorageListener()V

    .line 281
    .end local v0           #i:I
    :goto_bd
    return-void

    .line 180
    .restart local v0       #i:I
    :cond_be
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_a5

    .line 278
    .end local v0           #i:I
    :cond_c7
    invoke-virtual {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->finish()V

    goto :goto_bd
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_9

    .line 383
    iget-object v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 385
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 386
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 917
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onPause()V
    .registers 4

    .prologue
    .line 341
    iget-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->bUploadButton:Z

    if-nez v1, :cond_17

    .line 343
    iget v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    invoke-virtual {p0, v1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->SetPreference(I)V

    .line 344
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "orgwidgetsetimage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 345
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 347
    .end local v0           #intent:Landroid/content/Intent;
    :cond_17
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->bUploadButton:Z

    .line 348
    iget-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->slideshow_button:Z

    if-eqz v1, :cond_2d

    .line 349
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUploadButton:Landroid/widget/ImageButton;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 352
    :cond_2d
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 353
    return-void
.end method

.method protected onResume()V
    .registers 6

    .prologue
    .line 325
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "orgwidgetgone"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 326
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 328
    iget-boolean v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->slideshow_button:Z

    if-eqz v1, :cond_23

    .line 329
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mTimeHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 330
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUploadButton:Landroid/widget/ImageButton;

    const v2, 0x7f020019

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 333
    :cond_23
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 334
    return-void
.end method

.method protected onStart()V
    .registers 1

    .prologue
    .line 318
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 319
    return-void
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 369
    iget-boolean v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryFlag:Z

    if-nez v0, :cond_7

    .line 370
    invoke-virtual {p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->finish()V

    .line 372
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGalleryFlag:Z

    .line 373
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 374
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "ev"

    .prologue
    .line 996
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 997
    .local v0, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1000
    .local v1, y:F
    iget-object v2, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 1002
    const/4 v2, 0x1

    .line 1004
    :goto_11
    return v2

    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_11
.end method

.method public registerExternalStorageListener()V
    .registers 3

    .prologue
    .line 285
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1f

    .line 286
    new-instance v1, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity$1;-><init>(Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;)V

    iput-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 304
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 305
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 307
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 308
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 310
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_1f
    return-void
.end method

.method public show(I)V
    .registers 4
    .parameter "show_mposition"

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->getThumbnail(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 880
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 908
    iput p1, p0, Lcom/lge/orangephotowidget/OrangePhotoDialogActivity;->mposition:I

    .line 911
    return-void
.end method

.method public takeKeyEvents(Z)V
    .registers 2
    .parameter "get"

    .prologue
    .line 924
    invoke-super {p0, p1}, Landroid/app/Activity;->takeKeyEvents(Z)V

    .line 925
    return-void
.end method
