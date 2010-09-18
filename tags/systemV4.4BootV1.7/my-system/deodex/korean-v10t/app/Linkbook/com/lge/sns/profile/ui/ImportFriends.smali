.class public Lcom/lge/sns/profile/ui/ImportFriends;
.super Landroid/app/Activity;
.source "ImportFriends.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;,
        Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;,
        Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    }
.end annotation


# static fields
.field private static final DISPLAY_SIZE:I = 0xa

.field private static final MENU_ITEM_REFRESH:I = 0x1

.field private static final POPUP_REFRESH_FRIENDSLIST:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ImportFriends"

.field private static mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

.field private static mHandler:Landroid/os/Handler;


# instance fields
.field private AccountManager:Lcom/lge/sns/account/IAccountFacade;

.field private mContactsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

.field mContactsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsList:Landroid/widget/ListView;

.field private mContactsListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

.field private mCurrentAccount:Lcom/lge/sns/account/Account;

.field private mCurrentCredential:Lcom/lge/sns/account/Credential;

.field private mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

.field private mFriendsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

.field mFriendsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFriendsList:Landroid/widget/ListView;

.field private mFriendsListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

.field mFriendsListListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mIsRegListener:Z

.field private mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

.field private mRefreshDialog:Landroid/app/ProgressDialog;

.field private mSnsID:Ljava/lang/String;

.field private mUserEmail:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/ui/ImportFriends;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsEntries:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    .line 59
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mIsRegListener:Z

    .line 77
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ImportFriends$1;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsListListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 96
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ImportFriends$2;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    .line 120
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/ImportFriends$3;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    .line 395
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->updateAll()V

    return-void
.end method

