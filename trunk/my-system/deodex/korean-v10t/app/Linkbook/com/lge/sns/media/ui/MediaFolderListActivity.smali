.class public Lcom/lge/sns/media/ui/MediaFolderListActivity;
.super Landroid/app/ListActivity;
.source "MediaFolderListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/lge/sns/media/IMediaFacade$MediaUpdateCallback;
.implements Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;
.implements Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;
    }
.end annotation


# static fields
.field private static final GALLERY:Ljava/lang/String; = "gallery"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static final MENU_ID_UPLOAD:I = 0x1

.field private static final PHOTO_PICKED:I = 0x7d1

.field private static final RC_SIGNIN:I = 0x7d2

.field private static final THUMBNAIL_HEIGHT:I = 0x40

.field private static final THUMBNAIL_WIDTH:I = 0x40

.field private static snsManager:Lcom/lge/sns/SnsManager;


# instance fields
.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private adapter:Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

.field private mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field private mediaFileCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;>;"
        }
    .end annotation
.end field

.field notified:Z

.field notifyJob:Ljava/lang/Runnable;

.field profile:Lcom/lge/sns/profile/Profile;

.field private snsId:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private userName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsManager:Lcom/lge/sns/SnsManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->profile:Lcom/lge/sns/profile/Profile;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    .line 303
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    .line 304
    new-instance v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$5;

    invoke-direct {v0, p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity$5;-><init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;)V

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notifyJob:Ljava/lang/Runnable;

    .line 402
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->adapter:Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/util/HashMap;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/media/ui/MediaFolderListActivity;)Lcom/lge/sns/media/IMediaFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    return-object v0
.end method

.method private addSnsNameImage()V
    .registers 7

    .prologue
    .line 93
    sget-object v4, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v4, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    .line 94
    .local v1, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    const v4, 0x7f08000b

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 95
    .local v2, sns_image:Landroid/widget/ImageView;
    const v4, 0x7f08000c

    invoke-virtual {p0, v4}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 97
    .local v3, sns_name:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    if-eqz v4, :cond_31

    .line 98
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_21
    :goto_21
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 118
    return-void

    .line 101
    :cond_31
    :try_start_31
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userId:Ljava/lang/String;

    invoke-interface {v1, v4, v5}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v4

    iput-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->profile:Lcom/lge/sns/profile/Profile;
    :try_end_3b
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_31 .. :try_end_3b} :catch_49
    .catch Lcom/lge/sns/SnsException; {:try_start_31 .. :try_end_3b} :catch_4f

    .line 110
    :goto_3b
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v4, :cond_21

    .line 111
    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 102
    :catch_49
    move-exception v4

    move-object v0, v4

    .line 104
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_3b

    .line 105
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_4f
    move-exception v4

    move-object v0, v4

    .line 107
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_3b
.end method

.method private findLocation(Ljava/util/List;Lcom/lge/sns/media/MediaFile;)I
    .registers 8
    .parameter
    .parameter "mediaFile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;",
            "Lcom/lge/sns/media/MediaFile;",
            ")I"
        }
    .end annotation

    .prologue
    .line 345
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 346
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_20

    .line 347
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/media/MediaFile;

    .line 348
    .local v2, mf:Lcom/lge/sns/media/MediaFile;
    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v0

    .line 352
    .end local v2           #mf:Lcom/lge/sns/media/MediaFile;
    :goto_1c
    return v3

    .line 346
    .restart local v2       #mf:Lcom/lge/sns/media/MediaFile;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v2           #mf:Lcom/lge/sns/media/MediaFile;
    :cond_20
    move v3, v1

    .line 352
    goto :goto_1c
.end method

.method private updateContents()V
    .registers 11

    .prologue
    .line 121
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userId:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p0}, Lcom/lge/sns/media/IMediaFacade;->getMediaFolderList(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)Ljava/util/List;

    move-result-object v8

    .line 122
    .local v8, folders:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFolder;>;"
    if-eqz v8, :cond_46

    .line 123
    new-instance v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    const v1, 0x7f030025

    invoke-direct {v0, p0, p0, v1, v8}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;-><init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Landroid/content/Context;ILjava/util/List;)V

    iput-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->adapter:Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    .line 124
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->adapter:Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 127
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_24
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/sns/media/MediaFolder;

    .line 128
    .local v7, folder:Lcom/lge/sns/media/MediaFolder;
    invoke-virtual {v7}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, folderId:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userId:Ljava/lang/String;

    const/4 v4, 0x3

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/media/IMediaFacade;->getLatestMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;

    move-result-object v6

    .line 130
    .local v6, files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_24

    .line 133
    .end local v3           #folderId:Ljava/lang/String;
    .end local v6           #files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    .end local v7           #folder:Lcom/lge/sns/media/MediaFolder;
    .end local v9           #i$:Ljava/util/Iterator;
    :cond_46
    return-void
.end method

