.class public final Lcom/lge/sns/message/provider/MessageContent$MessageColumns;
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
    name = "MessageColumns"
.end annotation


# static fields
.field public static final AUTHOR_ID:Ljava/lang/String; = "author_id"

.field public static final AUTHOR_NAME:Ljava/lang/String; = "author_name"

.field public static final BODY:Ljava/lang/String; = "body"

.field public static final COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "MessageColumns/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.sns.message.message"

.field public static final CONTENT_PATH:Ljava/lang/String; = "MessageColumns"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.sns.message.message"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "updated"

.field public static final IDX_AUTHOR_ID:I = 0x5

.field public static final IDX_AUTHOR_NAME:I = 0x6

.field public static final IDX_BODY:I = 0x8

.field public static final IDX_MESSAGE_ID:I = 0x4

.field public static final IDX_PUBLISHED:I = 0xa

.field public static final IDX_SNS_ID:I = 0x1

.field public static final IDX_SUBJECT:I = 0x7

.field public static final IDX_THREAD_ID:I = 0x3

.field public static final IDX_UNREAD:I = 0xb

.field public static final IDX_UPDATED:I = 0x9

.field public static final IDX_USER_ID:I = 0x2

.field public static final MESSAGE_ID:Ljava/lang/String; = "message_id"

.field public static final PUBLISHED:Ljava/lang/String; = "published"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final THREAD_ID:Ljava/lang/String; = "thread_id"

.field public static final UNREAD:Ljava/lang/String; = "unread"

.field public static final UPDATED:Ljava/lang/String; = "updated"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 97
    const-string v0, "content://com.lge.sns.message.provider/MessageColumns"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/lge/sns/message/provider/MessageContent$MessageColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 124
    const/16 v0, 0xc

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

    const-string v2, "message_id"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "author_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "author_name"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "body"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "updated"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "published"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "unread"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/message/provider/MessageContent$MessageColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method
