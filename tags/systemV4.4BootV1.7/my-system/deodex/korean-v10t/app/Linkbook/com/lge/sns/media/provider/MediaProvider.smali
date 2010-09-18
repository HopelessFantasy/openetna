.class public Lcom/lge/sns/media/provider/MediaProvider;
.super Landroid/content/ContentProvider;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/sns/media/provider/MediaProvider$TableManageHelper;
    }
.end annotation


# static fields
.field private static final CONTENT_TYPES:[Ljava/lang/String; = null

.field private static final ID_MEDIA_FILE:I = 0x2

.field private static final ID_MEDIA_FILE_COMMENT:I = 0x4

.field private static final ID_MEDIA_FILE_COMMENT_ITEM:I = 0x5

.field private static final ID_MEDIA_FILE_COUNT:I = 0x6

.field private static final ID_MEDIA_FILE_ITEM:I = 0x3

.field private static final ID_MEDIA_FOLDER:I = 0x0

.field private static final ID_MEDIA_FOLDER_ITEM:I = 0x1

.field private static MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final MEDIA_COMMENT_TABLE_NAME:Ljava/lang/String; = "media_comment"

.field private static MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final MEDIA_FILE_TABLE_NAME:Ljava/lang/String; = "media_file"

.field private static MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final MEDIA_FOLDER_TABLE_NAME:Ljava/lang/String; = "media_folder"

.field private static final QUERY_MEDIA_FILE_COUNT:Ljava/lang/String; = "SELECT count(*) FROM media_file"

.field private static final SQL_CREATE_MEDIA_COMMENT_TABLE:Ljava/lang/String; = "CREATE TABLE media_comment (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,comment_id TEXT NOT NULL,comment TEXT,published INTEGER);"

.field private static final SQL_CREATE_MEDIA_FILE_TABLE:Ljava/lang/String; = "CREATE TABLE media_file (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,user_name TEXT,display_name TEXT,folder_id TEXT NOT NULL,file_id TEXT NOT NULL,title TEXT,description TEXT,mime_type TEXT,link TEXT,thumbnail_link TEXT,thumbnail BLOB,published INTEGER NOT NULL);"

.field private static final SQL_CREATE_MEDIA_FOLDER_TABLE:Ljava/lang/String; = "CREATE TABLE media_folder (_id INTEGER PRIMARY KEY AUTOINCREMENT,sns_id TEXT NOT NULL,user_id TEXT NOT NULL,folder_id TEXT NOT NULL,folder_name TEXT,published INTEGER NOT NULL,updated INTEGER);"

.field private static final TAG:Ljava/lang/String; = "MediaProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const-string v7, "user_id"

    const-string v6, "sns_id"

    const-string v5, "published"

    const-string v4, "_id"

    const-string v3, "com.lge.sns.media.provider"

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "vnd.android.cursor.dir/vnd.lge.sns.media.folder"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vnd.android.cursor.item/vnd.lge.sns.media.folder"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vnd.android.cursor.dir/vnd.lge.sns.media.file"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vnd.android.cursor.item/vnd.lge.sns.media.file"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vnd.android.cursor.dir/vnd.lge.sns.media.comment"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vnd.android.cursor.item/vnd.lge.sns.media.comment"

    aput-object v2, v0, v1

    sput-object v0, Lcom/lge/sns/media/provider/MediaProvider;->CONTENT_TYPES:[Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    .line 95
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    .line 99
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.media.provider"

    const-string v1, "mediafolder"

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 100
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.media.provider"

    const-string v1, "mediafolder/#"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 101
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.media.provider"

    const-string v1, "mediafile"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 102
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.media.provider"

    const-string v1, "mediafile/#"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.media.provider"

    const-string v1, "mediacomment"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 104
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.media.provider"

    const-string v1, "mediacomment/#"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 105
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.lge.sns.media.provider"

    const-string v1, "mediafile/count"

    const/4 v2, 0x6

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "folder_id"

    const-string v2, "folder_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "folder_name"

    const-string v2, "folder_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v1, "published"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "updated"

    const-string v2, "updated"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "folder_id"

    const-string v2, "folder_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "file_id"

    const-string v2, "file_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "title"

    const-string v2, "title"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "description"

    const-string v2, "description"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "mime_type"

    const-string v2, "mime_type"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "link"

    const-string v2, "link"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "thumbnail"

    const-string v2, "thumbnail"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "thumbnail_link"

    const-string v2, "thumbnail_link"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v1, "published"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "sns_id"

    const-string v1, "sns_id"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_name"

    const-string v2, "user_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v2, "display_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comment_id"

    const-string v2, "comment_id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "comment"

    const-string v2, "comment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "published"

    const-string v1, "published"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 333
    return-void
.end method

.method private deleteMediaComment(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 585
    iget-object v1, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 586
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media_comment"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteMediaCommentItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 590
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 591
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 592
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 593
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 594
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 596
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaComment(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private deleteMediaFile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 570
    iget-object v1, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 571
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media_file"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteMediaFileItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 575
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 576
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 577
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 578
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 579
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 581
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaFile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private deleteMediaFolder(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 555
    iget-object v1, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 556
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media_folder"

    invoke-virtual {v0, v1, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private deleteMediaFolderItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 560
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 561
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 562
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 563
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 564
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 566
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaFolder(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private executeMediaCommentItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 330
    invoke-direct {p0, p1}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaCommentItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 331
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "published DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/media/provider/MediaProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private executeMediaCommentQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 317
    invoke-direct {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaCommentQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 318
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x0

    .line 320
    .local v6, orderBy:Ljava/lang/String;
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 321
    const-string v6, "published DESC"

    .line 326
    :goto_d
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/media/provider/MediaProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 323
    :cond_18
    move-object v6, p5

    goto :goto_d
.end method

.method private executeMediaFileCountQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 306
    const-string v1, "SELECT count(*) FROM media_file"

    .line 307
    .local v1, sql:Ljava/lang/String;
    iget-object v2, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v2}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 309
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-static {p2}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_25

    .line 310
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

    .line 312
    :cond_25
    invoke-virtual {v0, v1, p3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method private executeMediaFileItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 301
    invoke-direct {p0, p1}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaFileItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 302
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "published DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/media/provider/MediaProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private executeMediaFileQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 288
    invoke-direct {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaFileQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 289
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x0

    .line 291
    .local v6, orderBy:Ljava/lang/String;
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 292
    const-string v6, "published DESC"

    .line 297
    :goto_d
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/media/provider/MediaProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 294
    :cond_18
    move-object v6, p5

    goto :goto_d
.end method

.method private executeMediaFolderItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 11
    .parameter "uri"
    .parameter "projection"

    .prologue
    const/4 v4, 0x0

    .line 282
    invoke-direct {p0, p1}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaFolderItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 283
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v6, "published DESC"

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-object v7, v4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/media/provider/MediaProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method private executeMediaFolderQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaFolderQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v1

    .line 270
    .local v1, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const/4 v6, 0x0

    .line 272
    .local v6, orderBy:Ljava/lang/String;
    invoke-static {p5}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 273
    const-string v6, "published DESC"

    .line 278
    :goto_d
    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/lge/sns/media/provider/MediaProvider;->executeQuery(Landroid/database/sqlite/SQLiteQueryBuilder;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 275
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
    .line 336
    iget-object v0, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v0}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 337
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

    .line 338
    .local v9, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-interface {v9, v0, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 339
    return-object v9
.end method

.method private getMediaCommentItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaCommentQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 263
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

    .line 264
    return-object v0
.end method

.method private getMediaCommentQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 255
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 256
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "media_comment"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 257
    sget-object v1, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_COMMENT_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 258
    return-object v0
.end method

.method private getMediaFileItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 249
    invoke-direct {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaFileQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 250
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

    .line 251
    return-object v0
.end method

.method private getMediaFileQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 242
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 243
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "media_file"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 244
    sget-object v1, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FILE_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 245
    return-object v0
.end method

.method private getMediaFolderItemQuery(Landroid/net/Uri;)Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 6
    .parameter "uri"

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getMediaFolderQuery()Landroid/database/sqlite/SQLiteQueryBuilder;

    move-result-object v0

    .line 237
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

    .line 238
    return-object v0
.end method

.method private getMediaFolderQuery()Landroid/database/sqlite/SQLiteQueryBuilder;
    .registers 3

    .prologue
    .line 229
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 230
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "media_folder"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 231
    sget-object v1, Lcom/lge/sns/media/provider/MediaProvider;->MEDIA_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    .line 232
    return-object v0
.end method

.method private insertMediaComment(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v6, "published"

    .line 409
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 410
    .local v1, now:Ljava/lang/Long;
    const-string v4, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 411
    const-string v4, "published"

    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 414
    :cond_18
    iget-object v4, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v4}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 416
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "media_comment"

    const-string v5, "comment_id"

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 417
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_31

    .line 418
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 421
    :cond_31
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

.method private insertMediaFile(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 10
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v6, "published"

    .line 393
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 394
    .local v1, now:Ljava/lang/Long;
    const-string v4, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 395
    const-string v4, "published"

    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 398
    :cond_18
    iget-object v4, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v4}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 400
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "media_file"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 401
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_30

    .line 402
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 405
    :cond_30
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

.method private insertMediaFolder(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    const-string v7, "updated"

    const-string v6, "published"

    .line 372
    new-instance v1, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Ljava/lang/Long;-><init>(J)V

    .line 374
    .local v1, now:Ljava/lang/Long;
    const-string v4, "published"

    invoke-virtual {p2, v6}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 375
    const-string v4, "published"

    invoke-virtual {p2, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 378
    :cond_1a
    const-string v4, "updated"

    invoke-virtual {p2, v7}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_27

    .line 379
    const-string v4, "updated"

    invoke-virtual {p2, v7, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    :cond_27
    iget-object v4, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v4}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 384
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v4, "media_folder"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 385
    .local v2, rowId:J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_3f

    .line 386
    invoke-static {p1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    return-object v4

    .line 389
    :cond_3f
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

.method private updateMediaComment(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 500
    iget-object v1, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 501
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media_comment"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateMediaCommentItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 505
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 506
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 507
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 508
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 509
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 511
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaComment(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private updateMediaFile(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 484
    iget-object v1, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 485
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media_file"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateMediaFileItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 489
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 490
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 491
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 492
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 493
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 495
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaFile(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private updateMediaFolder(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 468
    iget-object v1, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 469
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "media_folder"

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateMediaFolderItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 473
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 474
    .local v0, id:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 475
    .local v1, sb:Ljava/lang/StringBuffer;
    const-string v2, "_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 476
    invoke-static {p3}, Lcom/lge/util/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 477
    const-string v2, " and "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 479
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, p2, v2, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaFolder(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

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
    const-string v3, "MediaProvider"

    .line 516
    const-string v1, "MediaProvider"

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

    .line 518
    const/4 v0, 0x0

    .line 519
    .local v0, count:I
    sget-object v1, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_80

    .line 545
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

    .line 521
    :pswitch_3d
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaFolder(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 547
    :goto_41
    invoke-virtual {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 549
    const-string v1, "MediaProvider"

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

    .line 551
    return v0

    .line 525
    :pswitch_66
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaFolderItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 526
    goto :goto_41

    .line 529
    :pswitch_6b
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaFile(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 530
    goto :goto_41

    .line 533
    :pswitch_70
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaFileItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 534
    goto :goto_41

    .line 537
    :pswitch_75
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaComment(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 538
    goto :goto_41

    .line 541
    :pswitch_7a
    invoke-direct {p0, p1, p2, p3}, Lcom/lge/sns/media/provider/MediaProvider;->deleteMediaCommentItem(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 542
    goto :goto_41

    .line 519
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
    const-string v4, "MediaProvider"

    .line 601
    const-string v2, "MediaProvider"

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

    .line 603
    const/4 v0, 0x0

    .line 604
    .local v0, contentType:Ljava/lang/String;
    sget-object v2, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 605
    .local v1, match:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_46

    sget-object v2, Lcom/lge/sns/media/provider/MediaProvider;->CONTENT_TYPES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_46

    .line 606
    sget-object v2, Lcom/lge/sns/media/provider/MediaProvider;->CONTENT_TYPES:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 608
    const-string v2, "MediaProvider"

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

    .line 610
    return-object v0

    .line 612
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
    const-string v3, "MediaProvider"

    .line 344
    const-string v1, "MediaProvider"

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

    .line 347
    const/4 v0, 0x0

    .line 348
    .local v0, uriInserted:Landroid/net/Uri;
    sget-object v1, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_70

    .line 362
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

    .line 350
    :pswitch_3d
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/provider/MediaProvider;->insertMediaFolder(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 365
    :goto_41
    const-string v1, "MediaProvider"

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

    .line 367
    invoke-virtual {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 368
    return-object v0

    .line 354
    :pswitch_66
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/provider/MediaProvider;->insertMediaFile(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 355
    goto :goto_41

    .line 358
    :pswitch_6b
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/provider/MediaProvider;->insertMediaComment(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 359
    goto :goto_41

    .line 348
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
    .line 169
    const-string v0, "MediaProvider"

    const-string v1, "onCreate. create SnsDatabaseOpenHelper"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    new-instance v0, Lcom/lge/sns/SnsDatabaseOpenHelper;

    invoke-virtual {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lge/sns/SnsDatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/lge/sns/media/provider/MediaProvider;->mOpenHelper:Lcom/lge/sns/SnsDatabaseOpenHelper;

    .line 172
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
    const-string v3, "MediaProvider"

    .line 177
    const-string v1, "MediaProvider"

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

    .line 180
    const/4 v0, 0x0

    .line 182
    .local v0, cursor:Landroid/database/Cursor;
    sget-object v1, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_92

    .line 212
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

    .line 184
    :pswitch_3d
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/media/provider/MediaProvider;->executeMediaFolderQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 215
    :goto_41
    if-eqz v0, :cond_89

    .line 216
    invoke-virtual {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 219
    const-string v1, "MediaProvider"

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

    .line 225
    :goto_6a
    return-object v0

    .line 188
    :pswitch_6b
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/provider/MediaProvider;->executeMediaFolderItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 189
    goto :goto_41

    .line 192
    :pswitch_70
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/media/provider/MediaProvider;->executeMediaFileQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 193
    goto :goto_41

    .line 196
    :pswitch_75
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/provider/MediaProvider;->executeMediaFileItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 197
    goto :goto_41

    .line 200
    :pswitch_7a
    invoke-direct {p0, p1, p3, p4}, Lcom/lge/sns/media/provider/MediaProvider;->executeMediaFileCountQuery(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 201
    goto :goto_41

    .line 204
    :pswitch_7f
    invoke-direct/range {p0 .. p5}, Lcom/lge/sns/media/provider/MediaProvider;->executeMediaCommentQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 205
    goto :goto_41

    .line 208
    :pswitch_84
    invoke-direct {p0, p1, p2}, Lcom/lge/sns/media/provider/MediaProvider;->executeMediaCommentItemQuery(Landroid/net/Uri;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 209
    goto :goto_41

    .line 222
    :cond_89
    const-string v1, "MediaProvider"

    const-string v1, "no rows are selected"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a

    .line 182
    nop

    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_3d
        :pswitch_6b
        :pswitch_70
        :pswitch_75
        :pswitch_7f
        :pswitch_84
        :pswitch_7a
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const-string v3, "MediaProvider"

    .line 426
    const-string v1, "MediaProvider"

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

    .line 429
    const/4 v0, 0x0

    .line 431
    .local v0, count:I
    sget-object v1, Lcom/lge/sns/media/provider/MediaProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_80

    .line 457
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

    .line 433
    :pswitch_3d
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaFolder(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 459
    :goto_41
    invoke-virtual {p0}, Lcom/lge/sns/media/provider/MediaProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 461
    const-string v1, "MediaProvider"

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

    .line 463
    return v0

    .line 437
    :pswitch_66
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaFolderItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 438
    goto :goto_41

    .line 441
    :pswitch_6b
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaFile(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 442
    goto :goto_41

    .line 445
    :pswitch_70
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaFileItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 446
    goto :goto_41

    .line 449
    :pswitch_75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaComment(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 450
    goto :goto_41

    .line 453
    :pswitch_7a
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/lge/sns/media/provider/MediaProvider;->updateMediaCommentItem(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 454
    goto :goto_41

    .line 431
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
