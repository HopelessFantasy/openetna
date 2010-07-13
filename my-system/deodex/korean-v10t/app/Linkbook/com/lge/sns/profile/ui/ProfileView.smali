.class public Lcom/lge/sns/profile/ui/ProfileView;
.super Landroid/app/Activity;
.source "ProfileView.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
.implements Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;
.implements Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_REFRESH:I = 0x3e8

.field private static final GALLERY:Ljava/lang/String; = "gallery"

.field private static final IMAGE_TYPE:Ljava/lang/String; = "image/*"

.field private static INFO:Ljava/lang/String; = null

.field private static final MENU_ID_COMMENT:I = 0x4

.field private static final MENU_ID_DETAIL:I = 0x5

.field private static final MENU_ID_EDIT_STATUS:I = 0x0

.field private static final MENU_ID_GOTO_SITE:I = 0x3

.field private static final MENU_ID_REFRESH:I = 0x2

.field private static final MENU_ID_SAVE_CONTACT:I = 0x6

.field private static final MENU_ID_UPLOAD:I = 0x1

.field private static PHOTO:Ljava/lang/String; = null

.field private static final PHOTO_PICKED:I = 0x7d1

.field private static final RC_DOWNLOAD_IMAGE:I = 0x7d0

.field private static final RC_EDITSTAUS:I = 0x7d3

.field private static final RC_SIGNIN:I = 0x7d2

.field private static SNSITEID:Ljava/lang/String; = null

.field private static SNSITEUSERID:Ljava/lang/String; = null

.field static final TAG:Ljava/lang/String; = "ProfileView"

.field private static WALL:Ljava/lang/String;

.field private static final groupNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final groupPositionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static snsManager:Lcom/lge/sns/SnsManager;

.field public static final updateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

.field SettingManager:Lcom/lge/sns/setting/ISettingFacade;

.field public StatusOnClickListener:Landroid/view/View$OnClickListener;

.field private accountManager:Lcom/lge/sns/account/IAccountFacade;

.field private commentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileComment;",
            ">;"
        }
    .end annotation
.end field

.field private completeMessage:Ljava/lang/Runnable;

.field dialogDisable:Z

.field private dismissDialog:Ljava/lang/Runnable;

.field private goToSnsSite:Ljava/lang/Runnable;

.field public imageClickListener:Landroid/view/View$OnClickListener;

.field public imageLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

.field private mExpandableListView:Landroid/widget/ExpandableListView;

.field private mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mediaFacade:Lcom/lge/sns/media/IMediaFacade;

.field myProfile:Z

.field notified:Z

.field notifyJob:Ljava/lang/Runnable;

.field private photoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/media/MediaFile;",
            ">;"
        }
    .end annotation
.end field

.field private profile:Lcom/lge/sns/profile/Profile;

.field private profileFacade:Lcom/lge/sns/profile/IProfileFacade;

.field private progress:Landroid/widget/ProgressBar;

.field private refreshDialog:Landroid/app/ProgressDialog;

.field private settingInfo:Lcom/lge/sns/setting/UpdateTime;

.field public statusLongClickListener:Landroid/view/View$OnLongClickListener;

