.class public abstract Landroid/content/AbstractSyncableContentProvider;
.super Landroid/content/SyncableContentProvider;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final SYNC_ACCOUNT_WHERE_CLAUSE:Ljava/lang/String; = "_sync_account=?"

.field private static final TAG:Ljava/lang/String; = "SyncableContentProvider"

.field private static final sAccountProjection:[Ljava/lang/String;


# instance fields
.field private mAccountMonitor:Landroid/accounts/AccountMonitor;

.field private mContainsDiffs:Z

.field private final mContentUri:Landroid/net/Uri;

.field private mCurrentMerger:Landroid/content/AbstractTableMerger;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsMergeCancelled:Z

.field private mIsTemporary:Z

.field protected mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private mSyncState:Landroid/content/SyncStateContentProviderHelper;

.field private mSyncingAccount:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_sync_account"

    aput-object v2, v0, v1

    sput-object v0, Landroid/content/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;)V
    .registers 6
    .parameter "dbName"
    .parameter "dbVersion"
    .parameter "contentUri"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0}, Landroid/content/SyncableContentProvider;-><init>()V

    .line 40
    iput-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    .line 46
    iput-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mCurrentMerger:Landroid/content/AbstractTableMerger;

    .line 47
    iput-boolean v0, p0, Landroid/content/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 72
    iput-object p1, p0, Landroid/content/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    .line 73
    iput p2, p0, Landroid/content/AbstractSyncableContentProvider;->mDatabaseVersion:I

    .line 74
    iput-object p3, p0, Landroid/content/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    .line 75
    iput-boolean v0, p0, Landroid/content/AbstractSyncableContentProvider;->mIsTemporary:Z

    .line 76
    invoke-virtual {p0, v0}, Landroid/content/AbstractSyncableContentProvider;->setContainsDiffs(Z)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Landroid/content/AbstractSyncableContentProvider;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDatabaseVersion:I

    return v0
.end method

.method static synthetic access$100(Landroid/content/AbstractSyncableContentProvider;)Landroid/content/SyncStateContentProviderHelper;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/AbstractSyncableContentProvider;)Landroid/net/Uri;
    .registers 2
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method


# virtual methods
.method public final beginTransaction()V
    .registers 2

    .prologue
    .line 262
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 263
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 264
    return-void
.end method

.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 98
    return-void
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 11
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 384
    array-length v4, p2

    .line 385
    .local v4, size:I
    const/4 v0, 0x0

    .line 386
    .local v0, completed:I
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v5, p1}, Landroid/content/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v2

    .line 387
    .local v2, isSyncStateUri:Z
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v5

    iput-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 388
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 390
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    if-ge v1, v4, :cond_46

    .line 392
    :try_start_18
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v5

    if-eqz v5, :cond_33

    if-eqz v2, :cond_33

    .line 393
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v5}, Landroid/content/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 398
    .local v3, result:Landroid/net/Uri;
    :goto_2c
    if-eqz v3, :cond_30

    .line 399
    add-int/lit8 v0, v0, 0x1

    .line 390
    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 395
    .end local v3           #result:Landroid/net/Uri;
    :cond_33
    aget-object v5, p2, v1

    invoke-virtual {p0, p1, v5}, Landroid/content/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .line 396
    .restart local v3       #result:Landroid/net/Uri;
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z
    :try_end_3e
    .catchall {:try_start_18 .. :try_end_3e} :catchall_3f

    goto :goto_2c

    .line 404
    .end local v3           #result:Landroid/net/Uri;
    :catchall_3f
    move-exception v5

    iget-object v6, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 402
    :cond_46
    :try_start_46
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_4b
    .catchall {:try_start_46 .. :try_end_4b} :catchall_3f

    .line 404
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 406
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v5

    if-nez v5, :cond_68

    if-ne v0, v4, :cond_68

    .line 407
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v7

    invoke-virtual {v5, p1, v6, v7}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 410
    :cond_68
    return v0
.end method

.method public changeRequiresLocalSync(Landroid/net/Uri;)Z
    .registers 3
    .parameter "uri"

    .prologue
    .line 419
    const/4 v0, 0x1

    return v0
.end method

