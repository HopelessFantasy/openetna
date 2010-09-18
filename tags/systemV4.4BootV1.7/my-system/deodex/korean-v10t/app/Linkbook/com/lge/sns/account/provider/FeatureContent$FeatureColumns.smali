.class public Lcom/lge/sns/account/provider/FeatureContent$FeatureColumns;
.super Ljava/lang/Object;
.source "FeatureContent.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/sns/account/provider/FeatureContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeatureColumns"
.end annotation


# static fields
.field public static final ALERTABLE:Ljava/lang/String; = "alertable"

.field public static COLUMNS:[Ljava/lang/String; = null

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "feature/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.lge.cursor.item/vnd.lge.sns.feature"

.field public static final CONTENT_PATH:Ljava/lang/String; = "feature"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.lge.cursor.dir/vnd.lge.sns.feature"

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "feature_code ASC"

.field public static final FEATURE_CODE:Ljava/lang/String; = "feature_code"

.field public static final FEATURE_NAME:Ljava/lang/String; = "feature_name"

.field public static final INDEX_ALERTABLE:I = 0x4

.field public static final INDEX_FEATURE_CODE:I = 0x2

.field public static final INDEX_FEATURE_NAME:I = 0x3

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_PROTECTED:I = 0x5

.field public static final INDEX_RESTRICTION:I = 0x6

.field public static final INDEX_SNS_ID:I = 0x1

.field public static final PROTECTED:Ljava/lang/String; = "protected"

.field public static final RESTRICTION:Ljava/lang/String; = "restriction"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 92
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "sns_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "feature_code"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "feature_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "alertable"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "protected"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "restriction"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/account/provider/FeatureContent$FeatureColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