.field updating:Z


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    .line 87
    const-string v0, "info"

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->INFO:Ljava/lang/String;

    .line 88
    const-string v0, "photo"

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->PHOTO:Ljava/lang/String;

    .line 89
    const-string v0, "wall"

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->WALL:Ljava/lang/String;

    .line 91
    const-string v0, "sn_site_id"

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->SNSITEID:Ljava/lang/String;

    .line 92
    const-string v0, "sn_user_id"

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->SNSITEUSERID:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->updateMap:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupNameMap:Ljava/util/Map;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupPositionMap:Ljava/util/Map;

    .line 116
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupNameMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f050089

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupNameMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05008b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupNameMap:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f05008a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupPositionMap:Ljava/util/Map;

    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->INFO:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupPositionMap:Ljava/util/Map;

    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->PHOTO:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupPositionMap:Ljava/util/Map;

    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->WALL:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 69
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getSetting(Landroid/content/Context;)Lcom/lge/sns/setting/ISettingFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->SettingManager:Lcom/lge/sns/setting/ISettingFacade;

    .line 85
    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 86
    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->progress:Landroid/widget/ProgressBar;

    .line 98
    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    .line 99
    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->dialogDisable:Z

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mHandler:Landroid/os/Handler;

    .line 107
    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->commentList:Ljava/util/List;

    .line 108
    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->photoList:Ljava/util/List;

    .line 455
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$1;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->imageClickListener:Landroid/view/View$OnClickListener;

    .line 465
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$2;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->imageLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 499
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$3;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    .line 517
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$4;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$4;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->StatusOnClickListener:Landroid/view/View$OnClickListener;

    .line 528
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$5;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$5;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->statusLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 747
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$7;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$7;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->goToSnsSite:Ljava/lang/Runnable;

    .line 753
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$8;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$8;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->dismissDialog:Ljava/lang/Runnable;

    .line 814
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$9;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$9;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->completeMessage:Ljava/lang/Runnable;

    .line 823
    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->updating:Z

    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->notified:Z

    .line 938
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$11;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$11;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->notifyJob:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->WALL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupPositionMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/profile/ui/ProfileView;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->isMyProfile()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->groupNameMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/sns/profile/ui/ProfileView;Ljava/util/List;Lcom/lge/sns/profile/ProfileComment;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/ProfileView;->findLocation(Ljava/util/List;Lcom/lge/sns/profile/ProfileComment;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/sns/profile/ui/ProfileView;Ljava/util/List;Lcom/lge/sns/media/MediaFile;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/ProfileView;->findLocation(Ljava/util/List;Lcom/lge/sns/media/MediaFile;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->initPhotoView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/sns/profile/ui/ProfileView;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/ProfileView;->refresh(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/lge/sns/profile/ui/ProfileView;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->goToSnsSite()V

    return-void
.end method

.method static synthetic access$1900(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/widget/ProgressBar;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->progress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->commentList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/lang/Runnable;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->completeMessage:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->INFO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/profile/Profile;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/profile/ui/ProfileView;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->photoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->PHOTO:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/profile/ui/ProfileView;)Landroid/view/LayoutInflater;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/profile/ui/ProfileView;)Lcom/lge/sns/media/IMediaFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    return-object v0
.end method

.method static synthetic access$900()Lcom/lge/sns/SnsManager;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    return-object v0
.end method

.method private addComment()V
    .registers 4

    .prologue
    .line 726
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.feed.intent.action.WRITE_PROFILE_COMMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 727
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 728
    const-string v1, "user_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    .line 730
    return-void
.end method

.method private addSnsNameImage()V
    .registers 5

    .prologue
    .line 556
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 557
    .local v0, sns_image:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 559
    .local v1, sns_name:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_43

    .line 560
    :cond_26
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 565
    :goto_2f
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 568
    return-void

    .line 562
    :cond_43
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2f
.end method

.method private editStatus()V
    .registers 4

    .prologue
    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.EDIT"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 792
    .local v0, editIntent:Landroid/content/Intent;
    const/16 v1, 0x7d3

    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 793
    return-void
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
    .line 383
    .local p1, files:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/media/MediaFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 384
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    if-ge v0, v1, :cond_20

    .line 385
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/media/MediaFile;

    .line 386
    .local v2, mf:Lcom/lge/sns/media/MediaFile;
    invoke-virtual {v2}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/media/MediaFile;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v0

    .line 390
    .end local v2           #mf:Lcom/lge/sns/media/MediaFile;
    :goto_1c
    return v3

    .line 384
    .restart local v2       #mf:Lcom/lge/sns/media/MediaFile;
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .end local v2           #mf:Lcom/lge/sns/media/MediaFile;
    :cond_20
    move v3, v1

    .line 390
    goto :goto_1c
.end method

.method private findLocation(Ljava/util/List;Lcom/lge/sns/profile/ProfileComment;)I
    .registers 8
    .parameter
    .parameter "profileComment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileComment;",
            ">;",
            "Lcom/lge/sns/profile/ProfileComment;",
            ")I"
        }
    .end annotation

    .prologue
    .line 372
    .local p1, comments:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileComment;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 373
    .local v2, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    if-ge v1, v2, :cond_20

    .line 374
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ProfileComment;

    .line 375
    .local v0, currentComment:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {v0}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p2}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-gtz v3, :cond_1d

    move v3, v1

    .line 379
    .end local v0           #currentComment:Lcom/lge/sns/profile/ProfileComment;
    :goto_1c
    return v3

    .line 373
    .restart local v0       #currentComment:Lcom/lge/sns/profile/ProfileComment;
    :cond_1d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v0           #currentComment:Lcom/lge/sns/profile/ProfileComment;
    :cond_20
    move v3, v2

    .line 379
    goto :goto_1c
.end method

