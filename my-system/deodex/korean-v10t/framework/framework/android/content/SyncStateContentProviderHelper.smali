.class public Landroid/content/SyncStateContentProviderHelper;
.super Ljava/lang/Object;
.source "SyncStateContentProviderHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/SyncStateContentProviderHelper$Provider;
    }
.end annotation


# static fields
.field private static final ACCOUNT_PROJECTION:[Ljava/lang/String; = null

.field private static final ACCOUNT_WHERE:Ljava/lang/String; = "_sync_account = ?"

.field private static final CONTENT_URI:Landroid/net/Uri; = null

.field private static DB_VERSION:J = 0x0L

.field private static final STATE:I = 0x0

.field private static final SYNC_STATE_AUTHORITY:Ljava/lang/String; = "syncstate"

.field private static final SYNC_STATE_TABLE:Ljava/lang/String; = "_sync_state"

.field private static final sURIMatcher:Landroid/content/UriMatcher;


# instance fields
.field private final mInternalProviderInterface:Landroid/content/SyncStateContentProviderHelper$Provider;

.field final mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x0

    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Landroid/content/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    .line 43
    const-string v0, "content://syncstate/state"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/content/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    .line 51
    const-wide/16 v0, 0x2

    sput-wide v0, Landroid/content/SyncStateContentProviderHelper;->DB_VERSION:J

    .line 53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_account"

    aput-object v1, v0, v3

    sput-object v0, Landroid/content/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    .line 56
    sget-object v0, Landroid/content/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    const-string v1, "syncstate"

    const-string v2, "state"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .registers 3
    .parameter "openHelper"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Landroid/content/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 61
    new-instance v0, Landroid/content/SyncStateContentProviderHelper$Provider;

    invoke-direct {v0, p0}, Landroid/content/SyncStateContentProviderHelper$Provider;-><init>(Landroid/content/SyncStateContentProviderHelper;)V

    iput-object v0, p0, Landroid/content/SyncStateContentProviderHelper;->mInternalProviderInterface:Landroid/content/SyncStateContentProviderHelper$Provider;

    .line 62
    return-void
.end method

.method static synthetic access$000()Landroid/content/UriMatcher;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Landroid/content/SyncStateContentProviderHelper;->sURIMatcher:Landroid/content/UriMatcher;

    return-object v0
.end method

.method static synthetic access$100()Landroid/net/Uri;
    .registers 1

    .prologue
    .line 35
    sget-object v0, Landroid/content/SyncStateContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public asContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Landroid/content/SyncStateContentProviderHelper;->mInternalProviderInterface:Landroid/content/SyncStateContentProviderHelper$Provider;

    return-object v0
.end method

.method public copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 14
    .parameter "dbSrc"
    .parameter "dbDest"
    .parameter "account"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v3, 0x0

    const-string v1, "_sync_state"

    const-string v7, "_sync_account"

    .line 172
    new-array v4, v6, [Ljava/lang/String;

    aput-object p3, v4, v3

    .line 173
    .local v4, whereArgs:[Ljava/lang/String;
    const-string v0, "_sync_state"

    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "_sync_account"

    aput-object v7, v2, v3

    const-string v0, "data"

    aput-object v0, v2, v6

    const-string v3, "_sync_account = ?"

    move-object v0, p1

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 176
    .local v8, c:Landroid/database/Cursor;
    :try_start_21
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_47

    .line 177
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 178
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "_sync_account"

    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v0, "data"

    const/4 v1, 0x1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 180
    const-string v0, "_sync_state"

    const-string v1, "_sync_account"

    invoke-virtual {p2, v0, v1, v9}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_47
    .catchall {:try_start_21 .. :try_end_47} :catchall_4b

    .line 183
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_47
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 185
    return-void

    .line 183
    :catchall_4b
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    const-string v3, "version"

    .line 69
    const-string v1, "DROP TABLE IF EXISTS _sync_state"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 70
    const-string v1, "CREATE TABLE _sync_state (_id INTEGER PRIMARY KEY,_sync_account TEXT,data TEXT,UNIQUE(_sync_account));"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 77
    const-string v1, "DROP TABLE IF EXISTS _sync_state_metadata"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 78
    const-string v1, "CREATE TABLE _sync_state_metadata (version INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 81
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "version"

    sget-wide v1, Landroid/content/SyncStateContentProviderHelper;->DB_VERSION:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 83
    const-string v1, "_sync_state_metadata"

    const-string v2, "version"

    invoke-virtual {p1, v1, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 84
    return-void
.end method

.method public discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 7
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v1, 0x0

    const-string v3, "_sync_state"

    .line 203
    if-eqz p2, :cond_13

    .line 204
    const-string v0, "_sync_state"

    const-string v0, "_sync_account = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v3, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 208
    :goto_12
    return-void

    .line 206
    :cond_13
    const-string v0, "_sync_state"

    invoke-virtual {p1, v3, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_12
.end method

.method public matches(Landroid/net/Uri;)Z
    .registers 4
    .parameter "url"

    .prologue
    .line 158
    const-string v0, "syncstate"

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public onAccountsChanged([Ljava/lang/String;)V
    .registers 12
    .parameter "accounts"

    .prologue
    const/4 v3, 0x0

    const-string v1, "_sync_state"

    .line 188
    iget-object v2, p0, Landroid/content/SyncStateContentProviderHelper;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 189
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const-string v2, "_sync_state"

    sget-object v2, Landroid/content/SyncStateContentProviderHelper;->ACCOUNT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 191
    .local v9, c:Landroid/database/Cursor;
    :cond_15
    :goto_15
    :try_start_15
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 192
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, account:Ljava/lang/String;
    invoke-static {p1, v8}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 194
    const-string v1, "_sync_state"

    const-string v2, "_sync_account = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_34

    goto :goto_15

    .line 198
    .end local v8           #account:Ljava/lang/String;
    :catchall_34
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_39
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 200
    return-void
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 6
    .parameter "db"

    .prologue
    .line 87
    const-string v2, "select version from _sync_state_metadata"

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0

    .line 89
    .local v0, version:J
    sget-wide v2, Landroid/content/SyncStateContentProviderHelper;->DB_VERSION:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    .line 90
    invoke-virtual {p0, p1}, Landroid/content/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 92
    :cond_10
    return-void
.end method

.method public readSyncDataBytes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[B
    .registers 12
    .parameter "db"
    .parameter "account"

    .prologue
    const/4 v2, 0x0

    .line 214
    const-string v1, "_sync_state"

    const-string v3, "_sync_account = ?"

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 217
    .local v8, c:Landroid/database/Cursor;
    :try_start_13
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 218
    const-string v0, "data"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_2c

    move-result-object v0

    .line 221
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 223
    :goto_26
    return-object v0

    .line 221
    :cond_27
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    .line 223
    goto :goto_26

    .line 221
    :catchall_2c
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public writeSyncDataBytes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B)V
    .registers 9
    .parameter "db"
    .parameter "account"
    .parameter "data"

    .prologue
    .line 230
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 231
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 232
    const-string v1, "_sync_state"

    const-string v2, "_sync_account = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 233
    return-void
.end method
