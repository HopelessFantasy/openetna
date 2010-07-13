.class public final Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;
.super Ljava/lang/Object;
.source "MediaContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/media/provider/MediaContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MediaFileColumns"
.end annotation


# static fields
.field public static COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_COUNT_PATH:Ljava/lang/String; = "mediafile/count"

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "mediafile/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.sns.media.file"

.field public static final CONTENT_PATH:Ljava/lang/String; = "mediafile"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.sns.media.file"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "published DESC"

.field public static final DESCRIPTION:Ljava/lang/String; = "description"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final FILE_ID:Ljava/lang/String; = "file_id"

.field public static final FOLDER_ID:Ljava/lang/String; = "folder_id"

.field public static final INDEX_DESCRIPTION:I = 0x8

.field public static final INDEX_DISPLAY_NAME:I = 0x4

.field public static final INDEX_FILE_ID:I = 0x6

.field public static final INDEX_FOLDER_ID:I = 0x5

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_LINK:I = 0xa

.field public static final INDEX_MIME_TYPE:I = 0x9

.field public static final INDEX_PUBLISHED:I = 0xc

.field public static final INDEX_SNS_ID:I = 0x1

.field public static final INDEX_THUMBNAIL_LINK:I = 0xb

.field public static final INDEX_TITLE:I = 0x7

.field public static final INDEX_USER_ID:I = 0x2

.field public static final INDEX_USER_NAME:I = 0x3

.field public static final LINK:Ljava/lang/String; = "link"

.field public static final MIME_TYPE:Ljava/lang/String; = "mime_type"

.field public static final PUBLISHED:Ljava/lang/String; = "published"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail"

.field public static final THUMBNAIL_LINK:Ljava/lang/String; = "thumbnail_link"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 190
    const/16 v0, 0xd

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

    const-string v2, "user_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "folder_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "file_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "link"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "thumbnail_link"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "published"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/media/provider/MediaContent$MediaFileColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    return-void
.end method
