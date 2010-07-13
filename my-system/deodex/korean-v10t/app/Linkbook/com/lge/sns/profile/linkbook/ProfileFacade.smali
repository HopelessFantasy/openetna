.class public Lcom/lge/sns/profile/linkbook/ProfileFacade;
.super Lcom/lge/sns/common/BaseFacade;
.source "ProfileFacade.java"

# interfaces
.implements Lcom/lge/sns/profile/IProfileFacade;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;,
        Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;
    }
.end annotation


# static fields
.field private static final CONTACTS_COLUMN_DISPNAME:Ljava/lang/String; = "display_name"

.field private static final CONTACTS_COLUMN_DISPNAME_IDX:I = 0x1

.field private static final CONTACTS_COLUMN_ID:Ljava/lang/String; = "_id"

.field private static final CONTACTS_COLUMN_ID_IDX:I = 0x0

.field private static final CONTACTS_COLUMN_SYSTEM_ID:Ljava/lang/String; = "system_id"

.field private static final CONTACTS_PROJECTION:[Ljava/lang/String; = null

.field private static final MAX_BITMAP_CACHE:I = 0x14

.field private static final MAX_CACHE_SIZE:I = 0xa

.field private static final PAGE_SIZE:I = 0x14

.field private static final PROFILE_COMMENT_MAX_COUNT:I = 0x14

.field private static final PROFILE_COUNT_URI:Landroid/net/Uri; = null

.field static final PROFILE_WHERE_STRING:Ljava/lang/String; = "sns_id = ? AND NOT user_id = ?"

.field private static final SNSIDS_COLUMN_SNSITEID:Ljava/lang/String; = "sn_site_id"

.field private static final SNSIDS_COLUMN_SNSITEID_IDX:I = 0x0

.field private static final SNSIDS_COLUMN_SNUSERID:Ljava/lang/String; = "sn_user_id"

.field private static final SNSIDS_COLUMN_USERID:Ljava/lang/String; = "user_id"

.field private static final SNSIDS_COLUMN_USERID_IDX:I = 0x1

.field private static final SNSIDS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SNSIDS_DIRECTORY:Ljava/lang/String; = "sns_ids"

.field private static final SNSIDS_PROJECTION_INCONTACT:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "ProfileFacade"

.field static final WHERE_PROFILE_KEY:Ljava/lang/String; = "sns_id = ? AND NOT user_id = ? "

.field static bitmapCache:Lcom/lge/util/LRUHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/util/LRUHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field static profileCache:Lcom/lge/util/LRUHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/util/LRUHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;>;"
        }
    .end annotation
.end field

.field private static profileStatusComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field avatarLoading:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field friendListUpdating:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private profileCommentListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private profileListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    const-string v0, "content://com.lge.sns.profile.provider/profile/count"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COUNT_URI:Landroid/net/Uri;

    .line 96
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "display_name"

    aput-object v1, v0, v3

    const-string v1, "system_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->CONTACTS_PROJECTION:[Ljava/lang/String;

    .line 105
    const-string v0, "content://contacts/sns_ids"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->SNSIDS_CONTENT_URI:Landroid/net/Uri;

    .line 111
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sn_site_id"

    aput-object v1, v0, v2

    const-string v1, "user_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->SNSIDS_PROJECTION_INCONTACT:[Ljava/lang/String;

    .line 120
    new-instance v0, Lcom/lge/util/LRUHashMap;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Lcom/lge/util/LRUHashMap;-><init>(I)V

    sput-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->bitmapCache:Lcom/lge/util/LRUHashMap;

    .line 121
    new-instance v0, Lcom/lge/util/LRUHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/lge/util/LRUHashMap;-><init>(I)V

    sput-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCache:Lcom/lge/util/LRUHashMap;

    .line 124
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v0

    new-instance v1, Lcom/lge/sns/profile/linkbook/ProfileFacade$1;

    invoke-direct {v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/lge/sns/CacheManager;->addCacheManagable(Lcom/lge/sns/CacheManager$CacheManagable;)V

    .line 2804
    new-instance v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$8;

    invoke-direct {v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade$8;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileStatusComparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "ctx"

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/lge/sns/common/BaseFacade;-><init>(Landroid/content/Context;)V

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->avatarLoading:Ljava/util/HashSet;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    .line 295
    return-void
.end method

.method static synthetic access$000(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->notifyProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$100(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->setProfileAvatar(Ljava/lang/String;Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$1000(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/lge/sns/profile/linkbook/ProfileFacade;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/FriendEntry;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendEntry(Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/FriendEntry;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Lcom/lge/newbay/client/IFriend;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/InvalidStatusCodeException;,
            Lcom/lge/sns/ServerConnectFail;,
            Lcom/lge/sns/InvalidResponseException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->CONTACTS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/lge/sns/profile/linkbook/ProfileFacade;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->createProfileFromContactsCursor(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->synchronizeFriendList(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/lge/sns/profile/linkbook/ProfileFacade;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileListItem;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfileListItem(Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileListItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileUpdateDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/lge/sns/profile/linkbook/ProfileFacade;)Landroid/content/ContentResolver;
    .registers 2
    .parameter "x0"

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfile(Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Lcom/lge/newbay/client/IFriend;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/newbay/client/NewbayConnectException;
        }
    .end annotation

    .prologue
    .line 82
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;

    move-result-object v0

    return-object v0
.end method

.method private convertCursorToFriendRequest(Landroid/database/Cursor;)Lcom/lge/sns/profile/FriendRequest;
    .registers 14
    .parameter "c"

    .prologue
    const/4 v11, 0x5

    .line 2570
    new-instance v0, Lcom/lge/sns/profile/FriendRequest;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_3d

    new-instance v7, Ljava/util/Date;

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_2f
    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/lge/sns/profile/FriendRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_3d
    const/4 v7, 0x0

    goto :goto_2f
.end method

.method private convertCursorToProfile(Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;
    .registers 33
    .parameter "c"

    .prologue
    .line 1112
    new-instance v2, Lcom/lge/sns/profile/Profile;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x5

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x7

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x8

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x9

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/16 v13, 0xa

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/16 v14, 0xb

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/16 v15, 0xc

    move-object/from16 v0, p1

    move v1, v15

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0xd

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0xe

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0xf

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x11

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x12

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x13

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x14

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    const/16 v24, 0x15

    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    const/16 v25, 0x16

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v25

    const/16 v26, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-lez v26, :cond_10d

    new-instance v26, Ljava/util/Date;

    const/16 v27, 0x17

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    invoke-direct/range {v26 .. v28}, Ljava/util/Date;-><init>(J)V

    :goto_ea
    const/16 v27, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmp-long v27, v27, v29

    if-lez v27, :cond_110

    new-instance v27, Ljava/util/Date;

    const/16 v28, 0x18

    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-direct/range {v27 .. v29}, Ljava/util/Date;-><init>(J)V

    :goto_109
    invoke-direct/range {v2 .. v27}, Lcom/lge/sns/profile/Profile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Date;Ljava/util/Date;)V

    return-object v2

    :cond_10d
    const/16 v26, 0x0

    goto :goto_ea

    :cond_110
    const/16 v27, 0x0

    goto :goto_109
.end method

.method private convertCursorToProfileComment(Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileComment;
    .registers 14
    .parameter "c"

    .prologue
    const/4 v11, 0x5

    .line 2365
    new-instance v0, Lcom/lge/sns/profile/ProfileComment;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_43

    new-instance v7, Ljava/util/Date;

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    :goto_2f
    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x7

    invoke-interface {p1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-direct/range {v0 .. v11}, Lcom/lge/sns/profile/ProfileComment;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0

    :cond_43
    const/4 v7, 0x0

    goto :goto_2f
.end method

.method private convertCursorToProfileListItem(Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileListItem;
    .registers 11
    .parameter "c"

    .prologue
    .line 1338
    new-instance v0, Lcom/lge/sns/profile/ProfileListItem;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x6

    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/lge/sns/profile/ProfileListItem;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertSnsFriendRequestToFriendRequest(Lcom/lge/newbay/client/IFriend$FriendRequest;)Lcom/lge/sns/profile/FriendRequest;
    .registers 12
    .parameter "snsFriendRequest"

    .prologue
    .line 2582
    new-instance v0, Lcom/lge/sns/profile/FriendRequest;

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/lge/newbay/client/IFriend$FriendRequest;->getSnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/newbay/client/IFriend$FriendRequest;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/newbay/client/IFriend$FriendRequest;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lge/newbay/client/IFriend$FriendRequest;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lge/newbay/client/IFriend$FriendRequest;->getPublished()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lge/newbay/client/IFriend$FriendRequest;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lge/newbay/client/IFriend$FriendRequest;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct/range {v0 .. v9}, Lcom/lge/sns/profile/FriendRequest;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private convertSnsProfileCommentToProfileComment(Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;)Lcom/lge/sns/profile/ProfileComment;
    .registers 14
    .parameter "snsProfileComment"

    .prologue
    const-wide/16 v1, 0x0

    .line 2353
    new-instance v0, Lcom/lge/sns/profile/ProfileComment;

    invoke-virtual {p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->getSnId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getUserName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->getAuthor()Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;

    move-result-object v6

    invoke-virtual {v6}, Lcom/lge/newbay/client/SnsAuthorizedInfo$Author;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;->getComment()Ljava/lang/String;

    move-result-object v9

    move-wide v10, v1

    invoke-direct/range {v0 .. v11}, Lcom/lge/sns/profile/ProfileComment;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v0
.end method

.method private convertSnsProfileToProfile(Lcom/lge/newbay/client/IProfile$SnsUserProfile;)Lcom/lge/sns/profile/Profile;
    .registers 28
    .parameter "snsProfile"

    .prologue
    .line 1143
    new-instance v0, Lcom/lge/sns/profile/Profile;

    const-wide/16 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getUsername()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getAvatar()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getEmail()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getOtherPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getGender()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getStatus()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getBirthDt()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getBirthDay()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getHometown()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getPolitics()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getInterests()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getActivities()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getMusic()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getAffiliations()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getFanCnt()I

    move-result v21

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getPublisherCnt()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getFriendCnt()I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-direct/range {v0 .. v25}, Lcom/lge/sns/profile/Profile;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILjava/util/Date;Ljava/util/Date;)V

    return-object v0
.end method

.method private createProfileFromContactsCursor(Landroid/net/Uri;Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .registers 15
    .parameter "uri"
    .parameter "cursor"
    .parameter "snsid"
    .parameter "accountUserId"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2665
    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/String;

    aput-object p3, v4, v8

    aput-object p4, v4, v9

    .line 2666
    .local v4, selArg:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2667
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "sns_ids"

    invoke-static {p1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2668
    .local v1, snsIdsUri:Landroid/net/Uri;
    sget-object v2, Lcom/lge/sns/profile/linkbook/ProfileFacade;->SNSIDS_PROJECTION_INCONTACT:[Ljava/lang/String;

    const-string v3, "sn_site_id= ? AND sn_user_id= ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2673
    .local v7, snsIdsCursor:Landroid/database/Cursor;
    new-instance v6, Lcom/lge/sns/profile/Profile;

    invoke-direct {v6}, Lcom/lge/sns/profile/Profile;-><init>()V

    .line 2675
    .local v6, profile:Lcom/lge/sns/profile/Profile;
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v6, v2, v3}, Lcom/lge/sns/profile/Profile;->setId(J)V

    .line 2676
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/lge/sns/profile/Profile;->setUserName(Ljava/lang/String;)V

    .line 2678
    if-eqz v7, :cond_4a

    .line 2680
    :try_start_31
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_47

    .line 2681
    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/lge/sns/profile/Profile;->setUserId(Ljava/lang/String;)V

    .line 2682
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/lge/sns/profile/Profile;->setSnsId(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_31 .. :try_end_47} :catchall_4b

    .line 2685
    :cond_47
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2689
    :cond_4a
    return-object v6

    .line 2685
    :catchall_4b
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private deleteOldestProfileComment(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v11, 0x0

    .line 2106
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    .line 2107
    .local v9, profileId:J
    const-wide/16 v7, 0x0

    .line 2109
    .local v7, profileCommentId:J
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "oldest"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileCommentColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "profile_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2115
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_35

    .line 2117
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_32

    .line 2118
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_31
    .catchall {:try_start_27 .. :try_end_31} :catchall_46

    move-result-wide v7

    .line 2121
    :cond_32
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2125
    :cond_35
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-lez v0, :cond_4b

    .line 2126
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->deleteProfileComment(Landroid/net/Uri;)I

    move-result v0

    .line 2128
    :goto_45
    return v0

    .line 2121
    :catchall_46
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4b
    move v0, v11

    .line 2128
    goto :goto_45
.end method

.method private deleteProfileInContact(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 693
    monitor-enter p0

    .line 694
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://contacts/sns_ids"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "sn_site_id = ? AND user_id = ?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 697
    :catchall_1c
    move-exception v0

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method private getCommentListLastModified(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 7
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 2319
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getCommentListUpdatedDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 2321
    .local v1, date:Ljava/util/Date;
    if-nez v1, :cond_13

    .line 2322
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2323
    .local v0, cal:Ljava/util/Calendar;
    const/4 v2, 0x2

    const/4 v3, -0x3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 2324
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 2327
    .end local v0           #cal:Ljava/util/Calendar;
    :cond_13
    return-object v1
.end method

.method private getFollower(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    .registers 23
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1684
    :try_start_0
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;
    :try_end_3
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_3} :catch_73
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_7b
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_3} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_9f

    move-result-object v10

    .line 1687
    .local v10, friend:Lcom/lge/newbay/client/IFriend;
    :try_start_4
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_10
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_4 .. :try_end_10} :catch_46
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4 .. :try_end_10} :catch_73
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4 .. :try_end_10} :catch_7b
    .catch Lcom/lge/sns/SnsException; {:try_start_4 .. :try_end_10} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_10} :catch_9f

    move-result-object v9

    .line 1692
    .local v9, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_11
    if-eqz v9, :cond_a7

    .line 1693
    :try_start_13
    invoke-virtual {v9}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v15

    const-string v16, "next"

    invoke-static/range {v15 .. v16}, Lcom/lge/feed/atom/AtomFeed;->findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v15

    if-eqz v15, :cond_58

    const/4 v15, 0x1

    move v11, v15

    .line 1694
    .local v11, hasNext:Z
    :goto_21
    invoke-virtual {v9}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v6

    .line 1695
    .local v6, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz v6, :cond_a7

    .line 1696
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v13

    .line 1697
    .local v13, l:I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    .line 1698
    .local v14, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_31
    if-ge v12, v13, :cond_5b

    .line 1699
    invoke-interface {v6, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/feed/atom/Entry;

    .line 1700
    .local v7, entry:Lcom/lge/feed/atom/Entry;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendEntry(Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/FriendEntry;

    move-result-object v8

    .line 1701
    .local v8, fe:Lcom/lge/sns/profile/FriendEntry;
    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1698
    add-int/lit8 v12, v12, 0x1

    goto :goto_31

    .line 1688
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v7           #entry:Lcom/lge/feed/atom/Entry;
    .end local v8           #fe:Lcom/lge/sns/profile/FriendEntry;
    .end local v9           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v11           #hasNext:Z
    .end local v12           #i:I
    .end local v13           #l:I
    .end local v14           #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    :catch_46
    move-exception v5

    .line 1689
    .local v5, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1690
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v9

    .restart local v9       #feed:Lcom/lge/feed/atom/AtomFeed;
    goto :goto_11

    .line 1693
    .end local v5           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :cond_58
    const/4 v15, 0x0

    move v11, v15

    goto :goto_21

    .line 1703
    .restart local v6       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .restart local v11       #hasNext:Z
    .restart local v12       #i:I
    .restart local v13       #l:I
    .restart local v14       #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    :cond_5b
    new-instance v15, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;

    const/16 v16, 0x1

    move/from16 v0, p3

    move/from16 v1, v16

    if-eq v0, v1, :cond_70

    const/16 v16, 0x1

    :goto_67
    move-object v0, v15

    move-object v1, v14

    move/from16 v2, v16

    move v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;-><init>(Ljava/util/List;ZZ)V
    :try_end_6f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_13 .. :try_end_6f} :catch_73
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_13 .. :try_end_6f} :catch_7b
    .catch Lcom/lge/sns/SnsException; {:try_start_13 .. :try_end_6f} :catch_9c
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_6f} :catch_9f

    .line 1719
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v11           #hasNext:Z
    .end local v12           #i:I
    .end local v13           #l:I
    .end local v14           #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    :goto_6f
    return-object v15

    .line 1703
    .restart local v6       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .restart local v11       #hasNext:Z
    .restart local v12       #i:I
    .restart local v13       #l:I
    .restart local v14       #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    :cond_70
    const/16 v16, 0x0

    goto :goto_67

    .line 1706
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v9           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v10           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v11           #hasNext:Z
    .end local v12           #i:I
    .end local v13           #l:I
    .end local v14           #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    :catch_73
    move-exception v15

    move-object v5, v15

    .line 1707
    .local v5, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v15, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v15, v5}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 1708
    .end local v5           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_7b
    move-exception v15

    move-object v5, v15

    .line 1709
    .local v5, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v5}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v15

    const/16 v16, 0x191

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_8e

    .line 1710
    new-instance v15, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v15}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v15

    .line 1712
    :cond_8e
    new-instance v15, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v5}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v16

    invoke-virtual {v5}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v15 .. v17}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v15

    .line 1714
    .end local v5           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_9c
    move-exception v15

    move-object v5, v15

    .line 1715
    .local v5, e:Lcom/lge/sns/SnsException;
    throw v5

    .line 1716
    .end local v5           #e:Lcom/lge/sns/SnsException;
    :catch_9f
    move-exception v15

    move-object v5, v15

    .line 1717
    .local v5, e:Ljava/lang/Exception;
    new-instance v15, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v15, v5}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v15

    .line 1719
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v9       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v10       #friend:Lcom/lge/newbay/client/IFriend;
    :cond_a7
    const/4 v15, 0x0

    goto :goto_6f
.end method

.method private getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    .registers 26
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1628
    :try_start_0
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    move/from16 v1, p4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1629
    .local v16, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;
    :try_end_c
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_c} :catch_e8
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_c} :catch_f4
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_c} :catch_117
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_11b

    move-result-object v10

    .line 1632
    .local v10, friend:Lcom/lge/newbay/client/IFriend;
    const/16 v18, 0x1

    :try_start_f
    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_1b
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_f .. :try_end_1b} :catch_9c
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_f .. :try_end_1b} :catch_e8
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_f .. :try_end_1b} :catch_f4
    .catch Lcom/lge/sns/SnsException; {:try_start_f .. :try_end_1b} :catch_117
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_1b} :catch_11b

    move-result-object v9

    .line 1637
    .local v9, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_1c
    :try_start_1c
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 1639
    .local v13, lowerKeyword:Ljava/lang/String;
    :cond_20
    :goto_20
    if-eqz v9, :cond_d6

    .line 1640
    invoke-virtual {v9}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v6

    .line 1641
    .local v6, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz v6, :cond_20

    .line 1642
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    .line 1643
    .local v12, l:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2d
    if-ge v11, v12, :cond_ba

    .line 1644
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/lge/feed/atom/Entry;

    .line 1645
    .local v7, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual {v7}, Lcom/lge/feed/atom/Entry;->getTitleValue()Ljava/lang/String;

    move-result-object v14

    .line 1646
    .local v14, name:Ljava/lang/String;
    invoke-virtual {v7}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v18

    if-eqz v18, :cond_b1

    invoke-virtual {v7}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v17, v18

    .line 1647
    .local v17, summary:Ljava/lang/String;
    :goto_49
    if-eqz v14, :cond_5e

    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_73

    :cond_5e
    if-eqz v17, :cond_b6

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    const/16 v19, -0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_b6

    .line 1649
    :cond_73
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendEntry(Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/FriendEntry;

    move-result-object v8

    .line 1650
    .local v8, fe:Lcom/lge/sns/profile/FriendEntry;
    move-object/from16 v0, v16

    move-object v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1651
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    move/from16 v1, p4

    if-lt v0, v1, :cond_b6

    .line 1652
    new-instance v18, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;-><init>(Ljava/util/List;ZZ)V

    .line 1664
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v7           #entry:Lcom/lge/feed/atom/Entry;
    .end local v8           #fe:Lcom/lge/sns/profile/FriendEntry;
    .end local v11           #i:I
    .end local v12           #l:I
    .end local v14           #name:Ljava/lang/String;
    .end local v17           #summary:Ljava/lang/String;
    :goto_9b
    return-object v18

    .line 1633
    .end local v9           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v13           #lowerKeyword:Ljava/lang/String;
    :catch_9c
    move-exception v5

    .line 1634
    .local v5, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1635
    const/16 v18, 0x1

    move-object v0, v10

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v18

    move/from16 v4, p4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v9

    .restart local v9       #feed:Lcom/lge/feed/atom/AtomFeed;
    goto/16 :goto_1c

    .line 1646
    .end local v5           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v6       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .restart local v7       #entry:Lcom/lge/feed/atom/Entry;
    .restart local v11       #i:I
    .restart local v12       #l:I
    .restart local v13       #lowerKeyword:Ljava/lang/String;
    .restart local v14       #name:Ljava/lang/String;
    :cond_b1
    const-string v18, ""

    move-object/from16 v17, v18

    goto :goto_49

    .line 1643
    .restart local v17       #summary:Ljava/lang/String;
    :cond_b6
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2d

    .line 1656
    .end local v7           #entry:Lcom/lge/feed/atom/Entry;
    .end local v14           #name:Ljava/lang/String;
    .end local v17           #summary:Ljava/lang/String;
    :cond_ba
    invoke-virtual {v9}, Lcom/lge/feed/atom/AtomFeed;->getOtherLinks()Ljava/util/List;

    move-result-object v18

    const-string v19, "next"

    invoke-static/range {v18 .. v19}, Lcom/lge/feed/atom/AtomFeed;->findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v15

    .line 1657
    .local v15, next:Lcom/lge/feed/atom/Link;
    if-eqz v15, :cond_d3

    .line 1658
    invoke-virtual {v15}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v18

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Lcom/lge/newbay/client/IFriend;->getFollowers(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v9

    goto/16 :goto_20

    .line 1660
    :cond_d3
    const/4 v9, 0x0

    goto/16 :goto_20

    .line 1664
    .end local v6           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v11           #i:I
    .end local v12           #l:I
    .end local v15           #next:Lcom/lge/feed/atom/Link;
    :cond_d6
    new-instance v18, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;-><init>(Ljava/util/List;ZZ)V
    :try_end_e7
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1c .. :try_end_e7} :catch_e8
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1c .. :try_end_e7} :catch_f4
    .catch Lcom/lge/sns/SnsException; {:try_start_1c .. :try_end_e7} :catch_117
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_e7} :catch_11b

    goto :goto_9b

    .line 1665
    .end local v9           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v10           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v13           #lowerKeyword:Ljava/lang/String;
    .end local v16           #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    :catch_e8
    move-exception v18

    move-object/from16 v5, v18

    .line 1666
    .local v5, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v18, Lcom/lge/sns/ServerConnectFail;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v18

    .line 1667
    .end local v5           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_f4
    move-exception v18

    move-object/from16 v5, v18

    .line 1668
    .local v5, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v5}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v18

    const/16 v19, 0x191

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_109

    .line 1669
    new-instance v18, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct/range {v18 .. v18}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v18

    .line 1671
    :cond_109
    new-instance v18, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v5}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v19

    invoke-virtual {v5}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v18

    .line 1673
    .end local v5           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_117
    move-exception v18

    move-object/from16 v5, v18

    .line 1674
    .local v5, e:Lcom/lge/sns/SnsException;
    throw v5

    .line 1675
    .end local v5           #e:Lcom/lge/sns/SnsException;
    :catch_11b
    move-exception v18

    move-object/from16 v5, v18

    .line 1676
    .local v5, e:Ljava/lang/Exception;
    new-instance v18, Lcom/lge/sns/InvalidResponseException;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v18
