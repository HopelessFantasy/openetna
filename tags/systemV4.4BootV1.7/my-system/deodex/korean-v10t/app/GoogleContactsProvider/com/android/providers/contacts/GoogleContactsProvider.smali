.class public Lcom/android/providers/contacts/GoogleContactsProvider;
.super Lcom/android/providers/contacts/LgeContactsProvider;
.source "GoogleContactsProvider.java"


# static fields
.field private static final ACTION_PURGE_CONTACTS:Ljava/lang/String; = "com.android.providers.contacts.PURGE_CONTACTS"

.field private static final PURGE_CONTACTS_DELAY_IN_MS:I = 0x7530

.field private static final PURGE_UNSYNCED_CONTACTS_SQL:Ljava/lang/String; = "DELETE FROM people WHERE (_id IN (   SELECT person    FROM (     SELECT MAX(should_sync) AS max_should_sync, person      FROM (       SELECT should_sync, person        FROM groupmembership AS gm          OUTER JOIN groups AS g          ON (gm.group_id=g._id            OR (gm.group_sync_id=g._sync_id                AND gm.group_sync_account=g._sync_account)))        GROUP BY person)    WHERE max_should_sync=0)  OR _id NOT IN (SELECT person FROM groupmembership)) AND _sync_dirty=0  AND _sync_account=?"


# instance fields
.field private mAlarmService:Landroid/app/AlarmManager;

.field private mSyncAdapter:Landroid/content/SyncAdapter;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/providers/contacts/LgeContactsProvider;-><init>()V

    .line 76
    iput-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mSyncAdapter:Landroid/content/SyncAdapter;

    .line 77
    iput-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mAlarmService:Landroid/app/AlarmManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/contacts/GoogleContactsProvider;Ljava/lang/String;)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/GoogleContactsProvider;->purgeContacts(Ljava/lang/String;)V

    return-void
.end method

.method private ensureAlarmService()V
    .registers 3

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mAlarmService:Landroid/app/AlarmManager;

    if-nez v0, :cond_12

    .line 132
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mAlarmService:Landroid/app/AlarmManager;

    .line 134
    :cond_12
    return-void
.end method

