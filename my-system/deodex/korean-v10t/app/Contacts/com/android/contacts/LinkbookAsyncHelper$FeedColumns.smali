.class public final Lcom/android/contacts/LinkbookAsyncHelper$FeedColumns;
.super Ljava/lang/Object;
.source "LinkbookAsyncHelper.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/LinkbookAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FeedColumns"
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.feed.provider"

.field public static COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "feed/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.sns.feed"

.field public static final CONTENT_PATH:Ljava/lang/String; = "feed"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.sns.feed"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DATA_LINK:Ljava/lang/String; = "data_link"

.field public static final DATA_URI:Ljava/lang/String; = "data_uri"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "published DESC"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FEED_TYPE:Ljava/lang/String; = "feed_type"

.field public static final INDEX_DATA_LINK:I = 0x8

.field public static final INDEX_DATA_URI:I = 0xb

.field public static final INDEX_DISPLAY_NAME:I = 0x5

.field public static final INDEX_FEED_TYPE:I = 0x1

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_OPENED:I = 0x7

.field public static final INDEX_PUBLISHED:I = 0x6

.field public static final INDEX_SNS_ID:I = 0x2

.field public static final INDEX_SUBDATA_LINK:I = 0x9

.field public static final INDEX_SUMMARY:I = 0xa

.field public static final INDEX_USER_ID:I = 0x3

.field public static final INDEX_USER_NAME:I = 0x4

.field public static final OPENED:Ljava/lang/String; = "opened"

.field public static final PUBLISHED:Ljava/lang/String; = "published"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final SUBDATA_LINK:Ljava/lang/String; = "subdata_link"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 743
    const-string v0, "content://com.lge.sns.feed.provider/feed"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$FeedColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 783
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "feed_type"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "sns_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "published"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "opened"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "data_link"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "subdata_link"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "data_uri"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$FeedColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 737
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