.end method

.method private getFollower(Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "callback"

    .prologue
    .line 1858
    new-instance v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V

    invoke-virtual {v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade$6;->start()V

    .line 1915
    return-void
.end method

.method private getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageSize"
    .parameter "callback"

    .prologue
    .line 1782
    new-instance v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p5

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade$5;->start()V

    .line 1854
    return-void
.end method

.method private getFriendCount(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "whereString"
    .parameter "whereArgs"

    .prologue
    const/4 v7, 0x0

    .line 1556
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COUNT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1563
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_24

    .line 1565
    :try_start_12
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1566
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_26

    move-result v0

    .line 1569
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1572
    :goto_20
    return v0

    .line 1569
    :cond_21
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_24
    move v0, v7

    .line 1572
    goto :goto_20

    .line 1569
    :catchall_26
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFriendEntry(Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/FriendEntry;
    .registers 10
    .parameter "entry"

    .prologue
    .line 1918
    new-instance v0, Lcom/lge/sns/profile/FriendEntry;

    invoke-direct {v0}, Lcom/lge/sns/profile/FriendEntry;-><init>()V

    .line 1919
    .local v0, fe:Lcom/lge/sns/profile/FriendEntry;
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/lge/newbay/client/Uris;->getProfileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;

    move-result-object v4

    .line 1920
    .local v4, param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    invoke-virtual {v4}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getSnsId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/sns/profile/FriendEntry;->setSnsId(Ljava/lang/String;)V

    .line 1921
    invoke-virtual {v4}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getUserId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/sns/profile/FriendEntry;->setUserId(Ljava/lang/String;)V

    .line 1922
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getTitleValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/sns/profile/FriendEntry;->setUserName(Ljava/lang/String;)V

    .line 1923
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v6

    .line 1924
    .local v6, summary:Lcom/lge/feed/atom/Content;
    if-eqz v6, :cond_45

    .line 1925
    invoke-virtual {v6}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/sns/profile/FriendEntry;->setDisplayName(Ljava/lang/String;)V

    .line 1933
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getOtherLinks()Ljava/util/List;

    move-result-object v2

    .line 1934
    .local v2, ls:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    if-eqz v2, :cond_44

    .line 1935
    const-string v7, "profile-pic-small"

    invoke-static {v2, v7}, Lcom/lge/feed/atom/AtomFeed;->findLink(Ljava/util/List;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v1

    .line 1936
    .local v1, l:Lcom/lge/feed/atom/Link;
    if-eqz v1, :cond_44

    .line 1937
    invoke-virtual {v1}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/sns/profile/FriendEntry;->setAvatarLink(Ljava/lang/String;)V

    .line 1940
    .end local v1           #l:Lcom/lge/feed/atom/Link;
    :cond_44
    return-object v0

    .line 1927
    .end local v2           #ls:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Link;>;"
    :cond_45
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v5

    .line 1928
    .local v5, persons:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    if-eqz v5, :cond_2f

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2f

    .line 1929
    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lge/feed/atom/Person;

    .line 1930
    .local v3, p:Lcom/lge/feed/atom/Person;
    invoke-virtual {v3}, Lcom/lge/feed/atom/Person;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/lge/sns/profile/FriendEntry;->setDisplayName(Ljava/lang/String;)V

    goto :goto_2f
.end method

.method private getProfileCommentCount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 2134
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v7

    .line 2136
    .local v7, profileId:J
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    const-string v1, "count"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "profile_id = ? "

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, p0

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->queryInteger(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getProfileCommentFromEntry(JLcom/lge/newbay/client/Uris$ProfileCommentParam;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/ProfileComment;
    .registers 12
    .parameter "profileId"
    .parameter "param"
    .parameter "entry"

    .prologue
    .line 2007
    new-instance v2, Lcom/lge/sns/profile/ProfileComment;

    invoke-direct {v2}, Lcom/lge/sns/profile/ProfileComment;-><init>()V

    .line 2008
    .local v2, pc:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {p4}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v3

    .line 2009
    .local v3, summary:Lcom/lge/feed/atom/Content;
    invoke-virtual {p3}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getSnsId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/profile/ProfileComment;->setSnsId(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p3}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/profile/ProfileComment;->setUserId(Ljava/lang/String;)V

    .line 2011
    invoke-virtual {p3}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getCommentId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/profile/ProfileComment;->setCommentId(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p4}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/profile/ProfileComment;->setPublished(Ljava/util/Date;)V

    .line 2013
    if-eqz v3, :cond_2e

    .line 2014
    invoke-virtual {v3}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/profile/ProfileComment;->setComment(Ljava/lang/String;)V

    .line 2016
    :cond_2e
    invoke-virtual {p4}, Lcom/lge/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v0

    .line 2017
    .local v0, authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    if-eqz v0, :cond_4a

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4a

    .line 2018
    const/4 v5, 0x0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/feed/atom/Person;

    .line 2019
    .local v1, p:Lcom/lge/feed/atom/Person;
    if-eqz v1, :cond_4a

    .line 2020
    invoke-virtual {v1}, Lcom/lge/feed/atom/Person;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/lge/sns/profile/ProfileComment;->setUserName(Ljava/lang/String;)V

    .line 2023
    .end local v1           #p:Lcom/lge/feed/atom/Person;
    :cond_4a
    invoke-virtual {v2, p1, p2}, Lcom/lge/sns/profile/ProfileComment;->setProfileId(J)V

    .line 2024
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->addProfileComment(Lcom/lge/sns/profile/ProfileComment;)Landroid/net/Uri;

    move-result-object v4

    .line 2025
    .local v4, uri:Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/lge/sns/profile/ProfileComment;->setId(J)V

    .line 2026
    return-object v2
.end method

.method private getProfileCommentFromServer(JLcom/lge/newbay/client/Uris$ProfileCommentParam;Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;
    .registers 14
    .parameter "profileId"
    .parameter "param"
    .parameter "dataLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2038
    const/4 v4, 0x0

    .line 2039
    .local v4, snsProfileComment:Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    const/4 v2, 0x0

    .line 2041
    .local v2, profileComment:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {p3}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getSnsId()Ljava/lang/String;

    move-result-object v3

    .line 2044
    .local v3, snsId:Ljava/lang/String;
    :try_start_6
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_9
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_6 .. :try_end_9} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_9} :catch_34
    .catch Lcom/lge/sns/SnsException; {:try_start_6 .. :try_end_9} :catch_52
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_55

    move-result-object v1

    .line 2046
    .local v1, profile:Lcom/lge/newbay/client/IProfile;
    :try_start_a
    invoke-interface {v1, p4}, Lcom/lge/newbay/client/IProfile;->getUserProfileComment(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    :try_end_d
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_a .. :try_end_d} :catch_23
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_a .. :try_end_d} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_a .. :try_end_d} :catch_34
    .catch Lcom/lge/sns/SnsException; {:try_start_a .. :try_end_d} :catch_52
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_55

    move-result-object v4

    .line 2065
    :goto_e
    if-eqz v4, :cond_22

    .line 2066
    invoke-direct {p0, v4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertSnsProfileCommentToProfileComment(Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v2

    .line 2067
    invoke-virtual {v2, p1, p2}, Lcom/lge/sns/profile/ProfileComment;->setProfileId(J)V

    .line 2069
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->addProfileComment(Lcom/lge/sns/profile/ProfileComment;)Landroid/net/Uri;

    move-result-object v5

    .line 2070
    .local v5, uri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/lge/sns/profile/ProfileComment;->setId(J)V

    .line 2073
    .end local v5           #uri:Landroid/net/Uri;
    :cond_22
    return-object v2

    .line 2047
    :catch_23
    move-exception v0

    .line 2048
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_24
    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2049
    invoke-interface {v1, p4}, Lcom/lge/newbay/client/IProfile;->getUserProfileComment(Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileComment;
    :try_end_2a
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_24 .. :try_end_2a} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_24 .. :try_end_2a} :catch_34
    .catch Lcom/lge/sns/SnsException; {:try_start_24 .. :try_end_2a} :catch_52
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_2a} :catch_55

    move-result-object v4

    goto :goto_e

    .line 2051
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_2c
    move-exception v6

    move-object v0, v6

    .line 2052
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v6, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v6, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2053
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_34
    move-exception v6

    move-object v0, v6

    .line 2054
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x191

    if-ne v6, v7, :cond_44

    .line 2055
    new-instance v6, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v6}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v6

    .line 2057
    :cond_44
    new-instance v6, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v7

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 2059
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_52
    move-exception v6

    move-object v0, v6

    .line 2060
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 2061
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_55
    move-exception v6

    move-object v0, v6

    .line 2062
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v6, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method private getProfileCommentFromServer(Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;
    .registers 7
    .parameter "dataLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2031
    invoke-static {p1}, Lcom/lge/newbay/client/Uris;->getProfileCommentParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$ProfileCommentParam;

    move-result-object v0

    .line 2032
    .local v0, param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    invoke-virtual {v0}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    .line 2033
    .local v1, profileId:J
    invoke-direct {p0, v1, v2, v0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileCommentFromServer(JLcom/lge/newbay/client/Uris$ProfileCommentParam;Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v3

    return-object v3
.end method

.method private getProfileCommentRecordId(Ljava/lang/String;Ljava/lang/String;)J
    .registers 13
    .parameter "snsId"
    .parameter "commentId"

    .prologue
    const/4 v9, 0x1

    const/4 v5, 0x0

    .line 2331
    const-wide/16 v7, 0x0

    .line 2333
    .local v7, id:J
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "sns_id = ? AND comment_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v9

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2339
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 2341
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2342
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_2f

    move-result-wide v7

    .line 2345
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2349
    :cond_2e
    return-wide v7

    .line 2345
    :catchall_2f
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getProfileUpdateDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 14
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v2, "ProfileFacade"

    .line 1082
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get profile update date from db for snsId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    const/4 v7, 0x0

    .line 1087
    .local v7, date:Ljava/util/Date;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "profile_updated"

    aput-object v3, v2, v5

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1094
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_63

    .line 1096
    :try_start_43
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_60

    .line 1097
    const-string v0, "ProfileFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1098
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1099
    .local v8, time:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-lez v0, :cond_60

    .line 1100
    new-instance v7, Ljava/util/Date;

    .end local v7           #date:Ljava/util/Date;
    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V
    :try_end_60
    .catchall {:try_start_43 .. :try_end_60} :catchall_64

    .line 1104
    .end local v8           #time:J
    .restart local v7       #date:Ljava/util/Date;
    :cond_60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1108
    :cond_63
    return-object v7

    .line 1104
    .end local v7           #date:Ljava/util/Date;
    :catchall_64
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getSnsUserProfileStatus(Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/ProfileStatus;
    .registers 9
    .parameter "entry"

    .prologue
    .line 2827
    const/4 v3, 0x0

    .line 2829
    .local v3, status:Lcom/lge/sns/profile/ProfileStatus;
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getAuthors()Ljava/util/List;

    move-result-object v1

    .line 2830
    .local v1, authors:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Person;>;"
    if-eqz v1, :cond_4a

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4a

    .line 2831
    new-instance v3, Lcom/lge/sns/profile/ProfileStatus;

    .end local v3           #status:Lcom/lge/sns/profile/ProfileStatus;
    invoke-direct {v3}, Lcom/lge/sns/profile/ProfileStatus;-><init>()V

    .line 2832
    .restart local v3       #status:Lcom/lge/sns/profile/ProfileStatus;
    const/4 v6, 0x0

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lge/feed/atom/Person;

    .line 2833
    .local v0, author:Lcom/lge/feed/atom/Person;
    invoke-virtual {v0}, Lcom/lge/feed/atom/Person;->getUri()Ljava/lang/String;

    move-result-object v5

    .line 2834
    .local v5, uriString:Ljava/lang/String;
    invoke-static {v5}, Lcom/lge/newbay/client/Uris;->getProfileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;

    move-result-object v2

    .line 2835
    .local v2, param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    invoke-virtual {v2}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lge/sns/profile/ProfileStatus;->setSnsId(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {v2}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lge/sns/profile/ProfileStatus;->setUserId(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {v0}, Lcom/lge/feed/atom/Person;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lge/sns/profile/ProfileStatus;->setUserName(Ljava/lang/String;)V

    .line 2838
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getSummary()Lcom/lge/feed/atom/Content;

    move-result-object v4

    .line 2839
    .local v4, summary:Lcom/lge/feed/atom/Content;
    if-eqz v4, :cond_43

    .line 2840
    invoke-virtual {v4}, Lcom/lge/feed/atom/Content;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lge/sns/profile/ProfileStatus;->setStatus(Ljava/lang/String;)V

    .line 2842
    :cond_43
    invoke-virtual {p1}, Lcom/lge/feed/atom/Entry;->getPublished()Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/lge/sns/profile/ProfileStatus;->setPublished(Ljava/util/Date;)V

    .line 2844
    .end local v0           #author:Lcom/lge/feed/atom/Person;
    .end local v2           #param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    .end local v4           #summary:Lcom/lge/feed/atom/Content;
    .end local v5           #uriString:Ljava/lang/String;
    :cond_4a
    return-object v3
.end method

.method private notifyProfileAdded(Lcom/lge/sns/profile/Profile;)V
    .registers 6
    .parameter "profile"

    .prologue
    .line 312
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 313
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 314
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 316
    .local v1, listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;->onProfileAdded(Lcom/lge/sns/profile/Profile;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 317
    :catch_21
    move-exception v3

    goto :goto_11

    .line 322
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 323
    return-void

    .line 322
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 354
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 355
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 356
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 358
    .local v1, listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;->onProfileAvatarLoaded(Ljava/lang/String;Ljava/lang/String;[B)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 359
    :catch_21
    move-exception v3

    goto :goto_11

    .line 364
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 365
    return-void

    .line 364
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyProfileCommentAdded(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 6
    .parameter "profileComment"

    .prologue
    .line 382
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 383
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 384
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 386
    .local v1, listener:Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;->onProfileCommentAdded(Lcom/lge/sns/profile/ProfileComment;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 387
    :catch_21
    move-exception v3

    goto :goto_11

    .line 392
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 393
    return-void

    .line 392
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V
    .registers 6
    .parameter "profileComment"

    .prologue
    .line 396
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 397
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 398
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 400
    .local v1, listener:Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;->onProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 401
    :catch_21
    move-exception v3

    goto :goto_11

    .line 406
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 407
    return-void

    .line 406
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    .registers 6
    .parameter "profile"

    .prologue
    .line 340
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 341
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 342
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 344
    .local v1, listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;->onProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 345
    :catch_21
    move-exception v3

    goto :goto_11

    .line 350
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 351
    return-void

    .line 350
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private notifyProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    .registers 6
    .parameter "profile"

    .prologue
    .line 326
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    monitor-enter v2

    .line 327
    :try_start_3
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_23

    .line 328
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_25

    .line 330
    .local v1, listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :try_start_1d
    invoke-interface {v1, p1}, Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;->onProfileUpdated(Lcom/lge/sns/profile/Profile;)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_25
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_11

    .line 331
    :catch_21
    move-exception v3

    goto :goto_11

    .line 336
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;
    :cond_23
    :try_start_23
    monitor-exit v2

    .line 337
    return-void

    .line 336
    :catchall_25
    move-exception v3

    monitor-exit v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_25

    throw v3
.end method

.method private setCommentListLastModified(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V
    .registers 11
    .parameter "snsId"
    .parameter "userId"
    .parameter "delta"

    .prologue
    .line 2304
    invoke-virtual {p3}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getLastModified()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_34

    invoke-virtual {p3}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getLastModified()Ljava/util/Date;

    move-result-object v2

    move-object v0, v2

    .line 2306
    .local v0, date:Ljava/util/Date;
    :goto_b
    if-eqz v0, :cond_33

    .line 2307
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2308
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "comment_list_updated"

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2309
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "sns_id = ? AND user_id = ? "

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2316
    .end local v1           #values:Landroid/content/ContentValues;
    :cond_33
    return-void

    .line 2304
    .end local v0           #date:Ljava/util/Date;
    :cond_34
    invoke-virtual {p3}, Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;->getTimeModeTo()Ljava/util/Date;

    move-result-object v2

    move-object v0, v2

    goto :goto_b
.end method

.method private setContentValuesForFriendRequest(Lcom/lge/sns/profile/FriendRequest;)Landroid/content/ContentValues;
    .registers 8
    .parameter "friendRequest"

    .prologue
    const-string v5, "published"

    .line 2593
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2594
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2595
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2596
    const-string v1, "user_name"

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2597
    const-string v1, "display_name"

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2599
    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getPublished()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_63

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_63

    .line 2600
    const-string v1, "published"

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getPublished()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2605
    :goto_50
    const-string v1, "request_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getRequestId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2606
    const-string v1, "request_message"

    invoke-virtual {p1}, Lcom/lge/sns/profile/FriendRequest;->getRequestMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2608
    return-object v0

    .line 2602
    :cond_63
    const-string v1, "published"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_50
.end method

.method private setContentValuesForProfile(Lcom/lge/sns/profile/Profile;)Landroid/content/ContentValues;
    .registers 6
    .parameter "profile"

    .prologue
    const-string v3, "profile_updated"

    .line 1171
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1173
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    const-string v1, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1175
    const-string v1, "user_name"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    const-string v1, "display_name"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    const-string v1, "avatar_link"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getAvatarLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1178
    const-string v1, "email"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    const-string v1, "phone_number"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    const-string v1, "other_phone_number"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getOtherPhoneNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getGender()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1182
    const-string v1, "status"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    const-string v1, "birth_date_time"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getBirthDateTime()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    const-string v1, "birthday"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getBirthday()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    const-string v1, "hometown"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getHometown()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1186
    const-string v1, "politics"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getPolitics()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1187
    const-string v1, "interests"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getInterests()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    const-string v1, "activities"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getActivities()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    const-string v1, "music"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getMusic()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    const-string v1, "affiliations"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getAffiliations()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    const-string v1, "follower_count"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getFollowerCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1192
    const-string v1, "following_count"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getFollowingCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1193
    const-string v1, "friend_count"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getFriendCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1195
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_e8

    .line 1196
    const-string v1, "profile_updated"

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getProfileUpdated()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1201
    :goto_e7
    return-object v0

    .line 1198
    :cond_e8
    const-string v1, "profile_updated"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->putNull(Ljava/lang/String;)V

    goto :goto_e7
.end method

.method private setContentValuesForProfileComment(Lcom/lge/sns/profile/ProfileComment;)Landroid/content/ContentValues;
    .registers 10
    .parameter "profileComment"

    .prologue
    const-wide/16 v4, 0x0

    const-string v7, "published"

    const-string v6, "profile_id"

    .line 2378
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2380
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "sns_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2381
    const-string v2, "user_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2382
    const-string v2, "user_name"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getUserName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2383
    const-string v2, "display_name"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_88

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-eqz v2, :cond_88

    .line 2386
    const-string v2, "published"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getPublished()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2391
    :goto_52
    const-string v2, "comment_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getCommentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2392
    const-string v2, "comment"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getComment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2394
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getProfileId()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_96

    .line 2395
    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    .line 2396
    .local v0, profile:Lcom/lge/sns/profile/Profile;
    if-eqz v0, :cond_87

    .line 2397
    const-string v2, "profile_id"

    invoke-virtual {v0}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2403
    .end local v0           #profile:Lcom/lge/sns/profile/Profile;
    :cond_87
    :goto_87
    return-object v1

    .line 2388
    :cond_88
    const-string v2, "published"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v7, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_52

    .line 2400
    :cond_96
    const-string v2, "profile_id"

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileComment;->getProfileId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v6, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_87
.end method

.method private setProfileAvatar(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "avatar"

    .prologue
    .line 1037
    const-string v1, "ProfileFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set avatar for snsId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " userId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1041
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "avatar"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_2d
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1049
    monitor-exit p0

    .line 1050
    return-void

    .line 1049
    :catchall_43
    move-exception v1

    monitor-exit p0
    :try_end_45
    .catchall {:try_start_2d .. :try_end_45} :catchall_43

    throw v1
.end method

.method private synchronizeFriendList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 25
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 229
    .local v18, localUris:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 231
    .local v21, serverUris:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .line 233
    .local v14, feed:Lcom/lge/feed/atom/AtomFeed;
    :try_start_b
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;
    :try_end_e
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_b .. :try_end_e} :catch_60
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_b .. :try_end_e} :catch_8e
    .catch Lcom/lge/sns/SnsException; {:try_start_b .. :try_end_e} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_af

    move-result-object v15

    .line 235
    .local v15, friend:Lcom/lge/newbay/client/IFriend;
    const/4 v5, 0x1

    const/16 v6, 0xa

    :try_start_12
    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_1c
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_12 .. :try_end_1c} :catch_68
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_12 .. :try_end_1c} :catch_60
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_12 .. :try_end_1c} :catch_8e
    .catch Lcom/lge/sns/SnsException; {:try_start_12 .. :try_end_1c} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_af

    move-result-object v14

    .line 241
    :goto_1d
    if-eqz v14, :cond_b7

    .line 242
    :try_start_1f
    invoke-virtual {v14}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, i$:Ljava/util/Iterator;
    :goto_27
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/lge/feed/atom/Entry;

    .line 243
    .local v13, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual {v13}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/lge/newbay/client/Uris;->getProfileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;

    move-result-object v20

    .line 244
    .local v20, param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v20 .. v20}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getUserId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_5f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1f .. :try_end_5f} :catch_60
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1f .. :try_end_5f} :catch_8e
    .catch Lcom/lge/sns/SnsException; {:try_start_1f .. :try_end_5f} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_5f} :catch_af

    goto :goto_27

    .line 255
    .end local v13           #entry:Lcom/lge/feed/atom/Entry;
    .end local v15           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v20           #param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    :catch_60
    move-exception v5

    move-object v12, v5

    .line 256
    .local v12, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v5, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v5, v12}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 236
    .end local v12           #e:Lcom/lge/newbay/client/NewbayConnectException;
    .restart local v15       #friend:Lcom/lge/newbay/client/IFriend;
    :catch_68
    move-exception v12

    .line 237
    .local v12, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_69
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 238
    const/4 v5, 0x1

    const/16 v6, 0xa

    move-object v0, v15

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/lge/newbay/client/IFriend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v14

    goto :goto_1d

    .line 247
    .end local v12           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_7b
    const-string v5, "next"

    invoke-static {v14, v5}, Lcom/lge/newbay/client/impl/XppUtil;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v19

    .line 249
    .local v19, next:Lcom/lge/feed/atom/Link;
    if-eqz v19, :cond_8c

    .line 250
    invoke-virtual/range {v19 .. v19}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v15, v5}, Lcom/lge/newbay/client/IFriend;->getCommunityFriends(Ljava/lang/String;)Lcom/lge/feed/atom/AtomFeed;
    :try_end_8a
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_69 .. :try_end_8a} :catch_60
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_69 .. :try_end_8a} :catch_8e
    .catch Lcom/lge/sns/SnsException; {:try_start_69 .. :try_end_8a} :catch_ac
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8a} :catch_af

    move-result-object v14

    goto :goto_1d

    .line 252
    :cond_8c
    const/4 v14, 0x0

    goto :goto_1d

    .line 257
    .end local v15           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v16           #i$:Ljava/util/Iterator;
    .end local v19           #next:Lcom/lge/feed/atom/Link;
    :catch_8e
    move-exception v5

    move-object v12, v5

    .line 258
    .local v12, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v12}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    const/16 v6, 0x191

    if-ne v5, v6, :cond_9e

    .line 259
    new-instance v5, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v5}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v5

    .line 261
    :cond_9e
    new-instance v5, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v12}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    invoke-virtual {v12}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v5

    .line 263
    .end local v12           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_ac
    move-exception v5

    move-object v12, v5

    .line 264
    .local v12, e:Lcom/lge/sns/SnsException;
    throw v12

    .line 265
    .end local v12           #e:Lcom/lge/sns/SnsException;
    :catch_af
    move-exception v5

    move-object v12, v5

    .line 266
    .local v12, e:Ljava/lang/Exception;
    new-instance v5, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v5, v12}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 269
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v15       #friend:Lcom/lge/newbay/client/IFriend;
    :cond_b7
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "_id"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "sns_id"

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const-string v9, "user_id"

    aput-object v9, v7, v8

    const-string v8, "sns_id = ? AND NOT user_id = ?"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 276
    .local v11, cursor:Landroid/database/Cursor;
    if-eqz v11, :cond_121

    .line 278
    :goto_e1
    :try_start_e1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_11e

    .line 279
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x1

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v11, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_118
    .catchall {:try_start_e1 .. :try_end_118} :catchall_119

    goto :goto_e1

    .line 282
    :catchall_119
    move-exception v5

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_11e
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 286
    :cond_121
    invoke-virtual/range {v18 .. v18}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .end local p1
    .restart local v16       #i$:Ljava/util/Iterator;
    :cond_129
    :goto_129
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_154

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 287
    .local v17, key:Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_129

    .line 288
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p0

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->deleteProfile(J)I

    goto :goto_129

    .line 291
    .end local v17           #key:Ljava/lang/String;
    :cond_154
    return-void
