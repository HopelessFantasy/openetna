.class public final Lcom/lge/sns/message/provider/MessageContent$ThreadColumns;
.super Ljava/lang/Object;
.source "MessageContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/message/provider/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadColumns"
.end annotation


# static fields
.field public static final AUTHOR_ID:Ljava/lang/String; = "author_id"

.field public static final AUTHOR_NAME:Ljava/lang/String; = "author_name"

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "ThreadColumns/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.sns.message.thread"

.field public static final CONTENT_PATH:Ljava/lang/String; = "ThreadColumns"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.sns.message.thread"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "updated DESC"

.field public static final IDX_AUTHOR_ID:I = 0x4

.field public static final IDX_AUTHOR_NAME:I = 0x5

.field public static final IDX_PUBLISHED:I = 0x9

.field public static final IDX_SNS_ID:I = 0x1

.field public static final IDX_SUMMARY:I = 0x7

.field public static final IDX_THREAD_ID:I = 0x3

.field public static final IDX_TITLE:I = 0x6

.field public static final IDX_UNREAD:I = 0xa

.field public static final IDX_UPDATED:I = 0x8

.field public static final IDX_USER_ID:I = 0x2

.field public static final PUBLISHED:Ljava/lang/String; = "published"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final SUMMARY:Ljava/lang/String; = "summary"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final UNREAD:Ljava/lang/String; = "unread"

.field public static final UPDATED:Ljava/lang/String; = "updated"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 53
    const-string v0, "content://com.lge.sns.message.provider/ThreadColumns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/message/provider/MessageContent$ThreadColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 79
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sns_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "user_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "author_name"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "summary"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "published"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "unread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/message/provider/MessageContent$ThreadColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method