.method private friendUpdateInfo()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 575
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 576
    .local v0, currentTime:Ljava/util/Date;
    iput-boolean v9, p0, Lcom/lge/sns/profile/ui/ProfileView;->dialogDisable:Z

    .line 577
    sget-object v5, Lcom/lge/sns/profile/ui/ProfileView;->updateMap:Ljava/util/Map;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Date;

    .line 578
    .local v1, d:Ljava/util/Date;
    if-nez v1, :cond_3c

    .line 579
    invoke-direct {p0, v9}, Lcom/lge/sns/profile/ui/ProfileView;->refresh(Z)V

    .line 589
    :cond_38
    :goto_38
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->dialogDisable:Z

    .line 590
    return-void

    .line 581
    :cond_3c
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    const-wide/32 v7, 0x2bf20

    div-long v3, v5, v7

    .line 583
    .local v3, timeMinute:J
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->settingInfo:Lcom/lge/sns/setting/UpdateTime;

    invoke-virtual {v5}, Lcom/lge/sns/setting/UpdateTime;->getIntervalValue()I

    move-result v2

    .line 585
    .local v2, interval:I
    int-to-long v5, v2

    cmp-long v5, v5, v3

    if-gez v5, :cond_38

    .line 586
    invoke-direct {p0, v9}, Lcom/lge/sns/profile/ui/ProfileView;->refresh(Z)V

    goto :goto_38
.end method