.method private purgeContacts(Ljava/lang/String;)V
    .registers 14
    .parameter "account"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->isTemporary()Z

    move-result v8

    if-eqz v8, :cond_10

    .line 144
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string v9, "this must not be called on temp providers"

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 146
    :cond_10
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 147
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 149
    :try_start_17
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "syncEverything"

    invoke-static {v8, p1, v9}, Landroid/provider/Contacts$Settings;->getSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 151
    .local v7, value:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_83

    const-string v8, "0"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_83

    move v4, v11

    .line 152
    .local v4, shouldSyncEverything:Z
    :goto_34
    if-nez v4, :cond_41

    .line 153
    const-string v8, "DELETE FROM people WHERE (_id IN (   SELECT person    FROM (     SELECT MAX(should_sync) AS max_should_sync, person      FROM (       SELECT should_sync, person        FROM groupmembership AS gm          OUTER JOIN groups AS g          ON (gm.group_id=g._id            OR (gm.group_sync_id=g._sync_id                AND gm.group_sync_account=g._sync_account)))        GROUP BY person)    WHERE max_should_sync=0)  OR _id NOT IN (SELECT person FROM groupmembership)) AND _sync_dirty=0  AND _sync_account=?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    invoke-virtual {v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    :cond_41
    invoke-static {}, Lcom/google/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    .line 158
    .local v2, feedsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/android/providers/contacts/ContactsSyncAdapter;->getGroupsFeedForAccount(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    invoke-static {v8, p1, v2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->addContactsFeedsToSync(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Collection;)V

    .line 161
    invoke-direct {p0, p1}, Lcom/android/providers/contacts/GoogleContactsProvider;->readSyncData(Ljava/lang/String;)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;

    move-result-object v5

    .line 162
    .local v5, syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    if-eqz v5, :cond_8a

    .line 163
    iget-object v8, v5, Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;->feedData:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 165
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;>;"
    const/4 v6, 0x0

    .line 166
    .local v6, updatedSyncData:Z
    :cond_68
    :goto_68
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 169
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_68

    .line 170
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 171
    const/4 v6, 0x1

    goto :goto_68

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;"
    .end local v2           #feedsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;>;"
    .end local v4           #shouldSyncEverything:Z
    .end local v5           #syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .end local v6           #updatedSyncData:Z
    :cond_83
    move v4, v10

    .line 151
    goto :goto_34

    .line 174
    .restart local v2       #feedsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v3       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;>;"
    .restart local v4       #shouldSyncEverything:Z
    .restart local v5       #syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .restart local v6       #updatedSyncData:Z
    :cond_85
    if-eqz v6, :cond_8a

    .line 175
    invoke-direct {p0, p1, v5}, Lcom/android/providers/contacts/GoogleContactsProvider;->writeSyncData(Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;)V

    .line 178
    .end local v3           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData$FeedData;>;>;"
    .end local v6           #updatedSyncData:Z
    :cond_8a
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_8d
    .catchall {:try_start_17 .. :try_end_8d} :catchall_91

    .line 180
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 182
    return-void

    .line 180
    .end local v2           #feedsToSync:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4           #shouldSyncEverything:Z
    .end local v5           #syncData:Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .end local v7           #value:Ljava/lang/String;
    :catchall_91
    move-exception v8

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v8
.end method

.method private readSyncData(Ljava/lang/String;)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    .registers 12
    .parameter "account"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 185
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-nez v0, :cond_15

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "you can only call this from within a transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_15
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "_sync_state"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "data"

    aput-object v3, v2, v6

    const-string v3, "_sync_account=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 191
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 192
    .local v9, data:[B
    :try_start_2e
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 193
    :cond_39
    invoke-static {v9}, Lcom/android/providers/contacts/ContactsSyncAdapter;->newGDataSyncDataFromBytes([B)Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;
    :try_end_3c
    .catchall {:try_start_2e .. :try_end_3c} :catchall_41

    move-result-object v0

    .line 195
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_41
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private schedulePurge(Ljava/lang/String;)V
    .registers 10
    .parameter "account"

    .prologue
    const/4 v3, 0x0

    .line 117
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 118
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "this must not be called on temp providers"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 120
    :cond_f
    invoke-direct {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->ensureAlarmService()V

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.providers.contacts.PURGE_CONTACTS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 122
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "account"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 123
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 125
    .local v1, pendingIntent:Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mAlarmService:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 128
    return-void
.end method

.method private writeSyncData(Ljava/lang/String;Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;)V
    .registers 10
    .parameter "account"
    .parameter "syncData"

    .prologue
    const-string v6, "_sync_state"

    const-string v5, "_sync_account"

    .line 200
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 201
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v2

    if-nez v2, :cond_16

    .line 202
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "you can only call this from within a transaction"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 204
    :cond_16
    const-string v2, "_sync_state"

    const-string v2, "_sync_account=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v6, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 205
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 206
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "data"

    invoke-static {p2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->newBytesFromGDataSyncData(Lcom/google/android/providers/AbstractGDataSyncAdapter$GDataSyncData;)[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 207
    const-string v2, "_sync_account"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v2, "_sync_state"

    const-string v2, "_sync_account"

    invoke-virtual {v0, v6, v5, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 209
    return-void
.end method


# virtual methods
.method public declared-synchronized getSyncAdapter()Landroid/content/SyncAdapter;
    .registers 3

    .prologue
    .line 95
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mSyncAdapter:Landroid/content/SyncAdapter;

    if-eqz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mSyncAdapter:Landroid/content/SyncAdapter;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_17

    .line 100
    :goto_7
    monitor-exit p0

    return-object v0

    .line 99
    :cond_9
    :try_start_9
    new-instance v0, Lcom/android/providers/contacts/ContactsSyncAdapter;

    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/providers/contacts/ContactsSyncAdapter;-><init>(Landroid/content/Context;Landroid/content/SyncableContentProvider;)V

    iput-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mSyncAdapter:Landroid/content/SyncAdapter;

    .line 100
    iget-object v0, p0, Lcom/android/providers/contacts/GoogleContactsProvider;->mSyncAdapter:Landroid/content/SyncAdapter;
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_17

    goto :goto_7

    .line 95
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    .line 81
    new-instance v0, Lcom/android/providers/contacts/GoogleContactsProvider$1;

    invoke-direct {v0, p0}, Lcom/android/providers/contacts/GoogleContactsProvider$1;-><init>(Lcom/android/providers/contacts/GoogleContactsProvider;)V

    .line 89
    .local v0, receiver:Landroid/content/BroadcastReceiver;
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.providers.contacts.PURGE_CONTACTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 90
    invoke-super {p0}, Lcom/android/providers/contacts/LgeContactsProvider;->onCreate()Z

    move-result v1

    return v1
.end method

.method protected onLocalChangesForAccount(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 4
    .parameter "resolver"
    .parameter "account"
    .parameter "groupsModified"

    .prologue
    .line 106
    invoke-static {p1, p2}, Lcom/android/providers/contacts/ContactsSyncAdapter;->updateSubscribedFeeds(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 107
    if-eqz p3, :cond_8

    .line 108
    invoke-direct {p0, p2}, Lcom/android/providers/contacts/GoogleContactsProvider;->schedulePurge(Ljava/lang/String;)V

    .line 110
    :cond_8
    return-void
.end method

.method public onSyncStop(Landroid/content/SyncContext;Z)V
    .registers 4
    .parameter "context"
    .parameter "success"

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Lcom/android/providers/contacts/LgeContactsProvider;->onSyncStop(Landroid/content/SyncContext;Z)V

    .line 139
    invoke-virtual {p0}, Lcom/android/providers/contacts/GoogleContactsProvider;->getSyncingAccount()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/providers/contacts/GoogleContactsProvider;->purgeContacts(Ljava/lang/String;)V

    .line 140
    return-void
.end method