.end method


# virtual methods
.method public addFriendRequest(Lcom/lge/sns/profile/FriendRequest;)Landroid/net/Uri;
    .registers 5
    .parameter "friendRequest"

    .prologue
    .line 2500
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->setContentValuesForFriendRequest(Lcom/lge/sns/profile/FriendRequest;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public addProfile(Lcom/lge/sns/profile/Profile;)Landroid/net/Uri;
    .registers 6
    .parameter "profile"

    .prologue
    .line 617
    if-nez p1, :cond_4

    .line 618
    const/4 v1, 0x0

    .line 628
    :goto_3
    return-object v1

    .line 621
    :cond_4
    monitor-enter p0

    .line 622
    :try_start_5
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->setContentValuesForProfile(Lcom/lge/sns/profile/Profile;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 623
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_1f

    .line 624
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/lge/sns/profile/Profile;->setId(J)V

    .line 625
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->notifyProfileAdded(Lcom/lge/sns/profile/Profile;)V

    .line 628
    :cond_1f
    monitor-exit p0

    move-object v1, v0

    goto :goto_3

    .line 629
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_5 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public addProfileComment(Lcom/lge/sns/profile/ProfileComment;)Landroid/net/Uri;
    .registers 6
    .parameter "profileComment"

    .prologue
    .line 2077
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->setContentValuesForProfileComment(Lcom/lge/sns/profile/ProfileComment;)Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 2078
    .local v0, uri:Landroid/net/Uri;
    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Lcom/lge/sns/profile/ProfileComment;->setId(J)V

    .line 2079
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->notifyProfileCommentAdded(Lcom/lge/sns/profile/ProfileComment;)V

    .line 2081
    return-object v0
.end method

.method public deleteAllFriendRequest(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 2514
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllProfile(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 685
    monitor-enter p0

    .line 686
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 689
    :catchall_15
    move-exception v0

    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public deleteAllProfileComment(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 2100
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "sns_id = ? "

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteAllProfileInContact(Ljava/lang/String;)I
    .registers 7
    .parameter "snsId"

    .prologue
    .line 701
    monitor-enter p0

    .line 702
    :try_start_1
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://contacts/sns_ids"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "sn_site_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit p0

    return v0

    .line 705
    :catchall_19
    move-exception v0

    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method public deleteFriendRequest(J)I
    .registers 5
    .parameter "friendRequestId"

    .prologue
    .line 2504
    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2506
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->deleteFriendRequest(Landroid/net/Uri;)I

    move-result v1

    return v1
.end method

.method public deleteFriendRequest(Landroid/net/Uri;)I
    .registers 4
    .parameter "uri"

    .prologue
    const/4 v1, 0x0

    .line 2510
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public deleteProfile(J)I
    .registers 6
    .parameter "profileId"

    .prologue
    .line 650
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-nez v1, :cond_8

    .line 651
    const/4 v1, 0x0

    .line 656
    :goto_7
    return v1

    .line 654
    :cond_8
    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 656
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->deleteProfile(Landroid/net/Uri;)I

    move-result v1

    goto :goto_7
.end method

.method public deleteProfile(Landroid/net/Uri;)I
    .registers 7
    .parameter "uri"

    .prologue
    const/4 v2, 0x0

    .line 661
    if-nez p1, :cond_4

    .line 680
    :goto_3
    return v2

    .line 665
    :cond_4
    monitor-enter p0

    .line 666
    :try_start_5
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromDB(Landroid/net/Uri;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    .line 667
    .local v1, profile:Lcom/lge/sns/profile/Profile;
    if-eqz v1, :cond_28

    .line 668
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 669
    .local v0, count:I
    if-eqz v0, :cond_25

    .line 670
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->notifyProfileRemoved(Lcom/lge/sns/profile/Profile;)V
    :try_end_1a
    .catchall {:try_start_5 .. :try_end_1a} :catchall_2a

    .line 672
    :try_start_1a
    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->deleteProfileInContact(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1a .. :try_end_25} :catchall_2a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_25} :catch_2d

    .line 677
    :cond_25
    :goto_25
    :try_start_25
    monitor-exit p0

    move v2, v0

    goto :goto_3

    .line 680
    .end local v0           #count:I
    :cond_28
    monitor-exit p0

    goto :goto_3

    .line 681
    .end local v1           #profile:Lcom/lge/sns/profile/Profile;
    :catchall_2a
    move-exception v2

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_2a

    throw v2

    .line 673
    .restart local v0       #count:I
    .restart local v1       #profile:Lcom/lge/sns/profile/Profile;
    :catch_2d
    move-exception v2

    goto :goto_25
.end method

.method public deleteProfileComment(J)I
    .registers 5
    .parameter "profileCommentId"

    .prologue
    .line 2086
    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2088
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->deleteProfileComment(Landroid/net/Uri;)I

    move-result v1

    return v1
.end method

.method public deleteProfileComment(Landroid/net/Uri;)I
    .registers 6
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    .line 2093
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileComment(Landroid/net/Uri;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v1

    .line 2094
    .local v1, profileComment:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p1, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 2095
    .local v0, count:I
    invoke-direct {p0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->notifyProfileCommentRemoved(Lcom/lge/sns/profile/ProfileComment;)V

    .line 2096
    return v0
.end method

.method public getCommentListUpdatedDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .registers 15
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2276
    const-wide/16 v8, 0x0

    .line 2278
    .local v8, updated:J
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v11, [Ljava/lang/String;

    const-string v3, "comment_list_updated"

    aput-object v3, v2, v10

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v10

    aput-object p2, v4, v11

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2285
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2e

    .line 2287
    :try_start_20
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 2288
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2a
    .catchall {:try_start_20 .. :try_end_2a} :catchall_3b

    move-result-wide v8

    .line 2291
    :cond_2b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2295
    :cond_2e
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_40

    .line 2296
    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V

    .local v7, date:Ljava/util/Date;
    move-object v0, v7

    .line 2300
    .end local v7           #date:Ljava/util/Date;
    :goto_3a
    return-object v0

    .line 2291
    :catchall_3b
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_40
    move-object v0, v5

    .line 2300
    goto :goto_3a
.end method

.method public getContactsList(Landroid/content/Context;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileListCallback;I)V
    .registers 11
    .parameter "context"
    .parameter "snsid"
    .parameter "callback"
    .parameter "pageSize"

    .prologue
    .line 2616
    new-instance v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p4

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/profile/linkbook/ProfileFacade$7;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Landroid/content/Context;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V

    .line 2661
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2662
    return-void
.end method

.method public getDeepLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 873
    const/4 v2, 0x0

    .line 876
    .local v2, snsProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_start_1
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_4
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1 .. :try_end_4} :catch_19
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1 .. :try_end_4} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_4} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_42

    move-result-object v1

    .line 878
    .local v1, profile:Lcom/lge/newbay/client/IProfile;
    :try_start_5
    invoke-interface {v1, p1, p2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_8
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_5 .. :try_end_8} :catch_10
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_5 .. :try_end_8} :catch_19
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_5 .. :try_end_8} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_5 .. :try_end_8} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_42

    move-result-object v2

    .line 897
    :goto_9
    if-eqz v2, :cond_4a

    .line 898
    invoke-virtual {v2}, Lcom/lge/newbay/client/IProfile$SnsUserProfile;->getDeepLink()Ljava/lang/String;

    move-result-object v3

    .line 900
    :goto_f
    return-object v3

    .line 879
    :catch_10
    move-exception v0

    .line 880
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_11
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 881
    invoke-interface {v1, p1, p2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_17
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_11 .. :try_end_17} :catch_19
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_11 .. :try_end_17} :catch_21
    .catch Lcom/lge/sns/SnsException; {:try_start_11 .. :try_end_17} :catch_3f
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_17} :catch_42

    move-result-object v2

    goto :goto_9

    .line 883
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_19
    move-exception v3

    move-object v0, v3

    .line 884
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v3, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v3, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 885
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_21
    move-exception v3

    move-object v0, v3

    .line 886
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_31

    .line 887
    new-instance v3, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v3}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v3

    .line 889
    :cond_31
    new-instance v3, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 891
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_3f
    move-exception v3

    move-object v0, v3

    .line 892
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 893
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_42
    move-exception v3

    move-object v0, v3

    .line 894
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v3, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 900
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #profile:Lcom/lge/newbay/client/IProfile;
    :cond_4a
    const/4 v3, 0x0

    goto :goto_f
