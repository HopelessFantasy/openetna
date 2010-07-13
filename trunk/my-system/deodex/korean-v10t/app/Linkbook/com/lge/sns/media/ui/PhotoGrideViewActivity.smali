.class public Lcom/lge/sns/media/ui/PhotoGrideViewActivity;
.super Landroid/app/Activity;
.source "PhotoGrideViewActivity.java"

# interfaces
.implements Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
.implements Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final GALLERY:Ljava/lang/String; = "gallery"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final MENU_ID_REFRESH:I = 0x2

.field private static final MENU_ID_UPLOAD:I = 0x1

.field private static final PHOTO_PICKED:I = 0x7d1

.field private static final RC_SIGNIN:I = 0x7d2

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private adapter:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

.field private folderId:Ljava/lang/String;

.field private mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field private myPhotos:Z

.field profileFolder:Z

.field private refreshDialog:Landroid/app/ProgressDialog;

.field private snsId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->myPhotos:Z

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->profileFolder:Z

    .line 375
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->uploadImage()V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/IMediaFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->adapter:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    return-object v0
.end method

.method private addSnsNameImage()V
    .registers 8

    .prologue
    .line 134
    sget-object v5, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v5, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v2

    .line 135
    .local v2, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const/4 v1, 0x0

    .line 136
    .local v1, profile:Lcom/lge/sns/profile/Profile;
    const v5, 0x7f08000b

    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 137
    .local v3, sns_image:Landroid/widget/ImageView;
    const v5, 0x7f08000c

    invoke-virtual {p0, v5}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 139
    .local v4, sns_name:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userName:Ljava/lang/String;

    if-eqz v5, :cond_32

    .line 140
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    :cond_22
    :goto_22
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    invoke-interface {v5, v6}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    return-void

    .line 143
    :cond_32
    :try_start_32
    iget-object v5, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    invoke-interface {v2, v5, v6}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_39
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_32 .. :try_end_39} :catch_44
    .catch Lcom/lge/sns/SnsException; {:try_start_32 .. :try_end_39} :catch_4a

    move-result-object v1

    .line 152
    :goto_3a
    if-eqz v1, :cond_22

    .line 153
    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_22

    .line 144
    :catch_44
    move-exception v5

    move-object v0, v5

    .line 146
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_3a

    .line 147
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_4a
    move-exception v5

    move-object v0, v5

    .line 149
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_3a
.end method

.method private refresh(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 185
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->showDialog(I)V

    .line 186
    invoke-static {}, Lcom/lge/sns/BackgroundJobManager;->getInstance()Lcom/lge/sns/BackgroundJobManager;

    move-result-object v0

    new-instance v1, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$2;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Z)V

    invoke-virtual {v0, v1}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 229
    return-void
.end method

.method private uploadImage()V
    .registers 4

    .prologue
    .line 309
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 310
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userName:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 313
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    :cond_1a
    const-string v1, "gallery"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-virtual {p0, v1, v2}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 315
    return-void
.end method


# virtual methods
.method public mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 318
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 319
    :cond_10
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$5;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$5;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    :cond_18
    return-void
.end method

.method public mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 331
    :cond_10
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$6;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    :cond_18
    return-void
.end method

.method public mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 342
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 343
    :cond_10
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$7;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 355
    :cond_18
    return-void
.end method

