.class public Lcom/android/providers/drm/DrmProvider;
.super Landroid/content/ContentProvider;
.source "DrmProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/drm/DrmProvider$1;,
        Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;,
        Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;
    }
.end annotation


# static fields
.field private static final AUDIO:I = 0x64

.field private static final AUDIO_ID:I = 0x65

.field private static final IMAGES:I = 0x66

.field private static final IMAGES_ID:I = 0x67

.field private static final MIME_TYPE_PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field static final sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;


# instance fields
.field private mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-string v3, "drm"

    .line 269
    new-instance v0, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;-><init>(Lcom/android/providers/drm/DrmProvider$1;)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    .line 393
    const-string v0, "DrmProvider"

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    .line 400
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 403
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    .line 412
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v1, "audio"

    const/16 v2, 0x64

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 413
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v1, "audio/#"

    const/16 v2, 0x65

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 414
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v1, "images"

    const/16 v2, 0x66

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 415
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "drm"

    const-string v1, "images/#"

    const/16 v2, 0x67

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 416
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 264
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->createTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 47
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/drm/DrmProvider;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/providers/drm/DrmProvider;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method private createTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 111
    const-string v0, "CREATE TABLE audio (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,title TEXT,mime_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 119
    const-string v0, "CREATE TABLE images (_id INTEGER PRIMARY KEY,_data TEXT,_size INTEGER,title TEXT,mime_type TEXT);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method private deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .registers 13
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    const/4 v1, 0x0

    .line 312
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 315
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_4d

    :try_start_13
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 316
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    .line 318
    .local v8, prefix:Ljava/lang/String;
    :cond_25
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 319
    .local v7, path:Ljava/lang/String;
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3f

    .line 320
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Attempted to delete a non-DRM file"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_38
    .catchall {:try_start_13 .. :try_end_38} :catchall_38

    .line 326
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :catchall_38
    move-exception v0

    if-eqz v6, :cond_3e

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3e
    throw v0

    .line 322
    .restart local v7       #path:Ljava/lang/String;
    .restart local v8       #prefix:Ljava/lang/String;
    :cond_3f
    :try_start_3f
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_38

    move-result v0

    if-nez v0, :cond_25

    .line 326
    .end local v7           #path:Ljava/lang/String;
    .end local v8           #prefix:Ljava/lang/String;
    :cond_4d
    if-eqz v6, :cond_52

    .line 327
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 330
    :cond_52
    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .parameter "db"

    .prologue
    .line 133
    const-string v0, "DROP TABLE IF EXISTS audio"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 134
    const-string v0, "DROP TABLE IF EXISTS images"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method private ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .registers 8
    .parameter "initialValues"

    .prologue
    .line 203
    :try_start_0
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    .line 204
    .local v2, parent:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 205
    const-string v4, "DRM-"

    const-string v5, ".data"

    invoke-static {v4, v5, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 206
    .local v1, file:Ljava/io/File;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, p1}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    .line 207
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "_data"

    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_21} :catch_23

    move-object v4, v3

    .line 211
    .end local v1           #file:Ljava/io/File;
    .end local v2           #parent:Ljava/io/File;
    .end local v3           #values:Landroid/content/ContentValues;
    :goto_22
    return-object v4

    .line 209
    :catch_23
    move-exception v4

    move-object v0, v4

    .line 210
    .local v0, e:Ljava/io/IOException;
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->TAG:Ljava/lang/String;

    const-string v5, "Failed to create data file in ensureFile"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v4, 0x0

    goto :goto_22
.end method

