.class public Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;
.super Landroid/app/Activity;
.source "PhotoGalleryViewActivity.java"

# interfaces
.implements Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final JOBMANAGER_KEY:Ljava/lang/String; = "gallery"

.field private static final MENU_ID_REFRESH:I = 0x2

.field private static final MENU_ID_SAVE:I = 0x1

.field private static final RC_DOWNLOAD_IMAGE:I = 0x7d0

.field private static final RC_REFRESH:I = 0x7d1

.field private static final SNAP_VELOCITY:I = 0xc8

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private adapter:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

.field private currentViewFileId:J

.field private descView:Landroid/widget/TextView;

.field private display:Landroid/view/Display;

.field private gallery:Landroid/widget/Gallery;

.field private imageView:Landroid/widget/ImageView;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field private mediaFile:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private mfCurrent:Lcom/lge/sns/media/MediaFile;

.field private refreshDialog:Landroid/app/ProgressDialog;

.field private saveStateKeyValue:Ljava/lang/String;

.field private snsId:Ljava/lang/String;

.field private titleProgress:Landroid/widget/ProgressBar;

.field private titleView:Landroid/widget/TextView;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    const-string v0, "FILEID"

    iput-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->saveStateKeyValue:Ljava/lang/String;

    .line 59
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->currentViewFileId:J

    .line 65
    iput-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    .line 73
    iput-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->display:Landroid/view/Display;

    .line 74
    iput-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    .line 75
    iput-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleProgress:Landroid/widget/ProgressBar;

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/IMediaFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;Z)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->updateImageView(Lcom/lge/sns/media/MediaFile;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->adapter:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;)Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->adapter:Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$PhotoViewAdapter;

    return-object p1
.end method

.method static synthetic access$400(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findPosition(Lcom/lge/sns/media/MediaFile;)I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/widget/Gallery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->gallery:Landroid/widget/Gallery;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)J
    .registers 3
    .parameter "x0"

    .prologue
    .line 46
    iget-wide v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->currentViewFileId:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;J)J
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 46
    iput-wide p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->currentViewFileId:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Lcom/lge/sns/media/MediaFile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/widget/ImageView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method private addSnsNameImage()V
    .registers 8

    .prologue
    .line 151
    sget-object v5, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 152
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const/4 v1, 0x0

    .line 153
    .local v1, profile:Lcom/lge/sns/profile/Profile;
    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 154
    .local v3, sns_image:Landroid/widget/ImageView;
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 156
    .local v4, sns_name:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->userName:Ljava/lang/String;

    if-eqz v5, :cond_32

    .line 157
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    :cond_22
    :goto_22
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->snsId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    return-void

    .line 160
    :cond_32
    :try_start_32
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->userId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_39
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_32 .. :try_end_39} :catch_44
    .catch Lcom/lge/sns/SnsException; {:try_start_32 .. :try_end_39} :catch_4a

    move-result-object v1

    .line 169
    :goto_3a
    if-eqz v1, :cond_22

    .line 170
    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 161
    :catch_44
    move-exception v5

    move-object v0, v5

    .line 163
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_3a

    .line 164
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 166
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_3a
.end method

.method private findPosition(Lcom/lge/sns/media/MediaFile;)I
    .registers 5
    .parameter "mf"

    .prologue
    .line 179
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    if-nez v2, :cond_19

    const/4 v2, 0x0

    move v1, v2

    .line 180
    .local v1, l:I
    :goto_6
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_24

    .line 181
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v2, p1}, Lcom/lge/sns/media/MediaFile;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    move v2, v0

    .line 185
    :goto_18
    return v2

    .line 179
    .end local v0           #i:I
    .end local v1           #l:I
    :cond_19
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    move v1, v2

    goto :goto_6

    .line 180
    .restart local v0       #i:I
    .restart local v1       #l:I
    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 185
    :cond_24
    const/4 v2, -0x1

    goto :goto_18
.end method

.method private moveTo(I)V
    .registers 4
    .parameter "position"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    .line 569
    .local v0, mf:Lcom/lge/sns/media/MediaFile;
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v1, p1}, Landroid/widget/Gallery;->setSelection(I)V

    .line 570
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->updateImageView(Lcom/lge/sns/media/MediaFile;Z)V

    .line 571
    return-void
.end method

.method private moveToLeft()V
    .registers 3

    .prologue
    .line 560
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findPosition(Lcom/lge/sns/media/MediaFile;)I

    move-result v0

    .line 561
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_11

    if-lez v0, :cond_11

    .line 562
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->moveTo(I)V

    .line 564
    :cond_11
    return-void
.end method

.method private moveToRight()V
    .registers 4

    .prologue
    .line 553
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findPosition(Lcom/lge/sns/media/MediaFile;)I

    move-result v0

    .line 554
    .local v0, index:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_18

    .line 555
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->moveTo(I)V

    .line 557
    :cond_18
    return-void
.end method