.end method

.method public getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    .registers 7
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1617
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1618
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFollower(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;

    move-result-object v0

    .line 1620
    :goto_a
    return-object v0

    :cond_b
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;

    move-result-object v0

    goto :goto_a
.end method

.method public getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "callback"

    .prologue
    .line 1772
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p4

    move v4, p5

    move-object v5, p6

    .line 1773
    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFollower(Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V

    .line 1778
    :goto_f
    return-void

    :cond_10
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    .line 1775
    invoke-direct/range {v0 .. v5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFollower(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V

    goto :goto_f
.end method

.method public getFollowing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;
    .registers 20
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageNum"
    .parameter "pageSize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1581
    if-eqz p3, :cond_7e

    .line 1582
    const-string v5, "sns_id = ? AND NOT user_id = ?  and (user_name like ? or display_name like ? )"

    .line 1583
    .local v5, whereString:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1584
    .local v10, likeKeyword:Ljava/lang/String;
    const/4 v2, 0x4

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v2, 0x1

    aput-object p2, v6, v2

    const/4 v2, 0x2

    aput-object v10, v6, v2

    const/4 v2, 0x3

    aput-object v10, v6, v2

    .line 1590
    .end local v10           #likeKeyword:Ljava/lang/String;
    .local v6, whereArgs:[Ljava/lang/String;
    :goto_2f
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 1591
    .local v12, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    invoke-direct {p0, v5, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8

    .line 1592
    .local v8, count:I
    const/4 v2, 0x1

    sub-int v2, p4, v2

    mul-int v13, v2, p5

    .line 1594
    .local v13, startIndex:I
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "display_name limit "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1601
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_8d

    .line 1603
    :goto_6b
    :try_start_6b
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_8a

    .line 1604
    invoke-direct {p0, v9}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfile(Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;

    move-result-object v11

    .line 1605
    .local v11, profile:Lcom/lge/sns/profile/Profile;
    invoke-interface {v12, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_79

    goto :goto_6b

    .line 1608
    .end local v11           #profile:Lcom/lge/sns/profile/Profile;
    :catchall_79
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1586
    .end local v5           #whereString:Ljava/lang/String;
    .end local v6           #whereArgs:[Ljava/lang/String;
    .end local v8           #count:I
    .end local v9           #cursor:Landroid/database/Cursor;
    .end local v12           #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    .end local v13           #startIndex:I
    :cond_7e
    const-string v5, "sns_id = ? AND NOT user_id = ? "

    .line 1587
    .restart local v5       #whereString:Ljava/lang/String;
    const/4 v2, 0x2

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v6, v2

    const/4 v2, 0x1

    aput-object p2, v6, v2

    .restart local v6       #whereArgs:[Ljava/lang/String;
    goto :goto_2f

    .line 1608
    .restart local v8       #count:I
    .restart local v9       #cursor:Landroid/database/Cursor;
    .restart local v12       #profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/FriendEntry;>;"
    .restart local v13       #startIndex:I
    :cond_8a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1612
    :cond_8d
    new-instance v2, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;

    const/4 v3, 0x1

    move/from16 v0, p4

    move v1, v3

    if-eq v0, v1, :cond_a6

    const/4 v3, 0x1

    :goto_96
    add-int v4, v8, p5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    div-int v4, v4, p5

    .end local v5           #whereString:Ljava/lang/String;
    move v0, v4

    move/from16 v1, p4

    if-le v0, v1, :cond_a8

    const/4 v4, 0x1

    :goto_a2
    invoke-direct {v2, v12, v3, v4}, Lcom/lge/sns/profile/IProfileFacade$FriendEntryContainer;-><init>(Ljava/util/List;ZZ)V

    return-object v2

    .restart local v5       #whereString:Ljava/lang/String;
    :cond_a6
    const/4 v3, 0x0

    goto :goto_96

    .end local v5           #whereString:Ljava/lang/String;
    :cond_a8
    const/4 v4, 0x0

    goto :goto_a2
.end method

.method public getFollowing(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;)V
    .registers 15
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "callback"

    .prologue
    .line 1724
    new-instance v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move-object v5, p6

    move v6, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$FriendEntryCallback;II)V

    invoke-virtual {v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade$4;->start()V

    .line 1768
    return-void
.end method

.method public getFriendCount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 11
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v7, 0x0

    .line 1536
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND NOT user_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v7

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1543
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2b

    .line 1545
    :try_start_1a
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1546
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_2d

    move-result v0

    .line 1549
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1552
    :goto_27
    return v0

    .line 1549
    :cond_28
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2b
    move v0, v7

    .line 1552
    goto :goto_27

    .line 1549
    :catchall_2d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getFriendList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1214
    const-string v0, "ProfileFacade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get a Friend list for snsId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v8, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/Profile;>;"
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND NOT user_id = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1226
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4e

    .line 1228
    :goto_38
    :try_start_38
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 1229
    invoke-direct {p0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfile(Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;

    move-result-object v7

    .line 1230
    .local v7, profile:Lcom/lge/sns/profile/Profile;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_45
    .catchall {:try_start_38 .. :try_end_45} :catchall_46

    goto :goto_38

    .line 1233
    .end local v7           #profile:Lcom/lge/sns/profile/Profile;
    :catchall_46
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_4b
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1237
    :cond_4e
    return-object v8
.end method

.method public getFriendList(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1206
    monitor-enter p0

    .line 1207
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 1208
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1209
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1250
    const-string v0, "ProfileFacade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get a Friend list for snsId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v8, profileList:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/Profile;>;"
    const-string v3, "sns_id = ? AND NOT user_id = ?"

    .line 1256
    .local v3, whereString:Ljava/lang/String;
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 1257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND display_name LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1259
    :cond_42
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const-string v5, "display_name"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1266
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_71

    .line 1268
    :goto_5b
    :try_start_5b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 1269
    invoke-direct {p0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfile(Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;

    move-result-object v7

    .line 1270
    .local v7, profile:Lcom/lge/sns/profile/Profile;
    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_68
    .catchall {:try_start_5b .. :try_end_68} :catchall_69

    goto :goto_5b

    .line 1273
    .end local v7           #profile:Lcom/lge/sns/profile/Profile;
    :catchall_69
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_6e
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1277
    :cond_71
    return-object v8
.end method

.method public getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Ljava/util/List;
    .registers 6
    .parameter "snsId"
    .parameter "userId"
    .parameter "key"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/Profile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1241
    monitor-enter p0

    .line 1242
    :try_start_1
    invoke-virtual {p0, p4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 1243
    invoke-virtual {p0, p1, p2, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 1244
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V
    .registers 13
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageSize"
    .parameter "callback"

    .prologue
    .line 1291
    const-string v1, "ProfileFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get a Friend list for snsId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
    new-instance v0, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;

    move-object v1, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade$2;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V

    .line 1334
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1335
    return-void
.end method

.method public getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V
    .registers 8
    .parameter "snsId"
    .parameter "userId"
    .parameter "keyword"
    .parameter "pageSize"
    .parameter "callback"
    .parameter "listener"

    .prologue
    .line 1282
    monitor-enter p0

    .line 1283
    :try_start_1
    invoke-virtual {p0, p6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 1284
    invoke-virtual/range {p0 .. p5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/lge/sns/profile/IProfileFacade$ProfileListCallback;)V

    .line 1285
    monitor-exit p0

    .line 1286
    return-void

    .line 1285
    :catchall_9
    move-exception v0

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_9

    throw v0
.end method

.method public getFriendRequest(J)Lcom/lge/sns/profile/FriendRequest;
    .registers 7
    .parameter "friendRequestId"

    .prologue
    .line 2409
    const-string v1, "ProfileFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get a FriendRequest for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 2413
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendRequest(Landroid/net/Uri;)Lcom/lge/sns/profile/FriendRequest;

    move-result-object v1

    return-object v1
.end method

.method public getFriendRequest(Landroid/net/Uri;)Lcom/lge/sns/profile/FriendRequest;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "ProfileFacade"

    .line 2418
    const/4 v7, 0x0

    .line 2420
    .local v7, request:Lcom/lge/sns/profile/FriendRequest;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$FriendRequestColumns;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2422
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_20

    .line 2424
    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2425
    invoke-direct {p0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToFriendRequest(Landroid/database/Cursor;)Lcom/lge/sns/profile/FriendRequest;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2a

    move-result-object v7

    .line 2428
    :cond_1d
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2432
    :cond_20
    if-nez v7, :cond_2f

    .line 2433
    const-string v0, "ProfileFacade"

    const-string v0, "No FriendRequest found"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2438
    :goto_29
    return-object v7

    .line 2428
    :catchall_2a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2435
    :cond_2f
    const-string v0, "ProfileFacade"

    const-string v0, "Done"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public getFriendRequest(Ljava/lang/String;)Lcom/lge/sns/profile/FriendRequest;
    .registers 16
    .parameter "dataLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2444
    const/4 v9, 0x0

    .line 2445
    .local v9, friendRequest:Lcom/lge/sns/profile/FriendRequest;
    invoke-static {p1}, Lcom/lge/newbay/client/Uris;->getFriendRequestParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$FriendRequestParam;

    move-result-object v10

    .line 2447
    .local v10, param:Lcom/lge/newbay/client/Uris$FriendRequestParam;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->FRIEND_REQUEST_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$FriendRequestColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND request_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v10}, Lcom/lge/newbay/client/Uris$FriendRequestParam;->getSnsId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v10}, Lcom/lge/newbay/client/Uris$FriendRequestParam;->getRequestId()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2454
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_34

    .line 2456
    :try_start_27
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2457
    invoke-direct {p0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToFriendRequest(Landroid/database/Cursor;)Lcom/lge/sns/profile/FriendRequest;
    :try_end_30
    .catchall {:try_start_27 .. :try_end_30} :catchall_51

    move-result-object v9

    .line 2460
    :cond_31
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2464
    :cond_34
    if-nez v9, :cond_50

    .line 2465
    const/4 v11, 0x0

    .line 2468
    .local v11, snsFriendRequest:Lcom/lge/newbay/client/IFriend$FriendRequest;
    :try_start_37
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;
    :try_end_3a
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_37 .. :try_end_3a} :catch_63
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_37 .. :try_end_3a} :catch_6b
    .catch Lcom/lge/sns/SnsException; {:try_start_37 .. :try_end_3a} :catch_89
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3a} :catch_8c

    move-result-object v8

    .line 2470
    .local v8, friend:Lcom/lge/newbay/client/IFriend;
    :try_start_3b
    invoke-interface {v8, p1}, Lcom/lge/newbay/client/IFriend;->getCommunityFriendRequest(Ljava/lang/String;)Lcom/lge/newbay/client/IFriend$FriendRequest;
    :try_end_3e
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_3b .. :try_end_3e} :catch_56
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_3b .. :try_end_3e} :catch_63
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_3b .. :try_end_3e} :catch_6b
    .catch Lcom/lge/sns/SnsException; {:try_start_3b .. :try_end_3e} :catch_89
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_3e} :catch_8c

    move-result-object v11

    .line 2489
    :goto_3f
    if-eqz v11, :cond_50

    .line 2490
    invoke-direct {p0, v11}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertSnsFriendRequestToFriendRequest(Lcom/lge/newbay/client/IFriend$FriendRequest;)Lcom/lge/sns/profile/FriendRequest;

    move-result-object v9

    .line 2491
    invoke-virtual {p0, v9}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->addFriendRequest(Lcom/lge/sns/profile/FriendRequest;)Landroid/net/Uri;

    move-result-object v12

    .line 2492
    .local v12, uri:Landroid/net/Uri;
    invoke-static {v12}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    invoke-virtual {v9, v0, v1}, Lcom/lge/sns/profile/FriendRequest;->setId(J)V

    .line 2496
    .end local v8           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v11           #snsFriendRequest:Lcom/lge/newbay/client/IFriend$FriendRequest;
    .end local v12           #uri:Landroid/net/Uri;
    :cond_50
    return-object v9

    .line 2460
    :catchall_51
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2471
    .restart local v8       #friend:Lcom/lge/newbay/client/IFriend;
    .restart local v11       #snsFriendRequest:Lcom/lge/newbay/client/IFriend$FriendRequest;
    :catch_56
    move-exception v7

    .line 2472
    .local v7, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_57
    invoke-virtual {v10}, Lcom/lge/newbay/client/Uris$FriendRequestParam;->getSnsId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2473
    invoke-interface {v8, p1}, Lcom/lge/newbay/client/IFriend;->getCommunityFriendRequest(Ljava/lang/String;)Lcom/lge/newbay/client/IFriend$FriendRequest;
    :try_end_61
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_57 .. :try_end_61} :catch_63
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_57 .. :try_end_61} :catch_6b
    .catch Lcom/lge/sns/SnsException; {:try_start_57 .. :try_end_61} :catch_89
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_61} :catch_8c

    move-result-object v11

    goto :goto_3f

    .line 2475
    .end local v7           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v8           #friend:Lcom/lge/newbay/client/IFriend;
    :catch_63
    move-exception v0

    move-object v7, v0

    .line 2476
    .local v7, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v0, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v0, v7}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 2477
    .end local v7           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_6b
    move-exception v0

    move-object v7, v0

    .line 2478
    .local v7, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v0

    const/16 v1, 0x191

    if-ne v0, v1, :cond_7b

    .line 2479
    new-instance v0, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v0}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v0

    .line 2481
    :cond_7b
    new-instance v0, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    invoke-virtual {v7}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 2483
    .end local v7           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_89
    move-exception v0

    move-object v7, v0

    .line 2484
    .local v7, e:Lcom/lge/sns/SnsException;
    throw v7

    .line 2485
    .end local v7           #e:Lcom/lge/sns/SnsException;
    :catch_8c
    move-exception v0

    move-object v7, v0

    .line 2486
    .local v7, e:Ljava/lang/Exception;
    new-instance v0, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v0, v7}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getFriendStatusHistory(Ljava/lang/String;IIZ)Ljava/util/List;
    .registers 15
    .parameter "snsId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "forceReload"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2771
    const/4 v4, 0x0

    .line 2772
    .local v4, history:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #history:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2774
    .restart local v4       #history:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    :try_start_6
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_9
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_6 .. :try_end_9} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_9} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_6 .. :try_end_9} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_5e

    move-result-object v6

    .line 2777
    .local v6, profile:Lcom/lge/newbay/client/IProfile;
    :try_start_a
    invoke-interface {v6, p1, p2, p3}, Lcom/lge/newbay/client/IProfile;->getFriendsStatusHistory(Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_d
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_a .. :try_end_d} :catch_34
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_a .. :try_end_d} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_a .. :try_end_d} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_a .. :try_end_d} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_5e

    move-result-object v3

    .line 2782
    .local v3, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_e
    :try_start_e
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 2783
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz v1, :cond_66

    .line 2784
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Entry;

    .line 2785
    .local v2, entry:Lcom/lge/feed/atom/Entry;
    invoke-direct {p0, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getSnsUserProfileStatus(Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/ProfileStatus;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_e .. :try_end_2b} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_e .. :try_end_2b} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_e .. :try_end_2b} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_5e

    goto :goto_18

    .line 2788
    .end local v1           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v2           #entry:Lcom/lge/feed/atom/Entry;
    .end local v3           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_2c
    move-exception v7

    move-object v0, v7

    .line 2789
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v7, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v7, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 2778
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    .restart local v6       #profile:Lcom/lge/newbay/client/IProfile;
    :catch_34
    move-exception v0

    .line 2779
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_35
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2780
    invoke-interface {v6, p1, p2, p3}, Lcom/lge/newbay/client/IProfile;->getFriendsStatusHistory(Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_3b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_35 .. :try_end_3b} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_35 .. :try_end_3b} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_35 .. :try_end_3b} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_5e

    move-result-object v3

    .restart local v3       #feed:Lcom/lge/feed/atom/AtomFeed;
    goto :goto_e

    .line 2790
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v3           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v6           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_3d
    move-exception v7

    move-object v0, v7

    .line 2791
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v7

    const/16 v8, 0x191

    if-ne v7, v8, :cond_4d

    .line 2792
    new-instance v7, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v7}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v7

    .line 2794
    :cond_4d
    new-instance v7, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v8

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 2796
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_5b
    move-exception v7

    move-object v0, v7

    .line 2797
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 2798
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_5e
    move-exception v7

    move-object v0, v7

    .line 2799
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v7, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 2801
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .restart local v3       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v6       #profile:Lcom/lge/newbay/client/IProfile;
    :cond_66
    return-object v4
