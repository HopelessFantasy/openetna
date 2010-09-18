.class public Lcom/android/internal/net/DbSSLSessionCache;
.super Ljava/lang/Object;
.source "DbSSLSessionCache.java"

# interfaces
.implements Lorg/apache/harmony/xnet/provider/jsse/SSLClientSessionCache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;
    }
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "ssl_sessions.db"

.field public static final DATABASE_VERSION:I = 0x2

.field public static final MAX_CACHE_SIZE:I = 0x100

.field public static final PROJECTION:[Ljava/lang/String; = null

.field private static final SSL_CACHE_HOSTPORT:Ljava/lang/String; = "hostport"

.field public static final SSL_CACHE_HOSTPORT_COL:I = 0x1

.field private static final SSL_CACHE_ID:Ljava/lang/String; = "_id"

.field public static final SSL_CACHE_ID_COL:I = 0x0

.field private static final SSL_CACHE_SESSION:Ljava/lang/String; = "session"

.field public static final SSL_CACHE_SESSION_COL:I = 0x2

.field public static final SSL_CACHE_TABLE:Ljava/lang/String; = "ssl_sessions"

.field private static final SSL_CACHE_TIME_SEC:Ljava/lang/String; = "time_sec"

.field public static final SSL_CACHE_TIME_SEC_COL:I = 0x3

.field private static final TAG:Ljava/lang/String; = "DbSSLSessionCache"

.field private static final sInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/DbSSLSessionCache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

.field private final mExternalCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field

.field private mNeedsCacheLoad:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "hostport"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "session"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "time_sec"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/internal/net/DbSSLSessionCache;->PROJECTION:[Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/DbSSLSessionCache;->sInstances:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .parameter "activityContext"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/net/DbSSLSessionCache;->mNeedsCacheLoad:Z

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 115
    .local v0, appContext:Landroid/content/Context;
    new-instance v1, Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;)V
    .registers 3
    .parameter "database"

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/DbSSLSessionCache;->mNeedsCacheLoad:Z

    .line 125
    iput-object p1, p0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    .line 126
    return-void
.end method

.method public static declared-synchronized getInstanceForPackage(Landroid/content/Context;)Lcom/android/internal/net/DbSSLSessionCache;
    .registers 5
    .parameter "context"

    .prologue
    .line 95
    const-class v2, Lcom/android/internal/net/DbSSLSessionCache;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, packageName:Ljava/lang/String;
    sget-object v3, Lcom/android/internal/net/DbSSLSessionCache;->sInstances:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 97
    sget-object v3, Lcom/android/internal/net/DbSSLSessionCache;->sInstances:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/internal/net/DbSSLSessionCache;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_26

    move-object v3, p0

    .line 101
    :goto_18
    monitor-exit v2

    return-object v3

    .line 99
    .restart local p0
    :cond_1a
    :try_start_1a
    new-instance v0, Lcom/android/internal/net/DbSSLSessionCache;

    invoke-direct {v0, p0}, Lcom/android/internal/net/DbSSLSessionCache;-><init>(Landroid/content/Context;)V

    .line 100
    .local v0, cache:Lcom/android/internal/net/DbSSLSessionCache;
    sget-object v3, Lcom/android/internal/net/DbSSLSessionCache;->sInstances:Ljava/util/Map;

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_26

    move-object v3, v0

    .line 101
    goto :goto_18

    .line 95
    .end local v0           #cache:Lcom/android/internal/net/DbSSLSessionCache;
    .end local v1           #packageName:Ljava/lang/String;
    .end local p0
    :catchall_26
    move-exception v3

    monitor-exit v2

    throw v3
.end method


# virtual methods
.method public clear()V
    .registers 6

    .prologue
    .line 239
    monitor-enter p0

    .line 241
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 242
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/net/DbSSLSessionCache;->mNeedsCacheLoad:Z

    .line 243
    iget-object v1, p0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    invoke-virtual {v1}, Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "ssl_sessions"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_22
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_16} :catch_18

    .line 249
    :goto_16
    :try_start_16
    monitor-exit p0

    .line 250
    return-void

    .line 245
    :catch_18
    move-exception v1

    move-object v0, v1

    .line 246
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "DbSSLSessionCache"

    const-string v2, "Error removing SSL cached entries "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_16

    .line 249
    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_22
    move-exception v1

    monitor-exit p0
    :try_end_24
    .catchall {:try_start_16 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public getSessionData(Ljava/lang/String;I)[B
    .registers 24
    .parameter "host"
    .parameter "port"

    .prologue
    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    move-object v2, v0

    if-nez v2, :cond_9

    .line 188
    const/4 v2, 0x0

    .line 230
    .end local p0
    :goto_8
    return-object v2

    .line 190
    .restart local p0
    :cond_9
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v20

    monitor-enter v20

    .line 191
    :try_start_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mNeedsCacheLoad:Z

    move v2, v0

    if-eqz v2, :cond_82

    .line 194
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/net/DbSSLSessionCache;->mNeedsCacheLoad:Z

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1e
    .catchall {:try_start_e .. :try_end_1e} :catchall_fc

    move-result-wide v15

    .line 197
    .local v15, t0:J
    const/4 v10, 0x0

    .line 199
    .local v10, cur:Landroid/database/Cursor;
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    const-string v3, "ssl_sessions"

    sget-object v4, Lcom/android/internal/net/DbSSLSessionCache;->PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 201
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_50

    .line 203
    :cond_3c
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 204
    .local v13, hostPort:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 206
    .local v19, value:Ljava/lang/String;
    if-eqz v13, :cond_4a

    if-nez v19, :cond_af

    .line 212
    :cond_4a
    :goto_4a
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4d
    .catchall {:try_start_20 .. :try_end_4d} :catchall_ff
    .catch Landroid/database/SQLException; {:try_start_20 .. :try_end_4d} :catch_c0

    move-result v2

    if-nez v2, :cond_3c

    .line 218
    .end local v13           #hostPort:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :cond_50
    if-eqz v10, :cond_55

    .line 219
    :try_start_52
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_55
    const-string v2, "DbSSLSessionCache"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 223
    .local v17, t1:J
    const-string v2, "DbSSLSessionCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADED CACHED SSL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v17, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .end local v10           #cur:Landroid/database/Cursor;
    .end local v15           #t0:J
    .end local v17           #t1:J
    :cond_82
    :goto_82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v2

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 230
    .local v14, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    monitor-exit v20
    :try_end_ab
    .catchall {:try_start_52 .. :try_end_ab} :catchall_fc

    move-object/from16 v2, p0

    goto/16 :goto_8

    .line 210
    .end local v14           #key:Ljava/lang/String;
    .restart local v10       #cur:Landroid/database/Cursor;
    .restart local v13       #hostPort:Ljava/lang/String;
    .restart local v15       #t0:J
    .restart local v19       #value:Ljava/lang/String;
    .restart local p0
    :cond_af
    :try_start_af
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/codec/binary/Base64;->decodeBase64([B)[B

    move-result-object v11

    .line 211
    .local v11, der:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v2, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_bf
    .catchall {:try_start_af .. :try_end_bf} :catchall_ff
    .catch Landroid/database/SQLException; {:try_start_af .. :try_end_bf} :catch_c0

    goto :goto_4a

    .line 215
    .end local v11           #der:[B
    .end local v13           #hostPort:Ljava/lang/String;
    .end local v19           #value:Ljava/lang/String;
    :catch_c0
    move-exception v2

    move-object v12, v2

    .line 216
    .local v12, ex:Landroid/database/SQLException;
    :try_start_c2
    const-string v2, "DbSSLSessionCache"

    const-string v3, "Error loading SSL cached entries "

    invoke-static {v2, v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c9
    .catchall {:try_start_c2 .. :try_end_c9} :catchall_ff

    .line 218
    if-eqz v10, :cond_ce

    .line 219
    :try_start_cb
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_ce
    const-string v2, "DbSSLSessionCache"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_82

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 223
    .restart local v17       #t1:J
    const-string v2, "DbSSLSessionCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LOADED CACHED SSL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sub-long v4, v17, v15

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_82

    .line 231
    .end local v10           #cur:Landroid/database/Cursor;
    .end local v12           #ex:Landroid/database/SQLException;
    .end local v15           #t0:J
    .end local v17           #t1:J
    .end local p0
    :catchall_fc
    move-exception v2

    monitor-exit v20
    :try_end_fe
    .catchall {:try_start_cb .. :try_end_fe} :catchall_fc

    throw v2

    .line 218
    .restart local v10       #cur:Landroid/database/Cursor;
    .restart local v15       #t0:J
    .restart local p0
    :catchall_ff
    move-exception v2

    if-eqz v10, :cond_105

    .line 219
    :try_start_102
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 221
    :cond_105
    const-string v3, "DbSSLSessionCache"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_132

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 223
    .restart local v17       #t1:J
    const-string v3, "DbSSLSessionCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LOADED CACHED SSL "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-long v5, v17, v15

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v17           #t1:J
    :cond_132
    throw v2
    :try_end_133
    .catchall {:try_start_102 .. :try_end_133} :catchall_fc
.end method

.method public getSessionData([B)[B
    .registers 3
    .parameter "id"

    .prologue
    .line 255
    const/4 v0, 0x0

    return-object v0
.end method

.method public putSessionData(Ljavax/net/ssl/SSLSession;[B)V
    .registers 27
    .parameter "session"
    .parameter "der"

    .prologue
    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    move-object v4, v0

    if-nez v4, :cond_8

    .line 178
    :goto_7
    return-void

    .line 132
    :cond_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    monitor-enter v23

    .line 133
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v14

    .line 134
    .local v14, db:Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/16 v5, 0x100

    if-ne v4, v5, :cond_5d

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mDatabaseHelper:Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/internal/net/DbSSLSessionCache$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const-string v5, "ssl_sessions"

    sget-object v6, Lcom/android/internal/net/DbSSLSessionCache;->PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "time_sec"

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 139
    .local v13, byTime:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_116

    .line 141
    const/4 v4, 0x1

    invoke-interface {v13, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 142
    .local v16, hostPort:Ljava/lang/String;
    const-string v4, "ssl_sessions"

    const-string v5, "hostport= ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v16, v6, v7

    invoke-virtual {v14, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    .end local v13           #byTime:Landroid/database/Cursor;
    .end local v16           #hostPort:Ljava/lang/String;
    :cond_5d
    :goto_5d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 154
    .local v18, t0:J
    new-instance v12, Ljava/lang/String;

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/codec/binary/Base64;->encodeBase64([B)[B

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/lang/String;-><init>([B)V

    .line 155
    .local v12, b64:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 157
    .local v17, key:Ljava/lang/String;
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v22, values:Landroid/content/ContentValues;
    const-string v4, "hostport"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    const-string v4, "session"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v4, "time_sec"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/net/DbSSLSessionCache;->mExternalCache:Ljava/util/Map;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c2
    .catchall {:try_start_d .. :try_end_c2} :catchall_113

    .line 165
    :try_start_c2
    const-string v4, "ssl_sessions"

    const/4 v5, 0x0

    move-object v0, v14

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_cd
    .catchall {:try_start_c2 .. :try_end_cd} :catchall_113
    .catch Landroid/database/SQLException; {:try_start_c2 .. :try_end_cd} :catch_122

    .line 171
    :goto_cd
    :try_start_cd
    const-string v4, "DbSSLSessionCache"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_110

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 173
    .local v20, t1:J
    const-string v4, "DbSSLSessionCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New SSL session "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {p1 .. p1}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DER len: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    array-length v0, v0

    move v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v20, v18

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .end local v20           #t1:J
    :cond_110
    monitor-exit v23

    goto/16 :goto_7

    .end local v12           #b64:Ljava/lang/String;
    .end local v14           #db:Landroid/database/sqlite/SQLiteDatabase;
    .end local v17           #key:Ljava/lang/String;
    .end local v18           #t0:J
    .end local v22           #values:Landroid/content/ContentValues;
    :catchall_113
    move-exception v4

    monitor-exit v23
    :try_end_115
    .catchall {:try_start_cd .. :try_end_115} :catchall_113

    throw v4

    .line 146
    .restart local v13       #byTime:Landroid/database/Cursor;
    .restart local v14       #db:Landroid/database/sqlite/SQLiteDatabase;
    :cond_116
    :try_start_116
    const-string v4, "DbSSLSessionCache"

    const-string v5, "No rows found"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/net/DbSSLSessionCache;->clear()V

    goto/16 :goto_5d

    .line 166
    .end local v13           #byTime:Landroid/database/Cursor;
    .restart local v12       #b64:Ljava/lang/String;
    .restart local v17       #key:Ljava/lang/String;
    .restart local v18       #t0:J
    .restart local v22       #values:Landroid/content/ContentValues;
    :catch_122
    move-exception v4

    move-object v15, v4

    .line 169
    .local v15, ex:Landroid/database/SQLException;
    const-string v4, "DbSSLSessionCache"

    const-string v5, "Ignoring SQL exception when caching session"

    invoke-static {v4, v5, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_12b
    .catchall {:try_start_116 .. :try_end_12b} :catchall_113

    goto :goto_cd
.end method
