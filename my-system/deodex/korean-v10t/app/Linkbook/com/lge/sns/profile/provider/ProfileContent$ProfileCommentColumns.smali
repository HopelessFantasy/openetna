.class public final Lcom/lge/sns/profile/provider/ProfileContent$ProfileCommentColumns;
.super Ljava/lang/Object;
.source "ProfileContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/profile/provider/ProfileContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProfileCommentColumns"
.end annotation


# static fields
.field public static COLUMNS:[Ljava/lang/String; = null

.field public static final COMMENT:Ljava/lang/String; = "comment"

.field public static final COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final CONTENT_COUNT_PATH:Ljava/lang/String; = "profilecomment/count"

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "profilecomment/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.sns.profile.comment"

.field public static final CONTENT_OLDEST_PATH:Ljava/lang/String; = "profilecomment/oldest"

.field public static final CONTENT_PATH:Ljava/lang/String; = "profilecomment"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.sns.profile.comment"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "published DESC"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final INDEX_COMMENT:I = 0x7

.field public static final INDEX_COMMENT_ID:I = 0x6

.field public static final INDEX_DISPLAY_NAME:I = 0x4

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_PROFILE_ID:I = 0x8

.field public static final INDEX_PUBLISHED:I = 0x5

.field public static final INDEX_SNS_ID:I = 0x1

.field public static final INDEX_USER_ID:I = 0x2

.field public static final INDEX_USER_NAME:I = 0x3

.field public static final PROFILE_ID:Ljava/lang/String; = "profile_id"

.field public static final PUBLISHED:Ljava/lang/String; = "published"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 206
    const/16 v0, 0x9

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

    const-string v2, "published"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "comment_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "comment"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "profile_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/profile/provider/ProfileContent$ProfileCommentColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    return-void
.end method
