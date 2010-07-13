.class public Lcom/lge/sns/profile/ui/FriendsList;
.super Landroid/app/ListActivity;
.source "FriendsList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;,
        Lcom/lge/sns/profile/ui/FriendsList$ViewCache;,
        Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    }
.end annotation


# static fields
.field private static final DISPLAY_SIZE:I = 0xa

.field private static final FOCUS_KEY:Ljava/lang/String; = "focused"

.field private static final INSERT_BIRTHDAY:Ljava/lang/String; = "birthday"

.field private static final INSERT_CONTACT_PHOTO:Ljava/lang/String; = "contact_photo"

.field private static final INSERT_EMAIL:Ljava/lang/String; = "email"

.field private static final INSERT_NAME:Ljava/lang/String; = "name"

.field private static final INSERT_NOTES:Ljava/lang/String; = "notes"

.field private static final INSERT_PHONE:Ljava/lang/String; = "phone"

.field private static final INSERT_POSTAL:Ljava/lang/String; = "postal"

.field private static final INSERT_SNS_ID:Ljava/lang/String; = "sns_id"

.field private static final INSERT_SN_SITE_ID:Ljava/lang/String; = "sn_site_id"

.field private static final INSERT_SN_USER_ID:Ljava/lang/String; = "sn_user_id"

.field private static final INSERT_USER_ID:Ljava/lang/String; = "user_id"

.field private static final LISTENTRY_COMPARE_CONUNT:I = 0x2

.field private static final LISTENTRY_DEFAULT:I = 0x1

.field private static final LIST_STATE_KEY:Ljava/lang/String; = "liststate"

.field private static final MENU_CONTEXT_GO_SERVICE:I = 0x0

.field private static final MENU_CONTEXT_SAVE_PROFILE:I = 0x2

.field private static final MENU_CONTEXT_SEND_MESSAGE:I = 0x1

.field private static final MENU_ITEM_REFRESH:I = 0x0

.field private static final MENU_ITEM_SAVE_CONTACT:I = 0x1

.field private static final MODE_DEFAULT:I = 0x1

.field private static final MODE_PICK:I = 0x2

.field private static final PEOPLE_CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/person"

.field private static final POPUP_REFRESH_FRIENDSLIST:I = 0x1

.field private static final SEARCHKEY_BUNDLE_KEY:Ljava/lang/String; = "search_key_is"

.field private static final SNS_ACTION_ERROR:Ljava/lang/String; = "sns_action_error"

.field private static final SNS_ACTION_NONEERROR:Ljava/lang/String; = "sns_action_noneerror"

.field private static final SNS_ERROR_KEY:Ljava/lang/String; = "sns_error_key"

.field private static final SNS_ERROR_SNSEXCEPTION:I = 0x1

.field private static final SNS_ERROR_UNAUTHORIZATED:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FriendsList"

.field private static mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

.field private static mListViewScrollState:I

.field private static mSiFriendsCompareCount:I


# instance fields
.field AccountManager:Lcom/lge/sns/account/IAccountFacade;

.field private mAdapter:Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

.field private mCurrentAccount:Lcom/lge/sns/account/Account;

.field private mCurrentCredential:Lcom/lge/sns/account/Credential;

.field private mEditText:Landroid/widget/EditText;

.field private mFLRunnableCallBackFinishedUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

.field private mFLRunnableCallBackGoToSite:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

.field private mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

.field private mIsListComplete:Z

.field private mIsRegListener:Z

.field private mIsSearch:Z

.field private mIsUpdating:Z

.field private mIsUpdatingSearch:Z

.field private mList:Landroid/widget/ListView;

.field private mListHasFocus:Z

.field private mListState:Landroid/os/Parcelable;

.field private mMode:I

.field private mProfileListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

.field private mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

.field private mRefreshDialog:Landroid/app/ProgressDialog;

.field private mSearchKey:Ljava/lang/String;

.field mServiceEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSnsID:Ljava/lang/String;

.field private mUserEmail:Ljava/lang/String;