.method public close()V
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz v0, :cond_9

    .line 88
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    .line 90
    :cond_9
    return-void
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 325
    const/4 v1, 0x0

    .line 326
    .local v1, successful:Z
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->beginTransaction()V

    .line 328
    :try_start_4
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    move-result v0

    .line 329
    .local v0, ret:I
    const/4 v1, 0x1

    .line 332
    invoke-virtual {p0, v1}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    return v0

    .end local v0           #ret:I
    :catchall_d
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter "table"
    .parameter "accountColumnName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, accounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const/4 v3, 0x0

    .line 609
    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 610
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    sget-object v2, Landroid/content/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    move-object v1, p2

    move-object v4, v3

    move-object v5, p3

    move-object v6, v3

    move-object v7, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 613
    .local v9, c:Landroid/database/Cursor;
    :cond_12
    :goto_12
    :try_start_12
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 614
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 615
    .local v8, account:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 618
    invoke-interface {p1, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 620
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v8, v2, v3

    invoke-virtual {v0, p2, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_12 .. :try_end_45} :catchall_46

    goto :goto_12

    .line 629
    .end local v8           #account:Ljava/lang/String;
    :catchall_46
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_4b
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 631
    return-void
.end method

.method public final endTransaction(Z)V
    .registers 4
    .parameter "successful"

    .prologue
    .line 278
    if-eqz p1, :cond_7

    .line 281
    :try_start_2
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7
    .catchall {:try_start_2 .. :try_end_7} :catchall_d

    .line 284
    :cond_7
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 286
    return-void

    .line 284
    :catchall_d
    move-exception v0

    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v0
.end method

.method public getContainsDiffs()Z
    .registers 2

    .prologue
    .line 211
    iget-boolean v0, p0, Landroid/content/AbstractSyncableContentProvider;->mContainsDiffs:Z

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_c

    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 207
    :cond_c
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<+",
            "Landroid/content/AbstractTableMerger;",
            ">;"
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSyncingAccount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 461
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncingAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getTemporaryInstance()Landroid/content/AbstractSyncableContentProvider;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 181
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AbstractSyncableContentProvider;
    :try_end_c
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_c} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_c} :catch_4a

    .line 192
    .local v1, temp:Landroid/content/AbstractSyncableContentProvider;
    iput-boolean v3, v1, Landroid/content/AbstractSyncableContentProvider;->mIsTemporary:Z

    .line 193
    invoke-virtual {v1, v3}, Landroid/content/AbstractSyncableContentProvider;->setContainsDiffs(Z)V

    .line 194
    new-instance v2, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v1, v4, v4}, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;-><init>(Landroid/content/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 195
    new-instance v2, Landroid/content/SyncStateContentProviderHelper;

    iget-object v3, v1, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v2, v3}, Landroid/content/SyncStateContentProviderHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v2, v1, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    .line 196
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 197
    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    iget-object v3, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    iget-object v4, v1, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getSyncingAccount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/SyncStateContentProviderHelper;->copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 202
    :cond_3f
    return-object v1

    .line 182
    .end local v1           #temp:Landroid/content/AbstractSyncableContentProvider;
    :catch_40
    move-exception v2

    move-object v0, v2

    .line 183
    .local v0, e:Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "unable to instantiate class, this should never happen"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 185
    .end local v0           #e:Ljava/lang/InstantiationException;
    :catch_4a
    move-exception v2

    move-object v0, v2

    .line 186
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "IllegalAccess while instantiating class, this should never happen"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic getTemporaryInstance()Landroid/content/SyncableContentProvider;
    .registers 2

    .prologue
    .line 28
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getTemporaryInstance()Landroid/content/AbstractSyncableContentProvider;

    move-result-object v0

    return-object v0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 355
    const/4 v1, 0x0

    .line 356
    .local v1, successful:Z
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->beginTransaction()V

    .line 358
    :try_start_4
    invoke-virtual {p0, p1, p2}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    move-result-object v0

    .line 359
    .local v0, ret:Landroid/net/Uri;
    const/4 v1, 0x1

    .line 362
    invoke-virtual {p0, v1}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    return-object v0

    .end local v0           #ret:Landroid/net/Uri;
    :catchall_d
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method public isMergeCancelled()Z
    .registers 2

    .prologue
    .line 525
    iget-boolean v0, p0, Landroid/content/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    return v0
.end method

.method protected isTemporary()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Landroid/content/AbstractSyncableContentProvider;->mIsTemporary:Z

    return v0
.end method

