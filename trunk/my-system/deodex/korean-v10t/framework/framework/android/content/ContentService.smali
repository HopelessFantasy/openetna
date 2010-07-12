.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode;,
        Landroid/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 5
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 42
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 93
    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    .line 94
    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    .line 95
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    .line 96
    return-void
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .registers 6

    .prologue
    .line 47
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_3
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_12

    new-instance v2, Landroid/content/SyncManager;

    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v2, v3, v4}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_20
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_12} :catch_16

    .line 54
    :cond_12
    :goto_12
    :try_start_12
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v1

    return-object v2

    .line 51
    :catch_16
    move-exception v2

    move-object v0, v2

    .line 52
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_12

    .line 55
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_12 .. :try_end_22} :catchall_20

    throw v2
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/IContentService;
    .registers 4
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 373
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 374
    .local v0, service:Landroid/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 375
    return-object v0
.end method


# virtual methods
.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .registers 7
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 347
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 349
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 350
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_11

    .line 351
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 355
    :cond_11
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 357
    return-void

    .line 355
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_15
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/net/Uri;)V
    .registers 6
    .parameter "uri"

    .prologue
    .line 211
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 213
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 214
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_10

    .line 215
    invoke-virtual {v2, p1}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/net/Uri;)V

    .line 216
    invoke-virtual {v2, p1}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/net/Uri;)V
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 219
    :cond_10
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 221
    return-void

    .line 219
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 60
    monitor-enter p0

    :try_start_1
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_27

    move-result-wide v0

    .line 67
    .local v0, identityToken:J
    :try_start_e
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_1c

    .line 68
    const-string v2, "No SyncManager created!  (Disk full?)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_e .. :try_end_17} :catchall_22

    .line 73
    :goto_17
    :try_start_17
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_27

    .line 75
    monitor-exit p0

    return-void

    .line 70
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_22

    goto :goto_17

    .line 73
    :catchall_22
    move-exception v2

    :try_start_23
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_27
    .catchall {:try_start_23 .. :try_end_27} :catchall_27

    .line 60
    .end local v0           #identityToken:J
    :catchall_27
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getActiveSync()Landroid/content/ActiveSyncInfo;
    .registers 7

    .prologue
    .line 300
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 304
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 305
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1f

    .line 306
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getActiveSync()Landroid/content/ActiveSyncInfo;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_24

    move-result-object v3

    .line 309
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 311
    :goto_1e
    return-object v3

    .line 309
    :cond_1f
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 311
    const/4 v3, 0x0

    goto :goto_1e

    .line 309
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_24
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getListenForNetworkTickles()Z
    .registers 7

    .prologue
    .line 255
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 259
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 260
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1f

    .line 261
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getListenForNetworkTickles()Z
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_24

    move-result v3

    .line 264
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 266
    :goto_1e
    return v3

    .line 264
    :cond_1f
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 266
    const/4 v3, 0x0

    goto :goto_1e

    .line 264
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_24
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getStatusByAuthority(Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .registers 8
    .parameter "authority"

    .prologue
    .line 315
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 319
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 320
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1f

    .line 321
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->getStatusByAuthority(Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_24

    move-result-object v3

    .line 325
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 327
    :goto_1e
    return-object v3

    .line 325
    :cond_1f
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 327
    const/4 v3, 0x0

    goto :goto_1e

    .line 325
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_24
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncProviderAutomatically(Ljava/lang/String;)Z
    .registers 8
    .parameter "providerName"

    .prologue
    .line 224
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 228
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 229
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_20

    .line 230
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Landroid/content/SyncStorageEngine;->getSyncProviderAutomatically(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_25

    move-result v3

    .line 234
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 236
    :goto_1f
    return v3

    .line 234
    :cond_20
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 236
    const/4 v3, 0x0

    goto :goto_1f

    .line 234
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_25
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isAuthorityPending(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 331
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 335
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 336
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1f

    .line 337
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isAuthorityPending(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_24

    move-result v3

    .line 341
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 343
    :goto_1e
    return v3

    .line 341
    :cond_1f
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 343
    const/4 v3, 0x0

    goto :goto_1e

    .line 341
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_24
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public isSyncActive(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 9
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 284
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 288
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 289
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1f

    .line 290
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_24

    move-result v3

    .line 294
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 296
    :goto_1e
    return v3

    .line 294
    :cond_1f
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 296
    const/4 v3, 0x0

    goto :goto_1e

    .line 294
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_24
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .registers 25
    .parameter "uri"
    .parameter "observer"
    .parameter "observerWantsSelfNotifications"
    .parameter "syncToNetwork"

    .prologue
    .line 122
    const-string v2, "ContentService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 123
    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notifying update of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from observer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", syncToNetwork "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3e
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v11

    .line 130
    .local v11, identityToken:J
    :try_start_42
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v7, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v8, v0

    monitor-enter v8
    :try_end_4d
    .catchall {:try_start_42 .. :try_end_4d} :catchall_b6

    .line 132
    :try_start_4d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v2, v0

    const/4 v4, 0x0

    move-object/from16 v3, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentService$ObserverNode;->collectObservers(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 134
    monitor-exit v8
    :try_end_5d
    .catchall {:try_start_4d .. :try_end_5d} :catchall_b3

    .line 135
    :try_start_5d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 136
    .local v15, numCalls:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_62
    if-ge v10, v15, :cond_106

    .line 137
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/ContentService$ObserverCall;
    :try_end_6a
    .catchall {:try_start_5d .. :try_end_6a} :catchall_b6

    .line 139
    .local v17, oc:Landroid/content/ContentService$ObserverCall;
    :try_start_6a
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v2, v0

    move-object/from16 v0, v17

    iget-boolean v0, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    move v3, v0

    invoke-interface {v2, v3}, Landroid/database/IContentObserver;->onChange(Z)V

    .line 140
    const-string v2, "ContentService"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_b0

    .line 141
    const-string v2, "ContentService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "update at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b0
    .catchall {:try_start_6a .. :try_end_b0} :catchall_b6
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_b0} :catch_bb

    .line 136
    :cond_b0
    :goto_b0
    add-int/lit8 v10, v10, 0x1

    goto :goto_62

    .line 134
    .end local v10           #i:I
    .end local v15           #numCalls:I
    .end local v17           #oc:Landroid/content/ContentService$ObserverCall;
    :catchall_b3
    move-exception v2

    :try_start_b4
    monitor-exit v8
    :try_end_b5
    .catchall {:try_start_b4 .. :try_end_b5} :catchall_b3

    :try_start_b5
    throw v2
    :try_end_b6
    .catchall {:try_start_b5 .. :try_end_b6} :catchall_b6

    .line 166
    .end local v7           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    :catchall_b6
    move-exception v2

    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2

    .line 143
    .restart local v7       #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    .restart local v10       #i:I
    .restart local v15       #numCalls:I
    .restart local v17       #oc:Landroid/content/ContentService$ObserverCall;
    :catch_bb
    move-exception v2

    move-object v9, v2

    .line 144
    .local v9, ex:Landroid/os/RemoteException;
    :try_start_bd
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v2, v0

    monitor-enter v2
    :try_end_c3
    .catchall {:try_start_bd .. :try_end_c3} :catchall_b6

    .line 145
    :try_start_c3
    const-string v3, "ContentService"

    const-string v4, "Found dead observer, removing"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v8

    .line 147
    .local v8, binder:Landroid/os/IBinder;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    move-object v3, v0

    invoke-static {v3}, Landroid/content/ContentService$ObserverNode;->access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v14

    .line 149
    .local v14, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 150
    .local v16, numList:I
    const/4 v13, 0x0

    .local v13, j:I
    :goto_e1
    move v0, v13

    move/from16 v1, v16

    if-ge v0, v1, :cond_101

    .line 151
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 152
    .local v18, oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    move-object v3, v0

    invoke-interface {v3}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    if-ne v3, v8, :cond_fe

    .line 153
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 154
    add-int/lit8 v13, v13, -0x1

    .line 155
    add-int/lit8 v16, v16, -0x1

    .line 150
    :cond_fe
    add-int/lit8 v13, v13, 0x1

    goto :goto_e1

    .line 158
    .end local v18           #oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_101
    monitor-exit v2

    goto :goto_b0

    .end local v8           #binder:Landroid/os/IBinder;
    .end local v13           #j:I
    .end local v14           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v16           #numList:I
    :catchall_103
    move-exception v3

    monitor-exit v2
    :try_end_105
    .catchall {:try_start_c3 .. :try_end_105} :catchall_103

    :try_start_105
    throw v3

    .line 161
    .end local v9           #ex:Landroid/os/RemoteException;
    .end local v17           #oc:Landroid/content/ContentService$ObserverCall;
    :cond_106
    if-eqz p4, :cond_115

    .line 162
    invoke-direct/range {p0 .. p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v19

    .line 163
    .local v19, syncManager:Landroid/content/SyncManager;
    if-eqz v19, :cond_115

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/net/Uri;)V
    :try_end_115
    .catchall {:try_start_105 .. :try_end_115} :catchall_b6

    .line 166
    .end local v19           #syncManager:Landroid/content/SyncManager;
    :cond_115
    invoke-static {v11, v12}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 168
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_3} :catch_5

    move-result v1

    return v1

    .line 82
    :catch_5
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 86
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    :cond_11
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .registers 6
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    .line 100
    if-eqz p3, :cond_4

    if-nez p1, :cond_c

    .line 101
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_c
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 104
    :try_start_f
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1, p3, p2}, Landroid/content/ContentService$ObserverNode;->addObserver(Landroid/net/Uri;Landroid/database/IContentObserver;Z)V

    .line 107
    monitor-exit v0

    .line 108
    return-void

    .line 107
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_f .. :try_end_18} :catchall_16

    throw v1
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .registers 6
    .parameter "callback"

    .prologue
    .line 360
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 362
    .local v0, identityToken:J
    :try_start_4
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 363
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_11

    .line 364
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_11
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 368
    :cond_11
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 370
    return-void

    .line 368
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_15
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setListenForNetworkTickles(Z)V
    .registers 8
    .parameter "flag"

    .prologue
    .line 270
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 274
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 275
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1a

    .line 276
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->setListenForNetworkTickles(Z)V
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    .line 279
    :cond_1a
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 281
    return-void

    .line 279
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_1e
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSyncProviderAutomatically(Ljava/lang/String;Z)V
    .registers 9
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 240
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 244
    .local v0, identityToken:J
    :try_start_d
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 245
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_1b

    .line 246
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1, p2}, Landroid/content/SyncStorageEngine;->setSyncProviderAutomatically(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1b
    .catchall {:try_start_d .. :try_end_1b} :catchall_1f

    .line 250
    :cond_1b
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 252
    return-void

    .line 250
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_1f
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 7
    .parameter "url"
    .parameter "extras"

    .prologue
    .line 190
    invoke-static {p2}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 193
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 195
    .local v0, identityToken:J
    :try_start_7
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 196
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_10

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->startSync(Landroid/net/Uri;Landroid/os/Bundle;)V
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_14

    .line 198
    :cond_10
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 200
    return-void

    .line 198
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_14
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    .line 111
    if-nez p1, :cond_a

    .line 112
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :cond_a
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 115
    :try_start_d
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Landroid/content/ContentService$ObserverNode;->removeObserver(Landroid/database/IContentObserver;)Z

    .line 117
    monitor-exit v0

    .line 118
    return-void

    .line 117
    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_14

    throw v1
.end method
