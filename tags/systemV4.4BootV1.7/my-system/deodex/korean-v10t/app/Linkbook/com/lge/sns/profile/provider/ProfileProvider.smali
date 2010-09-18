.class public Lcom/lge/sns/profile/provider/ProfileProvider;
.super Landroid/content/ContentProvider;
.source "ProfileProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/profile/provider/ProfileProvider$TableManageHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPES:[Ljava/lang/String; = null

.field private static FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FRIEND_REQUEST_TABLE_NAME:Ljava/lang/String; = "friend_request"

.field private static final ID_FRIEND_COUNT:I = 0x8

.field private static final ID_FRIEND_REQUEST:I = 0x4

.field private static final ID_FRIEND_REQUEST_ITEM:I = 0x5

.field private static final ID_PROFILE:I = 0x0

.field private static final ID_PROFILE_COMMENT:I = 0x2

.field private static final ID_PROFILE_COMMENT_COUNT:I = 0x6

.field private static final ID_PROFILE_COMMENT_ITEM:I = 0x3

.field private static final ID_PROFILE_COMMENT_OLDEST:I = 0x7

.field private static final ID_PROFILE_ITEM:I = 0x1

.field private static PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROFILE_COMMENT_TABLE_NAME:Ljava/lang/String; = "profile_comment"

.field private static PROFILE_PROJECTION_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PROFILE_TABLE_NAME:Ljava/lang/String; = "profile"

.field private static final QUERY_PROFILE_COMMENT_COUNT:Ljava/lang/String; = "SELECT count(*) FROM profile_comment"

.field private static final QUERY_PROFILE_COUNT:Ljava/lang/String; = "SELECT count(*) FROM profile"

.field private static final SQL_CREATE_FRIEND_REQUEST_TABLE:Ljava/lang/String; = "CREATE TABLE friend_request (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,published INTEGER NOT NULL,request_id TEXT NOT NULL,request_message TEXT);"

.field private static final SQL_CREATE_PROFILE_COMMENT_TABLE:Ljava/lang/String; = "CREATE TABLE profile_comment (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,published INTEGER,comment_id INTEGER,comment TEXT,profile_id INTEGER REFERENCES profile (_id) ON DELETE CASCADE);"

.field private static final SQL_CREATE_PROFILE_TABLE:Ljava/lang/String; = "CREATE TABLE profile (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,avatar_link TEXT,avatar BLOB,email TEXT,phone_number TEXT,other_phone_number TEXT,gender TEXT,status TEXT,birth_date_time TEXT,birthday TEXT,hometown TEXT,politics TEXT,interests TEXT,activities TEXT,music TEXT,affiliations TEXT,follower_count INTEGER,following_count INTEGER,friend_count INTEGER,profile_updated INTEGER,comment_list_updated INTEGER);"

