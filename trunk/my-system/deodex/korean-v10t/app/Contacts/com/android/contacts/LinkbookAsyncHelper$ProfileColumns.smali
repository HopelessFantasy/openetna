.class public final Lcom/android/contacts/LinkbookAsyncHelper$ProfileColumns;
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
    name = "ProfileColumns"
.end annotation


# static fields
.field public static final ACTIVITIES:Ljava/lang/String; = "activities"

.field public static final AFFILIATIONS:Ljava/lang/String; = "affiliations"

.field public static final AUTHORITY:Ljava/lang/String; = "com.lge.sns.profile.provider"

.field public static final AVATAR:Ljava/lang/String; = "avatar"

.field public static final AVATAR_LINK:Ljava/lang/String; = "avatar_link"

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final BIRTH_DATE_TIME:Ljava/lang/String; = "birth_date_time"

.field public static COLUMNS:[Ljava/lang/String; = null

.field public static final COMMENT_LIST_UPDATED:Ljava/lang/String; = "comment_list_updated"

.field public static final CONTENT_ITEM_PATH:Ljava/lang/String; = "profile/#"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.lge.sns.profile"

.field public static final CONTENT_PATH:Ljava/lang/String; = "profile"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.lge.sns.profile"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "display_name"

.field public static final DISPLAY_NAME:Ljava/lang/String; = "display_name"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FOLLOWER_COUNT:Ljava/lang/String; = "follower_count"

.field public static final FOLLOWING_COUNT:Ljava/lang/String; = "following_count"

.field public static final FRIEND_COUNT:Ljava/lang/String; = "friend_count"

.field public static final GENDER:Ljava/lang/String; = "gender"

.field public static final HOMETOWN:Ljava/lang/String; = "hometown"

.field public static final INDEX_ACTIVITIES:I = 0x11

.field public static final INDEX_AFFILIATIONS:I = 0x13

.field public static final INDEX_AVATAR:I = 0x6

.field public static final INDEX_AVATAR_LINK:I = 0x5

.field public static final INDEX_BIRTHDAY:I = 0xd

.field public static final INDEX_BIRTH_DATE_TIME:I = 0xc

.field public static final INDEX_COMMENT_LIST_UPDATED:I = 0x18

.field public static final INDEX_DISPLAY_NAME:I = 0x4

.field public static final INDEX_EMAIL:I = 0x7

.field public static final INDEX_FOLLOWER_COUNT:I = 0x14

.field public static final INDEX_FOLLOWING_COUNT:I = 0x15

.field public static final INDEX_FRIEND_COUNT:I = 0x16

.field public static final INDEX_GENDER:I = 0xa

.field public static final INDEX_HOMETOWN:I = 0xe

.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_INTERESTS:I = 0x10

.field public static final INDEX_MUSIC:I = 0x12

.field public static final INDEX_OTHER_PHONE_NUMBER:I = 0x9

.field public static final INDEX_PHONE_NUMBER:I = 0x8

.field public static final INDEX_POLITICS:I = 0xf

.field public static final INDEX_PROFILE_UPDATED:I = 0x17

.field public static final INDEX_SNS_ID:I = 0x1

.field public static final INDEX_STATUS:I = 0xb

.field public static final INDEX_USER_ID:I = 0x2

.field public static final INDEX_USER_NAME:I = 0x3

.field public static final INTERESTS:Ljava/lang/String; = "interests"

.field public static final MUSIC:Ljava/lang/String; = "music"

.field public static final OTHER_PHONE_NUMBER:Ljava/lang/String; = "other_phone_number"

.field public static final PHONE_NUMBER:Ljava/lang/String; = "phone_number"

.field public static final POLITICS:Ljava/lang/String; = "politics"

.field public static final PROFILE_UPDATED:Ljava/lang/String; = "profile_updated"

.field public static final SNS_ID:Ljava/lang/String; = "sns_id"

.field public static final STATUS:Ljava/lang/String; = "status"

.field public static final USER_ID:Ljava/lang/String; = "user_id"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 530
    const-string v0, "content://com.lge.sns.profile.provider/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$ProfileColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 608
    const/16 v0, 0x19

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

    const-string v2, "avatar_link"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "avatar"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "email"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "other_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "gender"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "birth_date_time"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "birthday"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hometown"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "politics"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "interests"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "activities"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "music"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "affiliations"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "follower_count"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "following_count"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "friend_count"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "profile_updated"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "comment_list_updated"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/LinkbookAsyncHelper$ProfileColumns;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