.method private uploadImage()V
    .registers 4

    .prologue
    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 256
    const-string v1, "user_name"

    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    :cond_1a
    const-string v1, "gallery"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-virtual {p0, v1, v2}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 258
    return-void
.end method


# virtual methods
.method public mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
    .registers 7
    .parameter "mf"

    .prologue
    const/4 v4, 0x3

    .line 317
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 342
    :goto_d
    return-void

    .line 321
    :cond_e
    monitor-enter p0

    .line 322
    :try_start_f
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 323
    .local v1, photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    if-eqz v1, :cond_2c

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    .line 324
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_3d

    .line 325
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    :cond_2c
    :goto_2c
    iget-boolean v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    if-eqz v2, :cond_35

    .line 338
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 340
    :cond_35
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    .line 341
    monitor-exit p0

    goto :goto_d

    .end local v1           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    :catchall_3a
    move-exception v2

    monitor-exit p0
    :try_end_3c
    .catchall {:try_start_f .. :try_end_3c} :catchall_3a

    throw v2

    .line 327
    .restart local v1       #photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    :cond_3d
    :try_start_3d
    invoke-direct {p0, v1, p1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->findLocation(Ljava/util/List;Lcom/lge/sns/media/MediaFile;)I

    move-result v0

    .line 328
    .local v0, location:I
    if-ge v0, v4, :cond_2c

    .line 329
    invoke-interface {v1, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 330
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_2c

    .line 331
    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;
    :try_end_50
    .catchall {:try_start_3d .. :try_end_50} :catchall_3a

    goto :goto_2c
.end method

.method public mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
    .registers 9
    .parameter "mf"

    .prologue
    .line 356
    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 374
    :goto_c
    return-void

    .line 360
    :cond_d
    monitor-enter p0

    .line 361
    :try_start_e
    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 362
    .local v2, photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    if-eqz v2, :cond_3c

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3c

    .line 363
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getFolderId()Ljava/lang/String;

    move-result-object v1

    .line 364
    .local v1, folderId:Ljava/lang/String;
    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v4, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userId:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-interface {v3, v4, v5, v1, v6}, Lcom/lge/sns/media/IMediaFacade;->getLatestMediaFilesByFolder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    .line 366
    .local v0, files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFileCache:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    .end local v0           #files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    .end local v1           #folderId:Ljava/lang/String;
    :cond_3c
    iget-boolean v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    if-eqz v3, :cond_45

    .line 370
    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 372
    :cond_45
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    .line 373
    monitor-exit p0

    goto :goto_c

    .end local v2           #photos:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    :catchall_4a
    move-exception v3

    monitor-exit p0
    :try_end_4c
    .catchall {:try_start_e .. :try_end_4c} :catchall_4a

    throw v3
.end method

.method public mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 377
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 387
    :goto_c
    return-void

    .line 381
    :cond_d
    monitor-enter p0

    .line 382
    :try_start_e
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    if-eqz v0, :cond_17

    .line 383
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 385
    :cond_17
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    .line 386
    monitor-exit p0

    goto :goto_c

    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public mediaFolderAdded(Lcom/lge/sns/media/MediaFolder;)V
    .registers 4
    .parameter "mediaFolder"

    .prologue
    .line 261
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 272
    :goto_c
    return-void

    .line 265
    :cond_d
    new-instance v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$2;-><init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Lcom/lge/sns/media/MediaFolder;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public mediaFolderRemoved(Lcom/lge/sns/media/MediaFolder;)V
    .registers 4
    .parameter "mediaFolder"

    .prologue
    .line 275
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 286
    :goto_c
    return-void

    .line 279
    :cond_d
    new-instance v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$3;-><init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Lcom/lge/sns/media/MediaFolder;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public mediaFolderUpdated(Lcom/lge/sns/media/MediaFolder;)V
    .registers 4
    .parameter "mediaFolder"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 301
    :goto_c
    return-void

    .line 293
    :cond_d
    new-instance v0, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$4;-><init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Lcom/lge/sns/media/MediaFolder;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_c
.end method

.method public mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 3
    .parameter "mf"

    .prologue
    .line 390
    monitor-enter p0

    .line 391
    :try_start_1
    iget-boolean v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    if-eqz v0, :cond_a

    .line 392
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 394
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->notified:Z

    .line 395
    monitor-exit p0

    .line 396
    return-void

    .line 395
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 217
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 218
    const/4 v2, -0x1

    if-ne p2, v2, :cond_9

    .line 219
    packed-switch p1, :pswitch_data_2a

    .line 234
    :cond_9
    :goto_9
    return-void

    .line 221
    :pswitch_a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 222
    .local v0, imageUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.UPLOAD"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 224
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 225
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 219
    :pswitch_data_2a
    .packed-switch 0x7d1
        :pswitch_a
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 8
    .parameter "v"

    .prologue
    .line 149
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .line 150
    .local v3, tag:Ljava/lang/Object;
    instance-of v4, v3, Lcom/lge/sns/media/MediaFile;

    if-eqz v4, :cond_21

    .line 151
    move-object v0, v3

    check-cast v0, Lcom/lge/sns/media/MediaFile;

    move-object v2, v0

    .line 152
    .local v2, mf:Lcom/lge/sns/media/MediaFile;
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.lge.sns.media.action.PHOTO_GALLERY_VIEW"

    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 153
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "user_name"

    iget-object v5, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->startActivity(Landroid/content/Intent;)V

    .line 156
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #mf:Lcom/lge/sns/media/MediaFile;
    :cond_21
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6
    .parameter "savedInstanceState"

    .prologue
    const v2, 0x7f030009

    const/4 v3, 0x7

    .line 68
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_56

    .line 70
    invoke-virtual {p0, v3}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->requestWindowFeature(I)Z

    .line 71
    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->setContentView(I)V

    .line 72
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 77
    :goto_1d
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 78
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsId:Ljava/lang/String;

    .line 79
    const-string v1, "user_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userId:Ljava/lang/String;

    .line 80
    const-string v1, "user_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    .line 82
    sget-object v1, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 83
    sget-object v1, Lcom/lge/sns/media/ui/MediaFolderListActivity;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 85
    invoke-virtual {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_52

    .line 86
    invoke-direct {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->addSnsNameImage()V

    .line 89
    :cond_52
    invoke-direct {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->updateContents()V

    .line 90
    return-void

    .line 74
    .end local v0           #intent:Landroid/content/Intent;
    :cond_56
    invoke-virtual {p0, v2}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->setContentView(I)V

    goto :goto_1d
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 237
    const v0, 0x7f05008f

    invoke-virtual {p0, v0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080055

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 239
    return v2
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 136
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/media/IMediaFacade;->removeMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V

    .line 138
    iget-object v0, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/media/IMediaFacade;->removeMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 139
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 10
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 142
    iget-object v2, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->adapter:Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;

    invoke-virtual {v2, p3}, Lcom/lge/sns/media/ui/MediaFolderListActivity$MediaFolderListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/media/MediaFolder;

    .line 143
    .local v0, folder:Lcom/lge/sns/media/MediaFolder;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v0}, Lcom/lge/sns/media/MediaFolder;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 144
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "user_name"

    iget-object v3, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->userName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->startActivity(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .parameter "v"

    .prologue
    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .line 160
    .local v1, tag:Ljava/lang/Object;
    instance-of v2, v1, Lcom/lge/sns/media/MediaFile;

    if-eqz v2, :cond_2b

    .line 161
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 162
    .local v0, dlg:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f05009f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 164
    const v2, 0x7f060005

    new-instance v3, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;

    invoke-direct {v3, p0, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity$1;-><init>(Lcom/lge/sns/media/ui/MediaFolderListActivity;Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 185
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 186
    const/4 v2, 0x1

    .line 189
    .end local v0           #dlg:Landroid/app/AlertDialog$Builder;
    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public onMediaUpdateFinished(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .parameter "snsid"
    .parameter "userId"
    .parameter "count"

    .prologue
    .line 400
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 3
    .parameter "item"

    .prologue
    .line 243
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_e

    .line 248
    const/4 v0, 0x0

    :goto_8
    return v0

    .line 245
    :pswitch_9
    invoke-direct {p0}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->uploadImage()V

    .line 246
    const/4 v0, 0x1

    goto :goto_8

    .line 243
    :pswitch_data_e
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V
    .registers 12
    .parameter "mf"

    .prologue
    .line 193
    const/4 v8, 0x0

    .line 196
    .local v8, orgPic:[B
    :try_start_1
    iget-object v1, p0, Lcom/lge/sns/media/ui/MediaFolderListActivity;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

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

    .line 205
    :goto_13
    new-instance v0, Lcom/lge/sns/media/MediaSdcard;

    invoke-direct {v0}, Lcom/lge/sns/media/MediaSdcard;-><init>()V

    .line 207
    .local v0, inputOp:Lcom/lge/sns/media/MediaSdcard;
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v8, v1}, Lcom/lge/sns/media/MediaSdcard;->writeToDiskImage(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 210
    .local v9, savedFile:Ljava/io/File;
    if-eqz v9, :cond_33

    .line 211
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/sns/media/MediaSdcard;->addToMediaDB(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/media/MediaFile;J)V

    .line 214
    :cond_33
    return-void

    .line 197
    .end local v0           #inputOp:Lcom/lge/sns/media/MediaSdcard;
    .end local v9           #savedFile:Ljava/io/File;
    :catch_34
    move-exception v1

    move-object v6, v1

    .line 198
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/16 v1, 0x7d2

    invoke-virtual {p0, v7, v1}, Lcom/lge/sns/media/ui/MediaFolderListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 201
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v7           #intent:Landroid/content/Intent;
    :catch_4c
    move-exception v1

    move-object v6, v1

    .line 202
    .local v6, e:Lcom/lge/sns/SnsException;
    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method