.method private getProfile()Lcom/lge/sns/profile/Profile;
    .registers 14

    .prologue
    const/4 v12, 0x1

    const-string v11, "sns_id"

    .line 902
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 903
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 904
    .local v0, action:Ljava/lang/String;
    const/4 v5, 0x0

    .line 905
    .local v5, profile:Lcom/lge/sns/profile/Profile;
    const/4 v6, 0x0

    .line 908
    .local v6, snsId:Ljava/lang/String;
    :try_start_d
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_38

    .line 909
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 910
    .local v7, uri:Landroid/net/Uri;
    iget-object v9, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v9, v7, p0}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Landroid/net/Uri;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;

    move-result-object v5

    .line 911
    sget-object v9, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v9, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v9

    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 912
    .local v4, myUid:Ljava/lang/String;
    invoke-virtual {v5}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    .line 934
    .end local v4           #myUid:Ljava/lang/String;
    .end local v7           #uri:Landroid/net/Uri;
    :cond_37
    :goto_37
    return-object v5

    .line 913
    :cond_38
    const-string v9, "com.lge.sns.profile.intent.action.VIEW_PROFILE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_63

    .line 914
    const-string v9, "sns_id"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 915
    const-string v9, "user_id"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 916
    .local v8, userId:Ljava/lang/String;
    sget-object v9, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v9, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 917
    .restart local v4       #myUid:Ljava/lang/String;
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    iput-boolean v9, p0, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    .line 918
    iget-object v9, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v9, v6, v8}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v5

    .line 919
    goto :goto_37

    .end local v4           #myUid:Ljava/lang/String;
    .end local v8           #userId:Ljava/lang/String;
    :cond_63
    const-string v9, "com.lge.sns.profile.intent.action.VIEW_MYPROFILE"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_37

    .line 920
    const-string v9, "sns_id"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 921
    sget-object v9, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v9, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v9

    invoke-interface {v9, v6}, Lcom/lge/sns/account/IAccountFacade;->getUid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 922
    .restart local v4       #myUid:Ljava/lang/String;
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    .line 923
    iget-object v9, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v9, v6, v4}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    :try_end_83
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_d .. :try_end_83} :catch_85
    .catch Lcom/lge/sns/SnsException; {:try_start_d .. :try_end_83} :catch_99

    move-result-object v5

    goto :goto_37

    .line 925
    .end local v4           #myUid:Ljava/lang/String;
    :catch_85
    move-exception v9

    move-object v1, v9

    .line 926
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v3, Landroid/content/Intent;

    const-string v9, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v3, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 927
    .local v3, intentCredential:Landroid/content/Intent;
    const-string v9, "sns_id"

    invoke-virtual {v2, v11, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 928
    const/16 v9, 0x7d2

    invoke-virtual {p0, v3, v9}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_37

    .line 929
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v3           #intentCredential:Landroid/content/Intent;
    :catch_99
    move-exception v9

    move-object v1, v9

    .line 930
    .local v1, e:Lcom/lge/sns/SnsException;
    const-string v9, "ProfileView"

    const-string v10, "SnsException"

    invoke-static {v9, v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 931
    const v9, 0x7f05000d

    invoke-static {p0, v9, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    goto :goto_37
.end method

.method private goToSnsSite()V
    .registers 9

    .prologue
    .line 760
    const/4 v3, 0x0

    .line 761
    .local v3, linkUri:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 762
    .local v1, intent:Landroid/content/Intent;
    const/4 v4, 0x1

    .line 765
    .local v4, start:Z
    :try_start_9
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getDeepLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1a
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_9 .. :try_end_1a} :catch_2f
    .catch Lcom/lge/sns/SnsException; {:try_start_9 .. :try_end_1a} :catch_57

    move-result-object v3

    .line 783
    :cond_1b
    :goto_1b
    if-eqz v4, :cond_2e

    .line 784
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 785
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ProfileView;->dismissDialog:Ljava/lang/Runnable;

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 786
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    .line 788
    :cond_2e
    return-void

    .line 766
    :catch_2f
    move-exception v5

    move-object v0, v5

    .line 767
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    const/4 v4, 0x0

    .line 768
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 769
    .local v2, intentCredential:Landroid/content/Intent;
    const-string v5, "sns_id"

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v6}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    const/16 v5, 0x7d2

    invoke-virtual {p0, v2, v5}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 771
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 772
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_1b

    .line 774
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v2           #intentCredential:Landroid/content/Intent;
    :catch_57
    move-exception v5

    move-object v0, v5

    .line 775
    .local v0, e:Lcom/lge/sns/SnsException;
    const/4 v4, 0x0

    .line 776
    const v5, 0x7f05000d

    const/4 v6, 0x1

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 777
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_72

    .line 778
    iget-object v5, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 780
    :cond_72
    const-string v5, "ProfileView"

    const-string v6, "SnsException"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1b
.end method

.method private goToSnsSiteThreadStart()V
    .registers 3

    .prologue
    .line 740
    const/16 v1, 0x3e8

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->showDialog(I)V

    .line 742
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->goToSnsSite:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 744
    .local v0, goToSnsThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 745
    return-void
.end method

.method private initPhotoView()V
    .registers 5

    .prologue
    .line 897
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {v0, v1, v2, v3, p0}, Lcom/lge/sns/media/IMediaFacade;->getLatestMediaFiles(Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->photoList:Ljava/util/List;

    .line 899
    return-void
.end method

.method private initWallView()V
    .registers 4

    .prologue
    .line 893
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v1

    invoke-interface {v0, v1, v2, p0}, Lcom/lge/sns/profile/IProfileFacade;->getProfileCommentList(JLcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->commentList:Ljava/util/List;

    .line 894
    return-void
.end method

.method private isMyProfile()Z
    .registers 2

    .prologue
    .line 796
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    return v0
.end method

.method private matchCurrentProfile(J)Z
    .registers 6
    .parameter "profileId"

    .prologue
    const/4 v2, 0x0

    .line 800
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-nez v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    move v0, v2

    goto :goto_10

    :cond_13
    move v0, v2

    goto :goto_10
.end method

.method private matchCurrentProfile(Ljava/lang/String;)Z
    .registers 3
    .parameter "userId"

    .prologue
    .line 804
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private refresh(Z)V
    .registers 4
    .parameter "retry"

    .prologue
    .line 826
    monitor-enter p0

    .line 827
    :try_start_1
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->updating:Z

    if-eqz v0, :cond_7

    .line 828
    monitor-exit p0

    .line 890
    :goto_6
    return-void

    .line 830
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->updating:Z

    .line 831
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_29

    .line 832
    const/16 v0, 0x3e8

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->showDialog(I)V

    .line 834
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_20

    .line 835
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->progress:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 838
    :cond_20
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$10;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/ProfileView$10;-><init>(Lcom/lge/sns/profile/ui/ProfileView;Z)V

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/ProfileView$10;->start()V

    goto :goto_6

    .line 831
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method private saveFriendContact()V
    .registers 6

    .prologue
    .line 707
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.INSERT"

    sget-object v4, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 709
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "phone"

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 710
    const-string v3, "email"

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 711
    const-string v3, "name"

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v3, "postal"

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getHometown()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v3, "sns_id"

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const-string v3, "user_id"

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 716
    sget-object v3, Lcom/lge/sns/profile/ui/ProfileView;->SNSITEID:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 718
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v4, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v4}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 719
    .local v0, CurAccount:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    .line 720
    .local v1, CurCredential:Lcom/lge/sns/account/Credential;
    sget-object v3, Lcom/lge/sns/profile/ui/ProfileView;->SNSITEUSERID:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 722
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    .line 723
    return-void
.end method

.method private showDetail()V
    .registers 3

    .prologue
    .line 733
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.profile.intent.action.PROFILE_DETAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, showDetailedInfo:Landroid/content/Intent;
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 736
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    .line 737
    return-void
.end method

.method private uploadMedia()V
    .registers 4

    .prologue
    .line 808
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 809
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 810
    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 811
    const-string v1, "gallery"

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x7d1

    invoke-virtual {p0, v1, v2}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V

    .line 812
    return-void
.end method


# virtual methods
.method public confirmMyFriend(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 1099
    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    .line 1101
    .local v0, profileFacade:Lcom/lge/sns/profile/IProfileFacade;
    invoke-interface {v0, p1, p2}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    if-nez v1, :cond_e

    .line 1102
    const/4 v1, 0x0

    .line 1104
    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x1

    goto :goto_d
.end method

.method public mediaFileAdded(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 991
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1007
    :goto_10
    return-void

    .line 995
    :cond_11
    monitor-enter p0

    .line 996
    :try_start_12
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->matchCurrentProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 997
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$12;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/ProfileView$12;-><init>(Lcom/lge/sns/profile/ui/ProfileView;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1006
    :cond_2a
    monitor-exit p0

    goto :goto_10

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public mediaFileRemoved(Lcom/lge/sns/media/MediaFile;)V
    .registers 4
    .parameter "mf"

    .prologue
    .line 1010
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1023
    :goto_10
    return-void

    .line 1014
    :cond_11
    monitor-enter p0

    .line 1015
    :try_start_12
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    if-eqz v0, :cond_2a

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->matchCurrentProfile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1016
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$13;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/ProfileView$13;-><init>(Lcom/lge/sns/profile/ui/ProfileView;Lcom/lge/sns/media/MediaFile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1022
    :cond_2a
    monitor-exit p0

    goto :goto_10

    :catchall_2c
    move-exception v0

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_12 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 11
    .parameter "mediaFile"

    .prologue
    .line 1026
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v7}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    .line 1061
    :goto_10
    return-void

    .line 1030
    :cond_11
    monitor-enter p0

    .line 1031
    :try_start_12
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/lge/sns/profile/ui/ProfileView;->matchCurrentProfile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_50

    .line 1032
    const v7, 0x7f0800b9

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1033
    .local v2, imageGroup:Landroid/view/ViewGroup;
    if-eqz v2, :cond_50

    .line 1034
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 1035
    .local v4, l:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2c
    if-ge v1, v4, :cond_50

    .line 1036
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1037
    .local v6, v:Landroid/view/View;
    instance-of v7, v6, Landroid/widget/ImageView;

    if-eqz v7, :cond_55

    .line 1038
    move-object v0, v6

    check-cast v0, Landroid/widget/ImageView;

    move-object v3, v0

    .line 1039
    .local v3, iv:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/lge/sns/media/MediaFile;

    .line 1040
    .local v5, mf:Lcom/lge/sns/media/MediaFile;
    if-eqz v5, :cond_55

    invoke-virtual {v5, p1}, Lcom/lge/sns/media/MediaFile;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 1041
    new-instance v7, Lcom/lge/sns/profile/ui/ProfileView$14;

    invoke-direct {v7, p0, v5, v3}, Lcom/lge/sns/profile/ui/ProfileView$14;-><init>(Lcom/lge/sns/profile/ui/ProfileView;Lcom/lge/sns/media/MediaFile;Landroid/widget/ImageView;)V

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1060
    .end local v1           #i:I
    .end local v2           #imageGroup:Landroid/view/ViewGroup;
    .end local v3           #iv:Landroid/widget/ImageView;
    .end local v4           #l:I
    .end local v5           #mf:Lcom/lge/sns/media/MediaFile;
    .end local v6           #v:Landroid/view/View;
    :cond_50
    monitor-exit p0

    goto :goto_10

    :catchall_52
    move-exception v7

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_12 .. :try_end_54} :catchall_52

    throw v7

    .line 1035
    .restart local v1       #i:I
    .restart local v2       #imageGroup:Landroid/view/ViewGroup;
    .restart local v4       #l:I
    .restart local v6       #v:Landroid/view/View;
    :cond_55
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c
.end method

.method public mediaFolderAdded(Lcom/lge/sns/media/MediaFolder;)V
    .registers 2
    .parameter "mediaFolder"

    .prologue
    .line 1136
    return-void
.end method

.method public mediaFolderRemoved(Lcom/lge/sns/media/MediaFolder;)V
    .registers 4
    .parameter "mediaFolder"

    .prologue
    .line 1139
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    if-eqz v1, :cond_22

    if-eqz p1, :cond_22

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->matchCurrentProfile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 1140
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFolder;->getFolderId()Ljava/lang/String;

    move-result-object v0

    .line 1141
    .local v0, folderId:Ljava/lang/String;
    invoke-static {v0}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 1142
    new-instance v1, Lcom/lge/sns/profile/ui/ProfileView$17;

    invoke-direct {v1, p0, v0}, Lcom/lge/sns/profile/ui/ProfileView$17;-><init>(Lcom/lge/sns/profile/ui/ProfileView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1153
    .end local v0           #folderId:Ljava/lang/String;
    :cond_22
    return-void
.end method

.method public mediaFolderUpdated(Lcom/lge/sns/media/MediaFolder;)V
    .registers 2
    .parameter "mediaFolder"

    .prologue
    .line 1158
    return-void
.end method

.method public mediaThumbnailUpdated(Lcom/lge/sns/media/MediaFile;)V
    .registers 2
    .parameter "mf"

    .prologue
    .line 1064
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/ProfileView;->mediaFileUpdated(Lcom/lge/sns/media/MediaFile;)V

    .line 1065
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 8
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 618
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 619
    const/4 v2, -0x1

    if-ne p2, v2, :cond_9

    .line 620
    packed-switch p1, :pswitch_data_40

    .line 638
    :cond_9
    :goto_9
    return-void

    .line 622
    :pswitch_a
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 623
    .local v0, imageUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.lge.sns.media.action.UPLOAD"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 624
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "sns_id"

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v2, "user_id"

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->startActivity(Landroid/content/Intent;)V

    goto :goto_9

    .line 630
    .end local v0           #imageUri:Landroid/net/Uri;
    .end local v1           #intent:Landroid/content/Intent;
    :pswitch_2f
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->refresh(Z)V

    goto :goto_9

    .line 633
    :pswitch_34
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getProfile()Lcom/lge/sns/profile/Profile;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    .line 634
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    invoke-virtual {v2}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->profileUpdate()V

    goto :goto_9

    .line 620
    :pswitch_data_40
    .packed-switch 0x7d0
        :pswitch_2f
        :pswitch_a
        :pswitch_2f
        :pswitch_34
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const v4, 0x7f08000d

    const v2, 0x7f030041

    const/4 v3, 0x7

    .line 394
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 396
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_81

    .line 397
    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileView;->requestWindowFeature(I)Z

    .line 398
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->setContentView(I)V

    .line 399
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f030002

    invoke-virtual {v1, v3, v2}, Landroid/view/Window;->setFeatureInt(II)V

    .line 400
    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/ProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->progress:Landroid/widget/ProgressBar;

    .line 405
    :goto_28
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 407
    const v1, 0x7f0800bc

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ExpandableListView;

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 409
    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    .line 410
    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getMedia(Landroid/content/Context;)Lcom/lge/sns/media/IMediaFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    .line 411
    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->snsManager:Lcom/lge/sns/SnsManager;

    invoke-virtual {v1, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 412
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->SettingManager:Lcom/lge/sns/setting/ISettingFacade;

    invoke-interface {v1}, Lcom/lge/sns/setting/ISettingFacade;->getUpdateTime()Lcom/lge/sns/setting/UpdateTime;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->settingInfo:Lcom/lge/sns/setting/UpdateTime;

    .line 413
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mInflater:Landroid/view/LayoutInflater;

    .line 415
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getProfile()Lcom/lge/sns/profile/Profile;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    .line 417
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    if-nez v1, :cond_91

    .line 418
    const v1, 0x7f05008c

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 443
    :cond_76
    :goto_76
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v1, p0}, Lcom/lge/sns/profile/IProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 444
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v1, p0}, Lcom/lge/sns/media/IMediaFacade;->registerMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V

    .line 445
    return-void

    .line 402
    :cond_81
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->progress:Landroid/widget/ProgressBar;

    .line 403
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->setContentView(I)V

    goto :goto_28

    .line 422
    :cond_91
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->initPhotoView()V

    .line 423
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->initWallView()V

    .line 425
    new-instance v1, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    iput-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    .line 426
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 427
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->isMyProfile()Z

    move-result v1

    if-eqz v1, :cond_b2

    .line 428
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->ChildClickListener:Landroid/widget/ExpandableListView$OnChildClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 431
    :cond_b2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b3
    sget-object v1, Lcom/lge/sns/profile/ui/ProfileView;->groupNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_c3

    .line 433
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_b3

    .line 436
    :cond_c3
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->isMyProfile()Z

    move-result v1

    if-nez v1, :cond_76

    .line 437
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ProfileView;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_d2

    .line 438
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->addSnsNameImage()V

    .line 440
    :cond_d2
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->friendUpdateInfo()V

    goto :goto_76
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 601
    packed-switch p1, :pswitch_data_34

    .line 614
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 603
    :pswitch_5
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    .line 604
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 605
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f050009

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 606
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/ProfileView$6;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/ProfileView$6;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 612
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->refreshDialog:Landroid/app/ProgressDialog;

    goto :goto_4

    .line 601
    nop

    :pswitch_data_34
    .packed-switch 0x3e8
        :pswitch_5
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 10
    .parameter "menu"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 641
    iget-boolean v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->myProfile:Z

    if-eqz v2, :cond_8f

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v2, :cond_8f

    .line 642
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.EDIT"

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 643
    .local v0, editIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->accountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v1

    .line 645
    .local v1, myAccount:Lcom/lge/sns/account/Account;
    const v2, 0x7f050085

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v6, v6, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003e

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 647
    const v2, 0x7f05008f

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080055

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 649
    const/4 v2, 0x3

    const v3, 0x7f05001e

    new-array v4, v7, [Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {p0, v3, v4}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108003d

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 660
    .end local v0           #editIntent:Landroid/content/Intent;
    .end local v1           #myAccount:Lcom/lge/sns/account/Account;
    :cond_63
    :goto_63
    const/4 v2, 0x2

    const v3, 0x7f05000e

    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v7, v2, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x108004c

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 662
    const/4 v2, 0x5

    const v3, 0x7f0500a7

    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080041

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 665
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    if-nez v2, :cond_8e

    .line 666
    invoke-interface {p1, v6, v6}, Landroid/view/Menu;->setGroupEnabled(IZ)V

    .line 670
    :cond_8e
    return v7

    .line 652
    :cond_8f
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v2, :cond_63

    .line 654
    const/4 v2, 0x6

    const v3, 0x7f050015

    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x7f02009f

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 656
    const/4 v2, 0x4

    const v3, 0x7f050021

    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileView;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v2

    const v3, 0x1080050

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_63
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 593
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 594
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 595
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profileFacade:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V

    .line 596
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/media/IMediaFacade;->removeMediaFileUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFileUpdateListener;)V

    .line 597
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/media/IMediaFacade;->removeMediaFolderUpdateListener(Lcom/lge/sns/media/IMediaFacade$MediaFolderUpdateListener;)V

    .line 598
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 4
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 674
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_2e

    .line 697
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 676
    :pswitch_a
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->uploadMedia()V

    move v0, v1

    .line 677
    goto :goto_9

    .line 679
    :pswitch_f
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->refresh(Z)V

    move v0, v1

    .line 680
    goto :goto_9

    .line 682
    :pswitch_14
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->goToSnsSiteThreadStart()V

    move v0, v1

    .line 683
    goto :goto_9

    .line 685
    :pswitch_19
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->editStatus()V

    move v0, v1

    .line 686
    goto :goto_9

    .line 688
    :pswitch_1e
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->addComment()V

    move v0, v1

    .line 689
    goto :goto_9

    .line 691
    :pswitch_23
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->showDetail()V

    move v0, v1

    .line 692
    goto :goto_9

    .line 694
    :pswitch_28
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ProfileView;->saveFriendContact()V

    move v0, v1

    .line 695
    goto :goto_9

    .line 674
    nop

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_19
        :pswitch_a
        :pswitch_f
        :pswitch_14
        :pswitch_1e
        :pswitch_23
        :pswitch_28
    .end packed-switch
.end method

.method public onProfileAdded(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 1069
    return-void
.end method

.method public onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 1089
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$16;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$16;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1096
    return-void
.end method

.method public onProfileCommentAdded(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 4
    .parameter "profileComment"

    .prologue
    .line 952
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 965
    :goto_10
    return-void

    .line 956
    :cond_11
    monitor-enter p0

    .line 957
    :try_start_12
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    if-eqz v0, :cond_33

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getProfileId()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/profile/ui/ProfileView;->matchCurrentProfile(J)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 958
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    invoke-virtual {v0, p1}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->addProfileComment(Lcom/lge/sns/profile/ProfileComment;)V

    .line 959
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->notified:Z

    if-eqz v0, :cond_30

    .line 960
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 962
    :cond_30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->notified:Z

    .line 964
    :cond_33
    monitor-exit p0

    goto :goto_10

    :catchall_35
    move-exception v0

    monitor-exit p0
    :try_end_37
    .catchall {:try_start_12 .. :try_end_37} :catchall_35

    throw v0
.end method

.method public onProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 7
    .parameter "profileComment"

    .prologue
    .line 968
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 988
    :goto_10
    return-void

    .line 972
    :cond_11
    monitor-enter p0

    .line 973
    :try_start_12
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    if-eqz v3, :cond_4a

    if-eqz p1, :cond_4a

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getProfileId()J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/lge/sns/profile/ui/ProfileView;->matchCurrentProfile(J)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 974
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->commentList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 975
    .local v1, l:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_29
    if-ge v0, v1, :cond_4a

    .line 976
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->commentList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/profile/ProfileComment;

    .line 977
    .local v2, pc:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {p1, v2}, Lcom/lge/sns/profile/ProfileComment;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    .line 978
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    invoke-virtual {v3, v2}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->removeProfileComment(Lcom/lge/sns/profile/ProfileComment;)V

    .line 979
    iget-boolean v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->notified:Z

    if-eqz v3, :cond_47

    .line 980
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->notifyJob:Ljava/lang/Runnable;

    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 982
    :cond_47
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/lge/sns/profile/ui/ProfileView;->notified:Z

    .line 987
    .end local v0           #i:I
    .end local v1           #l:I
    .end local v2           #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_4a
    monitor-exit p0

    goto :goto_10

    :catchall_4c
    move-exception v3

    monitor-exit p0
    :try_end_4e
    .catchall {:try_start_12 .. :try_end_4e} :catchall_4c

    throw v3

    .line 975
    .restart local v0       #i:I
    .restart local v1       #l:I
    .restart local v2       #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_4f
    add-int/lit8 v0, v0, 0x1

    goto :goto_29
.end method

.method public onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    .registers 2
    .parameter "profile"

    .prologue
    .line 1073
    return-void
.end method

.method public onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    .registers 3
    .parameter "profile"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    invoke-virtual {v0, p1}, Lcom/lge/sns/profile/Profile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1077
    iput-object p1, p0, Lcom/lge/sns/profile/ui/ProfileView;->profile:Lcom/lge/sns/profile/Profile;

    .line 1078
    new-instance v0, Lcom/lge/sns/profile/ui/ProfileView$15;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ProfileView$15;-><init>(Lcom/lge/sns/profile/ui/ProfileView;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ProfileView;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1086
    :cond_16
    return-void
.end method

.method protected onResume()V
    .registers 2

    .prologue
    .line 449
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 450
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    if-eqz v0, :cond_c

    .line 451
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ProfileView;->mAdapter:Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/ProfileView$ProfileExpandableListAdapter;->notifyDataSetChanged()V

    .line 452
    :cond_c
    return-void
.end method

.method public writeToDiskImage(Lcom/lge/sns/media/MediaFile;)V
    .registers 12
    .parameter "mf"

    .prologue
    .line 1110
    const/4 v8, 0x0

    .line 1113
    .local v8, orgPic:[B
    :try_start_1
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ProfileView;->mediaFacade:Lcom/lge/sns/media/IMediaFacade;

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

    .line 1124
    :goto_13
    new-instance v0, Lcom/lge/sns/media/MediaSdcard;

    invoke-direct {v0}, Lcom/lge/sns/media/MediaSdcard;-><init>()V

    .line 1126
    .local v0, inputOp:Lcom/lge/sns/media/MediaSdcard;
    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v8, v1}, Lcom/lge/sns/media/MediaSdcard;->writeToDiskImage(Landroid/content/Context;[BLjava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 1127
    .local v9, savedFile:Ljava/io/File;
    if-eqz v9, :cond_33

    .line 1128
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Ljava/io/File;->length()J

    move-result-wide v4

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/lge/sns/media/MediaSdcard;->addToMediaDB(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/media/MediaFile;J)V

    .line 1131
    :cond_33
    return-void

    .line 1114
    .end local v0           #inputOp:Lcom/lge/sns/media/MediaSdcard;
    .end local v9           #savedFile:Ljava/io/File;
    :catch_34
    move-exception v1

    move-object v6, v1

    .line 1115
    .local v6, e:Lcom/lge/sns/UnauthorizatedException;
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1116
    .local v7, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/media/MediaFile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1117
    const/16 v1, 0x7d0

    invoke-virtual {p0, v7, v1}, Lcom/lge/sns/profile/ui/ProfileView;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_13

    .line 1119
    .end local v6           #e:Lcom/lge/sns/UnauthorizatedException;
    .end local v7           #intent:Landroid/content/Intent;
    :catch_4c
    move-exception v1

    move-object v6, v1

    .line 1120
    .local v6, e:Lcom/lge/sns/SnsException;
    const-string v1, "ProfileView"

    const-string v2, "SnsException"

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1121
    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_13
.end method