.method public mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 358
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 359
    :cond_10
    new-instance v0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$8;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 367
    :cond_18
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 286
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 288
    const/4 v2, -0x1

    if-ne p2, v2, :cond_9

    .line 289
    packed-switch p1, :pswitch_data_3a

    .line 306
    :cond_9
    :goto_9
    return-void

    .line 291
    :pswitch_a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 292
    .local v0, imageUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.UPLOAD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 294
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 296
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    if-eqz v2, :cond_31

    .line 297
    const-string v2, "folder_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 299
    :cond_31
    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 302
    .end local v0           #imageUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_35
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refresh(Z)V

    goto :goto_9

    .line 289
    :pswitch_data_3a
    .packed-switch 0x7d1
        :pswitch_a
        :pswitch_35
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 15
    .parameter "savedInstanceState"

    .prologue
    const v7, 0x7f030026

    const/4 v8, 0x7

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "FB"

    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_e5

    .line 74
    invoke-virtual {p0, v8}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->requestWindowFeature(I)Z

    .line 75
    invoke-virtual {p0, v7}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->setContentView(I)V

    .line 76
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f030002

    invoke-virtual {v6, v8, v7}, Landroid/view/Window;->setFeatureInt(II)V

    .line 81
    :goto_21
    const v6, 0x7f08006e

    invoke-virtual {p0, v6}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    .line 82
    .local v4, upload:Landroid/widget/Button;
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 84
    .local v2, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 85
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ec

    .line 86
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 87
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v6, v5}, Lcom/lge/sns/media/IMediaFacade;->getMediaFolder(Landroid/net/Uri;)Lcom/lge/sns/media/MediaFolder;

    move-result-object v3

    .line 88
    .local v3, mf:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFolder;->getSnsId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    .line 89
    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFolder;->getUserId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    .line 90
    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    .line 91
    const-string v6, "FB"

    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    const-string v6, "Profile Pictures"

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ea

    move v6, v11

    :goto_77
    iput-boolean v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->profileFolder:Z

    .line 100
    .end local v5           #uri:Landroid/net/Uri;
    :goto_79
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v6

    invoke-virtual {v6, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 101
    const-string v6, "user_name"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userName:Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getParent()Landroid/app/Activity;

    move-result-object v6

    if-nez v6, :cond_94

    .line 104
    invoke-direct {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->addSnsNameImage()V

    .line 106
    :cond_94
    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v7

    iget-object v8, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->myPhotos:Z

    .line 107
    iget-boolean v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->myPhotos:Z

    if-eqz v6, :cond_12d

    iget-boolean v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->profileFolder:Z

    if-nez v6, :cond_12d

    .line 108
    new-instance v6, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$1;

    invoke-direct {v6, p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$1;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)V

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    :goto_ba
    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    if-nez v6, :cond_133

    .line 120
    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v7, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    iget-object v8, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, p0}, Lcom/lge/sns/media/IMediaFacade;->getMediaFiles(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;

    move-result-object v0

    .line 124
    .local v0, files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    :goto_c8
    new-instance v6, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, p0, v0, v7}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Landroid/content/Context;Ljava/util/List;Lcom/lge/sns/media/ui/PhotoGrideViewActivity$1;)V

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->adapter:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    .line 126
    const v6, 0x7f08006f

    invoke-virtual {p0, v6}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 127
    .local v1, g:Landroid/widget/GridView;
    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->adapter:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 128
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 129
    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 131
    return-void

    .line 78
    .end local v0           #files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    .end local v1           #g:Landroid/widget/GridView;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #mf:Lcom/lge/sns/media/MediaFolder;
    .end local v4           #upload:Landroid/widget/Button;
    :cond_e5
    invoke-virtual {p0, v7}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->setContentView(I)V

    goto/16 :goto_21

    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #mf:Lcom/lge/sns/media/MediaFolder;
    .restart local v4       #upload:Landroid/widget/Button;
    .restart local v5       #uri:Landroid/net/Uri;
    :cond_ea
    move v6, v10

    .line 91
    goto :goto_77

    .line 93
    .end local v3           #mf:Lcom/lge/sns/media/MediaFolder;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_ec
    const-string v6, "sns_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    .line 94
    const-string v6, "user_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    .line 95
    const-string v6, "folder_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    .line 96
    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v7, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    iget-object v8, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    iget-object v9, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9}, Lcom/lge/sns/media/IMediaFacade;->getMediaFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/media/MediaFolder;

    move-result-object v3

    .line 97
    .restart local v3       #mf:Lcom/lge/sns/media/MediaFolder;
    const-string v6, "FB"

    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    const-string v6, "Profile Pictures"

    invoke-virtual {v3}, Lcom/lge/sns/media/MediaFolder;->getFolderName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12b

    move v6, v11

    :goto_127
    iput-boolean v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->profileFolder:Z

    goto/16 :goto_79

    :cond_12b
    move v6, v10

    goto :goto_127

    .line 114
    :cond_12d
    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_ba

    .line 122
    :cond_133
    iget-object v6, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v7, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->snsId:Ljava/lang/String;

    iget-object v8, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userId:Ljava/lang/String;

    iget-object v9, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->folderId:Ljava/lang/String;

    invoke-interface {v6, v7, v8, v9, p0}, Lcom/lge/sns/media/IMediaFacade;->getMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;

    move-result-object v0

    .restart local v0       #files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    goto :goto_c8
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 269
    packed-switch p1, :pswitch_data_34

    .line 282
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 271
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    .line 272
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 273
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$4;

    invoke-direct {v3, p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$4;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 280
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 269
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

    .line 163
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->myPhotos:Z

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->profileFolder:Z

    if-nez v0, :cond_1b

    .line 164
    const v0, 0x7f05008f

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 167
    :cond_1b
    const/4 v0, 0x2

    const v1, 0x7f05000e

    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 169
    return v3
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 264
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 265
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/media/IMediaFacade;->removeMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 266
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10
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
    .line 232
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->adapter:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    invoke-virtual {v2, p3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 233
    .local v1, mf:Lcom/lge/sns/media/MediaFile;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    invoke-virtual {v1}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 234
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userName:Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 235
    const-string v2, "user_name"

    iget-object v3, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 10
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 240
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->adapter:Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;

    invoke-virtual {v2, p3}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$PhotoViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/media/MediaFile;

    .line 241
    .local v1, mf:Lcom/lge/sns/media/MediaFile;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 242
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05009f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 243
    const v2, 0x7f060005

    new-instance v3, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;

    invoke-direct {v3, p0, v1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity$3;-><init>(Lcom/lge/sns/media/ui/PhotoGrideViewActivity;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 259
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 260
    const/4 v2, 0x1

    return v2
.end method

.method public onMediaUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5
    .parameter "snsid"
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 371
    iget-object v0, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 373
    :cond_11
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 173
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 181
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 175
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->uploadImage()V

    move v0, v1

    .line 176
    goto :goto_9

    .line 178
    :pswitch_f
    invoke-direct {p0, v1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->refresh(Z)V

    move v0, v1

    .line 179
    goto :goto_9

    .line 173
    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_a
        :pswitch_f
    .end packed-switch
.end method

.method public writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V
    .registers 12
    .parameter "mf"

    .prologue
    .line 448
    const/4 v8, 0x0

    .line 451
    .local v8, orgPic:[B
    :try_start_1
    iget-object v1, p0, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

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

    .line 461
    :goto_13
    new-instance v0, Lcom/lge/sns/media/MediaSdcard;

    invoke-direct {v0}, Lcom/lge/sns/media/MediaSdcard;-><init>()V

    .line 463
    .local v0, inputOp:Lcom/lge/sns/media/MediaSdcard;
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v8, v1}, Lcom/lge/sns/media/MediaSdcard;->writeToDiskImage(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 464
    .local v9, savedFile:Ljava/io/File;
    if-eqz v9, :cond_33

    .line 465
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/sns/media/MediaSdcard;->addToMediaDB(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/media/MediaFile;J)V

    .line 468
    :cond_33
    return-void

    .line 452
    .end local v0           #inputOp:Lcom/lge/sns/media/MediaSdcard;
    .end local v9           #savedFile:Ljava/io/File;
    :catch_34
    move-exception v1

    move-object v6, v1

    .line 453
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 454
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    const/16 v1, 0x7d2

    invoke-virtual {p0, v7, v1}, Lcom/lge/sns/media/ui/PhotoGrideViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 457
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v7           #intent:Landroid/content/Intent;
    :catch_4c
    move-exception v1

    move-object v6, v1

    .line 458
    .local v6, e:Lcom/lge/sns/SnsException;
    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method