.end method

.method public getMergedStatusHistory(Ljava/lang/String;Ljava/lang/String;IZ)Ljava/util/List;
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .parameter "maxCount"
    .parameter "forceReload"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2813
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .local v7, history:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 2814
    invoke-virtual/range {v0 .. v5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileStatusHistory(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v8

    .line 2815
    .local v8, myHistory:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    invoke-virtual {p0, p1, v3, p3, p4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendStatusHistory(Ljava/lang/String;IIZ)Ljava/util/List;

    move-result-object v6

    .line 2816
    .local v6, friendHistory:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    if-eqz v8, :cond_18

    .line 2817
    invoke-interface {v7, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2819
    :cond_18
    if-eqz v6, :cond_1d

    .line 2820
    invoke-interface {v7, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 2822
    :cond_1d
    sget-object v0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileStatusComparator:Ljava/util/Comparator;

    invoke-static {v7, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2823
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_2e

    const/4 v0, 0x0

    invoke-interface {v7, v0, p3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    :goto_2d
    return-object v0

    :cond_2e
    move-object v0, v7

    goto :goto_2d
.end method

.method public getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    const-string v6, "ProfileFacade"

    .line 553
    const-string v4, "ProfileFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfile : snsId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", userId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    .line 557
    .local v2, profile:Lcom/lge/sns/profile/Profile;
    if-nez v2, :cond_7b

    .line 561
    const-string v4, "ProfileFacade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No profile found from local db for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". trying to load from the remote server"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    .line 566
    if-eqz v2, :cond_7b

    .line 569
    const/4 v3, 0x0

    .line 571
    .local v3, profileStatus:Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    :try_start_59
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_5c
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_59 .. :try_end_5c} :catch_85
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_59 .. :try_end_5c} :catch_8d
    .catch Lcom/lge/sns/SnsException; {:try_start_59 .. :try_end_5c} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_5c} :catch_ae

    move-result-object v1

    .line 573
    .local v1, mProfile:Lcom/lge/newbay/client/IProfile;
    :try_start_5d
    invoke-interface {v1, p1, p2}, Lcom/lge/newbay/client/IProfile;->getUserStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    :try_end_60
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_5d .. :try_end_60} :catch_7c
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_5d .. :try_end_60} :catch_85
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_5d .. :try_end_60} :catch_8d
    .catch Lcom/lge/sns/SnsException; {:try_start_5d .. :try_end_60} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_60} :catch_ae

    move-result-object v3

    .line 592
    :goto_61
    if-eqz v3, :cond_71

    .line 593
    invoke-virtual {v3}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->getStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/sns/profile/Profile;->setStatus(Ljava/lang/String;)V

    .line 594
    invoke-virtual {v3}, Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;->getPublished()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/lge/sns/profile/Profile;->setProfileUpdated(Ljava/util/Date;)V

    .line 598
    :cond_71
    invoke-virtual {p0, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->addProfile(Lcom/lge/sns/profile/Profile;)Landroid/net/Uri;

    .line 604
    const-string v4, "ProfileFacade"

    const-string v4, "Load a profile successfully from the remote server. starting background avatar updater"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    .end local v1           #mProfile:Lcom/lge/newbay/client/IProfile;
    .end local v3           #profileStatus:Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    :cond_7b
    return-object v2

    .line 574
    .restart local v1       #mProfile:Lcom/lge/newbay/client/IProfile;
    .restart local v3       #profileStatus:Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    :catch_7c
    move-exception v0

    .line 575
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_7d
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 576
    invoke-interface {v1, p1, p2}, Lcom/lge/newbay/client/IProfile;->getUserStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfileStatus;
    :try_end_83
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_7d .. :try_end_83} :catch_85
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_7d .. :try_end_83} :catch_8d
    .catch Lcom/lge/sns/SnsException; {:try_start_7d .. :try_end_83} :catch_ab
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_83} :catch_ae

    move-result-object v3

    goto :goto_61

    .line 578
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #mProfile:Lcom/lge/newbay/client/IProfile;
    :catch_85
    move-exception v4

    move-object v0, v4

    .line 579
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v4, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v4, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 580
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_8d
    move-exception v4

    move-object v0, v4

    .line 581
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    const/16 v5, 0x191

    if-ne v4, v5, :cond_9d

    .line 582
    new-instance v4, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v4}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v4

    .line 584
    :cond_9d
    new-instance v4, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v5

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v4

    .line 586
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_ab
    move-exception v4

    move-object v0, v4

    .line 587
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 588
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_ae
    move-exception v4

    move-object v0, v4

    .line 589
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v4, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public getProfile(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 546
    invoke-virtual {p0, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 547
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    return-object v0
.end method

.method public getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 14
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v2, "ProfileFacade"

    .line 966
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get avatar image from db for snsId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    const/4 v6, 0x0

    .line 971
    .local v6, avatar:[B
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "avatar"

    aput-object v3, v2, v5

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 978
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_58

    .line 980
    :try_start_43
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 981
    const-string v0, "ProfileFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_94

    move-result-object v6

    .line 985
    :cond_55
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 989
    :cond_58
    if-nez v6, :cond_93

    .line 990
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 991
    .local v9, key:Ljava/lang/String;
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->avatarLoading:Ljava/util/HashSet;

    monitor-enter v0

    .line 992
    :try_start_74
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->avatarLoading:Ljava/util/HashSet;

    invoke-virtual {v1, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 993
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileAvatarLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 994
    .local v7, avatarLink:Ljava/lang/String;
    invoke-static {v7}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_92

    .line 995
    invoke-static {p1}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v1

    new-instance v2, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;

    invoke-direct {v2, p0, p1, p2, v7}, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 999
    .end local v7           #avatarLink:Ljava/lang/String;
    :cond_92
    monitor-exit v0
    :try_end_93
    .catchall {:try_start_74 .. :try_end_93} :catchall_99

    .line 1001
    .end local v9           #key:Ljava/lang/String;
    :cond_93
    return-object v6

    .line 985
    :catchall_94
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 999
    .restart local v9       #key:Ljava/lang/String;
    :catchall_99
    move-exception v1

    :try_start_9a
    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_9a .. :try_end_9b} :catchall_99

    throw v1
.end method

.method public getProfileAvatarBitmap(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 10
    .parameter "snsId"
    .parameter "userId"

    .prologue
    .line 1005
    const/4 v0, 0x0

    .line 1007
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, key:Ljava/lang/String;
    sget-object v5, Lcom/lge/sns/profile/linkbook/ProfileFacade;->bitmapCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v5, v2}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 1009
    .local v4, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/Bitmap;>;"
    if-eqz v4, :cond_28

    .line 1010
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 1012
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    :cond_28
    if-nez v0, :cond_42

    .line 1013
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    .line 1014
    .local v3, raw:[B
    if-eqz v3, :cond_42

    .line 1016
    const/4 v5, 0x0

    :try_start_31
    array-length v6, v3

    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/lang/OutOfMemoryError; {:try_start_31 .. :try_end_35} :catch_43

    move-result-object v0

    .line 1026
    :goto_36
    if-eqz v0, :cond_42

    .line 1027
    sget-object v5, Lcom/lge/sns/profile/linkbook/ProfileFacade;->bitmapCache:Lcom/lge/util/LRUHashMap;

    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v5, v2, v6}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    .end local v3           #raw:[B
    :cond_42
    return-object v0

    .line 1017
    .restart local v3       #raw:[B
    :catch_43
    move-exception v5

    move-object v1, v5

    .line 1019
    .local v1, e:Ljava/lang/OutOfMemoryError;
    invoke-static {}, Lcom/lge/sns/CacheManager;->getInstance()Lcom/lge/sns/CacheManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/lge/sns/CacheManager;->clearCache()V

    .line 1021
    const/4 v5, 0x0

    :try_start_4d
    array-length v6, v3

    invoke-static {v3, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_51
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4d .. :try_end_51} :catch_53

    move-result-object v0

    goto :goto_36

    .line 1022
    :catch_53
    move-exception v5

    goto :goto_36
.end method

.method public getProfileAvatarLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v2, "ProfileFacade"

    .line 938
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get avatar link from db for snsId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    const/4 v7, 0x0

    .line 943
    .local v7, link:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "avatar_link"

    aput-object v3, v2, v5

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 950
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_58

    .line 952
    :try_start_43
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 953
    const-string v0, "ProfileFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_59

    move-result-object v7

    .line 957
    :cond_55
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 961
    :cond_58
    return-object v7

    .line 957
    :catchall_59
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getProfileComment(J)Lcom/lge/sns/profile/ProfileComment;
    .registers 7
    .parameter "profileCommentId"

    .prologue
    .line 1945
    const-string v1, "ProfileFacade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get a ProfileComment for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1948
    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1949
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileComment(Landroid/net/Uri;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v1

    return-object v1
.end method

.method public getProfileComment(Landroid/net/Uri;)Lcom/lge/sns/profile/ProfileComment;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "ProfileFacade"

    .line 1954
    const/4 v6, 0x0

    .line 1956
    .local v6, comment:Lcom/lge/sns/profile/ProfileComment;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileCommentColumns;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1958
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_20

    .line 1960
    :try_start_13
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1961
    invoke-direct {p0, v7}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfileComment(Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileComment;
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_2a

    move-result-object v6

    .line 1964
    :cond_1d
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1968
    :cond_20
    if-nez v6, :cond_2f

    .line 1969
    const-string v0, "ProfileFacade"

    const-string v0, "No Profile Comment found"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    :goto_29
    return-object v6

    .line 1964
    :catchall_2a
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 1971
    :cond_2f
    const-string v0, "ProfileFacade"

    const-string v0, "Done"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_29
.end method

.method public getProfileComment(Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;
    .registers 12
    .parameter "dataLink"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 1979
    const/4 v8, 0x0

    .line 1980
    .local v8, profileComment:Lcom/lge/sns/profile/ProfileComment;
    invoke-static {p1}, Lcom/lge/newbay/client/Uris;->getProfileCommentParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$ProfileCommentParam;

    move-result-object v7

    .line 1981
    .local v7, param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileCommentColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? AND comment_id = ? "

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v7}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getSnsId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v7}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getUserId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v7}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getCommentId()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1989
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3b

    .line 1991
    :try_start_2e
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 1992
    invoke-direct {p0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfileComment(Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileComment;
    :try_end_37
    .catchall {:try_start_2e .. :try_end_37} :catchall_42

    move-result-object v8

    .line 1995
    :cond_38
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1999
    :cond_3b
    if-nez v8, :cond_41

    .line 2000
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileCommentFromServer(Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v8

    .line 2003
    :cond_41
    return-object v8

    .line 1995
    :catchall_42
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getProfileCommentList(J)Ljava/util/List;
    .registers 13
    .parameter "profileId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2181
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2183
    .local v8, list:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileComment;>;"
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_COMMENT_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileCommentColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "profile_id = ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2189
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_36

    .line 2191
    :goto_20
    :try_start_20
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 2192
    invoke-direct {p0, v7}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfileComment(Landroid/database/Cursor;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v6

    .line 2193
    .local v6, comment:Lcom/lge/sns/profile/ProfileComment;
    invoke-interface {v8, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2d
    .catchall {:try_start_20 .. :try_end_2d} :catchall_2e

    goto :goto_20

    .line 2196
    .end local v6           #comment:Lcom/lge/sns/profile/ProfileComment;
    :catchall_2e
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    :cond_33
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2200
    :cond_36
    return-object v8
.end method

.method public getProfileCommentList(JLcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)Ljava/util/List;
    .registers 5
    .parameter "profileId"
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileComment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2174
    monitor-enter p0

    .line 2175
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V

    .line 2176
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileCommentList(J)Ljava/util/List;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2177
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getProfileFriendCount(Ljava/lang/String;Ljava/lang/String;)I
    .registers 12
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    const-string v2, "ProfileFacade"

    .line 1054
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get friend count from db for snsId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1057
    const/4 v6, 0x0

    .line 1059
    .local v6, count:I
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v8, [Ljava/lang/String;

    const-string v3, "friend_count"

    aput-object v3, v2, v5

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1066
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_58

    .line 1068
    :try_start_43
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 1069
    const-string v0, "ProfileFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_54
    .catchall {:try_start_43 .. :try_end_54} :catchall_59

    move-result v6

    .line 1073
    :cond_55
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1077
    :cond_58
    return v6

    .line 1073
    :catchall_59
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getProfileFromDB(J)Lcom/lge/sns/profile/Profile;
    .registers 5
    .parameter "profileId"

    .prologue
    .line 417
    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 418
    .local v0, uri:Landroid/net/Uri;
    invoke-virtual {p0, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromDB(Landroid/net/Uri;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    return-object v1
.end method

.method public getProfileFromDB(JLcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
    .registers 5
    .parameter "profileId"
    .parameter "listener"

    .prologue
    .line 410
    monitor-enter p0

    .line 411
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 412
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromDB(J)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 413
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getProfileFromDB(Landroid/net/Uri;)Lcom/lge/sns/profile/Profile;
    .registers 11
    .parameter "uri"

    .prologue
    const/4 v3, 0x0

    const-string v8, "ProfileFacade"

    .line 430
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Profile From DB : URI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v7, 0x0

    .line 434
    .local v7, profile:Lcom/lge/sns/profile/Profile;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 436
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3f

    .line 438
    :try_start_2b
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 439
    const-string v0, "ProfileFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-direct {p0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfile(Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;
    :try_end_3b
    .catchall {:try_start_2b .. :try_end_3b} :catchall_5a

    move-result-object v7

    .line 443
    :cond_3c
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 447
    :cond_3f
    if-nez v7, :cond_59

    .line 448
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Profile found from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_59
    return-object v7

    .line 443
    :catchall_5a
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getProfileFromDB(Landroid/net/Uri;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
    .registers 4
    .parameter "uri"
    .parameter "listener"

    .prologue
    .line 422
    monitor-enter p0

    .line 423
    :try_start_1
    invoke-virtual {p0, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 424
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromDB(Landroid/net/Uri;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 425
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .registers 12
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const-string v8, "ProfileFacade"

    .line 463
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Profile From DB : snsId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/4 v7, 0x0

    .line 467
    .local v7, profile:Lcom/lge/sns/profile/Profile;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileContent$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 474
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_53

    .line 476
    :try_start_3f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 477
    const-string v0, "ProfileFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-direct {p0, v6}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertCursorToProfile(Landroid/database/Cursor;)Lcom/lge/sns/profile/Profile;
    :try_end_4f
    .catchall {:try_start_3f .. :try_end_4f} :catchall_5d

    move-result-object v7

    .line 481
    :cond_50
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 485
    :cond_53
    if-nez v7, :cond_5c

    .line 486
    const-string v0, "ProfileFacade"

    const-string v0, "No Profile found"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    :cond_5c
    return-object v7

    .line 481
    :catchall_5d
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getProfileFromDB(Ljava/lang/String;Ljava/lang/String;Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)Lcom/lge/sns/profile/Profile;
    .registers 5
    .parameter "snsId"
    .parameter "userId"
    .parameter "listener"

    .prologue
    .line 455
    monitor-enter p0

    .line 456
    :try_start_1
    invoke-virtual {p0, p3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V

    .line 457
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromDB(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 458
    :catchall_a
    move-exception v0

    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_a

    throw v0
.end method

.method public getProfileFromServer(Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .registers 5
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {p1}, Lcom/lge/newbay/client/Uris;->getProfileParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$SnsBasicParam;

    move-result-object v0

    .line 496
    .local v0, param:Lcom/lge/newbay/client/Uris$SnsBasicParam;
    if-eqz v0, :cond_13

    .line 497
    invoke-virtual {v0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getSnsId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/lge/newbay/client/Uris$SnsBasicParam;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    .line 500
    :goto_12
    return-object v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public getProfileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;
    .registers 12
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 505
    const/4 v2, 0x0

    .line 507
    .local v2, p:Lcom/lge/sns/profile/Profile;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 508
    .local v1, key:Ljava/lang/String;
    sget-object v6, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v6, v1}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/SoftReference;

    .line 509
    .local v4, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/lge/sns/profile/Profile;>;"
    if-eqz v4, :cond_28

    .line 510
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    .end local v2           #p:Lcom/lge/sns/profile/Profile;
    check-cast v2, Lcom/lge/sns/profile/Profile;

    .line 512
    .restart local v2       #p:Lcom/lge/sns/profile/Profile;
    :cond_28
    if-nez v2, :cond_43

    .line 513
    const/4 v5, 0x0

    .line 515
    .local v5, snsProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_start_2b
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_2e
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_2b .. :try_end_2e} :catch_4d
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2b .. :try_end_2e} :catch_55
    .catch Lcom/lge/sns/SnsException; {:try_start_2b .. :try_end_2e} :catch_73
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2e} :catch_76

    move-result-object v3

    .line 517
    .local v3, profile:Lcom/lge/newbay/client/IProfile;
    :try_start_2f
    invoke-interface {v3, p1, p2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_32
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_2f .. :try_end_32} :catch_44
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_2f .. :try_end_32} :catch_4d
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_2f .. :try_end_32} :catch_55
    .catch Lcom/lge/sns/SnsException; {:try_start_2f .. :try_end_32} :catch_73
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_32} :catch_76

    move-result-object v5

    .line 536
    :goto_33
    if-eqz v5, :cond_43

    .line 537
    invoke-direct {p0, v5}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->convertSnsProfileToProfile(Lcom/lge/newbay/client/IProfile$SnsUserProfile;)Lcom/lge/sns/profile/Profile;

    move-result-object v2

    .line 538
    sget-object v6, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCache:Lcom/lge/util/LRUHashMap;

    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v1, v7}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    .end local v3           #profile:Lcom/lge/newbay/client/IProfile;
    .end local v5           #snsProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :cond_43
    return-object v2

    .line 518
    .restart local v3       #profile:Lcom/lge/newbay/client/IProfile;
    .restart local v5       #snsProfile:Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :catch_44
    move-exception v0

    .line 519
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_45
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 520
    invoke-interface {v3, p1, p2}, Lcom/lge/newbay/client/IProfile;->getUserProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/newbay/client/IProfile$SnsUserProfile;
    :try_end_4b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_45 .. :try_end_4b} :catch_4d
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_45 .. :try_end_4b} :catch_55
    .catch Lcom/lge/sns/SnsException; {:try_start_45 .. :try_end_4b} :catch_73
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4b} :catch_76

    move-result-object v5

    goto :goto_33

    .line 522
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v3           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_4d
    move-exception v6

    move-object v0, v6

    .line 523
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v6, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v6, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 524
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_55
    move-exception v6

    move-object v0, v6

    .line 525
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v6

    const/16 v7, 0x191

    if-ne v6, v7, :cond_65

    .line 526
    new-instance v6, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v6}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v6

    .line 528
    :cond_65
    new-instance v6, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v7

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 530
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_73
    move-exception v6

    move-object v0, v6

    .line 531
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 532
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_76
    move-exception v6

    move-object v0, v6

    .line 533
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v6, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v6
.end method

.method public getProfileId(Ljava/lang/String;Ljava/lang/String;)J
    .registers 14
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v9, "ProfileFacade"

    .line 905
    const-string v0, "ProfileFacade"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Profile Row ID for snsId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    const-wide/16 v7, 0x0

    .line 910
    .local v7, id:J
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v3, v2, v5

    const-string v3, "sns_id = ? AND user_id = ? "

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    aput-object p2, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 917
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_59

    .line 919
    :try_start_44
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 920
    const-string v0, "ProfileFacade"

    const-string v1, "Done"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_55
    .catchall {:try_start_44 .. :try_end_55} :catchall_67

    move-result-wide v7

    .line 924
    :cond_56
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 928
    :cond_59
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-nez v0, :cond_66

    .line 929
    const-string v0, "ProfileFacade"

    const-string v0, "No Profile found"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    :cond_66
    return-wide v7

    .line 924
    :catchall_67
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public getProfileStatusHistory(Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/util/List;
    .registers 16
    .parameter "snsId"
    .parameter "userId"
    .parameter "pageNum"
    .parameter "pageSize"
    .parameter "forceReload"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IIZ)",
            "Ljava/util/List",
            "<",
            "Lcom/lge/sns/profile/ProfileStatus;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2735
    const/4 v4, 0x0

    .line 2736
    .local v4, history:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #history:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2738
    .restart local v4       #history:Ljava/util/List;,"Ljava/util/List<Lcom/lge/sns/profile/ProfileStatus;>;"
    :try_start_6
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_9
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_6 .. :try_end_9} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_9} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_6 .. :try_end_9} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_5e

    move-result-object v6

    .line 2741
    .local v6, profile:Lcom/lge/newbay/client/IProfile;
    :try_start_a
    invoke-interface {v6, p1, p2, p3, p4}, Lcom/lge/newbay/client/IProfile;->getProfileStatusHistory(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_d
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_a .. :try_end_d} :catch_34
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_a .. :try_end_d} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_a .. :try_end_d} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_a .. :try_end_d} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_5e

    move-result-object v3

    .line 2746
    .local v3, feed:Lcom/lge/feed/atom/AtomFeed;
    :goto_e
    :try_start_e
    invoke-virtual {v3}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v1

    .line 2747
    .local v1, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    if-eqz v1, :cond_66

    .line 2748
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_18
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_66

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/lge/feed/atom/Entry;

    .line 2749
    .local v2, entry:Lcom/lge/feed/atom/Entry;
    invoke-direct {p0, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getSnsUserProfileStatus(Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/ProfileStatus;

    move-result-object v7

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_e .. :try_end_2b} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_e .. :try_end_2b} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_e .. :try_end_2b} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_2b} :catch_5e

    goto :goto_18

    .line 2752
    .end local v1           #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .end local v2           #entry:Lcom/lge/feed/atom/Entry;
    .end local v3           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_2c
    move-exception v7

    move-object v0, v7

    .line 2753
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v7, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v7, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 2742
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    .restart local v6       #profile:Lcom/lge/newbay/client/IProfile;
    :catch_34
    move-exception v0

    .line 2743
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_35
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2744
    invoke-interface {v6, p1, p2, p3, p4}, Lcom/lge/newbay/client/IProfile;->getProfileStatusHistory(Ljava/lang/String;Ljava/lang/String;II)Lcom/lge/feed/atom/AtomFeed;
    :try_end_3b
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_35 .. :try_end_3b} :catch_2c
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_35 .. :try_end_3b} :catch_3d
    .catch Lcom/lge/sns/SnsException; {:try_start_35 .. :try_end_3b} :catch_5b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_5e

    move-result-object v3

    .restart local v3       #feed:Lcom/lge/feed/atom/AtomFeed;
    goto :goto_e

    .line 2754
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v3           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v6           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_3d
    move-exception v7

    move-object v0, v7

    .line 2755
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v7

    const/16 v8, 0x191

    if-ne v7, v8, :cond_4d

    .line 2756
    new-instance v7, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v7}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v7

    .line 2758
    :cond_4d
    new-instance v7, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v8

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v7

    .line 2760
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_5b
    move-exception v7

    move-object v0, v7

    .line 2761
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 2762
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_5e
    move-exception v7

    move-object v0, v7

    .line 2763
    .local v0, e:Ljava/lang/Exception;
    new-instance v7, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v7, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 2765
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    .restart local v3       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v6       #profile:Lcom/lge/newbay/client/IProfile;
    :cond_66
    return-object v4
