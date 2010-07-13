.class public final Lcom/android/providers/downloads/DownloadProvider;
.super Landroid/content/ContentProvider;
.source "DownloadProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;,
        Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "downloads.db"

.field private static final DB_TABLE:Ljava/lang/String; = "downloads"

.field private static final DB_VERSION:I = 0x64

.field private static final DB_VERSION_NOP_UPGRADE_FROM:I = 0x1f

.field private static final DB_VERSION_NOP_UPGRADE_TO:I = 0x64

.field private static final DOWNLOADS:I = 0x1

.field private static final DOWNLOADS_ID:I = 0x2

.field private static final DOWNLOAD_LIST_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/download"

.field private static final DOWNLOAD_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/download"

.field private static final sAppReadableColumnsArray:[Ljava/lang/String;

.field private static sAppReadableColumnsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v3, "downloads"

    .line 71
    new-instance v1, Landroid/content/UriMatcher;

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    .line 77
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v2, "download"

    invoke-virtual {v1, v3, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v2, "downloads"

    const-string v2, "download/#"

    invoke-virtual {v1, v3, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    const/16 v1, 0x12

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_id"

    aput-object v3, v1, v2

    const-string v2, "entity"

    aput-object v2, v1, v4

    const-string v2, "_data"

    aput-object v2, v1, v5

    const/4 v2, 0x3

    const-string v3, "mimetype"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "visibility"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "destination"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "control"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "status"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "lastmod"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "notificationpackage"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "notificationclass"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "total_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "current_bytes"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "title"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "uri"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "description"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "external_control"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "cid"

    aput-object v3, v1, v2

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 108
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    .line 109
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8e
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_9f

    .line 110
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    sget-object v2, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 112
    :cond_9f
    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 733
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadProvider;->dropTable(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private static final copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 720
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 721
    .local v0, b:Ljava/lang/Boolean;
    if-eqz v0, :cond_9

    .line 722
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 724
    :cond_9
    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 713
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 714
    .local v0, i:Ljava/lang/Integer;
    if-eqz v0, :cond_9

    .line 715
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 717
    :cond_9
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .registers 4
    .parameter "key"
    .parameter "from"
    .parameter "to"

    .prologue
    .line 727
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 728
    .local v0, s:Ljava/lang/String;
    if-eqz v0, :cond_9

    .line 729
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_9
    return-void
.end method

.method private createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 211
    :try_start_0
    const-string v1, "CREATE TABLE downloads(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, method INTEGER, entity TEXT, no_integrity BOOLEAN, hint TEXT, otaupdate BOOLEAN, _data TEXT, mimetype TEXT, destination INTEGER, no_system BOOLEAN, visibility INTEGER, control INTEGER, status INTEGER, numfailed INTEGER, lastmod BIGINT, notificationpackage TEXT, notificationclass TEXT, notificationextras TEXT, cookiedata TEXT, useragent TEXT, referer TEXT, total_bytes INTEGER, current_bytes INTEGER, etag TEXT, uid INTEGER, otheruid INTEGER, title TEXT, description TEXT, external_control BOOLEAN DEFAULT FALSE, cid TEXT, scanned BOOLEAN);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 250
    return-void

    .line 246
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    throw v0
.end method

.method private dropTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 5
    .parameter "db"

    .prologue
    .line 257
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS downloads"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_5
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_5} :catch_6

    .line 262
    return-void

    .line 258
    :catch_6
    move-exception v1

    move-object v0, v1

    .line 259
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "DownloadManager"

    const-string v2, "couldn\'t drop table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    throw v0
.end method

.method private static isDRMMimetype(Ljava/lang/String;)Z
    .registers 2
    .parameter "mimetype"

    .prologue
    .line 768
    const-string v0, "application/vnd.oma.drm.message"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.content"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "application/vnd.oma.drm.dcf"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 771
    :cond_18
    const/4 v0, 0x1

    .line 773
    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 16
    .parameter "uri"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    const/4 v9, 0x1

    const-string v11, "( "

    const-string v10, " )"

    .line 587
    sget-object v7, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    invoke-static {p2, v7}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 589
    iget-object v7, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 591
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v7, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v7, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 592
    .local v2, match:I
    packed-switch v2, :pswitch_data_112

    .line 619
    const-string v7, "DownloadManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deleting unknown/invalid URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot delete URI: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 596
    :pswitch_4a
    if-eqz p2, :cond_10e

    .line 597
    if-ne v2, v9, :cond_f3

    .line 598
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "( "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 605
    .local v3, myWhere:Ljava/lang/String;
    :goto_67
    const/4 v7, 0x2

    if-ne v2, v7, :cond_95

    .line 606
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 607
    .local v6, segment:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 608
    .local v4, rowId:J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ( _id = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 610
    .end local v4           #rowId:J
    .end local v6           #segment:Ljava/lang/String;
    :cond_95
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    if-eq v7, v8, :cond_e0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    if-eqz v7, :cond_e0

    .line 611
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " AND ( uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " OR "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "otheruid"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " )"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 614
    :cond_e0
    const-string v7, "downloads"

    invoke-virtual {v1, v7, v3, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 624
    .local v0, count:I
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 625
    return v0

    .line 600
    .end local v0           #count:I
    .end local v3           #myWhere:Ljava/lang/String;
    :cond_f3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "( "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ) AND "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #myWhere:Ljava/lang/String;
    goto/16 :goto_67

    .line 603
    .end local v3           #myWhere:Ljava/lang/String;
    :cond_10e
    const-string v3, ""

    .restart local v3       #myWhere:Ljava/lang/String;
    goto/16 :goto_67

    .line 592
    :pswitch_data_112
    .packed-switch 0x1
        :pswitch_4a
        :pswitch_4a
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .parameter "uri"

    .prologue
    .line 189
    sget-object v1, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 190
    .local v0, match:I
    packed-switch v0, :pswitch_data_44

    .line 198
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_25

    .line 199
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling getType on an unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_25
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :pswitch_3e
    const-string v1, "vnd.android.cursor.dir/download"

    .line 195
    :goto_40
    return-object v1

    :pswitch_41
    const-string v1, "vnd.android.cursor.item/download"

    goto :goto_40

    .line 190
    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_41
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 20
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    .line 271
    .local v5, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v14, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    const/4 v15, 0x1

    if-eq v14, v15, :cond_4c

    .line 273
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "calling insert on an unknown/invalid URI: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown/Invalid URI "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 278
    :cond_4c
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 280
    .local v7, filteredValues:Landroid/content/ContentValues;
    const-string v14, "uri"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 281
    const-string v14, "entity"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 282
    const-string v14, "no_integrity"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 284
    const-string v14, "external_control"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 285
    const-string v14, "cid"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 287
    const-string v14, "hint"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 288
    const-string v14, "mimetype"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 289
    const-string v14, "destination"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 290
    .local v6, dest:Ljava/lang/Integer;
    if-eqz v6, :cond_c1

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v14

    if-eqz v14, :cond_bc

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-eqz v14, :cond_bc

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    const/4 v15, 0x2

    if-eq v14, v15, :cond_bc

    .line 295
    new-instance v14, Ljava/lang/SecurityException;

    const-string v15, "unauthorized destination code"

    invoke-direct {v14, v15}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 297
    :cond_bc
    const-string v14, "destination"

    invoke-virtual {v7, v14, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 299
    :cond_c1
    const-string v14, "visibility"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v13

    .line 300
    .local v13, vis:Ljava/lang/Integer;
    if-nez v13, :cond_245

    .line 301
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v14

    if-nez v14, :cond_239

    .line 302
    const-string v14, "visibility"

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 310
    :goto_dc
    const-string v14, "control"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 311
    const-string v14, "status"

    const/16 v15, 0xbe

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 312
    const-string v14, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 313
    const-string v14, "notificationpackage"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 314
    .local v8, pckg:Ljava/lang/String;
    const-string v14, "notificationclass"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    .local v3, clazz:Ljava/lang/String;
    if-eqz v8, :cond_134

    if-eqz v3, :cond_134

    .line 316
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v12

    .line 318
    .local v12, uid:I
    if-eqz v12, :cond_12a

    :try_start_119
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v8, v15}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v14

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v14, v12, :cond_134

    .line 320
    :cond_12a
    const-string v14, "notificationpackage"

    invoke-virtual {v7, v14, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    const-string v14, "notificationclass"

    invoke-virtual {v7, v14, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_134
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_119 .. :try_end_134} :catch_254

    .line 327
    .end local v12           #uid:I
    :cond_134
    :goto_134
    const-string v14, "notificationextras"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 328
    const-string v14, "cookiedata"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 329
    const-string v14, "useragent"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 330
    const-string v14, "referer"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 331
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "android.permission.ACCESS_DOWNLOAD_MANAGER_ADVANCED"

    invoke-virtual {v14, v15}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v14

    if-nez v14, :cond_16d

    .line 333
    const-string v14, "otheruid"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 335
    :cond_16d
    const-string v14, "uid"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 336
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v14

    if-nez v14, :cond_189

    .line 337
    const-string v14, "uid"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 339
    :cond_189
    const-string v14, "title"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 340
    const-string v14, "description"

    move-object v0, v14

    move-object/from16 v1, p2

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 342
    sget-boolean v14, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v14, :cond_1e9

    .line 343
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "initiating download with UID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "uid"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v14, "otheruid"

    invoke-virtual {v7, v14}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1e9

    .line 346
    const-string v14, "DownloadManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "other UID "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "otheruid"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1e9
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 352
    .local v4, context:Landroid/content/Context;
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v14, v4, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 354
    const-string v14, "downloads"

    const/4 v15, 0x0

    invoke-virtual {v5, v14, v15, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v10

    .line 356
    .local v10, rowID:J
    const/4 v9, 0x0

    .line 358
    .local v9, ret:Landroid/net/Uri;
    const-wide/16 v14, -0x1

    cmp-long v14, v10, v14

    if-eqz v14, :cond_24c

    .line 359
    new-instance v14, Landroid/content/Intent;

    const-class v15, Lcom/android/providers/downloads/DownloadService;

    invoke-direct {v14, v4, v15}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v14}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 360
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 361
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, 0x0

    move-object v0, v14

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 368
    :goto_238
    return-object v9

    .line 305
    .end local v3           #clazz:Ljava/lang/String;
    .end local v4           #context:Landroid/content/Context;
    .end local v8           #pckg:Ljava/lang/String;
    .end local v9           #ret:Landroid/net/Uri;
    .end local v10           #rowID:J
    :cond_239
    const-string v14, "visibility"

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v7, v14, v15}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_dc

    .line 308
    :cond_245
    const-string v14, "visibility"

    invoke-virtual {v7, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_dc

    .line 364
    .restart local v3       #clazz:Ljava/lang/String;
    .restart local v4       #context:Landroid/content/Context;
    .restart local v8       #pckg:Ljava/lang/String;
    .restart local v9       #ret:Landroid/net/Uri;
    .restart local v10       #rowID:J
    :cond_24c
    const-string v14, "DownloadManager"

    const-string v15, "couldn\'t insert into downloads database"

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_238

    .line 323
    .end local v4           #context:Landroid/content/Context;
    .end local v9           #ret:Landroid/net/Uri;
    .end local v10           #rowID:J
    .restart local v12       #uid:I
    :catch_254
    move-exception v14

    goto/16 :goto_134
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 179
    new-instance v0, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/DownloadProvider$DatabaseHelper;-><init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 180
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 16
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 634
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_6a

    .line 635
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    sget-object v1, Landroid/provider/Downloads;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "_id"

    aput-object v3, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 638
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_a5

    .line 639
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :goto_50
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 651
    if-nez v8, :cond_e0

    .line 652
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_6a
    :goto_6a
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/downloads/DownloadProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 671
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_122

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    move v7, v0

    .line 672
    .local v7, count:I
    :goto_82
    const/4 v0, 0x1

    if-eq v7, v0, :cond_13f

    .line 674
    if-eqz v6, :cond_8a

    .line 675
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 677
    :cond_8a
    if-nez v7, :cond_126

    .line 678
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 641
    .end local v6           #c:Landroid/database/Cursor;
    .end local v7           #count:I
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_a5
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_b6

    .line 642
    const-string v0, "DownloadManager"

    const-string v1, "empty cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :goto_b2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_50

    .line 645
    :cond_b6
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "row "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " available"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_b6

    goto :goto_b2

    .line 654
    :cond_e0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_f2

    .line 655
    const-string v0, "DownloadManager"

    const-string v1, "empty cursor in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    :cond_ed
    :goto_ed
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto/16 :goto_6a

    .line 657
    :cond_f2
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 658
    .local v9, filename:Ljava/lang/String;
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filename in openFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 660
    const-string v0, "DownloadManager"

    const-string v1, "file exists in openFile"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ed

    .line 671
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #filename:Ljava/lang/String;
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_122
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_82

    .line 680
    .restart local v7       #count:I
    :cond_126
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 683
    :cond_13f
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 684
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 685
    .local v10, path:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 686
    if-nez v10, :cond_154

    .line 687
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "No filename found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 689
    :cond_154
    invoke-static {v10}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_162

    .line 690
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Invalid filename."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 693
    :cond_162
    const-string v0, "r"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18d

    .line 694
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad mode for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_18d
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v11

    .line 699
    .local v11, ret:Landroid/os/ParcelFileDescriptor;
    if-nez v11, :cond_1ad

    .line 700
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_1a5

    .line 701
    const-string v0, "DownloadManager"

    const-string v1, "couldn\'t open file"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    :cond_1a5
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "couldn\'t open file"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_1ad
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 706
    .local v12, values:Landroid/content/ContentValues;
    const-string v0, "lastmod"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 707
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v12, v0, v1}, Lcom/android/providers/downloads/DownloadProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 709
    return-object v11
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 23
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 379
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 383
    .local v4, db:Landroid/database/sqlite/SQLiteDatabase;
    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 385
    .local v3, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v13

    .line 386
    .local v13, match:I
    const/4 v11, 0x1

    .line 387
    .local v11, emptyWhere:Z
    packed-switch v13, :pswitch_data_25a

    .line 400
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_42

    .line 401
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "querying unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_42
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown URI: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 389
    :pswitch_5e
    const-string v5, "downloads"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 407
    :goto_63
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    if-eq v5, v6, :cond_b9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-eqz v5, :cond_b9

    .line 408
    if-nez v11, :cond_7a

    .line 409
    const-string v5, " AND "

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 411
    :cond_7a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "( uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " OR "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "otheruid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " )"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 413
    const/4 v11, 0x0

    .line 415
    if-nez p2, :cond_198

    .line 416
    sget-object p2, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsArray:[Ljava/lang/String;

    .line 427
    :cond_b9
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_127

    .line 428
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    .local v16, sb:Ljava/lang/StringBuilder;
    const-string v5, "starting query, database is "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    if-eqz v4, :cond_d4

    .line 431
    const-string v5, "not "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 433
    :cond_d4
    const-string v5, "null; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    if-nez p2, :cond_1cd

    .line 435
    const-string v5, "projection is null; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    :cond_e6
    :goto_e6
    const-string v5, "selection is "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v5, "; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    if-nez p4, :cond_20d

    .line 451
    const-string v5, "selectionArgs is null; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_107
    :goto_107
    const-string v5, "sort is "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    move-object/from16 v0, v16

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    const-string v5, "."

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    const-string v5, "DownloadManager"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    .end local v16           #sb:Ljava/lang/StringBuilder;
    :cond_127
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v10, p5

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 472
    .local v14, ret:Landroid/database/Cursor;
    if-eqz v14, :cond_141

    .line 473
    new-instance v15, Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider$ReadOnlyCursorWrapper;-><init>(Lcom/android/providers/downloads/DownloadProvider;Landroid/database/Cursor;)V

    .end local v14           #ret:Landroid/database/Cursor;
    .local v15, ret:Landroid/database/Cursor;
    move-object v14, v15

    .line 476
    .end local v15           #ret:Landroid/database/Cursor;
    .restart local v14       #ret:Landroid/database/Cursor;
    :cond_141
    if-eqz v14, :cond_24d

    .line 477
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object v0, v14

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 478
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v5, :cond_17c

    .line 479
    const-string v5, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "created cursor "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " on behalf of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_17c
    :goto_17c
    return-object v14

    .line 393
    .end local v14           #ret:Landroid/database/Cursor;
    :pswitch_17d
    const-string v5, "downloads"

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 394
    const-string v5, "_id="

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 396
    const/4 v11, 0x0

    .line 397
    goto/16 :goto_63

    .line 418
    :cond_198
    const/4 v12, 0x0

    .local v12, i:I
    :goto_199
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    if-ge v12, v5, :cond_b9

    .line 419
    sget-object v5, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    aget-object v6, p2, v12

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1ca

    .line 420
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "column "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, p2, v12

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not allowed in queries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 418
    :cond_1ca
    add-int/lit8 v12, v12, 0x1

    goto :goto_199

    .line 436
    .end local v12           #i:I
    .restart local v16       #sb:Ljava/lang/StringBuilder;
    :cond_1cd
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    if-nez v5, :cond_1dd

    .line 437
    const-string v5, "projection is empty; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e6

    .line 439
    :cond_1dd
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_1de
    move-object/from16 v0, p2

    array-length v0, v0

    move v5, v0

    if-ge v12, v5, :cond_e6

    .line 440
    const-string v5, "projection["

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 442
    const-string v5, "] is "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    aget-object v5, p2, v12

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    const-string v5, "; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    add-int/lit8 v12, v12, 0x1

    goto :goto_1de

    .line 452
    .end local v12           #i:I
    :cond_20d
    move-object/from16 v0, p4

    array-length v0, v0

    move v5, v0

    if-nez v5, :cond_21d

    .line 453
    const-string v5, "selectionArgs is empty; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_107

    .line 455
    :cond_21d
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_21e
    move-object/from16 v0, p4

    array-length v0, v0

    move v5, v0

    if-ge v12, v5, :cond_107

    .line 456
    const-string v5, "selectionArgs["

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    move-object/from16 v0, v16

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 458
    const-string v5, "] is "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    aget-object v5, p4, v12

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    const-string v5, "; "

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    add-int/lit8 v12, v12, 0x1

    goto :goto_21e

    .line 483
    .end local v12           #i:I
    .end local v16           #sb:Ljava/lang/StringBuilder;
    .restart local v14       #ret:Landroid/database/Cursor;
    :cond_24d
    sget-boolean v5, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v5, :cond_17c

    .line 484
    const-string v5, "DownloadManager"

    const-string v6, "query failed in downloads database"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17c

    .line 387
    :pswitch_data_25a
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_17d
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 25
    .parameter "uri"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 498
    sget-object v17, Lcom/android/providers/downloads/DownloadProvider;->sAppReadableColumnsSet:Ljava/util/HashSet;

    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/providers/downloads/Helpers;->validateSelection(Ljava/lang/String;Ljava/util/Set;)V

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 503
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v13, 0x0

    .line 504
    .local v13, rowId:J
    const/16 v16, 0x0

    .line 508
    .local v16, startService:Z
    const-string v17, "mimetype"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 509
    .local v11, mimeType:Ljava/lang/String;
    const-string v17, "external_control"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    if-eqz v17, :cond_92

    const-string v17, "external_control"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_92

    .line 511
    move-object/from16 v8, p2

    .line 512
    .local v8, filteredValues:Landroid/content/ContentValues;
    const-string v17, "DownloadManager"

    const-string v18, "update: external_control"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :goto_4c
    sget-object v17, Lcom/android/providers/downloads/DownloadProvider;->sURIMatcher:Landroid/content/UriMatcher;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v10

    .line 536
    .local v10, match:I
    packed-switch v10, :pswitch_data_21a

    .line 567
    const-string v17, "DownloadManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "updating unknown/invalid URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance v17, Ljava/lang/UnsupportedOperationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot update URI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 514
    .end local v8           #filteredValues:Landroid/content/ContentValues;
    .end local v10           #match:I
    :cond_92
    invoke-static {v11}, Lcom/android/providers/downloads/DownloadProvider;->isDRMMimetype(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_a2

    .line 515
    move-object/from16 v8, p2

    .line 516
    .restart local v8       #filteredValues:Landroid/content/ContentValues;
    const-string v17, "DownloadManager"

    const-string v18, "update: DRM"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4c

    .line 519
    .end local v8           #filteredValues:Landroid/content/ContentValues;
    :cond_a2
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_100

    .line 521
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 522
    .restart local v8       #filteredValues:Landroid/content/ContentValues;
    const-string v17, "entity"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 523
    const-string v17, "visibility"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 524
    const-string v17, "control"

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    .line 525
    .local v9, i:Ljava/lang/Integer;
    if-eqz v9, :cond_e0

    .line 526
    const-string v17, "control"

    move-object v0, v8

    move-object/from16 v1, v17

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 527
    const/16 v16, 0x1

    .line 529
    :cond_e0
    const-string v17, "control"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 530
    const-string v17, "title"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 531
    const-string v17, "description"

    move-object/from16 v0, v17

    move-object/from16 v1, p2

    move-object v2, v8

    invoke-static {v0, v1, v2}, Lcom/android/providers/downloads/DownloadProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    goto/16 :goto_4c

    .line 533
    .end local v8           #filteredValues:Landroid/content/ContentValues;
    .end local v9           #i:Ljava/lang/Integer;
    :cond_100
    move-object/from16 v8, p2

    .restart local v8       #filteredValues:Landroid/content/ContentValues;
    goto/16 :goto_4c

    .line 540
    .restart local v10       #match:I
    :pswitch_104
    if-eqz p3, :cond_214

    .line 541
    const/16 v17, 0x1

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_1f5

    .line 542
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "( "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " )"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 549
    .local v12, myWhere:Ljava/lang/String;
    :goto_12a
    const/16 v17, 0x2

    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_164

    .line 550
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v17

    const/16 v18, 0x1

    invoke-interface/range {v17 .. v18}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 551
    .local v15, segment:Ljava/lang/String;
    invoke-static {v15}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 552
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ( _id = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-wide v1, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ) "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 554
    .end local v15           #segment:Ljava/lang/String;
    :cond_164
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v17

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1b6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v17

    if-eqz v17, :cond_1b6

    .line 555
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " AND ( uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " OR "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "otheruid"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " )"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 558
    :cond_1b6
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I

    move-result v17

    if-lez v17, :cond_218

    .line 559
    const-string v17, "downloads"

    move-object v0, v7

    move-object/from16 v1, v17

    move-object v2, v8

    move-object v3, v12

    move-object/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v6

    .line 572
    .local v6, count:I
    :goto_1c9
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 573
    if-eqz v16, :cond_1f4

    .line 574
    invoke-virtual/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 575
    .local v5, context:Landroid/content/Context;
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/android/providers/downloads/DownloadService;

    move-object/from16 v0, v17

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 577
    .end local v5           #context:Landroid/content/Context;
    :cond_1f4
    return v6

    .line 544
    .end local v6           #count:I
    .end local v12           #myWhere:Ljava/lang/String;
    :cond_1f5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "( "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " ) AND "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .restart local v12       #myWhere:Ljava/lang/String;
    goto/16 :goto_12a

    .line 547
    .end local v12           #myWhere:Ljava/lang/String;
    :cond_214
    const-string v12, ""

    .restart local v12       #myWhere:Ljava/lang/String;
    goto/16 :goto_12a

    .line 561
    :cond_218
    const/4 v6, 0x0

    .line 563
    .restart local v6       #count:I
    goto :goto_1c9

    .line 536
    :pswitch_data_21a
    .packed-switch 0x1
        :pswitch_104
        :pswitch_104
    .end packed-switch
.end method