.method public merge(Landroid/content/SyncContext;Landroid/content/SyncableContentProvider;Landroid/content/TempProviderSyncResult;Landroid/content/SyncResult;)V
    .registers 15
    .parameter "context"
    .parameter "diffs"
    .parameter "result"
    .parameter "syncResult"

    .prologue
    .line 476
    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 477
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 479
    :try_start_9
    monitor-enter p0
    :try_end_a
    .catchall {:try_start_9 .. :try_end_a} :catchall_38

    .line 480
    const/4 v1, 0x0

    :try_start_b
    iput-boolean v1, p0, Landroid/content/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 481
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_35

    .line 482
    :try_start_e
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getMergers()Ljava/lang/Iterable;
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_38

    move-result-object v9

    .line 484
    .local v9, mergers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Landroid/content/AbstractTableMerger;>;"
    :try_start_12
    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_16
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/AbstractTableMerger;

    .line 485
    .local v0, merger:Landroid/content/AbstractTableMerger;
    monitor-enter p0
    :try_end_23
    .catchall {:try_start_12 .. :try_end_23} :catchall_4d

    .line 486
    :try_start_23
    iget-boolean v1, p0, Landroid/content/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    if-eqz v1, :cond_3d

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_54

    .line 491
    .end local v0           #merger:Landroid/content/AbstractTableMerger;
    :cond_28
    :try_start_28
    iget-boolean v1, p0, Landroid/content/AbstractSyncableContentProvider;->mIsMergeCancelled:Z
    :try_end_2a
    .catchall {:try_start_28 .. :try_end_2a} :catchall_4d

    if-eqz v1, :cond_5a

    .line 499
    :try_start_2c
    monitor-enter p0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_38

    .line 500
    const/4 v1, 0x0

    :try_start_2e
    iput-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mCurrentMerger:Landroid/content/AbstractTableMerger;

    .line 501
    monitor-exit p0
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_57

    .line 505
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 507
    .end local p2
    :goto_34
    return-void

    .line 481
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #mergers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Landroid/content/AbstractTableMerger;>;"
    .restart local p2
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit p0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    :try_start_37
    throw v1
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_38

    .line 505
    .end local p2
    :catchall_38
    move-exception v1

    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1

    .line 487
    .restart local v0       #merger:Landroid/content/AbstractTableMerger;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v9       #mergers:Ljava/lang/Iterable;,"Ljava/lang/Iterable<+Landroid/content/AbstractTableMerger;>;"
    .restart local p2
    :cond_3d
    :try_start_3d
    iput-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mCurrentMerger:Landroid/content/AbstractTableMerger;

    .line 488
    monitor-exit p0
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_54

    .line 489
    :try_start_40
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getSyncingAccount()Ljava/lang/String;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Landroid/content/AbstractTableMerger;->merge(Landroid/content/SyncContext;Ljava/lang/String;Landroid/content/SyncableContentProvider;Landroid/content/TempProviderSyncResult;Landroid/content/SyncResult;Landroid/content/SyncableContentProvider;)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_4d

    goto :goto_16

    .line 499
    .end local v0           #merger:Landroid/content/AbstractTableMerger;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local p2
    :catchall_4d
    move-exception v1

    :try_start_4e
    monitor-enter p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_38

    .line 500
    const/4 v2, 0x0

    :try_start_50
    iput-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mCurrentMerger:Landroid/content/AbstractTableMerger;

    .line 501
    monitor-exit p0
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_82

    :try_start_53
    throw v1
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_38

    .line 488
    .restart local v0       #merger:Landroid/content/AbstractTableMerger;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local p2
    :catchall_54
    move-exception v1

    :try_start_55
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_55 .. :try_end_56} :catchall_54

    :try_start_56
    throw v1
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_4d

    .line 501
    .end local v0           #merger:Landroid/content/AbstractTableMerger;
    :catchall_57
    move-exception v1

    :try_start_58
    monitor-exit p0
    :try_end_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_57

    :try_start_59
    throw v1
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_38

    .line 492
    :cond_5a
    if-eqz p2, :cond_73

    .line 493
    :try_start_5c
    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    check-cast p2, Landroid/content/AbstractSyncableContentProvider;

    .end local p2
    iget-object v2, p2, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getSyncingAccount()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/SyncStateContentProviderHelper;->copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    :try_end_73
    .catchall {:try_start_5c .. :try_end_73} :catchall_4d

    .line 499
    :cond_73
    :try_start_73
    monitor-enter p0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_38

    .line 500
    const/4 v1, 0x0

    :try_start_75
    iput-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mCurrentMerger:Landroid/content/AbstractTableMerger;

    .line 501
    monitor-exit p0
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_7f

    .line 503
    :try_start_78
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_38

    .line 505
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_34

    .line 501
    :catchall_7f
    move-exception v1

    :try_start_80
    monitor-exit p0
    :try_end_81
    .catchall {:try_start_80 .. :try_end_81} :catchall_7f

    :try_start_81
    throw v1
    :try_end_82
    .catchall {:try_start_81 .. :try_end_82} :catchall_38

    .end local v8           #i$:Ljava/util/Iterator;
    :catchall_82
    move-exception v1

    :try_start_83
    monitor-exit p0
    :try_end_84
    .catchall {:try_start_83 .. :try_end_84} :catchall_82

    :try_start_84
    throw v1
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_38
.end method

