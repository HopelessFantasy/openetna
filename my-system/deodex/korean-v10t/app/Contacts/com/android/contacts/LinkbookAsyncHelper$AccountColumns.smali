.class public Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;
.super Ljava/lang/Object;
.source "LinkbookAsyncHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/LinkbookAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AccountColumns"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.account"

.field public static final AUTO_UPDATED:Ljava/lang/String; = "auto_updated"

.field public static COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_FEATURE_PATH:Ljava/lang/String; = "feature"

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "account/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.account"

.field public static final CONTENT_PATH:Ljava/lang/String; = "account"

.field public static final CONTENT_RESTRICTION_PATH:Ljava/lang/String; = "restriction"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.lge.cursor.dir/vnd.lge.sns.account"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CREDENTIAL_UID:Ljava/lang/String; = "account_uid"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "tab_order ASC"

.field public static final FEED_UPDATED:Ljava/lang/String; = "feed_updated"

.field public static final FRIEND_UPDATED:Ljava/lang/String; = "friend_updated"

.field public static final ICON_IMAGE:Ljava/lang/String; = "icon_image"

.field public static final INDEX_ACCOUNT_UID:I = 0xc

.field public static final INDEX_AUTO_UPDATED:I = 0xb

.field public static final INDEX_FEED_UPDATED:I = 0xd

.field public static final INDEX_FRIEND_UPDATED:I = 0xe

.field public static final INDEX_ICON_IMAGE:I = 0x7

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_LOGIN:I = 0x10

.field public static final INDEX_NOTIFY:I = 0xf

.field public static final INDEX_PASSWORD:I = 0x9

.field public static final INDEX_PUBLISHED:I = 0x5

.field public static final INDEX_REMEMBER:I = 0xa

.field public static final INDEX_SNS_ID:I = 0x1

.field public static final INDEX_TAB_ORDER:I = 0x6

.field public static final INDEX_TITLE:I = 0x2

.field public static final INDEX_UPDATED:I = 0x4

.field public static final INDEX_URL:I = 0x3

.field public static final INDEX_USER_ID:I = 0x8

.field public static final LOGIN:Ljava/lang/String; = "login"

.field public static final NOTIFY:Ljava/lang/String; = "notify"

.field public static final PUBLISHED:Ljava/lang/String; = "published"

.field public static final REMEMBER:Ljava/lang/String; = "remeber"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final TAB_ORDER:Ljava/lang/String; = "tab_order"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UPDATED:Ljava/lang/String; = "updated"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_PASSWORD:Ljava/lang/String; = "user_password"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 460
    const-string v0, "content://com.lge.sns.account/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 515
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sns_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "published"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "tab_order"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "icon_image"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user_password"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "remeber"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "auto_updated"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "account_uid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "feed_updated"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "friend_updated"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "notify"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "login"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$AccountColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