.method static synthetic access$1100(Lcom/lge/sns/profile/ui/ImportFriends;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mRefreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ProfileListItem;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends;->findInsertIndexSortByNaming(Lcom/lge/sns/profile/ProfileListItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/lge/sns/profile/ui/ImportFriends;ILcom/lge/sns/profile/ProfileListItem;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/ImportFriends;->setEntry(ILcom/lge/sns/profile/ProfileListItem;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;Lcom/lge/sns/profile/ProfileListItem;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/ImportFriends;->setEntry(Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;Lcom/lge/sns/profile/ProfileListItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ProfileListItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends;->setEntry(Lcom/lge/sns/profile/ProfileListItem;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->updateFriendsList()V

    return-void
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 41
    sget-object v0, Lcom/lge/sns/profile/ui/ImportFriends;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->updateContactsList()V

    return-void
.end method

.method static synthetic access$600(Lcom/lge/sns/profile/ui/ImportFriends;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mSnsID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/lge/sns/profile/ui/ImportFriends;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/profile/ui/ImportFriends;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->addAction()V

    return-void
.end method

.method static synthetic access$900(Lcom/lge/sns/profile/ui/ImportFriends;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method private addAction()V
    .registers 8

    .prologue
    .line 364
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->updateFriendsList()V

    .line 365
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->updateContactsList()V

    .line 367
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 368
    .local v1, curPosition:I
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 369
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_13
    if-ge v2, v0, :cond_27

    .line 370
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 371
    .local v3, vi:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    add-int v5, v1, v2

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    invoke-virtual {v4, v5, v3, v6}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 374
    .end local v3           #vi:Landroid/view/View;
    :cond_27
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    .line 375
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 376
    const/4 v2, 0x0

    :goto_34
    if-ge v2, v0, :cond_48

    .line 377
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v4, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 378
    .restart local v3       #vi:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    add-int v5, v1, v2

    iget-object v6, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsList:Landroid/widget/ListView;

    invoke-virtual {v4, v5, v3, v6}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 376
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 380
    .end local v3           #vi:Landroid/view/View;
    :cond_48
    return-void
.end method

.method private buildContactsList()V
    .registers 5

    .prologue
    .line 330
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 331
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 332
    :cond_9
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mSnsID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    const/16 v3, 0xa

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->getContactsList(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;I)V

    .line 333
    return-void
.end method

.method private buildFriendsList()V
    .registers 8

    .prologue
    const/16 v4, 0xa

    const-string v3, ""

    .line 310
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    .line 311
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 313
    :cond_d
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mIsRegListener:Z

    if-eqz v0, :cond_1f

    .line 314
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mSnsID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mUserID:Ljava/lang/String;

    const-string v5, ""

    iget-object v5, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/profile/IProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V

    .line 321
    :goto_1e
    return-void

    .line 318
    :cond_1f
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mIsRegListener:Z

    .line 319
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mSnsID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mUserID:Ljava/lang/String;

    const-string v5, ""

    iget-object v5, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/lge/sns/profile/IProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    goto :goto_1e
.end method

.method private findFriendProfile(Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    .registers 8
    .parameter "profile"

    .prologue
    const/4 v5, 0x0

    .line 547
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    move-object v3, v5

    .line 559
    :goto_6
    return-object v3

    .line 550
    :cond_7
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 552
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_2d

    .line 554
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 555
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    iget-object v3, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_2a

    move-object v3, v0

    .line 556
    goto :goto_6

    .line 552
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .end local v0           #entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    :cond_2d
    move-object v3, v5

    .line 559
    goto :goto_6
.end method

.method private findInsertIndexSortByNaming(Lcom/lge/sns/profile/ProfileListItem;)I
    .registers 7
    .parameter "profile"

    .prologue
    .line 563
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    if-nez v3, :cond_d

    .line 564
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    .line 565
    const/4 v3, 0x0

    .line 578
    :goto_c
    return v3

    .line 568
    :cond_d
    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 569
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;>;"
    const/4 v2, 0x0

    .line 571
    .local v2, ret:I
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_30

    .line 572
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 573
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    iget-object v3, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_32

    .end local v0           #entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    :cond_30
    move v3, v2

    .line 578
    goto :goto_c

    .line 576
    .restart local v0       #entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    :cond_32
    add-int/lit8 v2, v2, 0x1

    .line 577
    goto :goto_14
.end method

.method private setEntry(ILcom/lge/sns/profile/ProfileListItem;)V
    .registers 5
    .parameter "index"
    .parameter "profile"

    .prologue
    .line 525
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_e

    .line 526
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 529
    :cond_e
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;-><init>()V

    .line 530
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    iput-object p2, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    .line 531
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 532
    return-void
.end method

.method private setEntry(Lcom/lge/sns/profile/ProfileListItem;)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 516
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;-><init>()V

    .line 517
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    iput-object p1, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    .line 518
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getId()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->id:J

    .line 519
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mUserEmail:Ljava/lang/String;

    invoke-interface {v1, p1, v2}, Lcom/lge/sns/profile/IProfileFacade;->isExistInContacts(Lcom/lge/sns/profile/ProfileListItem;Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->isAdded:Z

    .line 521
    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 522
    return-void
.end method

.method private setEntry(Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;Lcom/lge/sns/profile/ProfileListItem;)V
    .registers 4
    .parameter "entry"
    .parameter "profile"

    .prologue
    .line 536
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    .line 537
    iput-object p2, p1, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    .line 538
    return-void
.end method

.method private updateAll()V
    .registers 1

    .prologue
    .line 357
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->buildFriendsList()V

    .line 358
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->buildContactsList()V

    .line 361
    return-void
.end method

.method private updateContactsList()V
    .registers 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    if-nez v0, :cond_15

    .line 348
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    .line 349
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    :goto_14
    return-void

    .line 351
    :cond_15
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_14
.end method

.method private updateFriendsList()V
    .registers 3

    .prologue
    .line 337
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    if-nez v0, :cond_15

    .line 338
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    .line 339
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 343
    :goto_14
    return-void

    .line 341
    :cond_15
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsAdapter:Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/ImportFriends$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_14
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2
    .parameter "newConfig"

    .prologue
    .line 501
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 507
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x7

    .line 157
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 159
    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/ImportFriends;->requestWindowFeature(I)Z

    .line 160
    const v2, 0x7f03001b

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->setContentView(I)V

    .line 161
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 164
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 166
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 167
    .local v1, titleText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    const v2, 0x7f080048

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsList:Landroid/widget/ListView;

    .line 170
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mContactsList:Landroid/widget/ListView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 171
    const v2, 0x7f08004b

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    .line 173
    const v2, 0x7f080047

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 174
    .local v0, btn:Landroid/widget/Button;
    new-instance v2, Lcom/lge/sns/profile/ui/ImportFriends$4;

    invoke-direct {v2, p0}, Lcom/lge/sns/profile/ui/ImportFriends$4;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsListListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 202
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sns_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mSnsID:Ljava/lang/String;

    .line 204
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mSnsID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mCurrentAccount:Lcom/lge/sns/account/Account;

    .line 205
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mCurrentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    .line 206
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mUserID:Ljava/lang/String;

    .line 207
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mUserEmail:Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mUserID:Ljava/lang/String;

    if-nez v2, :cond_9e

    .line 213
    :cond_9e
    invoke-static {p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->getFriendsDataLoader(Ljava/lang/Object;)Lcom/lge/sns/profile/ui/FriendsDataLoader;

    move-result-object v2

    sput-object v2, Lcom/lge/sns/profile/ui/ImportFriends;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    .line 215
    new-instance v2, Lcom/lge/sns/profile/ui/ImportFriends$5;

    invoke-direct {v2, p0}, Lcom/lge/sns/profile/ui/ImportFriends$5;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;)V

    iput-object v2, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    .line 242
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->updateAll()V

    .line 243
    const-string v2, "ImportFriends"

    const-string v3, " [[[[[ onCreate  ]]]]]]]"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 248
    packed-switch p1, :pswitch_data_3e

    .line 265
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 251
    :pswitch_8
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3b

    .line 253
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 254
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/ImportFriends;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mRefreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 256
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mRefreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/ImportFriends$6;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/ImportFriends$6;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 263
    :cond_3b
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mRefreshDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 248
    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .registers 5
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 273
    const/4 v0, 0x1

    const v1, 0x7f05000e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 276
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .registers 3

    .prologue
    .line 303
    const-string v0, "ImportFriends"

    const-string v1, " [[[[[ onDestroy  ]]]]]]]"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    sget-object v0, Lcom/lge/sns/profile/ui/ImportFriends;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-virtual {v0, p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->unregObj(Ljava/lang/Object;)V

    .line 305
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 306
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 5
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 281
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_16

    .line 289
    const/4 v0, 0x0

    :goto_9
    return v0

    .line 285
    :pswitch_a
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/ImportFriends;->showDialog(I)V

    .line 286
    sget-object v0, Lcom/lge/sns/profile/ui/ImportFriends;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    invoke-virtual {v0, v1}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->addEvent(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V

    move v0, v2

    .line 287
    goto :goto_9

    .line 281
    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_a
    .end packed-switch
.end method

.method public onProfileAdded(Lcom/lge/sns/profile/Profile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 584
    const-string v0, "ImportFriends"

    const-string v1, " ==== onProfileAdded  ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v0, Lcom/lge/sns/profile/ui/ImportFriends$7;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends$7;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/Profile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/ImportFriends;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 593
    return-void
.end method

.method public onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 640
    const-string v7, "ImportFriends"

    const-string v8, " ==== onProfileAvatarLoaded  ==== "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    if-eqz v7, :cond_42

    .line 642
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 643
    .local v2, firstPosition:I
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 645
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_18
    if-ge v3, v0, :cond_42

    .line 646
    iget-object v7, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mFriendsList:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 647
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;

    .line 648
    .local v6, vc:Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;
    if-eqz v6, :cond_43

    .line 649
    iget-object v1, v6, Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;->entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    .line 650
    .local v1, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    if-eqz v1, :cond_43

    iget-object v7, v1, Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;->mProfile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v7}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 653
    add-int v4, v2, v3

    .line 654
    .local v4, position:I
    new-instance v7, Lcom/lge/sns/profile/ui/ImportFriends$10;

    invoke-direct {v7, p0, v4, v5}, Lcom/lge/sns/profile/ui/ImportFriends$10;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;ILandroid/view/View;)V

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/ImportFriends;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 667
    .end local v0           #childCount:I
    .end local v1           #entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    .end local v2           #firstPosition:I
    .end local v3           #i:I
    .end local v4           #position:I
    .end local v5           #v:Landroid/view/View;
    .end local v6           #vc:Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;
    :cond_42
    return-void

    .line 645
    .restart local v0       #childCount:I
    .restart local v2       #firstPosition:I
    .restart local v3       #i:I
    .restart local v5       #v:Landroid/view/View;
    .restart local v6       #vc:Lcom/lge/sns/profile/ui/ImportFriends$ViewCache;
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_18
.end method

.method public onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 597
    const-string v1, "ImportFriends"

    const-string v2, " ==== onProfileRemoved  ==== "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends;->findFriendProfile(Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    move-result-object v0

    .line 599
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    if-nez v0, :cond_e

    .line 614
    :goto_d
    return-void

    .line 605
    :cond_e
    new-instance v1, Lcom/lge/sns/profile/ui/ImportFriends$8;

    invoke-direct {v1, p0, v0}, Lcom/lge/sns/profile/ui/ImportFriends$8;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ImportFriends;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_d
.end method

.method public onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 618
    const-string v1, "ImportFriends"

    const-string v2, " ==== onProfileUpdated  ==== "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends;->findFriendProfile(Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;

    move-result-object v0

    .line 621
    .local v0, entry:Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;
    if-nez v0, :cond_11

    .line 623
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/ImportFriends;->onProfileAdded(Lcom/lge/sns/profile/Profile;)V

    .line 636
    :goto_10
    return-void

    .line 627
    :cond_11
    new-instance v1, Lcom/lge/sns/profile/ui/ImportFriends$9;

    invoke-direct {v1, p0, v0, p1}, Lcom/lge/sns/profile/ui/ImportFriends$9;-><init>(Lcom/lge/sns/profile/ui/ImportFriends;Lcom/lge/sns/profile/ui/ImportFriends$ViewEntry;Lcom/lge/sns/profile/Profile;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/ImportFriends;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_10
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mIsRegListener:Z

    if-eqz v0, :cond_9

    .line 297
    iget-object v0, p0, Lcom/lge/sns/profile/ui/ImportFriends;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 298
    :cond_9
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 299
    return-void
.end method