.method private refresh(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 346
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->showDialog(I)V

    .line 347
    invoke-static {}, Lcom/lge/sns/BackgroundJobManager;->getInstance()Lcom/lge/sns/BackgroundJobManager;

    move-result-object v0

    new-instance v1, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$4;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method private saveImage()V
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V

    .line 210
    return-void
.end method

.method private updateImageView(Lcom/lge/sns/media/MediaFile;Z)V
    .registers 10
    .parameter "mf"
    .parameter "retry"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 236
    iput-object p1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    .line 237
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_71

    .line 238
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 243
    :goto_1d
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_77

    .line 244
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->descView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->descView:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    :goto_35
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v3, p1}, Lcom/lge/sns/media/IMediaFacade;->getThumbnailBitmap(Lcom/lge/sns/media/MediaFile;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 252
    .local v2, photo:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7d

    .line 253
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 254
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 255
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v4

    if-ge v3, v4, :cond_70

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->display:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    if-ge v3, v4, :cond_70

    .line 256
    const-string v3, "gallery"

    invoke-static {v3}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v1

    .line 257
    .local v1, jobManager:Lcom/lge/sns/BackgroundJobManager;
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$2;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;Z)V

    .line 294
    .local v0, job:Ljava/lang/Runnable;
    invoke-virtual {v1}, Lcom/lge/sns/BackgroundJobManager;->clearJob()V

    .line 295
    invoke-virtual {v1, v0}, Lcom/lge/sns/BackgroundJobManager;->addJob(Ljava/lang/Runnable;)V

    .line 300
    .end local v0           #job:Ljava/lang/Runnable;
    .end local v1           #jobManager:Lcom/lge/sns/BackgroundJobManager;
    :cond_70
    :goto_70
    return-void

    .line 241
    .end local v2           #photo:Landroid/graphics/Bitmap;
    :cond_71
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1d

    .line 247
    :cond_77
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->descView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_35

    .line 298
    .restart local v2       #photo:Landroid/graphics/Bitmap;
    :cond_7d
    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->imageView:Landroid/widget/ImageView;

    const v4, 0x7f02005f

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_70
.end method


# virtual methods
.method public mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 391
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$5;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 399
    :cond_1c
    return-void
.end method

.method public mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 403
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$6;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 411
    :cond_1c
    return-void
.end method

.method public mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 414
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 415
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$7;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 430
    :cond_1c
    return-void
.end method