.method private getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V
    .registers 11
    .parameter "uri"
    .parameter "match"
    .parameter "userWhere"
    .parameter "out"

    .prologue
    const/4 v3, 0x1

    const-string v5, "images"

    const-string v2, "audio"

    const-string v4, "_id="

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, where:Ljava/lang/String;
    packed-switch p2, :pswitch_data_a8

    .line 295
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown or unsupported URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :pswitch_28
    const-string v1, "audio"

    iput-object v2, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 300
    .end local p0
    :goto_2c
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a4

    .line 301
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a1

    .line 302
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " AND ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    .line 309
    :goto_57
    return-void

    .line 281
    .restart local p0
    :pswitch_58
    const-string v1, "audio"

    iput-object v2, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 283
    goto :goto_2c

    .line 286
    .restart local p0
    :pswitch_7a
    const-string v1, "images"

    iput-object v5, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    goto :goto_2c

    .line 290
    :pswitch_7f
    const-string v1, "images"

    iput-object v5, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    .line 291
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 292
    goto :goto_2c

    .line 304
    :cond_a1
    iput-object p3, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_57

    .line 307
    :cond_a4
    iput-object v0, p4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    goto :goto_57

    .line 275
    nop

    :pswitch_data_a8
    .packed-switch 0x64
        :pswitch_28
        :pswitch_58
        :pswitch_7a
        :pswitch_7f
    .end packed-switch
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    .line 336
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires DRM permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 340
    :cond_14
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 341
    .local v2, match:I
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 343
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v3

    .line 344
    :try_start_23
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v2, p2, v4}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 347
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/drm/DrmProvider;->deleteFiles(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 348
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v4, v4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 352
    .local v0, count:I
    monitor-exit v3

    .line 354
    return v0

    .line 352
    .end local v0           #count:I
    :catchall_39
    move-exception v4

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_39

    throw v4
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .parameter "url"

    .prologue
    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 179
    sget-object v0, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_30

    .line 191
    :cond_b
    :pswitch_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :pswitch_13
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->MIME_TYPE_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/providers/drm/DrmProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 183
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_b

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_b

    .line 184
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 185
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 186
    .local v7, mimeType:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->deactivate()V

    .line 187
    return-object v7

    .line 179
    :pswitch_data_30
    .packed-switch 0x65
        :pswitch_13
        :pswitch_b
        :pswitch_13
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15
    .parameter "uri"
    .parameter "initialValues"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-string v11, "title"

    .line 218
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "android.permission.ACCESS_DRM"

    invoke-virtual {v6, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_19

    .line 220
    new-instance v6, Ljava/lang/SecurityException;

    const-string v7, "Requires DRM permission"

    invoke-direct {v6, v7}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 224
    :cond_19
    sget-object v6, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    .line 225
    .local v1, match:I
    const/4 v2, 0x0

    .line 226
    .local v2, newUri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 228
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    if-nez p2, :cond_2d

    .line 229
    new-instance p2, Landroid/content/ContentValues;

    .end local p2
    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    .line 232
    .restart local p2
    :cond_2d
    packed-switch v1, :pswitch_data_8e

    .line 254
    :pswitch_30
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 234
    :pswitch_49
    invoke-direct {p0, p2}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 235
    .local v5, values:Landroid/content/ContentValues;
    if-nez v5, :cond_51

    move-object v6, v8

    .line 261
    :goto_50
    return-object v6

    .line 236
    :cond_51
    const-string v6, "audio"

    const-string v7, "title"

    invoke-virtual {v0, v6, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 237
    .local v3, rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_63

    .line 238
    sget-object v6, Landroid/provider/DrmStore$Audio;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 257
    :cond_63
    :goto_63
    if-eqz v2, :cond_70

    .line 258
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_70
    move-object v6, v2

    .line 261
    goto :goto_50

    .line 244
    .end local v3           #rowId:J
    .end local v5           #values:Landroid/content/ContentValues;
    :pswitch_72
    invoke-direct {p0, p2}, Lcom/android/providers/drm/DrmProvider;->ensureFile(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v5

    .line 245
    .restart local v5       #values:Landroid/content/ContentValues;
    if-nez v5, :cond_7a

    move-object v6, v8

    goto :goto_50

    .line 246
    :cond_7a
    const-string v6, "images"

    const-string v7, "title"

    invoke-virtual {v0, v6, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 247
    .restart local v3       #rowId:J
    cmp-long v6, v3, v9

    if-lez v6, :cond_63

    .line 248
    sget-object v6, Landroid/provider/DrmStore$Images;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    goto :goto_63

    .line 232
    nop

    :pswitch_data_8e
    .packed-switch 0x64
        :pswitch_49
        :pswitch_30
        :pswitch_72
    .end packed-switch
.end method

.method public onCreate()Z
    .registers 3

    .prologue
    .line 103
    new-instance v0, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;

    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/providers/drm/DrmProvider$OpenDatabaseHelper;-><init>(Lcom/android/providers/drm/DrmProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_DRM"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 388
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires DRM permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_14
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/drm/DrmProvider;->openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
    .parameter "uri"
    .parameter "projectionIn"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    const/4 v4, 0x1

    const-string v7, "images"

    const-string v3, "audio"

    const-string v6, "_id="

    .line 140
    const/4 v5, 0x0

    .line 142
    .local v5, groupBy:Ljava/lang/String;
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 144
    .local v0, qb:Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v2, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    packed-switch v2, :pswitch_data_a8

    .line 164
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown URL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 146
    :pswitch_33
    const-string v2, "audio"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 167
    :goto_38
    iget-object v2, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 168
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 170
    .local v8, c:Landroid/database/Cursor;
    if-eqz v8, :cond_54

    .line 171
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-interface {v8, v2, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 173
    :cond_54
    return-object v8

    .line 150
    .end local v1           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_55
    const-string v2, "audio"

    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 155
    :pswitch_7b
    const-string v2, "images"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_38

    .line 159
    :pswitch_81
    const-string v2, "images"

    invoke-virtual {v0, v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_38

    .line 144
    nop

    :pswitch_data_a8
    .packed-switch 0x64
        :pswitch_33
        :pswitch_55
        :pswitch_7b
        :pswitch_81
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 11
    .parameter "uri"
    .parameter "initialValues"
    .parameter "userWhere"
    .parameter "whereArgs"

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/android/providers/drm/DrmProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_DRM"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_14

    .line 362
    new-instance v3, Ljava/lang/SecurityException;

    const-string v4, "Requires DRM permission"

    invoke-direct {v3, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_14
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 367
    .local v2, match:I
    iget-object v3, p0, Lcom/android/providers/drm/DrmProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 369
    .local v1, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    monitor-enter v3

    .line 370
    :try_start_23
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    invoke-direct {p0, p1, v2, p3, v4}, Lcom/android/providers/drm/DrmProvider;->getTableAndWhere(Landroid/net/Uri;ILjava/lang/String;Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;)V

    .line 374
    sget-object v4, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v4, v4, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->table:Ljava/lang/String;

    sget-object v5, Lcom/android/providers/drm/DrmProvider;->sGetTableAndWhereParam:Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;

    iget-object v5, v5, Lcom/android/providers/drm/DrmProvider$GetTableAndWhereOutParameter;->where:Ljava/lang/String;

    invoke-virtual {v1, v4, p2, v5, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 378
    .local v0, count:I
    monitor-exit v3

    .line 380
    return v0

    .line 378
    .end local v0           #count:I
    :catchall_36
    move-exception v4

    monitor-exit v3
    :try_end_38
    .catchall {:try_start_23 .. :try_end_38} :catchall_36

    throw v4
.end method