.field private mUserID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lcom/lge/sns/profile/ui/FriendsList;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    .line 153
    const/4 v0, 0x0

    sput v0, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    .line 137
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    .line 146
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsRegListener:Z

    .line 147
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdating:Z

    .line 156
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$1;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/FriendsList$1;-><init>(Lcom/lge/sns/profile/ui/FriendsList;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mFLRunnableCallBackFinishedUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    .line 192
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$2;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/FriendsList$2;-><init>(Lcom/lge/sns/profile/ui/FriendsList;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mFLRunnableCallBackGoToSite:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    .line 224
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$3;

    invoke-direct {v0, p0}, Lcom/lge/sns/profile/ui/FriendsList$3;-><init>(Lcom/lge/sns/profile/ui/FriendsList;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    .line 248
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListState:Landroid/os/Parcelable;

    .line 252
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsSearch:Z

    .line 797
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/ui/FriendsList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdatingSearch:Z

    return v0
.end method

.method static synthetic access$002(Lcom/lge/sns/profile/ui/FriendsList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdatingSearch:Z

    return p1
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->buildEntries()V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/sns/profile/ui/FriendsList;)Lcom/lge/sns/profile/IProfileFacade;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->refreshCompareFriendsCount()V

    return-void
.end method

.method static synthetic access$1200(Lcom/lge/sns/profile/ui/FriendsList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/sns/profile/ui/FriendsList;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400()I
    .registers 1

    .prologue
    .line 57
    sget v0, Lcom/lge/sns/profile/ui/FriendsList;->mListViewScrollState:I

    return v0
.end method

.method static synthetic access$1508()I
    .registers 2

    .prologue
    .line 57
    sget v0, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    return v0
.end method

.method static synthetic access$1510()I
    .registers 2

    .prologue
    .line 57
    sget v0, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    sput v1, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    return v0
.end method

.method static synthetic access$1600(Lcom/lge/sns/profile/ui/FriendsList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsSearch:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/Profile;)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->containSearchKeyAndProfile(Lcom/lge/sns/profile/Profile;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ProfileListItem;)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->findInsertIndexSortByNaming(Lcom/lge/sns/profile/ProfileListItem;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Lcom/lge/sns/profile/ui/FriendsList;ILcom/lge/sns/profile/ProfileListItem;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/ui/FriendsList;->setEntry(ILcom/lge/sns/profile/ProfileListItem;)V

    return-void
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->setCompareFriendsCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->findFriendProfile(Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/widget/ListView;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/lge/sns/profile/ui/FriendsList;)Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mAdapter:Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->dataChanged()V

    return-void
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/ui/FriendsList;I)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->procErrorCodeAfterBackgroundJob(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/lge/sns/profile/ui/FriendsList;)Landroid/app/ProgressDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mRefreshDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/profile/ui/FriendsList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdating:Z

    return v0
.end method

.method static synthetic access$602(Lcom/lge/sns/profile/ui/FriendsList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdating:Z

    return p1
.end method

.method static synthetic access$700(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ProfileListItem;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->setEntry(Lcom/lge/sns/profile/ProfileListItem;)V

    return-void
.end method

.method static synthetic access$800(Lcom/lge/sns/profile/ui/FriendsList;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsListComplete:Z

    return v0
.end method

.method static synthetic access$802(Lcom/lge/sns/profile/ui/FriendsList;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsListComplete:Z

    return p1
.end method

.method static synthetic access$900(Lcom/lge/sns/profile/ui/FriendsList;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getSearchKey()V

    return-void
.end method

.method private final buildEntries()V
    .registers 8

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 552
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsListComplete:Z

    .line 553
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 554
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->dataChanged()V

    .line 555
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_36

    .line 556
    :cond_1e
    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsSearch:Z

    .line 557
    const-string v0, ""

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    .line 562
    :goto_24
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsRegListener:Z

    if-eqz v0, :cond_39

    .line 563
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    invoke-interface/range {v0 .. v5}, Lcom/lge/sns/profile/IProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V

    .line 568
    :goto_35
    return-void

    .line 559
    :cond_36
    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsSearch:Z

    goto :goto_24

    .line 565
    :cond_39
    iput-boolean v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsRegListener:Z

    .line 566
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileListCB:Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/lge/sns/profile/IProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    goto :goto_35
.end method

.method private containSearchKeyAndProfile(Lcom/lge/sns/profile/Profile;)Z
    .registers 4
    .parameter "profile"

    .prologue
    .line 1043
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 1044
    :cond_14
    const/4 v0, 0x1

    .line 1046
    :goto_15
    return v0

    :cond_16
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_15
.end method

.method private createCustomTitle()V
    .registers 6

    .prologue
    const/4 v4, 0x7

    .line 643
    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/FriendsList;->requestWindowFeature(I)Z

    .line 644
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->setContentView(I)V

    .line 645
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getWindow()Landroid/view/Window;

    move-result-object v2

    const v3, 0x7f030002

    invoke-virtual {v2, v4, v3}, Landroid/view/Window;->setFeatureInt(II)V

    .line 648
    const v2, 0x7f08000b

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 649
    .local v0, titleImage:Landroid/widget/ImageView;
    const v2, 0x7f08000c

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 651
    .local v1, titleText:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentAccount:Lcom/lge/sns/account/Account;

    invoke-direct {p0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 652
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 653
    return-void
.end method

.method private dataChanged()V
    .registers 3

    .prologue
    .line 361
    const-string v0, "FriendsList"

    const-string v1, " ==== dataChanged  ==== "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mAdapter:Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

    if-nez v0, :cond_1a

    .line 363
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mAdapter:Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

    .line 364
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mAdapter:Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendsList;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 368
    :goto_19
    return-void

    .line 366
    :cond_1a
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mAdapter:Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

    invoke-virtual {v0}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->notifyDataSetChanged()V

    goto :goto_19
.end method

.method private findFriendProfile(Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    .registers 8
    .parameter "profile"

    .prologue
    const/4 v5, 0x0

    .line 1005
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    if-nez v3, :cond_7

    move-object v3, v5

    .line 1019
    :goto_6
    return-object v3

    .line 1008
    :cond_7
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1010
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_e
    if-ge v1, v2, :cond_1d

    .line 1012
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 1013
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iget v3, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1f

    .end local v0           #entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    :cond_1d
    move-object v3, v5

    .line 1019
    goto :goto_6

    .line 1015
    .restart local v0       #entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    :cond_1f
    iget-object v3, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_31

    move-object v3, v0

    .line 1016
    goto :goto_6

    .line 1010
    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_e
.end method

.method private findInsertIndexSortByNaming(Lcom/lge/sns/profile/ProfileListItem;)I
    .registers 7
    .parameter "profile"

    .prologue
    .line 1023
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    if-nez v3, :cond_d

    .line 1024
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    .line 1025
    const/4 v3, 0x0

    .line 1039
    :goto_c
    return v3

    .line 1028
    :cond_d
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1029
    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;>;"
    const/4 v2, 0x0

    .line 1031
    .local v2, ret:I
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_35

    .line 1032
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 1033
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iget v3, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_35

    iget-object v3, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v3}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_37

    .end local v0           #entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    :cond_35
    move v3, v2

    .line 1039
    goto :goto_c

    .line 1037
    .restart local v0       #entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    :cond_37
    add-int/lit8 v2, v2, 0x1

    .line 1038
    goto :goto_14
.end method

.method private getGoToSiteIntent(Lcom/lge/sns/profile/ProfileListItem;)Landroid/content/Intent;
    .registers 5
    .parameter "profile"

    .prologue
    .line 496
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 497
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 498
    const-string v1, "friends_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    return-object v0
.end method

.method private getGoToSiteRunnalbeObject(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
    .registers 5
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 710
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$6;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mFLRunnableCallBackGoToSite:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/lge/sns/profile/ui/FriendsList$6;-><init>(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    .local v0, FLRunnableGoToSite:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;
    return-object v0
.end method

.method private getIcon(Lcom/lge/sns/account/Account;)Landroid/graphics/Bitmap;
    .registers 6
    .parameter "account"

    .prologue
    .line 656
    invoke-virtual {p1}, Lcom/lge/sns/account/Account;->getIconImage()[B

    move-result-object v0

    .line 657
    .local v0, icon:[B
    const/4 v2, 0x0

    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 658
    .local v1, photo:Landroid/graphics/Bitmap;
    return-object v1
.end method

.method public static getSaveProfileToContactIntent(Landroid/content/Context;Lcom/lge/sns/profile/Profile;Lcom/lge/sns/account/IAccountFacade;)Landroid/content/Intent;
    .registers 14
    .parameter "context"
    .parameter "profile"
    .parameter "accountmgr"

    .prologue
    .line 76
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v8

    invoke-virtual {v8, p0}, Lcom/lge/sns/SnsManager;->getProfile(Landroid/content/Context;)Lcom/lge/sns/profile/IProfileFacade;

    move-result-object v7

    .line 77
    .local v7, profilefacade:Lcom/lge/sns/profile/IProfileFacade;
    new-instance v3, Landroid/content/Intent;

    const-string v8, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 78
    .local v3, intent:Landroid/content/Intent;
    const-string v8, "vnd.android.cursor.item/person"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 79
    const-string v8, "phone"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    const-string v8, "email"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a8

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_a8

    .line 84
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 90
    .local v6, name:Ljava/lang/String;
    :goto_3a
    const-string v8, "name"

    invoke-virtual {v3, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const-string v8, "postal"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getHometown()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    const-string v8, "contact_photo"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v9, v10}, Lcom/lge/sns/profile/IProfileFacade;->getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 94
    const-string v8, "notes"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getBirthDateTime()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, birthday:Ljava/lang/String;
    if-eqz v2, :cond_77

    invoke-static {v2}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_77

    .line 97
    invoke-static {v2}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v4

    .line 98
    .local v4, intentItem:J
    const-string v8, "birthday"

    invoke-virtual {v3, v8, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 100
    .end local v4           #intentItem:J
    :cond_77
    const-string v8, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    const-string v8, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    const-string v8, "sn_site_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v8}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v0

    .line 105
    .local v0, CurAccount:Lcom/lge/sns/account/Account;
    invoke-virtual {v0}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v1

    .line 106
    .local v1, CurCredential:Lcom/lge/sns/account/Credential;
    const-string v8, "sn_user_id"

    invoke-virtual {v1}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    return-object v3

    .line 85
    .end local v0           #CurAccount:Lcom/lge/sns/account/Account;
    .end local v1           #CurCredential:Lcom/lge/sns/account/Credential;
    .end local v2           #birthday:Ljava/lang/String;
    .end local v6           #name:Ljava/lang/String;
    :cond_a8
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_be

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_be

    .line 86
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #name:Ljava/lang/String;
    goto/16 :goto_3a

    .line 88
    .end local v6           #name:Ljava/lang/String;
    :cond_be
    const-string v6, ""

    .restart local v6       #name:Ljava/lang/String;
    goto/16 :goto_3a
.end method

.method private final getSearchKey()V
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    .line 549
    return-void
.end method

.method private getSnMsgIntent(Lcom/lge/sns/profile/ProfileListItem;)Landroid/content/Intent;
    .registers 5
    .parameter "profile"

    .prologue
    .line 487
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.message.intent.action.MESSAGE_SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 488
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    const-string v1, "recipient_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    return-object v0
.end method

.method private procErrorCodeAfterBackgroundJob(I)V
    .registers 5
    .parameter "errorcode"

    .prologue
    .line 768
    packed-switch p1, :pswitch_data_22

    .line 779
    :goto_3
    return-void

    .line 771
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.lge.sns.account.intent.action.VIEW_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendsList;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 776
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_16
    const v1, 0x7f05000d

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 768
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_4
        :pswitch_16
    .end packed-switch
.end method

.method private refreshCompareFriendsCount()V
    .registers 6

    .prologue
    .line 950
    :try_start_0
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->refreshProfile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_0 .. :try_end_9} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_9} :catch_27

    .line 958
    :goto_9
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFriendCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->getFriendCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    .line 960
    return-void

    .line 951
    :catch_21
    move-exception v1

    move-object v0, v1

    .line 953
    .local v0, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v0}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto :goto_9

    .line 954
    .end local v0           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_27
    move-exception v1

    move-object v0, v1

    .line 956
    .local v0, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v0}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto :goto_9
.end method

.method private removeCompareFriendsCount()V
    .registers 5

    .prologue
    .line 588
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v1, v2, v3

    .line 589
    .local v1, index:I
    if-gez v1, :cond_c

    .line 595
    :cond_b
    :goto_b
    return-void

    .line 590
    :cond_c
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 591
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iget v2, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_b

    .line 592
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 593
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->dataChanged()V

    goto :goto_b
.end method

.method private setBtnListener()V
    .registers 3

    .prologue
    .line 690
    const v1, 0x7f080022

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 691
    .local v0, btn:Landroid/widget/ImageButton;
    new-instance v1, Lcom/lge/sns/profile/ui/FriendsList$5;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/FriendsList$5;-><init>(Lcom/lge/sns/profile/ui/FriendsList;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 706
    return-void
.end method

.method private setCompareFriendsCount()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    .line 571
    sget v3, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    if-lez v3, :cond_33

    .line 572
    const/4 v2, 0x0

    .line 573
    .local v2, lastentry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .line 574
    .local v1, index:I
    if-ltz v1, :cond_1d

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #lastentry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    check-cast v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .restart local v2       #lastentry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iget v3, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    if-eq v3, v5, :cond_2e

    .line 575
    :cond_1d
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;-><init>()V

    .line 576
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iput v5, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    .line 577
    sget v3, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    iput v3, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->compareCount:I

    .line 578
    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    .end local v0           #entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    .end local v1           #index:I
    .end local v2           #lastentry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    :goto_2d
    return-void

    .line 580
    .restart local v1       #index:I
    .restart local v2       #lastentry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    :cond_2e
    sget v3, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    iput v3, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->compareCount:I

    goto :goto_2d

    .line 583
    .end local v1           #index:I
    .end local v2           #lastentry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    :cond_33
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->removeCompareFriendsCount()V

    goto :goto_2d
.end method

.method private setCustomTitle()V
    .registers 4

    .prologue
    .line 625
    :try_start_0
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getParent()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityGroup;

    .line 626
    .local v0, acti:Landroid/app/ActivityGroup;
    if-nez v0, :cond_c

    .line 628
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->createCustomTitle()V

    .line 639
    .end local v0           #acti:Landroid/app/ActivityGroup;
    :goto_b
    return-void

    .line 632
    .restart local v0       #acti:Landroid/app/ActivityGroup;
    :cond_c
    const v2, 0x7f030010

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->setContentView(I)V
    :try_end_12
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_12} :catch_13

    goto :goto_b

    .line 635
    .end local v0           #acti:Landroid/app/ActivityGroup;
    :catch_13
    move-exception v2

    move-object v1, v2

    .line 637
    .local v1, e:Ljava/lang/ClassCastException;
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->createCustomTitle()V

    goto :goto_b
.end method

.method private setEntry(ILcom/lge/sns/profile/ProfileListItem;)V
    .registers 5
    .parameter "index"
    .parameter "profile"

    .prologue
    .line 606
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le p1, v1, :cond_e

    .line 607
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 610
    :cond_e
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;-><init>()V

    .line 611
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iput-object p2, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    .line 612
    const/4 v1, 0x1

    iput v1, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    .line 613
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 614
    return-void
.end method

.method private setEntry(Lcom/lge/sns/profile/ProfileListItem;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 599
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;-><init>()V

    .line 600
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iput-object p1, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    .line 601
    const/4 v1, 0x1

    iput v1, v0, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    .line 602
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 603
    return-void
.end method

.method private setEntry(Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;Lcom/lge/sns/profile/ProfileListItem;)V
    .registers 4
    .parameter "entry"
    .parameter "profile"

    .prologue
    .line 618
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    .line 619
    iput-object p2, p1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    .line 620
    return-void
.end method

.method private setMode()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 663
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 664
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 666
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    .line 667
    iput v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mMode:I

    .line 674
    :goto_13
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    .line 675
    iget v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mMode:I

    if-eq v2, v3, :cond_26

    .line 676
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-interface {v2}, Lcom/lge/sns/account/IAccountFacade;->getAccountList()Ljava/util/List;

    .line 677
    :cond_26
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "sns_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    .line 678
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentAccount:Lcom/lge/sns/account/Account;

    .line 679
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v2}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    .line 680
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    .line 681
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    if-nez v2, :cond_50

    .line 685
    :cond_50
    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v2}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserEmail:Ljava/lang/String;

    .line 686
    return-void

    .line 668
    :cond_59
    const-string v2, "android.intent.action.PICK"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 669
    const/4 v2, 0x2

    iput v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mMode:I

    goto :goto_13

    .line 671
    :cond_65
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->finish()V

    goto :goto_13
.end method

.method private setUpdateRunnableObject()V
    .registers 3

    .prologue
    .line 740
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$7;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mFLRunnableCallBackFinishedUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;

    invoke-direct {v0, p0, v1}, Lcom/lge/sns/profile/ui/FriendsList$7;-><init>(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnableCallBack;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    .line 764
    return-void
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .registers 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    .line 504
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_3e

    .line 519
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_c
    return v1

    .line 506
    :pswitch_d
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 507
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/FriendsList;->showDialog(I)V

    .line 508
    sget-object v1, Lcom/lge/sns/profile/ui/FriendsList;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    const-string v2, "sns_id"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "friends_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/sns/profile/ui/FriendsList;->getGoToSiteRunnalbeObject(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->addEvent(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V

    move v1, v4

    .line 511
    goto :goto_c

    .line 513
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_2b
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendsList;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 514
    goto :goto_c

    .line 516
    :pswitch_34
    invoke-interface {p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendsList;->startActivity(Landroid/content/Intent;)V

    move v1, v4

    .line 517
    goto :goto_c

    .line 504
    nop

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_d
        :pswitch_2b
        :pswitch_34
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 264
    invoke-virtual {p0, v4}, Lcom/lge/sns/profile/ui/FriendsList;->setResult(I)V

    .line 265
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->setMode()V

    .line 266
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->setCustomTitle()V

    .line 270
    const v0, 0x7f080021

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendsList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mEditText:Landroid/widget/EditText;

    .line 271
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 272
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    .line 276
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 277
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 278
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 279
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 281
    invoke-static {p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->getFriendsDataLoader(Ljava/lang/Object;)Lcom/lge/sns/profile/ui/FriendsDataLoader;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/ui/FriendsList;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    .line 283
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->setBtnListener()V

    .line 284
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->setUpdateRunnableObject()V

    .line 286
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFriendCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->getFriendCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    .line 289
    iput-boolean v4, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsSearch:Z

    .line 290
    iput-boolean v4, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdatingSearch:Z

    .line 291
    iput-boolean v4, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsListComplete:Z

    .line 293
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getSearchKey()V

    .line 294
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->buildEntries()V

    .line 295
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->dataChanged()V

    .line 296
    const-string v0, "FriendsList"

    const-string v1, " [[[[[[[  on Create  ]]]]]]] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 17
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v7, 0x1

    .line 451
    :try_start_1
    move-object/from16 v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v4, v0
    :try_end_6
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_6} :catch_b

    .line 457
    .local v4, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v6, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    if-gez v6, :cond_14

    .line 483
    .end local v4           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_a
    :goto_a
    return-void

    .line 452
    :catch_b
    move-exception v1

    .line 453
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v6, "FriendsList"

    const-string v7, "bad menuInfo"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 460
    .end local v1           #e:Ljava/lang/ClassCastException;
    .restart local v4       #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :cond_14
    iget v3, v4, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 461
    .local v3, id:I
    iget-object v6, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 462
    .local v2, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iget v6, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    if-ne v6, v7, :cond_a

    .line 465
    :try_start_22
    iget-object v6, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v8, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v8}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v5

    .line 466
    .local v5, profile:Lcom/lge/sns/profile/Profile;
    iget-object v6, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v6}, Lcom/lge/sns/profile/ProfileListItem;->getUserName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 467
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7f05001e

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentAccount:Lcom/lge/sns/account/Account;

    invoke-virtual {v12}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {p0, v9, v10}, Lcom/lge/sns/profile/ui/FriendsList;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-direct {p0, v7}, Lcom/lge/sns/profile/ui/FriendsList;->getGoToSiteIntent(Lcom/lge/sns/profile/ProfileListItem;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 469
    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const v9, 0x7f050084

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, v2, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-direct {p0, v7}, Lcom/lge/sns/profile/ui/FriendsList;->getSnMsgIntent(Lcom/lge/sns/profile/ProfileListItem;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 471
    iget-object v6, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserEmail:Ljava/lang/String;

    invoke-interface {v6, v5, v7}, Lcom/lge/sns/profile/IProfileFacade;->isExistInContacts(Lcom/lge/sns/profile/ProfileListItem;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 473
    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const v9, 0x7f050015

    invoke-interface {p1, v6, v7, v8, v9}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->AccountManager:Lcom/lge/sns/account/IAccountFacade;

    invoke-static {p0, v5, v7}, Lcom/lge/sns/profile/ui/FriendsList;->getSaveProfileToContactIntent(Landroid/content/Context;Lcom/lge/sns/profile/Profile;Lcom/lge/sns/account/IAccountFacade;)Landroid/content/Intent;

    move-result-object v7

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;
    :try_end_8c
    .catch Lcom/lge/sns/UnauthorizatedException; {:try_start_22 .. :try_end_8c} :catch_8e
    .catch Lcom/lge/sns/SnsException; {:try_start_22 .. :try_end_8c} :catch_95

    goto/16 :goto_a

    .line 476
    .end local v5           #profile:Lcom/lge/sns/profile/Profile;
    :catch_8e
    move-exception v6

    move-object v1, v6

    .line 477
    .local v1, e:Lcom/lge/sns/UnauthorizatedException;
    invoke-virtual {v1}, Lcom/lge/sns/UnauthorizatedException;->printStackTrace()V

    goto/16 :goto_a

    .line 478
    .end local v1           #e:Lcom/lge/sns/UnauthorizatedException;
    :catch_95
    move-exception v6

    move-object v1, v6

    .line 479
    .local v1, e:Lcom/lge/sns/SnsException;
    invoke-virtual {v1}, Lcom/lge/sns/SnsException;->printStackTrace()V

    goto/16 :goto_a
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .registers 6
    .parameter "id"

    .prologue
    .line 526
    packed-switch p1, :pswitch_data_3e

    .line 543
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_7
    return-object v0

    .line 529
    :pswitch_8
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mRefreshDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_3b

    .line 531
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mRefreshDialog:Landroid/app/ProgressDialog;

    .line 532
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mRefreshDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mRefreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 534
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mRefreshDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const v2, 0x7f05000a

    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/lge/sns/profile/ui/FriendsList$4;

    invoke-direct {v3, p0}, Lcom/lge/sns/profile/ui/FriendsList$4;-><init>(Lcom/lge/sns/profile/ui/FriendsList;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 541
    :cond_3b
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mRefreshDialog:Landroid/app/ProgressDialog;

    goto :goto_7

    .line 526
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

    .line 407
    const v0, 0x7f05000e

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 409
    iget v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mMode:I

    packed-switch v0, :pswitch_data_28

    .line 416
    :goto_13
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 412
    :pswitch_18
    const/4 v0, 0x1

    const v1, 0x7f050015

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02009f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_13

    .line 409
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch
.end method

.method protected onDestroy()V
    .registers 2

    .prologue
    .line 327
    sget-object v0, Lcom/lge/sns/profile/ui/FriendsList;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    invoke-virtual {v0, p0}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->unregObj(Ljava/lang/Object;)V

    .line 328
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 329
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .registers 15
    .parameter "list"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const-string v8, "user_id"

    const-string v7, "sns_id"

    .line 372
    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendsList;->mServiceEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 373
    .local v1, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    iget v5, v1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->kind:I

    if-ne v5, v6, :cond_7c

    .line 374
    iget v5, p0, Lcom/lge/sns/profile/ui/FriendsList;->mMode:I

    packed-switch v5, :pswitch_data_80

    .line 403
    :goto_16
    return-void

    .line 380
    :pswitch_17
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.lge.sns.profile.intent.action.VIEW_PROFILE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 381
    .local v2, intent:Landroid/content/Intent;
    const-string v5, "sns_id"

    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v2, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    const-string v5, "user_id"

    iget-object v5, v1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v5}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 383
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/ui/FriendsList;->startActivity(Landroid/content/Intent;)V

    goto :goto_16

    .line 387
    .end local v2           #intent:Landroid/content/Intent;
    :pswitch_34
    :try_start_34
    iget-object v5, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v6, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v7, v1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v7}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcom/lge/sns/profile/IProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    .line 388
    .local v3, profile:Lcom/lge/sns/profile/Profile;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 389
    .local v4, result:Landroid/content/Intent;
    const-string v5, "sns_id"

    iget-object v6, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    const-string v5, "user_id"

    iget-object v6, p0, Lcom/lge/sns/profile/ui/FriendsList;->mCurrentCredential:Lcom/lge/sns/account/Credential;

    invoke-virtual {v6}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v5, "friend_email"

    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v5, "friend_userid"

    iget-object v6, v1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v6}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const/4 v5, -0x1

    invoke-virtual {p0, v5, v4}, Lcom/lge/sns/profile/ui/FriendsList;->setResult(ILandroid/content/Intent;)V
    :try_end_71
    .catch Lcom/lge/sns/SnsException; {:try_start_34 .. :try_end_71} :catch_75

    .line 397
    .end local v3           #profile:Lcom/lge/sns/profile/Profile;
    .end local v4           #result:Landroid/content/Intent;
    :goto_71
    invoke-virtual {p0}, Lcom/lge/sns/profile/ui/FriendsList;->finish()V

    goto :goto_16

    .line 394
    :catch_75
    move-exception v5

    move-object v0, v5

    .line 395
    .local v0, e:Lcom/lge/sns/SnsException;
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/FriendsList;->setResult(I)V

    goto :goto_71

    .line 401
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :cond_7c
    invoke-virtual {p2, v6}, Landroid/view/View;->setSelected(Z)V

    goto :goto_16

    .line 374
    :pswitch_data_80
    .packed-switch 0x1
        :pswitch_17
        :pswitch_34
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "item"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 420
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_56

    :cond_9
    move v1, v6

    .line 442
    :goto_a
    return v1

    .line 422
    :pswitch_b
    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdating:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsListComplete:Z

    if-eqz v1, :cond_9

    .line 424
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade;->getProfileFriendCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    iget-object v3, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/lge/sns/profile/IProfileFacade;->getFriendCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    sput v1, Lcom/lge/sns/profile/ui/FriendsList;->mSiFriendsCompareCount:I

    .line 426
    iput-boolean v5, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdating:Z

    .line 427
    iput-boolean v6, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsUpdatingSearch:Z

    .line 428
    invoke-direct {p0}, Lcom/lge/sns/profile/ui/FriendsList;->removeCompareFriendsCount()V

    .line 430
    invoke-virtual {p0, v5}, Lcom/lge/sns/profile/ui/FriendsList;->showDialog(I)V

    .line 431
    sget-object v1, Lcom/lge/sns/profile/ui/FriendsList;->mFLLoader:Lcom/lge/sns/profile/ui/FriendsDataLoader;

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mFLRunnableUpdate:Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;

    invoke-virtual {v1, v2}, Lcom/lge/sns/profile/ui/FriendsDataLoader;->addEvent(Lcom/lge/sns/profile/ui/FriendsDataLoader$FLRunnable;)V

    move v1, v5

    .line 432
    goto :goto_a

    .line 436
    :pswitch_3d
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 437
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.lge.cursor.item/vnd.lge.sns.profile.friends"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    const-string v1, "sns_id"

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 439
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendsList;->startActivity(Landroid/content/Intent;)V

    move v1, v5

    .line 440
    goto :goto_a

    .line 420
    nop

    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_b
        :pswitch_3d
    .end packed-switch
.end method

.method public onProfileAdded(Lcom/lge/sns/profile/Profile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 1051
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1052
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mUserID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 1053
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$8;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/FriendsList$8;-><init>(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/Profile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendsList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1080
    :cond_20
    return-void
.end method

.method public onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 1145
    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 1146
    const-string v7, "FriendsList"

    const-string v8, " ==== onProfileAvatarLoaded  ==== "

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    if-eqz v7, :cond_4a

    .line 1148
    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v2

    .line 1149
    .local v2, firstPosition:I
    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 1151
    .local v0, childCount:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_20
    if-ge v3, v0, :cond_4a

    .line 1152
    iget-object v7, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v7, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1153
    .local v5, v:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;

    .line 1154
    .local v6, vc:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    if-eqz v6, :cond_4b

    .line 1155
    iget-object v1, v6, Lcom/lge/sns/profile/ui/FriendsList$ViewCache;->entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    .line 1156
    .local v1, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    if-eqz v1, :cond_4b

    iget-object v7, v1, Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;->profile:Lcom/lge/sns/profile/ProfileListItem;

    invoke-virtual {v7}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4b

    .line 1159
    add-int v4, v2, v3

    .line 1160
    .local v4, position:I
    new-instance v7, Lcom/lge/sns/profile/ui/FriendsList$11;

    invoke-direct {v7, p0, v4, v5}, Lcom/lge/sns/profile/ui/FriendsList$11;-><init>(Lcom/lge/sns/profile/ui/FriendsList;ILandroid/view/View;)V

    invoke-virtual {p0, v7}, Lcom/lge/sns/profile/ui/FriendsList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1174
    .end local v0           #childCount:I
    .end local v1           #entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    .end local v2           #firstPosition:I
    .end local v3           #i:I
    .end local v4           #position:I
    .end local v5           #v:Landroid/view/View;
    .end local v6           #vc:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    :cond_4a
    return-void

    .line 1151
    .restart local v0       #childCount:I
    .restart local v2       #firstPosition:I
    .restart local v3       #i:I
    .restart local v5       #v:Landroid/view/View;
    .restart local v6       #vc:Lcom/lge/sns/profile/ui/FriendsList$ViewCache;
    :cond_4b
    add-int/lit8 v3, v3, 0x1

    goto :goto_20
.end method

.method public onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    .registers 4
    .parameter "profile"

    .prologue
    .line 1084
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1085
    new-instance v0, Lcom/lge/sns/profile/ui/FriendsList$9;

    invoke-direct {v0, p0, p1}, Lcom/lge/sns/profile/ui/FriendsList$9;-><init>(Lcom/lge/sns/profile/ui/FriendsList;Lcom/lge/sns/profile/Profile;)V

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/ui/FriendsList;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1111
    :cond_14
    return-void
.end method

.method public onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    .registers 5
    .parameter "profile"

    .prologue
    .line 1115
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSnsID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1116
    const-string v1, "FriendsList"

    const-string v2, " ==== onProfileUpdated  ==== "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsSearch:Z

    if-eqz v1, :cond_1e

    .line 1119
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->containSearchKeyAndProfile(Lcom/lge/sns/profile/Profile;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 1141
    :cond_1d
    :goto_1d
    return-void

    .line 1124
    :cond_1e
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->findFriendProfile(Lcom/lge/sns/profile/ProfileListItem;)Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;

    move-result-object v0

    .line 1125
    .local v0, entry:Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;
    if-nez v0, :cond_28

    .line 1127
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->onProfileAdded(Lcom/lge/sns/profile/Profile;)V

    goto :goto_1d

    .line 1131
    :cond_28
    invoke-direct {p0, v0, p1}, Lcom/lge/sns/profile/ui/FriendsList;->setEntry(Lcom/lge/sns/profile/ui/FriendsList$ViewEntry;Lcom/lge/sns/profile/ProfileListItem;)V

    .line 1132
    new-instance v1, Lcom/lge/sns/profile/ui/FriendsList$10;

    invoke-direct {v1, p0}, Lcom/lge/sns/profile/ui/FriendsList$10;-><init>(Lcom/lge/sns/profile/ui/FriendsList;)V

    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/ui/FriendsList;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1d
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 344
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 346
    const-string v1, "liststate"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListState:Landroid/os/Parcelable;

    .line 347
    const-string v1, "focused"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListHasFocus:Z

    .line 349
    if-eqz p1, :cond_22

    .line 350
    const-string v1, "search_key_is"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, key:Ljava/lang/String;
    if-eqz v0, :cond_22

    .line 352
    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 355
    .end local v0           #key:Ljava/lang/String;
    :cond_22
    return-void
.end method

.method protected onResume()V
    .registers 3

    .prologue
    .line 303
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 304
    const-string v0, "FriendsList"

    const-string v1, " [[[[[[[  onResume  ]]]]]]] "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_24

    .line 306
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 307
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListHasFocus:Z

    if-eqz v0, :cond_1e

    .line 308
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 310
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListHasFocus:Z

    .line 311
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mListState:Landroid/os/Parcelable;

    .line 313
    :cond_24
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4
    .parameter "icicle"

    .prologue
    .line 334
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 336
    const-string v0, "search_key_is"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mSearchKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 338
    const-string v0, "focused"

    iget-object v1, p0, Lcom/lge/sns/profile/ui/FriendsList;->mList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 339
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 5
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 969
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 9
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 973
    sput p2, Lcom/lge/sns/profile/ui/FriendsList;->mListViewScrollState:I

    .line 974
    packed-switch p2, :pswitch_data_20

    .line 991
    :cond_5
    :pswitch_5
    return-void

    .line 978
    :pswitch_6
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    .line 979
    .local v1, first:I
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 980
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_f
    if-ge v2, v0, :cond_5

    .line 981
    invoke-virtual {p1, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 982
    .local v3, v:Landroid/view/View;
    iget-object v4, p0, Lcom/lge/sns/profile/ui/FriendsList;->mAdapter:Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;

    add-int v5, v1, v2

    invoke-virtual {v4, v5, v3, p1}, Lcom/lge/sns/profile/ui/FriendsList$ViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 980
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 974
    nop

    :pswitch_data_20
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
    .end packed-switch
.end method

.method protected onStop()V
    .registers 2

    .prologue
    .line 317
    iget-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsRegListener:Z

    if-eqz v0, :cond_c

    .line 319
    iget-object v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mProfileManager:Lcom/lge/sns/profile/IProfileFacade;

    invoke-interface {v0, p0}, Lcom/lge/sns/profile/IProfileFacade;->removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 320
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lge/sns/profile/ui/FriendsList;->mIsRegListener:Z

    .line 322
    :cond_c
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 323
    return-void
.end method