.end method

.method public insertFromProfileToContact(Landroid/content/Context;Lcom/lge/sns/profile/Profile;)Z
    .registers 45
    .parameter "context"
    .parameter "profile"

    .prologue
    .line 766
    const-string v15, "contact_methods"

    .line 767
    .local v15, CONTACTMETHODS_CONTENT_DIRECTORY:Ljava/lang/String;
    const-string v19, "phones"

    .line 768
    .local v19, PHONES_CONTENT_DIRECTORY:Ljava/lang/String;
    const-string v21, "stuffs"

    .line 769
    .local v21, STUFFS_CONTENT_DIRECTORY:Ljava/lang/String;
    const-string v20, "sns_ids"

    .line 772
    .local v20, SNSIDS_CONTENT_DIRECTORY:Ljava/lang/String;
    const-string v8, "name"

    .line 773
    .local v8, COLUMN_NAME:Ljava/lang/String;
    const-string v6, "kind"

    .line 774
    .local v6, COLUMN_KIND:Ljava/lang/String;
    const-string v13, "type"

    .line 775
    .local v13, COLUMN_TYPE:Ljava/lang/String;
    const-string v7, "label"

    .line 776
    .local v7, COLUMN_LABEL:Ljava/lang/String;
    const-string v4, "data"

    .line 777
    .local v4, COLUMN_DATA:Ljava/lang/String;
    const-string v9, "number"

    .line 778
    .local v9, COLUMN_NUMBER:Ljava/lang/String;
    const-string v5, "isprimary"

    .line 779
    .local v5, COLUMN_ISPRIMARY:Ljava/lang/String;
    const-string v10, "sns_id"

    .line 780
    .local v10, COLUMN_SNSID:Ljava/lang/String;
    const-string v14, "user_id"

    .line 781
    .local v14, COLUMN_USERID:Ljava/lang/String;
    const-string v11, "sn_site_id"

    .line 782
    .local v11, COLUMN_SN_SITE:Ljava/lang/String;
    const-string v12, "sn_user_id"

    .line 785
    .local v12, COLUMN_SN_USER:Ljava/lang/String;
    const/16 v17, 0x1

    .line 786
    .local v17, KIND_EMAIL:I
    const/16 v18, 0x2

    .line 787
    .local v18, KIND_POSTAL:I
    const/16 v16, 0x8

    .line 789
    .local v16, KIND_BIRTHDAY:I
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v35

    .line 790
    .local v35, resolver:Landroid/content/ContentResolver;
    new-instance v37, Landroid/content/ContentValues;

    invoke-direct/range {v37 .. v37}, Landroid/content/ContentValues;-><init>()V

    .line 794
    .local v37, values:Landroid/content/ContentValues;
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_79

    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_79

    .line 795
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getDisplayName()Ljava/lang/String;

    move-result-object v29

    .line 801
    .local v29, name:Ljava/lang/String;
    :goto_41
    const-string v38, "name"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 802
    sget-object v38, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v31

    .line 804
    .local v31, personUri:Landroid/net/Uri;
    if-nez v31, :cond_91

    .line 805
    const-string v38, "ProfileFacade"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "invalid uri:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    const/16 v38, 0x0

    .line 868
    :goto_78
    return v38

    .line 796
    .end local v29           #name:Ljava/lang/String;
    .end local v31           #personUri:Landroid/net/Uri;
    :cond_79
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v38

    if-eqz v38, :cond_8e

    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_8e

    .line 797
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getUserName()Ljava/lang/String;

    move-result-object v29

    .restart local v29       #name:Ljava/lang/String;
    goto :goto_41

    .line 799
    .end local v29           #name:Ljava/lang/String;
    :cond_8e
    const-string v29, ""

    .restart local v29       #name:Ljava/lang/String;
    goto :goto_41

    .line 809
    .restart local v31       #personUri:Landroid/net/Uri;
    :cond_91
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v33

    .line 810
    .local v33, photodata:[B
    if-eqz v33, :cond_db

    .line 811
    const/16 v38, 0x0

    move-object/from16 v0, v33

    array-length v0, v0

    move/from16 v39, v0

    move-object/from16 v0, v33

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v32

    .line 812
    .local v32, photo:Landroid/graphics/Bitmap;
    new-instance v36, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v36 .. v36}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 813
    .local v36, stream:Ljava/io/ByteArrayOutputStream;
    sget-object v38, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v39, 0x4b

    move-object/from16 v0, v32

    move-object/from16 v1, v38

    move/from16 v2, v39

    move-object/from16 v3, v36

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 814
    invoke-virtual/range {p0 .. p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v38

    invoke-virtual/range {v36 .. v36}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v39

    move-object/from16 v0, v38

    move-object/from16 v1, v31

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Landroid/provider/Contacts$People;->setPhotoData(Landroid/content/ContentResolver;Landroid/net/Uri;[B)V

    .line 817
    .end local v32           #photo:Landroid/graphics/Bitmap;
    .end local v36           #stream:Ljava/io/ByteArrayOutputStream;
    :cond_db
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getPhoneNumber()Ljava/lang/String;

    move-result-object v30

    .line 818
    .local v30, number:Ljava/lang/String;
    if-eqz v30, :cond_124

    invoke-static/range {v30 .. v30}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_124

    .line 819
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 820
    const-string v38, "type"

    const/16 v39, 0x2

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 821
    const-string v38, "isprimary"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 822
    const-string v38, "number"

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v39

    const-string v40, "-"

    const-string v41, ""

    invoke-virtual/range {v39 .. v41}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v38, "phones"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 826
    :cond_124
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v26

    .line 827
    .local v26, email:Ljava/lang/String;
    if-eqz v26, :cond_172

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_172

    .line 828
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 829
    const-string v38, "kind"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 830
    const-string v38, "type"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    const-string v38, "isprimary"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 832
    const-string v38, "data"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    const-string v38, "contact_methods"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 836
    :cond_172
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getHometown()Ljava/lang/String;

    move-result-object v34

    .line 837
    .local v34, postal:Ljava/lang/String;
    if-eqz v34, :cond_1b3

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_1b3

    .line 838
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 839
    const-string v38, "kind"

    const/16 v39, 0x2

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 840
    const-string v38, "type"

    const/16 v39, 0x1

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 841
    const-string v38, "data"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getHometown()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string v38, "contact_methods"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 845
    :cond_1b3
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getBirthDateTime()Ljava/lang/String;

    move-result-object v24

    .line 846
    .local v24, birthday:Ljava/lang/String;
    if-eqz v24, :cond_1ed

    invoke-static/range {v24 .. v24}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v38

    if-eqz v38, :cond_1ed

    .line 847
    invoke-static/range {v24 .. v24}, Ljava/util/Date;->parse(Ljava/lang/String;)J

    move-result-wide v27

    .line 848
    .local v27, intentItem:J
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 849
    const-string v38, "kind"

    const/16 v39, 0x8

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 850
    const-string v38, "data"

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 851
    const-string v38, "stuffs"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 855
    .end local v27           #intentItem:J
    :cond_1ed
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v23

    .line 856
    .local v23, am:Lcom/lge/sns/account/IAccountFacade;
    if-eqz v23, :cond_24e

    .line 857
    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v23

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Lcom/lge/sns/account/IAccountFacade;->getAccount(Ljava/lang/String;)Lcom/lge/sns/account/Account;

    move-result-object v22

    .line 858
    .local v22, account:Lcom/lge/sns/account/Account;
    invoke-virtual/range {v22 .. v22}, Lcom/lge/sns/account/Account;->getCredential()Lcom/lge/sns/account/Credential;

    move-result-object v25

    .line 859
    .local v25, credential:Lcom/lge/sns/account/Credential;
    invoke-virtual/range {v37 .. v37}, Landroid/content/ContentValues;->clear()V

    .line 860
    const-string v38, "sn_site_id"

    invoke-virtual/range {v22 .. v22}, Lcom/lge/sns/account/Account;->getSnsId()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    const-string v38, "sn_user_id"

    invoke-virtual/range {v25 .. v25}, Lcom/lge/sns/account/Credential;->getUserId()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    const-string v38, "label"

    invoke-virtual/range {v22 .. v22}, Lcom/lge/sns/account/Account;->getTitle()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string v38, "sns_id"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getEmail()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string v38, "user_id"

    invoke-virtual/range {p2 .. p2}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v37 .. v39}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    const-string v38, "sns_ids"

    move-object/from16 v0, v31

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 868
    .end local v22           #account:Lcom/lge/sns/account/Account;
    .end local v25           #credential:Lcom/lge/sns/account/Credential;
    :cond_24e
    const/16 v38, 0x1

    goto/16 :goto_78
.end method

.method public isExistInContacts(Lcom/lge/sns/profile/ProfileListItem;Ljava/lang/String;)Z
    .registers 12
    .parameter "profile"
    .parameter "accountUserEmail"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2693
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2694
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x3

    new-array v4, v1, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getSnsId()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v7

    aput-object p2, v4, v8

    const/4 v1, 0x2

    invoke-virtual {p1}, Lcom/lge/sns/profile/ProfileListItem;->getUserId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    .line 2698
    .local v4, selArg:[Ljava/lang/String;
    :try_start_18
    sget-object v1, Lcom/lge/sns/profile/linkbook/ProfileFacade;->SNSIDS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/lge/sns/profile/linkbook/ProfileFacade;->SNSIDS_PROJECTION_INCONTACT:[Ljava/lang/String;

    const-string v3, "sn_site_id= ? AND sn_user_id= ? AND user_id= ? "

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2705
    .local v6, snsIdsCursor:Landroid/database/Cursor;
    if-eqz v6, :cond_30

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_30

    .line 2706
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v1, v8

    .line 2717
    .end local v6           #snsIdsCursor:Landroid/database/Cursor;
    :goto_2f
    return v1

    .line 2710
    .restart local v6       #snsIdsCursor:Landroid/database/Cursor;
    :cond_30
    if-eqz v6, :cond_35

    .line 2711
    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_35} :catch_37

    .end local v6           #snsIdsCursor:Landroid/database/Cursor;
    :cond_35
    :goto_35
    move v1, v7

    .line 2717
    goto :goto_2f

    .line 2713
    :catch_37
    move-exception v1

    goto :goto_35
.end method

.method public isExistInFriends(Lcom/lge/sns/profile/Profile;)Z
    .registers 5
    .parameter "profile"

    .prologue
    .line 2721
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getSnsId()Ljava/lang/String;

    move-result-object v0

    .line 2722
    .local v0, snsid:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getUserId()Ljava/lang/String;

    move-result-object v1

    .line 2723
    .local v1, userid:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->isExistInFriends(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    return v2
.end method

.method public isExistInFriends(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .parameter "snsId"
    .parameter "userId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2727
    if-eqz p1, :cond_6

    if-nez p2, :cond_8

    :cond_6
    move v0, v2

    .line 2730
    :goto_7
    return v0

    :cond_8
    const-string v0, "sns_id = ? AND NOT user_id = ? "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    aput-object p2, v1, v3

    invoke-direct {p0, v0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriendCount(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_19

    move v0, v3

    goto :goto_7

    :cond_19
    move v0, v2

    goto :goto_7
.end method

.method public refreshProfile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 710
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileFromServer(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v3

    .line 712
    .local v3, profile:Lcom/lge/sns/profile/Profile;
    if-eqz v3, :cond_41

    .line 713
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/lge/sns/profile/Profile;->setId(J)V

    .line 714
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileUpdateDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/lge/sns/profile/Profile;->setProfileUpdated(Ljava/util/Date;)V

    .line 715
    monitor-enter p0

    .line 716
    :try_start_15
    invoke-virtual {p0, v3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->updateProfile(Lcom/lge/sns/profile/Profile;)I

    .line 717
    monitor-exit p0
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_42

    .line 718
    invoke-virtual {v3}, Lcom/lge/sns/profile/Profile;->getAvatarLink()Ljava/lang/String;

    move-result-object v1

    .line 719
    .local v1, newlink:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileAvatarLink(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 720
    .local v2, oldlink:Ljava/lang/String;
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileAvatar(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 722
    .local v0, avatarImage:[B
    if-eqz v1, :cond_2d

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_2d
    if-eqz v2, :cond_31

    if-eqz v1, :cond_35

    :cond_31
    if-eqz v2, :cond_41

    if-nez v0, :cond_41

    .line 725
    :cond_35
    invoke-static {p1}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v4

    new-instance v5, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;

    invoke-direct {v5, p0, p1, p2, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade$ProfileUpdateJob;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/lge/sns/BackgroundJobManager;->addEmergencyJob(Ljava/lang/Runnable;)V

    .line 729
    .end local v0           #avatarImage:[B
    .end local v1           #newlink:Ljava/lang/String;
    .end local v2           #oldlink:Ljava/lang/String;
    :cond_41
    return-void

    .line 717
    :catchall_42
    move-exception v4

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw v4
.end method

.method public registerProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 368
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 369
    if-eqz p1, :cond_13

    :try_start_5
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 370
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 372
    :cond_13
    monitor-exit v0

    .line 373
    return-void

    .line 372
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public registerProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V
    .registers 5
    .parameter "listener"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 299
    if-eqz p1, :cond_13

    :try_start_5
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_13

    .line 300
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_13
    monitor-exit v0

    .line 303
    return-void

    .line 302
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public removeProfileCommentUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileCommentUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 377
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileCommentListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 378
    monitor-exit v0

    .line 379
    return-void

    .line 378
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public removeProfileUpdateListener(Lcom/lge/sns/profile/IProfileFacade$ProfileUpdateListener;)V
    .registers 4
    .parameter "listener"

    .prologue
    .line 306
    iget-object v0, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    monitor-enter v0

    .line 307
    :try_start_3
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->profileListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 308
    monitor-exit v0

    .line 309
    return-void

    .line 308
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public requestProfileStatusUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 733
    invoke-virtual {p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile(Ljava/lang/String;Ljava/lang/String;)Lcom/lge/sns/profile/Profile;

    move-result-object v1

    .line 734
    .local v1, p:Lcom/lge/sns/profile/Profile;
    if-eqz v1, :cond_1b

    .line 736
    :try_start_6
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_9
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_6 .. :try_end_9} :catch_24
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_6 .. :try_end_9} :catch_2c
    .catch Lcom/lge/sns/SnsException; {:try_start_6 .. :try_end_9} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_9} :catch_4d

    move-result-object v2

    .line 738
    .local v2, profile:Lcom/lge/newbay/client/IProfile;
    :try_start_a
    invoke-interface {v2, p1, p2, p3}, Lcom/lge/newbay/client/IProfile;->updateUserStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_a .. :try_end_d} :catch_1c
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_a .. :try_end_d} :catch_24
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_a .. :try_end_d} :catch_2c
    .catch Lcom/lge/sns/SnsException; {:try_start_a .. :try_end_d} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_d} :catch_4d

    .line 743
    :goto_d
    :try_start_d
    invoke-virtual {v1, p3}, Lcom/lge/sns/profile/Profile;->setStatus(Ljava/lang/String;)V

    .line 744
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v3}, Lcom/lge/sns/profile/Profile;->setProfileUpdated(Ljava/util/Date;)V

    .line 745
    invoke-virtual {p0, v1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->updateProfile(Lcom/lge/sns/profile/Profile;)I

    .line 760
    .end local v2           #profile:Lcom/lge/newbay/client/IProfile;
    :cond_1b
    return-void

    .line 739
    .restart local v2       #profile:Lcom/lge/newbay/client/IProfile;
    :catch_1c
    move-exception v0

    .line 740
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 741
    invoke-interface {v2, p1, p2, p3}, Lcom/lge/newbay/client/IProfile;->updateUserStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_23
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_d .. :try_end_23} :catch_24
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_d .. :try_end_23} :catch_2c
    .catch Lcom/lge/sns/SnsException; {:try_start_d .. :try_end_23} :catch_4a
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_23} :catch_4d

    goto :goto_d

    .line 746
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v2           #profile:Lcom/lge/newbay/client/IProfile;
    :catch_24
    move-exception v3

    move-object v0, v3

    .line 747
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v3, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v3, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 748
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_2c
    move-exception v3

    move-object v0, v3

    .line 749
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_3c

    .line 750
    new-instance v3, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v3}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v3

    .line 752
    :cond_3c
    new-instance v3, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 754
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_4a
    move-exception v3

    move-object v0, v3

    .line 755
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 756
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_4d
    move-exception v3

    move-object v0, v3

    .line 757
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v3, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public responseFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "requestId"
    .parameter "accept"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2522
    :try_start_0
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;
    :try_end_3
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_3} :catch_10
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_18
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_3} :catch_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_39

    move-result-object v1

    .line 2524
    .local v1, friendRequest:Lcom/lge/newbay/client/IFriend;
    :try_start_4
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/newbay/client/IFriend;->responseFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_7
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_4 .. :try_end_7} :catch_8
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4 .. :try_end_7} :catch_10
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4 .. :try_end_7} :catch_18
    .catch Lcom/lge/sns/SnsException; {:try_start_4 .. :try_end_7} :catch_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_39

    .line 2542
    :goto_7
    return-void

    .line 2525
    :catch_8
    move-exception v0

    .line 2526
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2527
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/lge/newbay/client/IFriend;->responseFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_9 .. :try_end_f} :catch_18
    .catch Lcom/lge/sns/SnsException; {:try_start_9 .. :try_end_f} :catch_36
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_39

    goto :goto_7

    .line 2529
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #friendRequest:Lcom/lge/newbay/client/IFriend;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 2530
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v2, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v2, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2531
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 2532
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_28

    .line 2533
    new-instance v2, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v2}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v2

    .line 2535
    :cond_28
    new-instance v2, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2537
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 2538
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 2539
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 2540
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v2, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendFriendsRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .parameter "snsId"
    .parameter "userId"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2547
    :try_start_0
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;
    :try_end_3
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_0 .. :try_end_3} :catch_10
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_0 .. :try_end_3} :catch_18
    .catch Lcom/lge/sns/SnsException; {:try_start_0 .. :try_end_3} :catch_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_39

    move-result-object v1

    .line 2549
    .local v1, friendRequest:Lcom/lge/newbay/client/IFriend;
    :try_start_4
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/newbay/client/IFriend;->sendFriendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_4 .. :try_end_7} :catch_8
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4 .. :try_end_7} :catch_10
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4 .. :try_end_7} :catch_18
    .catch Lcom/lge/sns/SnsException; {:try_start_4 .. :try_end_7} :catch_36
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_39

    .line 2567
    :goto_7
    return-void

    .line 2550
    :catch_8
    move-exception v0

    .line 2551
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_9
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2552
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/newbay/client/IFriend;->sendFriendRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_9 .. :try_end_f} :catch_10
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_9 .. :try_end_f} :catch_18
    .catch Lcom/lge/sns/SnsException; {:try_start_9 .. :try_end_f} :catch_36
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_f} :catch_39

    goto :goto_7

    .line 2554
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #friendRequest:Lcom/lge/newbay/client/IFriend;
    :catch_10
    move-exception v2

    move-object v0, v2

    .line 2555
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v2, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v2, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 2556
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_18
    move-exception v2

    move-object v0, v2

    .line 2557
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    const/16 v3, 0x191

    if-ne v2, v3, :cond_28

    .line 2558
    new-instance v2, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v2}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v2

    .line 2560
    :cond_28
    new-instance v2, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v2

    .line 2562
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_36
    move-exception v2

    move-object v0, v2

    .line 2563
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 2564
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 2565
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v2, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sendProfileComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .parameter "snsId"
    .parameter "userId"
    .parameter "comment"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2145
    const/4 v2, 0x0

    .line 2148
    .local v2, result:Ljava/lang/String;
    :try_start_1
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_4
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1 .. :try_end_4} :catch_13
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1 .. :try_end_4} :catch_1b
    .catch Lcom/lge/sns/SnsException; {:try_start_1 .. :try_end_4} :catch_39
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4} :catch_3c

    move-result-object v1

    .line 2151
    .local v1, profileComment:Lcom/lge/newbay/client/IProfile;
    :try_start_5
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/newbay/client/IProfile;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_5 .. :try_end_8} :catch_a
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_5 .. :try_end_8} :catch_13
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_5 .. :try_end_8} :catch_1b
    .catch Lcom/lge/sns/SnsException; {:try_start_5 .. :try_end_8} :catch_39
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_3c

    move-result-object v2

    .line 2170
    :goto_9
    return-object v2

    .line 2152
    :catch_a
    move-exception v0

    .line 2153
    .local v0, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_b
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2154
    invoke-interface {v1, p1, p2, p3}, Lcom/lge/newbay/client/IProfile;->addComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_b .. :try_end_11} :catch_13
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_b .. :try_end_11} :catch_1b
    .catch Lcom/lge/sns/SnsException; {:try_start_b .. :try_end_11} :catch_39
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_3c

    move-result-object v2

    goto :goto_9

    .line 2156
    .end local v0           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .end local v1           #profileComment:Lcom/lge/newbay/client/IProfile;
    :catch_13
    move-exception v3

    move-object v0, v3

    .line 2157
    .local v0, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v3, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v3, v0}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 2158
    .end local v0           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_1b
    move-exception v3

    move-object v0, v3

    .line 2159
    .local v0, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v3

    const/16 v4, 0x191

    if-ne v3, v4, :cond_2b

    .line 2160
    new-instance v3, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v3}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v3

    .line 2162
    :cond_2b
    new-instance v3, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v4

    invoke-virtual {v0}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v3

    .line 2164
    .end local v0           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_39
    move-exception v3

    move-object v0, v3

    .line 2165
    .local v0, e:Lcom/lge/sns/SnsException;
    throw v0

    .line 2166
    .end local v0           #e:Lcom/lge/sns/SnsException;
    :catch_3c
    move-exception v3

    move-object v0, v3

    .line 2167
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v3, v0}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public updateFriendList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    const-string v3, "ProfileFacade"

    .line 1442
    const-string v1, "ProfileFacade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFriendList : snsId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    monitor-enter v1

    .line 1446
    :try_start_27
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 1447
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1454
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_64

    .line 1456
    const/4 v7, 0x0

    .line 1458
    .local v7, feed:Lcom/lge/feed/atom/AtomFeed;
    :try_start_36
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getFriend()Lcom/lge/newbay/client/IFriend;

    move-result-object v0

    .line 1459
    .local v0, friend:Lcom/lge/newbay/client/IFriend;
    new-instance v5, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;

    invoke-direct {v5, p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade$3;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_36 .. :try_end_3f} :catchall_b2
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_36 .. :try_end_3f} :catch_aa
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_36 .. :try_end_3f} :catch_bd
    .catch Lcom/lge/sns/SnsException; {:try_start_36 .. :try_end_3f} :catch_db
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_de

    .line 1493
    .local v5, callback:Lcom/lge/feed/Feed$FeedEntryCallback;
    const/4 v3, 0x1

    const/16 v4, 0x14

    move-object v1, p1

    move-object v2, p2

    :try_start_44
    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IFriend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;IILcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_b2
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_44 .. :try_end_47} :catch_67
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_44 .. :try_end_47} :catch_aa
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_44 .. :try_end_47} :catch_bd
    .catch Lcom/lge/sns/SnsException; {:try_start_44 .. :try_end_47} :catch_db
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_de

    move-result-object v7

    .line 1499
    :goto_48
    if-eqz v7, :cond_77

    .line 1500
    :try_start_4a
    const-string v1, "next"

    invoke-static {v7, v1}, Lcom/lge/newbay/client/impl/XppUtil;->findLink(Lcom/lge/feed/atom/AtomFeed;Ljava/lang/String;)Lcom/lge/feed/atom/Link;

    move-result-object v10

    .line 1502
    .local v10, next:Lcom/lge/feed/atom/Link;
    if-eqz v10, :cond_75

    .line 1503
    invoke-virtual {v10}, Lcom/lge/feed/atom/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5}, Lcom/lge/newbay/client/IFriend;->getCommunityFriends(Ljava/lang/String;Lcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;
    :try_end_59
    .catchall {:try_start_4a .. :try_end_59} :catchall_b2
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_4a .. :try_end_59} :catch_aa
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_4a .. :try_end_59} :catch_bd
    .catch Lcom/lge/sns/SnsException; {:try_start_4a .. :try_end_59} :catch_db
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_59} :catch_de

    move-result-object v7

    goto :goto_48

    .line 1450
    .end local v0           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v5           #callback:Lcom/lge/feed/Feed$FeedEntryCallback;
    .end local v7           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v10           #next:Lcom/lge/feed/atom/Link;
    :cond_5b
    :try_start_5b
    const-string v2, "ProfileFacade"

    const-string v3, "now updating... return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    monitor-exit v1

    .line 1533
    :goto_63
    return-void

    .line 1454
    :catchall_64
    move-exception v2

    monitor-exit v1
    :try_end_66
    .catchall {:try_start_5b .. :try_end_66} :catchall_64

    throw v2

    .line 1494
    .restart local v0       #friend:Lcom/lge/newbay/client/IFriend;
    .restart local v5       #callback:Lcom/lge/feed/Feed$FeedEntryCallback;
    .restart local v7       #feed:Lcom/lge/feed/atom/AtomFeed;
    :catch_67
    move-exception v6

    .line 1495
    .local v6, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    :try_start_68
    invoke-virtual {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 1496
    const/4 v3, 0x1

    const/16 v4, 0x14

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/lge/newbay/client/IFriend;->getCommunityFriends(Ljava/lang/String;Ljava/lang/String;IILcom/lge/feed/Feed$FeedEntryCallback;)Lcom/lge/feed/atom/AtomFeed;

    move-result-object v7

    goto :goto_48

    .line 1505
    .end local v6           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v10       #next:Lcom/lge/feed/atom/Link;
    :cond_75
    const/4 v7, 0x0

    goto :goto_48

    .line 1508
    .end local v10           #next:Lcom/lge/feed/atom/Link;
    :cond_77
    invoke-static {}, Lcom/lge/sns/SnsManager;->getInstance()Lcom/lge/sns/SnsManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lge/sns/SnsManager;->getAccount(Landroid/content/Context;)Lcom/lge/sns/account/IAccountFacade;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-interface {v1, p1, v2}, Lcom/lge/sns/account/IAccountFacade;->setFriendListUpdatedDate(Ljava/lang/String;Ljava/util/Date;)Z

    .line 1510
    invoke-static {p1}, Lcom/lge/sns/BackgroundJobManager;->getInstance(Ljava/lang/String;)Lcom/lge/sns/BackgroundJobManager;

    move-result-object v9

    .line 1511
    .local v9, mJobManager:Lcom/lge/sns/BackgroundJobManager;
    new-instance v8, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;

    invoke-direct {v8, p0, p1, p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;-><init>(Lcom/lge/sns/profile/linkbook/ProfileFacade;Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    .local v8, job:Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;
    invoke-virtual {v9, v8}, Lcom/lge/sns/BackgroundJobManager;->contains(Ljava/lang/Runnable;)Z

    move-result v1

    if-nez v1, :cond_9d

    .line 1513
    invoke-virtual {v9, v8}, Lcom/lge/sns/BackgroundJobManager;->addJob(Ljava/lang/Runnable;)V
    :try_end_9d
    .catchall {:try_start_68 .. :try_end_9d} :catchall_b2
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_68 .. :try_end_9d} :catch_aa
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_68 .. :try_end_9d} :catch_bd
    .catch Lcom/lge/sns/SnsException; {:try_start_68 .. :try_end_9d} :catch_db
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_9d} :catch_de

    .line 1528
    :cond_9d
    iget-object v1, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    monitor-enter v1

    .line 1529
    :try_start_a0
    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1530
    monitor-exit v1

    goto :goto_63

    :catchall_a7
    move-exception v2

    monitor-exit v1
    :try_end_a9
    .catchall {:try_start_a0 .. :try_end_a9} :catchall_a7

    throw v2

    .line 1515
    .end local v0           #friend:Lcom/lge/newbay/client/IFriend;
    .end local v5           #callback:Lcom/lge/feed/Feed$FeedEntryCallback;
    .end local v8           #job:Lcom/lge/sns/profile/linkbook/ProfileFacade$FriendsSynchronizeJob;
    .end local v9           #mJobManager:Lcom/lge/sns/BackgroundJobManager;
    :catch_aa
    move-exception v1

    move-object v6, v1

    .line 1516
    .local v6, e:Lcom/lge/newbay/client/NewbayConnectException;
    :try_start_ac
    new-instance v1, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v1, v6}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_b2
    .catchall {:try_start_ac .. :try_end_b2} :catchall_b2

    .line 1528
    .end local v6           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catchall_b2
    move-exception v1

    iget-object v2, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    monitor-enter v2

    .line 1529
    :try_start_b6
    iget-object v3, p0, Lcom/lge/sns/profile/linkbook/ProfileFacade;->friendListUpdating:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1530
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_b6 .. :try_end_bc} :catchall_e6

    throw v1

    .line 1517
    :catch_bd
    move-exception v1

    move-object v6, v1

    .line 1518
    .local v6, e:Lorg/apache/http/client/HttpResponseException;
    :try_start_bf
    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v1

    const/16 v2, 0x191

    if-ne v1, v2, :cond_cd

    .line 1519
    new-instance v1, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v1}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v1

    .line 1521
    :cond_cd
    new-instance v1, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v2

    invoke-virtual {v6}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 1523
    .end local v6           #e:Lorg/apache/http/client/HttpResponseException;
    :catch_db
    move-exception v1

    move-object v6, v1

    .line 1524
    .local v6, e:Lcom/lge/sns/SnsException;
    throw v6

    .line 1525
    .end local v6           #e:Lcom/lge/sns/SnsException;
    :catch_de
    move-exception v1

    move-object v6, v1

    .line 1526
    .local v6, e:Ljava/lang/Exception;
    new-instance v1, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v1, v6}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_e6
    .catchall {:try_start_bf .. :try_end_e6} :catchall_b2

    .line 1530
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_e6
    move-exception v1

    :try_start_e7
    monitor-exit v2
    :try_end_e8
    .catchall {:try_start_e7 .. :try_end_e8} :catchall_e6

    throw v1