.field private static final TAG:Ljava/lang/String; = "ProfileProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-string v7, "user_id"

    const-string v6, "sns_id"

    const-string v5, "display_name"

    const-string v4, "_id"

    const-string v3, "com.lge.sns.profile.provider"

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.dir/vnd.lge.sns.profile"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/vnd.lge.sns.profile"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vnd.android.cursor.dir/vnd.lge.sns.profile.comment"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vnd.android.cursor.item/vnd.lge.sns.profile.comment"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.dir/vnd.lge.sns.feed.friendrequest"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/vnd.lge.sns.feed.friendrequest"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->CONTENT_TYPES:[Ljava/lang/String;

    .line 108
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    .line 115
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "profile"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 116
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "profile/#"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 117
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "profilecomment"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 118
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "profilecomment/#"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 119
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "profilecomment/count"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "profilecomment/oldest"

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 121
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "friendrequest"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 122
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "friendrequest/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 123
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.profile.provider"

    const-string v1, "profile/count"

    const/16 v2, 0x8

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 125
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v1, "display_name"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "avatar_link"

    const-string v2, "avatar_link"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "avatar"

    const-string v2, "avatar"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "email"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "phone_number"

    const-string v2, "phone_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "other_phone_number"

    const-string v2, "other_phone_number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "gender"

    const-string v2, "gender"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "status"

    const-string v2, "status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "birth_date_time"

    const-string v2, "birth_date_time"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "birthday"

    const-string v2, "birthday"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "hometown"

    const-string v2, "hometown"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "politics"

    const-string v2, "politics"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "interests"

    const-string v2, "interests"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "activities"

    const-string v2, "activities"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "music"

    const-string v2, "music"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "affiliations"

    const-string v2, "affiliations"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "follower_count"

    const-string v2, "follower_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "following_count"

    const-string v2, "following_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "friend_count"

    const-string v2, "friend_count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "profile_updated"

    const-string v2, "profile_updated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comment_list_updated"

    const-string v2, "comment_list_updated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v1, "display_name"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v2, "published"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comment_id"

    const-string v2, "comment_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comment"

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "profile_id"

    const-string v2, "profile_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v1, "display_name"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v2, "published"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "request_id"

    const-string v2, "request_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "request_message"

    const-string v2, "request_message"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 171
    return-void
.end method

.method private deleteFriendRequest(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 703
    iget-object v1, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 704
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "friend_request"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteFriendRequestItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 708
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 709
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 710
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 712
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 713
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 716
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteFriendRequest(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private deleteProfile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 669
    iget-object v1, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 670
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "profile"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteProfileComment(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 686
    iget-object v1, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 687
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "profile_comment"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteProfileCommentItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 691
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 692
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 693
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 695
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 696
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 699
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteProfileComment(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private deleteProfileItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 674
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 675
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 676
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 678
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 679
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 682
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteProfile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private executeFriendCountQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 268
    const-string v1, "SELECT count(*) FROM profile"

    .line 269
    .local v1, sql:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 271
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private executeFriendRequestItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 385
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/provider/ProfileProvider;->getFriendRequestItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 386
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "published DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private executeFriendRequestQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 372
    invoke-direct {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getFriendRequestQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 373
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x0

    .line 375
    .local v6, orderBy:Ljava/lang/String;
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 376
    const-string v6, "published DESC"

    .line 381
    :goto_d
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 378
    :cond_18
    move-object v6, p5

    goto :goto_d
.end method

.method private executeProfileCommentCountQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 355
    const-string v1, "SELECT count(*) FROM profile_comment"

    .line 356
    .local v1, sql:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 358
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 361
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private executeProfileCommentItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 350
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/provider/ProfileProvider;->getProfileCommentItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 351
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "published DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private executeProfileCommentOldestQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 366
    invoke-direct {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getProfileCommentQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 367
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "published"

    const-string v7, "1"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private executeProfileCommentQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getProfileCommentQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 338
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x0

    .line 340
    .local v6, orderBy:Ljava/lang/String;
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 341
    const-string v6, "published DESC"

    .line 346
    :goto_d
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 343
    :cond_18
    move-object v6, p5

    goto :goto_d
.end method

.method private executeProfileItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 331
    invoke-direct {p0, p1}, Lcom/lge/sns/profile/provider/ProfileProvider;->getProfileItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 332
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "display_name"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private executeProfileQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 318
    invoke-direct {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getProfileQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 319
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x0

    .line 321
    .local v6, orderBy:Ljava/lang/String;
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 322
    const-string v6, "display_name"

    .line 327
    :goto_d
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 324
    :cond_18
    move-object v6, p5

    goto :goto_d
.end method

.method private executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 18
    .parameter "qb"
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "limit"

    .prologue
    .line 391
    iget-object v0, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v0}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 392
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 393
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v9, v0, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 394
    return-object v9
.end method

.method private getFriendRequestItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getFriendRequestQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 312
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 313
    return-object v0
.end method

.method private getFriendRequestQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 304
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 305
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "friend_request"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 306
    sget-object v1, Lcom/lge/sns/profile/provider/ProfileProvider;->FRIEND_REQUEST_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 307
    return-object v0
.end method

.method private getProfileCommentItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 298
    invoke-direct {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getProfileCommentQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 299
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 300
    return-object v0
.end method

.method private getProfileCommentQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 291
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 292
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "profile_comment"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 293
    sget-object v1, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 294
    return-object v0
.end method

.method private getProfileItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 285
    invoke-direct {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getProfileQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 286
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 287
    return-object v0
.end method

.method private getProfileQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 278
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 279
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/lge/sns/profile/provider/ProfileProvider;->PROFILE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 281
    return-object v0
.end method

.method private insertFriendRequest(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v6, "published"

    .line 477
    const-string v4, "sns_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 478
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "sns_id should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 481
    :cond_12
    const-string v4, "user_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 482
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "user_id should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 485
    :cond_22
    const-string v4, "user_name"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_32

    .line 486
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "user_name should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 489
    :cond_32
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 490
    .local v1, now:Ljava/lang/Long;
    const-string v4, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_48

    .line 491
    const-string v4, "published"

    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 494
    :cond_48
    const-string v4, "request_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_58

    .line 495
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "request_id should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 498
    :cond_58
    iget-object v4, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v4}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 500
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "friend_request"

    const-string v5, "request_message"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 501
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_71

    .line 502
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 505
    :cond_71
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private insertProfile(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 9
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v5, "user_name"

    .line 430
    const-string v3, "sns_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 431
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "sns_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 434
    :cond_12
    const-string v3, "user_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    .line 435
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "user_id should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 438
    :cond_22
    const-string v3, "user_name"

    invoke-virtual {p2, v5}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 439
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "user_name should not be null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 442
    :cond_32
    iget-object v3, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v3}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 444
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v3, "profile"

    const-string v4, "user_name"

    invoke-virtual {v0, v3, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 445
    .local v1, rowId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_4b

    .line 446
    invoke-static {p1, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 449
    :cond_4b
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to insert row into "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private insertProfileComment(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v6, "published"

    .line 453
    const-string v4, "sns_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 454
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "sns_id should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 457
    :cond_12
    const-string v4, "user_id"

    invoke-virtual {p2, v4}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 458
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "user_id should not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 461
    :cond_22
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 462
    .local v1, now:Ljava/lang/Long;
    const-string v4, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_38

    .line 463
    const-string v4, "published"

    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 466
    :cond_38
    iget-object v4, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v4}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 468
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "profile_comment"

    const-string v5, "profile_id"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 469
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_51

    .line 470
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 473
    :cond_51
    new-instance v4, Landroid/database/SQLException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to insert row into "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private updateFriendRequest(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 590
    iget-object v1, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 591
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "friend_request"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateFriendRequestItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 596
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 597
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 599
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 600
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 603
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateFriendRequest(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private updateProfile(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 554
    iget-object v1, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 555
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "profile"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateProfileComment(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 572
    iget-object v1, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 573
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "profile_comment"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateProfileCommentItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 577
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 578
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 579
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 582
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 585
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateProfileComment(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private updateProfileItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 559
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 560
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 561
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 564
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 567
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateProfile(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v3, "ProfileProvider"

    .line 608
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete. uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const/4 v0, 0x0

    .line 613
    .local v0, count:I
    sget-object v1, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_80

    .line 639
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 615
    :pswitch_3d
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteProfile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 642
    :goto_41
    invoke-virtual {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 645
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows are deleted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    return v0

    .line 619
    :pswitch_66
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteProfileItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 620
    goto :goto_41

    .line 623
    :pswitch_6b
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteProfileComment(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 624
    goto :goto_41

    .line 627
    :pswitch_70
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteProfileCommentItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 628
    goto :goto_41

    .line 631
    :pswitch_75
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteFriendRequest(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 632
    goto :goto_41

    .line 635
    :pswitch_7a
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/profile/provider/ProfileProvider;->deleteFriendRequestItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 636
    goto :goto_41

    .line 613
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_66
        :pswitch_6b
        :pswitch_70
        :pswitch_75
        :pswitch_7a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .parameter "uri"

    .prologue
    const-string v4, "ProfileProvider"

    .line 652
    const-string v2, "ProfileProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType. uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, contentType:Ljava/lang/String;
    sget-object v2, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 657
    .local v1, match:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    sget-object v2, Lcom/lge/sns/profile/provider/ProfileProvider;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_46

    .line 658
    sget-object v2, Lcom/lge/sns/profile/provider/ProfileProvider;->CONTENT_TYPES:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 660
    const-string v2, "ProfileProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "contentType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-object v0

    .line 664
    :cond_46
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v3, "ProfileProvider"

    .line 399
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert. uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/4 v0, 0x0

    .line 404
    .local v0, uriInserted:Landroid/net/Uri;
    sget-object v1, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 418
    :pswitch_24
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 406
    :pswitch_3d
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/provider/ProfileProvider;->insertProfile(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 422
    :goto_41
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "a new inserted uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 426
    return-object v0

    .line 410
    :pswitch_66
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/provider/ProfileProvider;->insertProfileComment(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 411
    goto :goto_41

    .line 414
    :pswitch_6b
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/provider/ProfileProvider;->insertFriendRequest(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 415
    goto :goto_41

    .line 404
    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_24
        :pswitch_66
        :pswitch_24
        :pswitch_6b
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 199
    const-string v0, "ProfileProvider"

    const-string v1, "onCreate. create SnsDatabaseOpenHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/profile/provider/ProfileProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    .line 202
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 10
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const-string v3, "ProfileProvider"

    .line 207
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "query. uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v0, 0x0

    .line 212
    .local v0, cursor:Landroid/database/Cursor;
    sget-object v1, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_9c

    .line 250
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 214
    :pswitch_3d
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeProfileQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 253
    :goto_41
    if-eqz v0, :cond_93

    .line 254
    invoke-virtual {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 257
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows are selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :goto_6a
    return-object v0

    .line 218
    :pswitch_6b
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeProfileItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 219
    goto :goto_41

    .line 222
    :pswitch_70
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeProfileCommentQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 223
    goto :goto_41

    .line 226
    :pswitch_75
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeProfileCommentItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 227
    goto :goto_41

    .line 230
    :pswitch_7a
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeProfileCommentCountQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 231
    goto :goto_41

    .line 234
    :pswitch_7f
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeProfileCommentOldestQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 235
    goto :goto_41

    .line 238
    :pswitch_84
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeFriendRequestQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 239
    goto :goto_41

    .line 242
    :pswitch_89
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeFriendRequestItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 243
    goto :goto_41

    .line 246
    :pswitch_8e
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->executeFriendCountQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 247
    goto :goto_41

    .line 260
    :cond_93
    const-string v1, "ProfileProvider"

    const-string v1, "no rows are selected"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 212
    nop

    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_6b
        :pswitch_70
        :pswitch_75
        :pswitch_84
        :pswitch_89
        :pswitch_7a
        :pswitch_7f
        :pswitch_8e
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v3, "ProfileProvider"

    .line 510
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update. uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/4 v0, 0x0

    .line 515
    .local v0, count:I
    sget-object v1, Lcom/lge/sns/profile/provider/ProfileProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_80

    .line 541
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 517
    :pswitch_3d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateProfile(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 544
    :goto_41
    invoke-virtual {p0}, Lcom/lge/sns/profile/provider/ProfileProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 547
    const-string v1, "ProfileProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " rows are updated"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    return v0

    .line 521
    :pswitch_66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateProfileItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 522
    goto :goto_41

    .line 525
    :pswitch_6b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateProfileComment(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 526
    goto :goto_41

    .line 529
    :pswitch_70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateProfileCommentItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 530
    goto :goto_41

    .line 533
    :pswitch_75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateFriendRequest(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 534
    goto :goto_41

    .line 537
    :pswitch_7a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/profile/provider/ProfileProvider;->updateFriendRequestItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 538
    goto :goto_41

    .line 515
    nop

    :pswitch_data_80
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_66
        :pswitch_6b
        :pswitch_70
        :pswitch_75
        :pswitch_7a
    .end packed-switch
.end method
