.class public abstract Landroid/content/AbstractTableMerger;
.super Ljava/lang/Object;
.source "AbstractTableMerger.java"


# static fields
.field private static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field private static final SELECT_BY_SYNC_ID_AND_ACCOUNT:Ljava/lang/String; = "_sync_id=? and _sync_account=?"

.field private static final SELECT_MARKED:Ljava/lang/String; = "_sync_mark> 0 and _sync_account=?"

.field private static final SELECT_UNSYNCED:Ljava/lang/String; = "(_sync_account IS NULL OR _sync_account=?) AND (_sync_id IS NULL OR (_sync_dirty > 0 AND _sync_version IS NOT NULL))"

.field private static final TAG:Ljava/lang/String; = "AbstractTableMerger"

.field private static TRACE:Z

.field protected static mSyncMarkValues:Landroid/content/ContentValues;

.field private static final syncDirtyProjection:[Ljava/lang/String;

.field private static final syncIdAndVersionProjection:[Ljava/lang/String;


# instance fields
.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field protected mDeletedTable:Ljava/lang/String;

.field protected mDeletedTableURL:Landroid/net/Uri;

.field private volatile mIsMergeCancelled:Z

.field protected mTable:Ljava/lang/String;

.field protected mTableURL:Landroid/net/Uri;

.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "_sync_version"

    const-string v6, "_sync_id"

    .line 45
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    sput-object v0, Landroid/content/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    .line 46
    sget-object v0, Landroid/content/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const-string v1, "_sync_mark"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 47
    sput-boolean v3, Landroid/content/AbstractTableMerger;->TRACE:Z

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_sync_dirty"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_sync_id"

    aput-object v6, v0, v5

    const/4 v1, 0x3

    const-string v2, "_sync_version"

    aput-object v7, v0, v1

    sput-object v0, Landroid/content/AbstractTableMerger;->syncDirtyProjection:[Ljava/lang/String;

    .line 53
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_sync_id"

    aput-object v6, v0, v3

    const-string v1, "_sync_version"

    aput-object v7, v0, v4

    sput-object v0, Landroid/content/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V
    .registers 7
    .parameter "database"
    .parameter "table"
    .parameter "tableURL"
    .parameter "deletedTable"
    .parameter "deletedTableURL"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 74
    iput-object p2, p0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    .line 75
    iput-object p3, p0, Landroid/content/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    .line 76
    iput-object p4, p0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    .line 77
    iput-object p5, p0, Landroid/content/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    .line 78
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    .line 79
    return-void
.end method

.method private static findInCursor(Landroid/database/Cursor;ILjava/lang/String;)Z
    .registers 6
    .parameter "cursor"
    .parameter "column"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 115
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 116
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 117
    .local v0, comp:I
    if-lez v0, :cond_1b

    .line 118
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 121
    :cond_1b
    if-nez v0, :cond_1f

    const/4 v1, 0x1

    .line 123
    .end local v0           #comp:I
    :goto_1e
    return v1

    .restart local v0       #comp:I
    :cond_1f
    move v1, v2

    .line 121
    goto :goto_1e

    .end local v0           #comp:I
    :cond_21
    move v1, v2

    .line 123
    goto :goto_1e
.end method

.method private findLocalChanges(Landroid/content/TempProviderSyncResult;Landroid/content/SyncableContentProvider;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 25
    .parameter "mergeResult"
    .parameter "temporaryInstanceFactory"
    .parameter "account"
    .parameter "syncResult"

    .prologue
    .line 533
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    move-object v11, v0

    .line 534
    .local v11, clientDiffs:Landroid/content/SyncableContentProvider;
    const-string v3, "AbstractTableMerger"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "AbstractTableMerger"

    const-string v4, "generating client updates"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_15
    const/4 v3, 0x1

    new-array v7, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p3, v7, v3

    .line 540
    .local v7, accountSelectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const-string v6, "(_sync_account IS NULL OR _sync_account=?) AND (_sync_id IS NULL OR (_sync_dirty > 0 AND _sync_version IS NOT NULL))"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 542
    .local v13, localChangesCursor:Landroid/database/Cursor;
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I

    move-result v3

    move v0, v3

    int-to-long v0, v0

    move-wide/from16 v18, v0

    .line 543
    .local v18, numInsertsOrUpdates:J
    :goto_37
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_86

    .line 544
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    move v3, v0

    if-eqz v3, :cond_48

    .line 545
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 592
    :goto_47
    return-void

    .line 548
    :cond_48
    if-nez v11, :cond_4e

    .line 549
    invoke-virtual/range {p2 .. p2}, Landroid/content/SyncableContentProvider;->getTemporaryInstance()Landroid/content/SyncableContentProvider;

    move-result-object v11

    .line 551
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    move-object/from16 v0, p0

    move-object v1, v13

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractTableMerger;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 553
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    const-string v4, "_id"

    invoke-virtual {v3, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 554
    const-string v3, "_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v4, v0

    const-string v5, "_sync_local_id"

    invoke-static {v13, v3, v4, v5}, Landroid/database/DatabaseUtils;->cursorLongToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v4, v0

    invoke-virtual {v11, v3, v4}, Landroid/content/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_37

    .line 558
    :cond_86
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 561
    const-string v3, "AbstractTableMerger"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_99

    const-string v3, "AbstractTableMerger"

    const-string v4, "generating client deletions"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_99
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v4, v0

    invoke-static {v3, v4}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J

    move-result-wide v16

    .line 563
    .local v16, numEntries:J
    const-wide/16 v14, 0x0

    .line 564
    .local v14, numDeletedEntries:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_120

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v4, v0

    sget-object v5, Landroid/content/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    const-string v6, "_sync_account=? AND _sync_id IS NOT NULL"

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v12, v0

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "."

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, "_sync_id"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 570
    .local v12, deletedCursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v3

    int-to-long v14, v3

    .line 571
    :goto_e7
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_11d

    .line 572
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    move v3, v0

    if-eqz v3, :cond_f9

    .line 573
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_47

    .line 576
    :cond_f9
    if-nez v11, :cond_ff

    .line 577
    invoke-virtual/range {p2 .. p2}, Landroid/content/SyncableContentProvider;->getTemporaryInstance()Landroid/content/SyncableContentProvider;

    move-result-object v11

    .line 579
    :cond_ff
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 580
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v3, v0

    invoke-static {v12, v3}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 581
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mValues:Landroid/content/ContentValues;

    move-object v4, v0

    invoke-virtual {v11, v3, v4}, Landroid/content/SyncableContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_e7

    .line 583
    :cond_11d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 586
    .end local v12           #deletedCursor:Landroid/database/Cursor;
    :cond_120
    if-eqz v11, :cond_127

    .line 587
    move-object v0, v11

    move-object/from16 v1, p1

    iput-object v0, v1, Landroid/content/TempProviderSyncResult;->tempContentProvider:Landroid/content/SyncableContentProvider;

    .line 589
    :cond_127
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v4, v3, Landroid/content/SyncStats;->numDeletes:J

    add-long/2addr v4, v14

    iput-wide v4, v3, Landroid/content/SyncStats;->numDeletes:J

    .line 590
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v4, v3, Landroid/content/SyncStats;->numUpdates:J

    add-long v4, v4, v18

    iput-wide v4, v3, Landroid/content/SyncStats;->numUpdates:J

    .line 591
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v3, v0

    iget-wide v4, v3, Landroid/content/SyncStats;->numEntries:J

    add-long v4, v4, v16

    iput-wide v4, v3, Landroid/content/SyncStats;->numEntries:J

    goto/16 :goto_47
.end method

.method private fullyDeleteMatchingRows(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/SyncResult;)V
    .registers 16
    .parameter "diffsCursor"
    .parameter "account"
    .parameter "syncResult"

    .prologue
    .line 481
    const-string v0, "_sync_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 482
    .local v10, serverSyncIdColumn:I
    invoke-interface {p1, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_4d

    const/4 v0, 0x1

    move v9, v0

    .line 487
    .local v9, deleteBySyncId:Z
    :goto_e
    if-eqz v9, :cond_50

    .line 488
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    .line 489
    .local v4, selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_sync_id=? and _sync_account=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 498
    .local v8, c:Landroid/database/Cursor;
    :goto_32
    :try_start_32
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 499
    :goto_35
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_76

    .line 500
    invoke-virtual {p0, v8}, Landroid/content/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 501
    iget-object v0, p3, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    iget-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v5, 0x1

    add-long/2addr v1, v5

    iput-wide v1, v0, Landroid/content/SyncStats;->numDeletes:J
    :try_end_47
    .catchall {:try_start_32 .. :try_end_47} :catchall_48

    goto :goto_35

    .line 504
    :catchall_48
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    throw v0

    .line 482
    .end local v4           #selectionArgs:[Ljava/lang/String;
    .end local v8           #c:Landroid/database/Cursor;
    .end local v9           #deleteBySyncId:Z
    :cond_4d
    const/4 v0, 0x0

    move v9, v0

    goto :goto_e

    .line 492
    .restart local v9       #deleteBySyncId:Z
    :cond_50
    const-string v0, "_sync_local_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 493
    .local v11, serverSyncLocalIdColumn:I
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 494
    .restart local v4       #selectionArgs:[Ljava/lang/String;
    iget-object v0, p0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v3

    const-string v3, "_id=?"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_32

    .line 504
    .end local v11           #serverSyncLocalIdColumn:I
    :cond_76
    invoke-interface {v8}, Landroid/database/Cursor;->deactivate()V

    .line 506
    if-eqz v9, :cond_88

    iget-object v0, p0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    if-eqz v0, :cond_88

    .line 507
    iget-object v0, p0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    const-string v2, "_sync_id=? and _sync_account=?"

    invoke-virtual {v0, v1, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 509
    :cond_88
    return-void
.end method


# virtual methods
.method protected cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V
    .registers 3
    .parameter "cursor"
    .parameter "map"

    .prologue
    .line 515
    invoke-static {p1, p2}, Landroid/database/DatabaseUtils;->cursorRowToContentValues(Landroid/database/Cursor;Landroid/content/ContentValues;)V

    .line 516
    return-void
.end method

.method public deleteRow(Landroid/database/Cursor;)V
    .registers 2
    .parameter "localCursor"

    .prologue
    .line 103
    invoke-interface {p1}, Landroid/database/Cursor;->deleteRow()Z

    .line 104
    return-void
.end method

.method public abstract insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method

.method public merge(Landroid/content/SyncContext;Ljava/lang/String;Landroid/content/SyncableContentProvider;Landroid/content/TempProviderSyncResult;Landroid/content/SyncResult;Landroid/content/SyncableContentProvider;)V
    .registers 9
    .parameter "context"
    .parameter "account"
    .parameter "serverDiffs"
    .parameter "result"
    .parameter "syncResult"
    .parameter "temporaryInstanceFactory"

    .prologue
    const-string v1, "AbstractTableMerger"

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    .line 142
    if-eqz p3, :cond_1d

    .line 143
    iget-object v0, p0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isDbLockedByCurrentThread()Z

    move-result v0

    if-nez v0, :cond_17

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this must be called from within a DB transaction"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_17
    invoke-virtual {p0, p1, p2, p3, p5}, Landroid/content/AbstractTableMerger;->mergeServerDiffs(Landroid/content/SyncContext;Ljava/lang/String;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;)V

    .line 147
    invoke-virtual {p0}, Landroid/content/AbstractTableMerger;->notifyChanges()V

    .line 150
    :cond_1d
    if-eqz p4, :cond_22

    .line 151
    invoke-direct {p0, p4, p6, p2, p5}, Landroid/content/AbstractTableMerger;->findLocalChanges(Landroid/content/TempProviderSyncResult;Landroid/content/SyncableContentProvider;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 153
    :cond_22
    const-string v0, "AbstractTableMerger"

    const/4 v0, 0x2

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_32

    const-string v0, "AbstractTableMerger"

    const-string v0, "merge complete"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_32
    return-void
.end method

.method public mergeServerDiffs(Landroid/content/SyncContext;Ljava/lang/String;Landroid/content/SyncableContentProvider;Landroid/content/SyncResult;)V
    .registers 50
    .parameter "context"
    .parameter "account"
    .parameter "serverDiffs"
    .parameter "syncResult"

    .prologue
    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/content/SyncableContentProvider;->getContainsDiffs()Z

    move-result v28

    .line 164
    .local v28, diffsArePartial:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Landroid/content/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2d

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Landroid/content/AbstractTableMerger;->mSyncMarkValues:Landroid/content/ContentValues;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 170
    :cond_2d
    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p2, v9, v5

    .line 171
    .local v9, accountSelectionArgs:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Landroid/content/AbstractTableMerger;->syncDirtyProjection:[Ljava/lang/String;

    const-string v8, "_sync_mark> 0 and _sync_account=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_sync_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v33

    .line 175
    .local v33, localCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_111

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    sget-object v7, Landroid/content/AbstractTableMerger;->syncIdAndVersionProjection:[Ljava/lang/String;

    const-string v8, "_sync_mark> 0 and _sync_account=?"

    const/4 v10, 0x0

    const/4 v11, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v13, v0

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_sync_id"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {v5 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .line 185
    .local v24, deletedCursor:Landroid/database/Cursor;
    :goto_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTableURL:Landroid/net/Uri;

    move-object v11, v0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mTable:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_sync_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v10, p3

    invoke-virtual/range {v10 .. v15}, Landroid/content/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 187
    .local v15, diffsCursor:Landroid/database/Cursor;
    const-string v5, "_sync_id"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v25

    .line 188
    .local v25, deletedSyncIDColumn:I
    const-string v5, "_sync_version"

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v27

    .line 189
    .local v27, deletedSyncVersionColumn:I
    const-string v5, "_sync_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v39

    .line 190
    .local v39, serverSyncIDColumn:I
    const-string v5, "_sync_version"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v42

    .line 191
    .local v42, serverSyncVersionColumn:I
    const-string v5, "_sync_local_id"

    invoke-interface {v15, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v40

    .line 193
    .local v40, serverSyncLocalIdColumn:I
    const/16 v31, 0x0

    .line 194
    .local v31, lastSyncId:Ljava/lang/String;
    const/16 v29, 0x0

    .line 195
    .local v29, diffsCount:I
    const/16 v32, 0x0

    .line 196
    .local v32, localCount:I
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToFirst()Z

    .line 197
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    .end local v9           #accountSelectionArgs:[Ljava/lang/String;
    :cond_fa
    :goto_fa
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5c7

    .line 199
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0

    if-eqz v5, :cond_11e

    .line 200
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->close()V

    .line 201
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    .line 202
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 477
    :cond_110
    :goto_110
    return-void

    .line 180
    .end local v15           #diffsCursor:Landroid/database/Cursor;
    .end local v24           #deletedCursor:Landroid/database/Cursor;
    .end local v25           #deletedSyncIDColumn:I
    .end local v27           #deletedSyncVersionColumn:I
    .end local v29           #diffsCount:I
    .end local v31           #lastSyncId:Ljava/lang/String;
    .end local v32           #localCount:I
    .end local v39           #serverSyncIDColumn:I
    .end local v40           #serverSyncLocalIdColumn:I
    .end local v42           #serverSyncVersionColumn:I
    .restart local v9       #accountSelectionArgs:[Ljava/lang/String;
    :cond_111
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    const-string v6, "select \'a\' as _sync_id, \'b\' as _sync_version limit 0"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v24

    .restart local v24       #deletedCursor:Landroid/database/Cursor;
    goto :goto_9e

    .line 205
    .end local v9           #accountSelectionArgs:[Ljava/lang/String;
    .restart local v15       #diffsCursor:Landroid/database/Cursor;
    .restart local v25       #deletedSyncIDColumn:I
    .restart local v27       #deletedSyncVersionColumn:I
    .restart local v29       #diffsCount:I
    .restart local v31       #lastSyncId:Ljava/lang/String;
    .restart local v32       #localCount:I
    .restart local v39       #serverSyncIDColumn:I
    .restart local v40       #serverSyncLocalIdColumn:I
    .restart local v42       #serverSyncVersionColumn:I
    :cond_11e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    .line 206
    move-object v0, v15

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 207
    .local v13, serverSyncId:Ljava/lang/String;
    move-object v0, v15

    move/from16 v1, v42

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    .line 208
    .local v41, serverSyncVersion:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 209
    .local v11, localRowId:J
    const/16 v37, 0x0

    .line 211
    .local v37, localSyncVersion:Ljava/lang/String;
    add-int/lit8 v29, v29, 0x1

    .line 212
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Processing "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/SyncContext;->setStatusText(Ljava/lang/String;)V

    .line 214
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_192

    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processing server entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_192
    sget-boolean v5, Landroid/content/AbstractTableMerger;->TRACE:Z

    if-eqz v5, :cond_1ac

    .line 218
    const/16 v5, 0xa

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_1a2

    .line 219
    const-string v5, "atmtrace"

    invoke-static {v5}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 221
    :cond_1a2
    const/16 v5, 0x14

    move/from16 v0, v29

    move v1, v5

    if-ne v0, v1, :cond_1ac

    .line 222
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 226
    :cond_1ac
    const/16 v23, 0x0

    .line 227
    .local v23, conflict:Z
    const/16 v43, 0x0

    .line 228
    .local v43, update:Z
    const/16 v30, 0x0

    .line 230
    .local v30, insert:Z
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1d3

    .line 231
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "found event with serverSyncID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    :cond_1d3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1eb

    .line 234
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 235
    const-string v5, "AbstractTableMerger"

    const-string v6, "server entry doesn\'t have a serverSyncID"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fa

    .line 243
    :cond_1eb
    move-object v0, v13

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_21a

    .line 244
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_fa

    .line 245
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "skipping record with duplicate remote server id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_fa

    .line 249
    :cond_21a
    move-object/from16 v31, v13

    .line 251
    const/16 v35, 0x0

    .line 252
    .local v35, localSyncID:Ljava/lang/String;
    const/16 v34, 0x0

    .line 254
    .local v34, localSyncDirty:Z
    :goto_220
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_3a9

    .line 255
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0

    if-eqz v5, :cond_238

    .line 256
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->deactivate()V

    .line 257
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->deactivate()V

    .line 258
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_110

    .line 261
    :cond_238
    add-int/lit8 v32, v32, 0x1

    .line 262
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v35

    .line 267
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_27d

    .line 268
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_277

    .line 269
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has no _sync_id, ignoring"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_277
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    .line 274
    const/16 v35, 0x0

    .line 275
    goto :goto_220

    .line 278
    :cond_27d
    move-object v0, v13

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    .line 281
    .local v22, comp:I
    if-lez v22, :cond_307

    .line 282
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2c6

    .line 283
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that is < server _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_2c6
    if-eqz v28, :cond_2cf

    .line 289
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    .line 298
    :goto_2cb
    const/16 v35, 0x0

    .line 299
    goto/16 :goto_220

    .line 291
    :cond_2cf
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_2f2

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "_sync_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v35, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 295
    :cond_2f2
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    goto :goto_2cb

    .line 303
    :cond_307
    if-gez v22, :cond_34b

    .line 304
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_349

    .line 305
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that is > server _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_349
    const/16 v35, 0x0

    .line 314
    :cond_34b
    if-nez v22, :cond_3a9

    .line 315
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_389

    .line 316
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " that matches the server _sync_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    :cond_389
    const/4 v5, 0x0

    move-object/from16 v0, v33

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-eqz v5, :cond_447

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 322
    :goto_396
    const/4 v5, 0x1

    move-object/from16 v0, v33

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 323
    const/4 v5, 0x3

    move-object/from16 v0, v33

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v37

    .line 324
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->moveToNext()Z

    .line 334
    .end local v22           #comp:I
    :cond_3a9
    move-object/from16 v0, v24

    move/from16 v1, v25

    move-object v2, v13

    invoke-static {v0, v1, v2}, Landroid/content/AbstractTableMerger;->findInCursor(Landroid/database/Cursor;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44c

    .line 335
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3db

    .line 336
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is in the deleted table"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :cond_3db
    move-object/from16 v0, v24

    move/from16 v1, v27

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 339
    .local v26, deletedSyncVersion:Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_fa

    .line 340
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_41b

    .line 341
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setting version of deleted record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_41b
    new-instance v44, Landroid/content/ContentValues;

    invoke-direct/range {v44 .. v44}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v44, values:Landroid/content/ContentValues;
    const-string v5, "_sync_version"

    move-object/from16 v0, v44

    move-object v1, v5

    move-object/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "_sync_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v13, v8, v9

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v44

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_fa

    .line 321
    .end local v26           #deletedSyncVersion:Ljava/lang/String;
    .end local v44           #values:Landroid/content/ContentValues;
    .restart local v22       #comp:I
    :cond_447
    const/4 v5, 0x0

    move/from16 v34, v5

    goto/16 :goto_396

    .line 357
    .end local v22           #comp:I
    :cond_44c
    move-object v0, v15

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v5

    if-nez v5, :cond_48d

    .line 358
    move-object v0, v15

    move/from16 v1, v40

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 359
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_487

    .line 360
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "the remote record with sync id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has a local sync id, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_487
    move-object/from16 v35, v13

    .line 364
    const/16 v34, 0x0

    .line 365
    const/16 v37, 0x0

    .line 368
    :cond_48d
    invoke-static/range {v35 .. v35}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_56d

    .line 372
    if-eqz v37, :cond_4a1

    if-eqz v41, :cond_4a1

    move-object/from16 v0, v41

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4fb

    :cond_4a1
    const/4 v5, 0x1

    move/from16 v38, v5

    .line 375
    .local v38, recordChanged:Z
    :goto_4a4
    if-eqz v38, :cond_53a

    .line 376
    if-eqz v34, :cond_4ff

    .line 377
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4e0

    .line 378
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " conflicts with local _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", local _id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_4e0
    const/16 v23, 0x1

    .line 409
    .end local v38           #recordChanged:Z
    :cond_4e2
    :goto_4e2
    if-eqz v43, :cond_598

    .line 410
    move-object/from16 v0, p0

    move-wide v1, v11

    move-object/from16 v3, p3

    move-object v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/AbstractTableMerger;->updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 411
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_fa

    .line 372
    :cond_4fb
    const/4 v5, 0x0

    move/from16 v38, v5

    goto :goto_4a4

    .line 384
    .restart local v38       #recordChanged:Z
    :cond_4ff
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_537

    .line 385
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " updates local _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", local _id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    :cond_537
    const/16 v43, 0x1

    goto :goto_4e2

    .line 395
    :cond_53a
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4e2

    .line 396
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping update: localSyncVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", serverSyncVersion: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4e2

    .line 403
    .end local v38           #recordChanged:Z
    :cond_56d
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_594

    .line 404
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "remote record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is new, inserting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_594
    const/16 v30, 0x1

    goto/16 :goto_4e2

    .line 412
    :cond_598
    if-eqz v23, :cond_5af

    move-object/from16 v10, p0

    move-object/from16 v14, p3

    .line 413
    invoke-virtual/range {v10 .. v15}, Landroid/content/AbstractTableMerger;->resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 414
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numUpdates:J

    goto/16 :goto_fa

    .line 415
    :cond_5af
    if-eqz v30, :cond_fa

    .line 416
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/AbstractTableMerger;->insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V

    .line 417
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numInserts:J

    goto/16 :goto_fa

    .line 421
    .end local v11           #localRowId:J
    .end local v13           #serverSyncId:Ljava/lang/String;
    .end local v23           #conflict:Z
    .end local v30           #insert:Z
    .end local v34           #localSyncDirty:Z
    .end local v35           #localSyncID:Ljava/lang/String;
    .end local v37           #localSyncVersion:Ljava/lang/String;
    .end local v41           #serverSyncVersion:Ljava/lang/String;
    .end local v43           #update:Z
    :cond_5c7
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_5f1

    .line 422
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " server entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_5f1
    if-nez v28, :cond_692

    .line 430
    :goto_5f3
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_692

    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_692

    .line 431
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0

    if-eqz v5, :cond_619

    .line 432
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->deactivate()V

    .line 433
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->deactivate()V

    .line 434
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_110

    .line 437
    :cond_619
    add-int/lit8 v32, v32, 0x1

    .line 438
    const/4 v5, 0x2

    move-object/from16 v0, v33

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v36

    .line 439
    .local v36, localSyncId:Ljava/lang/String;
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_659

    .line 440
    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleting local record "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, v33

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " _sync_id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_659
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/AbstractTableMerger;->deleteRow(Landroid/database/Cursor;)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_67c

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    move-object v6, v0

    const-string v7, "_sync_id=?"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v36, v8, v9

    invoke-virtual {v5, v6, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 449
    :cond_67c
    move-object/from16 v0, p4

    iget-object v0, v0, Landroid/content/SyncResult;->stats:Landroid/content/SyncStats;

    move-object v5, v0

    iget-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    iput-wide v6, v5, Landroid/content/SyncStats;->numDeletes:J

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    goto/16 :goto_5f3

    .line 454
    .end local v36           #localSyncId:Ljava/lang/String;
    :cond_692
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6bc

    const-string v5, "AbstractTableMerger"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checked "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " local entries"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_6bc
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    .line 457
    invoke-interface/range {v33 .. v33}, Landroid/database/Cursor;->deactivate()V

    .line 458
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->deactivate()V

    .line 460
    const-string v5, "AbstractTableMerger"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_6d5

    const-string v5, "AbstractTableMerger"

    const-string v6, "applying deletions from the server"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_6d5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    move-object v5, v0

    if-eqz v5, :cond_110

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDeletedTableURL:Landroid/net/Uri;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v16, p3

    invoke-virtual/range {v16 .. v21}, Landroid/content/SyncableContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 466
    :goto_6f0
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_715

    .line 467
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    move v5, v0

    if-eqz v5, :cond_702

    .line 468
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_110

    .line 472
    :cond_702
    move-object/from16 v0, p0

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Landroid/content/AbstractTableMerger;->fullyDeleteMatchingRows(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/SyncResult;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/AbstractTableMerger;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    goto :goto_6f0

    .line 475
    :cond_715
    invoke-interface {v15}, Landroid/database/Cursor;->deactivate()V

    goto/16 :goto_110
.end method

.method protected abstract notifyChanges()V
.end method

.method public onMergeCancelled()V
    .registers 2

    .prologue
    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/AbstractTableMerger;->mIsMergeCancelled:Z

    .line 128
    return-void
.end method

.method public abstract resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method

.method public abstract updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
.end method