.end method

.method public updateProfile(Lcom/lge/sns/profile/Profile;)I
    .registers 8
    .parameter "profile"

    .prologue
    .line 633
    if-nez p1, :cond_4

    .line 634
    const/4 v2, 0x0

    .line 645
    :goto_3
    return v2

    .line 637
    :cond_4
    monitor-enter p0

    .line 638
    :try_start_5
    sget-object v2, Lcom/lge/sns/profile/linkbook/ProfileFacade;->PROFILE_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/lge/sns/profile/Profile;->getId()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 640
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->setContentValuesForProfile(Lcom/lge/sns/profile/Profile;)Landroid/content/ContentValues;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v3, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 641
    .local v0, count:I
    if-eqz v0, :cond_22

    .line 642
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->notifyProfileUpdated(Lcom/lge/sns/profile/Profile;)V

    .line 645
    :cond_22
    monitor-exit p0

    move v2, v0

    goto :goto_3

    .line 646
    .end local v0           #count:I
    .end local v1           #uri:Landroid/net/Uri;
    :catchall_25
    move-exception v2

    monitor-exit p0
    :try_end_27
    .catchall {:try_start_5 .. :try_end_27} :catchall_25

    throw v2
.end method

.method public updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .parameter "snsId"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2203
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2204
    return-void