.method public final nonTransactionalDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 341
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Landroid/content/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 342
    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v2}, Landroid/content/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, numRows:I
    move v2, v0

    .line 350
    .end local v0           #numRows:I
    :goto_19
    return v2

    .line 345
    :cond_1a
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/AbstractSyncableContentProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 346
    .local v1, result:I
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-nez v2, :cond_36

    if-lez v1, :cond_36

    .line 347
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_36
    move v2, v1

    .line 350
    goto :goto_19
.end method

.method public final nonTransactionalInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 370
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Landroid/content/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 371
    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v2}, Landroid/content/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .local v0, result:Landroid/net/Uri;
    move-object v1, v0

    .line 379
    .end local v0           #result:Landroid/net/Uri;
    .local v1, result:Landroid/net/Uri;
    :goto_19
    return-object v1

    .line 374
    .end local v1           #result:Landroid/net/Uri;
    :cond_1a
    invoke-virtual {p0, p1, p2}, Landroid/content/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 375
    .restart local v0       #result:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-nez v2, :cond_36

    if-eqz v0, :cond_36

    .line 376
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_36
    move-object v1, v0

    .line 379
    .end local v0           #result:Landroid/net/Uri;
    .restart local v1       #result:Landroid/net/Uri;
    goto :goto_19
.end method

.method public final nonTransactionalUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 307
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Landroid/content/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 308
    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v2}, Landroid/content/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .local v0, numRows:I
    move v2, v0

    .line 319
    .end local v0           #numRows:I
    :goto_19
    return v2

    .line 313
    :cond_1a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/AbstractSyncableContentProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 314
    .local v1, result:I
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v2

    if-nez v2, :cond_36

    if-lez v1, :cond_36

    .line 315
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Landroid/content/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v4

    invoke-virtual {v2, p1, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_36
    move v2, v1

    .line 319
    goto :goto_19
.end method

.method protected onAccountsChanged([Ljava/lang/String;)V
    .registers 13
    .parameter "accountsArray"

    .prologue
    const/4 v10, 0x0

    .line 572
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v1, accounts:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    move-object v2, p1

    .local v2, arr$:[Ljava/lang/String;
    array-length v5, v2

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_9
    if-ge v4, v5, :cond_17

    aget-object v0, v2, v4

    .line 574
    .local v0, account:Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-interface {v1, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    .line 576
    .end local v0           #account:Ljava/lang/String;
    :cond_17
    const-string v9, "non_syncable"

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v9, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v9}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 579
    .local v3, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v7

    .line 580
    .local v7, tableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 581
    .local v8, tables:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 582
    invoke-interface {v7}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 584
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 586
    :try_start_40
    iget-object v9, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v9, p1}, Landroid/content/SyncStateContentProviderHelper;->onAccountsChanged([Ljava/lang/String;)V

    .line 587
    invoke-virtual {v8}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_60

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 588
    .local v6, table:Ljava/lang/String;
    const-string v9, "_sync_account"

    invoke-virtual {p0, v1, v6, v9}, Landroid/content/AbstractSyncableContentProvider;->deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_40 .. :try_end_5a} :catchall_5b

    goto :goto_49

    .line 593
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v6           #table:Ljava/lang/String;
    :catchall_5b
    move-exception v9

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v9

    .line 591
    .restart local v4       #i$:Ljava/util/Iterator;
    :cond_60
    :try_start_60
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_5b

    .line 593
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 595
    return-void
.end method

.method public onCreate()Z
    .registers 5

    .prologue
    .line 149
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_e

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "onCreate() called for temp provider"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 150
    :cond_e
    new-instance v1, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/content/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3}, Landroid/content/AbstractSyncableContentProvider$DatabaseHelper;-><init>(Landroid/content/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 152
    new-instance v1, Landroid/content/SyncStateContentProviderHelper;

    iget-object v2, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v1, v2}, Landroid/content/SyncStateContentProviderHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    .line 154
    new-instance v0, Landroid/content/AbstractSyncableContentProvider$1;

    invoke-direct {v0, p0}, Landroid/content/AbstractSyncableContentProvider$1;-><init>(Landroid/content/AbstractSyncableContentProvider;)V

    .line 165
    .local v0, listener:Landroid/accounts/AccountMonitorListener;
    new-instance v1, Landroid/accounts/AccountMonitor;

    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/accounts/AccountMonitor;-><init>(Landroid/content/Context;Landroid/accounts/AccountMonitorListener;)V

    iput-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mAccountMonitor:Landroid/accounts/AccountMonitor;

    .line 167
    const/4 v1, 0x1

    return v1
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2
    .parameter "db"

    .prologue
    .line 118
    return-void
.end method

.method public onSyncCanceled()V
    .registers 2

    .prologue
    .line 515
    monitor-enter p0

    .line 516
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Landroid/content/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 517
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mCurrentMerger:Landroid/content/AbstractTableMerger;

    if-eqz v0, :cond_d

    .line 518
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mCurrentMerger:Landroid/content/AbstractTableMerger;

    invoke-virtual {v0}, Landroid/content/AbstractTableMerger;->onMergeCancelled()V

    .line 520
    :cond_d
    monitor-exit p0

    .line 521
    return-void

    .line 520
    :catchall_f
    move-exception v0

    monitor-exit p0
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public onSyncStart(Landroid/content/SyncContext;Ljava/lang/String;)V
    .registers 5
    .parameter "context"
    .parameter "account"

    .prologue
    .line 441
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "you passed in an empty account"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 444
    :cond_e
    iput-object p2, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncingAccount:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public onSyncStop(Landroid/content/SyncContext;Z)V
    .registers 3
    .parameter "context"
    .parameter "success"

    .prologue
    .line 454
    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 12
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    .line 426
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 427
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Landroid/content/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 428
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v0}, Landroid/content/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 431
    :goto_25
    return-object v0

    :cond_26
    invoke-virtual/range {p0 .. p5}, Landroid/content/AbstractSyncableContentProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_25