.method public mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 434
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$8;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 445
    :cond_1c
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, 0x0

    .line 330
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 332
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    .line 333
    packed-switch p1, :pswitch_data_16

    .line 343
    :cond_a
    :goto_a
    return-void

    .line 335
    :pswitch_b
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mfCurrent:Lcom/lge/sns/media/MediaFile;

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->updateImageView(Lcom/lge/sns/media/MediaFile;Z)V

    goto :goto_a

    .line 338
    :pswitch_11
    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refresh(Z)V

    goto :goto_a

    .line 333
    nop

    :pswitch_data_16
    .packed-switch 0x7d0
        :pswitch_b
        :pswitch_11
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 10
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f030027

    const/4 v6, 0x7

    .line 78
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_c1

    .line 80
    invoke-virtual {p0, v6}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->requestWindowFeature(I)Z

    .line 81
    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->setContentView(I)V

    .line 82
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const v5, 0x7f030002

    invoke-virtual {v4, v6, v5}, Landroid/view/Window;->setFeatureInt(II)V

    .line 87
    :goto_1d
    if-eqz p1, :cond_27

    .line 88
    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->saveStateKeyValue:Ljava/lang/String;

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->currentViewFileId:J

    .line 91
    :cond_27
    const v4, 0x7f080072

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->imageView:Landroid/widget/ImageView;

    .line 92
    const v4, 0x7f080071

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleView:Landroid/widget/TextView;

    .line 93
    const v4, 0x7f080073

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->descView:Landroid/widget/TextView;

    .line 94
    const v4, 0x7f08000d

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->titleProgress:Landroid/widget/ProgressBar;

    .line 95
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 96
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 97
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, dataUri:Landroid/net/Uri;
    iget-wide v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->currentViewFileId:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gtz v4, :cond_c6

    .line 101
    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v4, v0}, Lcom/lge/sns/media/IMediaFacade;->getMediaFile(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFile;

    move-result-object v2

    .line 106
    .local v2, mf:Lcom/lge/sns/media/MediaFile;
    :goto_73
    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->snsId:Ljava/lang/String;

    .line 107
    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->userId:Ljava/lang/String;

    .line 108
    const-string v4, "user_name"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->userName:Ljava/lang/String;

    .line 109
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 110
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->display:Landroid/view/Display;

    .line 112
    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->updateImageView(Lcom/lge/sns/media/MediaFile;Z)V

    .line 113
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v4

    if-nez v4, :cond_a8

    .line 114
    invoke-direct {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->addSnsNameImage()V

    .line 117
    :cond_a8
    const v4, 0x7f08006f

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Gallery;

    iput-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->gallery:Landroid/widget/Gallery;

    .line 118
    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->gallery:Landroid/widget/Gallery;

    invoke-virtual {v4, p0}, Landroid/widget/Gallery;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 119
    new-instance v3, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;

    invoke-direct {v3, p0, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$1;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;Lcom/lge/sns/media/MediaFile;)V

    .line 135
    .local v3, t:Ljava/lang/Thread;
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 136
    return-void

    .line 84
    .end local v0           #dataUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mf:Lcom/lge/sns/media/MediaFile;
    .end local v3           #t:Ljava/lang/Thread;
    :cond_c1
    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->setContentView(I)V

    goto/16 :goto_1d

    .line 103
    .restart local v0       #dataUri:Landroid/net/Uri;
    .restart local v1       #intent:Landroid/content/Intent;
    :cond_c6
    iget-object v4, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-wide v5, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->currentViewFileId:J

    invoke-interface {v4, v5, v6}, Lcom/lge/sns/media/IMediaFacade;->getMediaFile(J)Lcom/lge/sns/media/MediaFile;

    move-result-object v2

    .restart local v2       #mf:Lcom/lge/sns/media/MediaFile;
    goto :goto_73
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 313
    packed-switch p1, :pswitch_data_34

    .line 326
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 315
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    .line 316
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 317
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$3;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity$3;-><init>(Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 324
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 313
    nop

    :pswitch_data_34
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 189
    const v0, 0x7f05001f

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 191
    const/4 v0, 0x2

    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 193
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 309
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/media/IMediaFacade;->removeMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 310
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 303
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFile:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    .line 304
    .local v0, mf:Lcom/lge/sns/media/MediaFile;
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->updateImageView(Lcom/lge/sns/media/MediaFile;Z)V

    .line 305
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 197
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 205
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 199
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->saveImage()V

    move v0, v1

    .line 200
    goto :goto_9

    .line 202
    :pswitch_f
    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->refresh(Z)V

    move v0, v1

    .line 203
    goto :goto_9

    .line 197
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 2
    .parameter "savedInstanceState"

    .prologue
    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 148
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 5
    .parameter "outState"

    .prologue
    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 141
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->saveStateKeyValue:Ljava/lang/String;

    iget-wide v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->currentViewFileId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 142
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .parameter "even"

    .prologue
    .line 525
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_a

    .line 526
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 528
    :cond_a
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 530
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_40

    .line 549
    :cond_16
    :goto_16
    const/4 v2, 0x1

    return v2

    .line 532
    :pswitch_18
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 533
    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 534
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v2

    float-to-int v1, v2

    .line 536
    .local v1, velocityX:I
    const/16 v2, 0xc8

    if-le v1, v2, :cond_38

    .line 537
    invoke-direct {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->moveToLeft()V

    .line 542
    :cond_2b
    :goto_2b
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v2, :cond_16

    .line 543
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2}, Landroid/view/VelocityTracker;->recycle()V

    .line 544
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_16

    .line 538
    :cond_38
    const/16 v2, -0xc8

    if-ge v1, v2, :cond_2b

    .line 539
    invoke-direct {p0}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->moveToRight()V

    goto :goto_2b

    .line 530
    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch
.end method

.method public writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V
    .registers 12
    .parameter "mf"

    .prologue
    .line 213
    const/4 v8, 0x0

    .line 216
    .local v8, orgPic:[B
    :try_start_1
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getMimeType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v3, v4}, Lcom/lge/sns/media/IMediaFacade;->getOrignalMedia(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    :try_end_12
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_1 .. :try_end_12} :catch_34
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_12} :catch_4c

    move-result-object v8

    .line 226
    :goto_13
    new-instance v0, Lcom/lge/sns/media/MediaSdcard;

    invoke-direct {v0}, Lcom/lge/sns/media/MediaSdcard;-><init>()V

    .line 228
    .local v0, inputOp:Lcom/lge/sns/media/MediaSdcard;
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v8, v1}, Lcom/lge/sns/media/MediaSdcard;->writeToDiskImage(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 229
    .local v9, savedFile:Ljava/io/File;
    if-eqz v9, :cond_33

    .line 230
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/sns/media/MediaSdcard;->addToMediaDB(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/media/MediaFile;J)V

    .line 233
    :cond_33
    return-void

    .line 217
    .end local v0           #inputOp:Lcom/lge/sns/media/MediaSdcard;
    .end local v9           #savedFile:Ljava/io/File;
    :catch_34
    move-exception v1

    move-object v6, v1

    .line 218
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 220
    const/16 v1, 0x7d0

    invoke-virtual {p0, v7, v1}, Lcom/lge/sns/media/ui/PhotoGalleryViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 222
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v7           #intent:Landroid/content/Intent;
    :catch_4c
    move-exception v1

    move-object v6, v1

    .line 223
    .local v6, e:Lcom/lge/sns/SnsException;
    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method