.end method

.method public updateProfileCommentList(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 33
    .parameter "snsId"
    .parameter "userId"
    .parameter "allowSummary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/lge/sns/UnauthorizatedException;,
            Lcom/lge/sns/SnsException;
        }
    .end annotation

    .prologue
    .line 2207
    const/16 v19, 0x0

    .line 2208
    .local v19, feedContainer:Lcom/lge/newbay/client/AtomFeedContainer;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 2209
    .local v16, entries:Ljava/util/List;,"Ljava/util/List<Lcom/lge/feed/atom/Entry;>;"
    const/4 v14, 0x0

    .line 2210
    .local v14, delta:Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;
    invoke-direct/range {p0 .. p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getCommentListLastModified(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v10

    .line 2213
    .local v10, updateDate:Ljava/util/Date;
    :try_start_c
    invoke-static {}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfile()Lcom/lge/newbay/client/IProfile;
    :try_end_f
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_c .. :try_end_f} :catch_b3
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_c .. :try_end_f} :catch_bb
    .catch Lcom/lge/sns/SnsException; {:try_start_c .. :try_end_f} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_e6

    move-result-object v5

    .line 2216
    .local v5, profile:Lcom/lge/newbay/client/IProfile;
    const/4 v8, 0x1

    const/16 v9, 0x14

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    :try_start_18
    invoke-interface/range {v5 .. v11}, Lcom/lge/newbay/client/IProfile;->getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;
    :try_end_1b
    .catch Lcom/lge/newbay/client/HttpUnauthorizatedException; {:try_start_18 .. :try_end_1b} :catch_92
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_18 .. :try_end_1b} :catch_b3
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_18 .. :try_end_1b} :catch_bb
    .catch Lcom/lge/sns/SnsException; {:try_start_18 .. :try_end_1b} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_e6

    move-result-object v19

    .line 2222
    :goto_1c
    if-eqz v19, :cond_ee

    .line 2223
    :try_start_1e
    invoke-virtual/range {v19 .. v19}, Lcom/lge/newbay/client/AtomFeedContainer;->getFeed()Lcom/lge/feed/atom/AtomFeed;

    move-result-object v18

    .line 2224
    .local v18, feed:Lcom/lge/feed/atom/AtomFeed;
    invoke-virtual/range {v19 .. v19}, Lcom/lge/newbay/client/AtomFeedContainer;->getControl()Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;

    move-result-object v14

    .line 2225
    invoke-virtual/range {v18 .. v18}, Lcom/lge/feed/atom/AtomFeed;->getEntries()Ljava/util/List;

    move-result-object v16

    .line 2226
    if-eqz v16, :cond_ee

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_ee

    .line 2227
    invoke-direct/range {p0 .. p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileCommentCount(Ljava/lang/String;Ljava/lang/String;)I

    move-result v12

    .line 2228
    .local v12, currentCount:I
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v21

    .line 2229
    .local v21, length:I
    move/from16 v20, v21

    .local v20, i:I
    :goto_3c
    if-lez v20, :cond_ee

    .line 2230
    const/4 v6, 0x1

    sub-int v6, v20, v6

    move-object/from16 v0, v16

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/lge/feed/atom/Entry;

    .line 2231
    .local v17, entry:Lcom/lge/feed/atom/Entry;
    invoke-virtual/range {v17 .. v17}, Lcom/lge/feed/atom/Entry;->getId()Ljava/lang/String;

    move-result-object v13

    .line 2232
    .local v13, dataLink:Ljava/lang/String;
    invoke-static {v13}, Lcom/lge/newbay/client/Uris;->getProfileCommentParamFromUri(Ljava/lang/String;)Lcom/lge/newbay/client/Uris$ProfileCommentParam;

    move-result-object v22

    .line 2233
    .local v22, param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    invoke-virtual/range {v22 .. v22}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getCommentId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileCommentRecordId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v26

    .line 2234
    .local v26, recordId:J
    invoke-virtual/range {v22 .. v22}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getSnsId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Lcom/lge/newbay/client/Uris$ProfileCommentParam;->getUserId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v24

    .line 2235
    .local v24, profileId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v26, v6

    if-nez v6, :cond_8f

    .line 2237
    if-eqz p3, :cond_a4

    .line 2238
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v22

    move-object/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileCommentFromEntry(JLcom/lge/newbay/client/Uris$ProfileCommentParam;Lcom/lge/feed/atom/Entry;)Lcom/lge/sns/profile/ProfileComment;

    move-result-object v23

    .line 2242
    .local v23, pc:Lcom/lge/sns/profile/ProfileComment;
    :goto_86
    if-eqz v23, :cond_8f

    .line 2243
    const/16 v6, 0x14

    if-lt v12, v6, :cond_b0

    .line 2244
    invoke-direct/range {p0 .. p2}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->deleteOldestProfileComment(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    .end local v23           #pc:Lcom/lge/sns/profile/ProfileComment;
    :cond_8f
    :goto_8f
    add-int/lit8 v20, v20, -0x1

    goto :goto_3c

    .line 2217
    .end local v12           #currentCount:I
    .end local v13           #dataLink:Ljava/lang/String;
    .end local v17           #entry:Lcom/lge/feed/atom/Entry;
    .end local v18           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v20           #i:I
    .end local v21           #length:I
    .end local v22           #param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    .end local v24           #profileId:J
    .end local v26           #recordId:J
    :catch_92
    move-exception v15

    .line 2218
    .local v15, e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    invoke-virtual/range {p0 .. p1}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->tryLogin(Ljava/lang/String;)Ljava/lang/String;

    .line 2219
    const/4 v8, 0x1

    const/16 v9, 0x14

    const/4 v11, 0x0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-interface/range {v5 .. v11}, Lcom/lge/newbay/client/IProfile;->getUserComments(Ljava/lang/String;Ljava/lang/String;IILjava/util/Date;Ljava/util/Date;)Lcom/lge/newbay/client/AtomFeedContainer;

    move-result-object v19

    goto/16 :goto_1c

    .line 2240
    .end local v15           #e:Lcom/lge/newbay/client/HttpUnauthorizatedException;
    .restart local v12       #currentCount:I
    .restart local v13       #dataLink:Ljava/lang/String;
    .restart local v17       #entry:Lcom/lge/feed/atom/Entry;
    .restart local v18       #feed:Lcom/lge/feed/atom/AtomFeed;
    .restart local v20       #i:I
    .restart local v21       #length:I
    .restart local v22       #param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    .restart local v24       #profileId:J
    .restart local v26       #recordId:J
    :cond_a4
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move-object/from16 v3, v22

    move-object v4, v13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->getProfileCommentFromServer(JLcom/lge/newbay/client/Uris$ProfileCommentParam;Ljava/lang/String;)Lcom/lge/sns/profile/ProfileComment;
    :try_end_ae
    .catch Lcom/lge/newbay/client/NewbayConnectException; {:try_start_1e .. :try_end_ae} :catch_b3
    .catch Lorg/apache/http/client/HttpResponseException; {:try_start_1e .. :try_end_ae} :catch_bb
    .catch Lcom/lge/sns/SnsException; {:try_start_1e .. :try_end_ae} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_ae} :catch_e6

    move-result-object v23

    .restart local v23       #pc:Lcom/lge/sns/profile/ProfileComment;
    goto :goto_86

    .line 2246
    :cond_b0
    add-int/lit8 v12, v12, 0x1

    goto :goto_8f

    .line 2253
    .end local v5           #profile:Lcom/lge/newbay/client/IProfile;
    .end local v12           #currentCount:I
    .end local v13           #dataLink:Ljava/lang/String;
    .end local v17           #entry:Lcom/lge/feed/atom/Entry;
    .end local v18           #feed:Lcom/lge/feed/atom/AtomFeed;
    .end local v20           #i:I
    .end local v21           #length:I
    .end local v22           #param:Lcom/lge/newbay/client/Uris$ProfileCommentParam;
    .end local v23           #pc:Lcom/lge/sns/profile/ProfileComment;
    .end local v24           #profileId:J
    .end local v26           #recordId:J
    :catch_b3
    move-exception v6

    move-object v15, v6

    .line 2254
    .local v15, e:Lcom/lge/newbay/client/NewbayConnectException;
    new-instance v6, Lcom/lge/sns/ServerConnectFail;

    invoke-direct {v6, v15}, Lcom/lge/sns/ServerConnectFail;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2255
    .end local v15           #e:Lcom/lge/newbay/client/NewbayConnectException;
    :catch_bb
    move-exception v6

    move-object v15, v6

    .line 2256
    .local v15, e:Lorg/apache/http/client/HttpResponseException;
    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getStatusCode()I

    move-result v28

    .line 2257
    .local v28, statusCode:I
    const/16 v6, 0x130

    move/from16 v0, v28

    move v1, v6

    if-eq v0, v1, :cond_ee

    .line 2258
    const/16 v6, 0x191

    move/from16 v0, v28

    move v1, v6

    if-ne v0, v1, :cond_d5

    .line 2259
    new-instance v6, Lcom/lge/sns/UnauthorizatedException;

    invoke-direct {v6}, Lcom/lge/sns/UnauthorizatedException;-><init>()V

    throw v6

    .line 2261
    :cond_d5
    new-instance v6, Lcom/lge/sns/InvalidStatusCodeException;

    invoke-virtual {v15}, Lorg/apache/http/client/HttpResponseException;->getMessage()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move/from16 v1, v28

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/lge/sns/InvalidStatusCodeException;-><init>(ILjava/lang/String;)V

    throw v6

    .line 2264
    .end local v15           #e:Lorg/apache/http/client/HttpResponseException;
    .end local v28           #statusCode:I
    :catch_e3
    move-exception v6

    move-object v15, v6

    .line 2265
    .local v15, e:Lcom/lge/sns/SnsException;
    throw v15

    .line 2266
    .end local v15           #e:Lcom/lge/sns/SnsException;
    :catch_e6
    move-exception v6

    move-object v15, v6

    .line 2267
    .local v15, e:Ljava/lang/Exception;
    new-instance v6, Lcom/lge/sns/InvalidResponseException;

    invoke-direct {v6, v15}, Lcom/lge/sns/InvalidResponseException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 2270
    .end local v15           #e:Ljava/lang/Exception;
    :cond_ee
    if-eqz v14, :cond_100

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_100

    .line 2271
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Lcom/lge/sns/profile/linkbook/ProfileFacade;->setCommentListLastModified(Ljava/lang/String;Ljava/lang/String;Lcom/lge/newbay/client/AtomFeedContainer$DeltaControl;)V

    .line 2273
    :cond_100
    return-void
.end method