.end method

.method protected abstract queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public readSyncDataBytes(Ljava/lang/String;)[B
    .registers 4
    .parameter "account"

    .prologue
    .line 664
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/SyncStateContentProviderHelper;->readSyncDataBytes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public setContainsDiffs(Z)V
    .registers 4
    .parameter "containsDiffs"

    .prologue
    .line 215
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_10

    .line 216
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "only a temporary provider can contain diffs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_10
    iput-boolean p1, p0, Landroid/content/AbstractSyncableContentProvider;->mContainsDiffs:Z

    .line 220
    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 291
    const/4 v1, 0x0

    .line 292
    .local v1, successful:Z
    invoke-virtual {p0}, Landroid/content/AbstractSyncableContentProvider;->beginTransaction()V

    .line 294
    :try_start_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/AbstractSyncableContentProvider;->nonTransactionalUpdate(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d

    move-result v0

    .line 295
    .local v0, ret:I
    const/4 v1, 0x1

    .line 298
    invoke-virtual {p0, v1}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    return v0

    .end local v0           #ret:I
    :catchall_d
    move-exception v2

    invoke-virtual {p0, v1}, Landroid/content/AbstractSyncableContentProvider;->endTransaction(Z)V

    throw v2
.end method

.method protected abstract updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
.end method

.method public wipeAccount(Ljava/lang/String;)V
    .registers 10
    .parameter "account"

    .prologue
    .line 638
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 639
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v3

    .line 640
    .local v3, tableMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 641
    .local v4, tables:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 642
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 644
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 648
    :try_start_20
    iget-object v5, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    invoke-virtual {v5, v0, p1}, Landroid/content/SyncStateContentProviderHelper;->discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_29
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 652
    .local v2, table:Ljava/lang/String;
    const-string v5, "_sync_account=?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v0, v2, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_40
    .catchall {:try_start_20 .. :try_end_40} :catchall_41

    goto :goto_29

    .line 656
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #table:Ljava/lang/String;
    :catchall_41
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5

    .line 654
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_46
    :try_start_46
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_41

    .line 656
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 658
    return-void
.end method

.method public writeSyncDataBytes(Ljava/lang/String;[B)V
    .registers 5
    .parameter "account"
    .parameter "data"

    .prologue
    .line 671
    iget-object v0, p0, Landroid/content/AbstractSyncableContentProvider;->mSyncState:Landroid/content/SyncStateContentProviderHelper;

    iget-object v1, p0, Landroid/content/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/SyncStateContentProviderHelper;->writeSyncDataBytes(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[B)V

    .line 672
    return-void
.end method
