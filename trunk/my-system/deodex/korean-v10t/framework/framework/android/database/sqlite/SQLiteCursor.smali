.class public Landroid/database/sqlite/SQLiteCursor;
.super Landroid/database/AbstractWindowedCursor;
.source "SQLiteCursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;,
        Landroid/database/sqlite/SQLiteCursor$QueryThread;
    }
.end annotation


# static fields
.field static final NO_COUNT:I = -0x1

.field static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mColumnNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumns:[Ljava/lang/String;

.field private mCount:I

.field private mCursorState:I

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

.field private mEditTable:Ljava/lang/String;

.field private mInitialRead:I

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mMaxRead:I

.field protected mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

.field private mPendingData:Z

.field private mQuery:Landroid/database/sqlite/SQLiteQuery;

.field private mStackTraceElements:[Ljava/lang/StackTraceElement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteCursorDriver;Ljava/lang/String;Landroid/database/sqlite/SQLiteQuery;)V
    .registers 12
    .parameter "db"
    .parameter "driver"
    .parameter "editTable"
    .parameter "query"

    .prologue
    const/4 v6, 0x0

    const v5, 0x7fffffff

    const/4 v4, 0x0

    .line 210
    invoke-direct {p0}, Landroid/database/AbstractWindowedCursor;-><init>()V

    .line 60
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 73
    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    .line 74
    iput v5, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    .line 75
    iput v4, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 76
    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 77
    iput-boolean v4, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    .line 216
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 217
    iput-object p2, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    .line 218
    iput-object p3, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    .line 219
    iput-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 220
    iput-object p4, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    .line 223
    :try_start_1f
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 226
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->columnCountLocked()I

    move-result v0

    .line 227
    .local v0, columnCount:I
    new-array v3, v0, [Ljava/lang/String;

    iput-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 230
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2d
    if-ge v2, v0, :cond_4b

    .line 231
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteQuery;->columnNameLocked(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    .local v1, columnName:Ljava/lang/String;
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    aput-object v1, v3, v2

    .line 239
    const-string v3, "_id"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    .line 240
    iput v2, p0, Landroid/database/sqlite/SQLiteCursor;->mRowIdColumnIndex:I
    :try_end_43
    .catchall {:try_start_1f .. :try_end_43} :catchall_46

    .line 230
    :cond_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    .line 244
    .end local v0           #columnCount:I
    .end local v1           #columnName:Ljava/lang/String;
    .end local v2           #i:I
    :catchall_46
    move-exception v3

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .restart local v0       #columnCount:I
    .restart local v2       #i:I
    :cond_4b
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 246
    return-void
.end method

.method static synthetic access$002(Landroid/database/sqlite/SQLiteCursor;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput-boolean p1, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    return p1
.end method

.method static synthetic access$100(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/CursorWindow;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    return-object v0
.end method

.method static synthetic access$200(Landroid/database/sqlite/SQLiteCursor;)Ljava/util/concurrent/locks/ReentrantLock;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$300(Landroid/database/sqlite/SQLiteCursor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    return v0
.end method

.method static synthetic access$400(Landroid/database/sqlite/SQLiteCursor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    return v0
.end method

.method static synthetic access$500(Landroid/database/sqlite/SQLiteCursor;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$502(Landroid/database/sqlite/SQLiteCursor;I)I
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iput p1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return p1
.end method

.method static synthetic access$512(Landroid/database/sqlite/SQLiteCursor;I)I
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 40
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/database/sqlite/SQLiteCursor;)Landroid/database/sqlite/SQLiteQuery;
    .registers 2
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    return-object v0
.end method

.method static synthetic access$700(Landroid/database/sqlite/SQLiteCursor;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    return-void
.end method

.method private deactivateCommon()V
    .registers 2

    .prologue
    .line 488
    const/4 v0, 0x0

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 489
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_f

    .line 490
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V

    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 494
    :cond_f
    return-void
.end method

.method private fillWindow(I)V
    .registers 7
    .parameter "startPos"

    .prologue
    .line 275
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-nez v1, :cond_3a

    .line 277
    new-instance v1, Landroid/database/CursorWindow;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/database/CursorWindow;-><init>(Z)V

    iput-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 287
    :goto_c
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1, p1}, Landroid/database/CursorWindow;->setStartPosition(I)V

    .line 288
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteQuery;->fillWindow(Landroid/database/CursorWindow;II)I

    move-result v1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 290
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_39

    .line 291
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    add-int/2addr v1, p1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 292
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/database/sqlite/SQLiteCursor$QueryThread;

    iget v2, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    invoke-direct {v1, p0, v2}, Landroid/database/sqlite/SQLiteCursor$QueryThread;-><init>(Landroid/database/sqlite/SQLiteCursor;I)V

    const-string v2, "query thread"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 293
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 295
    .end local v0           #t:Ljava/lang/Thread;
    :cond_39
    return-void

    .line 279
    :cond_3a
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 280
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 282
    :try_start_43
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->clear()V
    :try_end_48
    .catchall {:try_start_43 .. :try_end_48} :catchall_4c

    .line 284
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    goto :goto_c

    :catchall_4c
    move-exception v1

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v1
.end method

.method private queryThreadLock()V
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_9

    .line 97
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 99
    :cond_9
    return-void
.end method

.method private queryThreadUnlock()V
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 105
    :cond_9
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    .prologue
    .line 505
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->close()V

    .line 506
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 507
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteQuery;->close()V

    .line 508
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorClosed()V

    .line 509
    return-void
.end method

.method public commitUpdates(Ljava/util/Map;)Z
    .registers 19
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+",
            "Ljava/lang/Long;",
            "+",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    .line 401
    .local p1, additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/database/sqlite/SQLiteCursor;->supportsUpdates()Z

    move-result v13

    if-nez v13, :cond_f

    .line 402
    const-string v13, "Cursor"

    const-string v14, "commitUpdates not supported on this cursor, did you include the _id column?"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    const/4 v13, 0x0

    .line 483
    .end local p1           #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_e
    return v13

    .line 411
    .restart local p1       #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v13, v0

    monitor-enter v13

    .line 412
    if-eqz p1, :cond_22

    .line 413
    :try_start_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    move-object v0, v14

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 416
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->size()I

    move-result v14

    if-nez v14, :cond_31

    .line 417
    const/4 v14, 0x1

    monitor-exit v13

    move v13, v14

    goto :goto_e

    .line 425
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_39
    .catchall {:try_start_17 .. :try_end_39} :catchall_96

    .line 427
    :try_start_39
    new-instance v10, Ljava/lang/StringBuilder;

    const/16 v14, 0x80

    invoke-direct {v10, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 431
    .local v10, sql:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .end local p1           #additionalValues:Ljava/util/Map;,"Ljava/util/Map<+Ljava/lang/Long;+Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .local v5, i$:Ljava/util/Iterator;
    :cond_4d
    :goto_4d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_155

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 432
    .local v6, rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map;

    .line 433
    .local v11, values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    .line 435
    .local v9, rowIdObj:Ljava/lang/Long;
    if-eqz v9, :cond_69

    if-nez v11, :cond_99

    .line 436
    :cond_69
    new-instance v14, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "null rowId or values found! rowId = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", values = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_8c
    .catchall {:try_start_39 .. :try_end_8c} :catchall_8c

    .line 474
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v6           #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v9           #rowIdObj:Ljava/lang/Long;
    .end local v10           #sql:Ljava/lang/StringBuilder;
    .end local v11           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catchall_8c
    move-exception v14

    :try_start_8d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v15, v0

    invoke-virtual {v15}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v14

    .line 478
    :catchall_96
    move-exception v14

    monitor-exit v13
    :try_end_98
    .catchall {:try_start_8d .. :try_end_98} :catchall_96

    throw v14

    .line 440
    .restart local v5       #i$:Ljava/util/Iterator;
    .restart local v6       #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v9       #rowIdObj:Ljava/lang/Long;
    .restart local v10       #sql:Ljava/lang/StringBuilder;
    .restart local v11       #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_99
    :try_start_99
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v14

    if-eqz v14, :cond_4d

    .line 444
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 446
    .local v7, rowId:J
    invoke-interface {v11}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 449
    .local v12, valuesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v14, 0x0

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 450
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "UPDATE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " SET "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-interface {v11}, Ljava/util/Map;->size()I

    move-result v14

    new-array v2, v14, [Ljava/lang/Object;

    .line 454
    .local v2, bindings:[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 455
    .local v4, i:I
    :goto_d7
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_108

    .line 456
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 457
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    const-string v14, "=?"

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 459
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v2, v4

    .line 460
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_105

    .line 461
    const-string v14, ", "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    :cond_105
    add-int/lit8 v4, v4, 0x1

    .line 464
    goto :goto_d7

    .line 466
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_108
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " WHERE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/database/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    move/from16 v16, v0

    aget-object v15, v15, v16

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x3d

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    const/16 v14, 0x3b

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v14, v15, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->rowUpdated(Ljava/lang/String;J)V

    goto/16 :goto_4d

    .line 472
    .end local v2           #bindings:[Ljava/lang/Object;
    .end local v4           #i:I
    .end local v6           #rowEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v7           #rowId:J
    .end local v9           #rowIdObj:Ljava/lang/Long;
    .end local v11           #values:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v12           #valuesIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_155
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_15d
    .catchall {:try_start_99 .. :try_end_15d} :catchall_8c

    .line 474
    :try_start_15d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/database/sqlite/SQLiteCursor;->mUpdatedRows:Ljava/util/HashMap;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 478
    monitor-exit v13
    :try_end_16e
    .catchall {:try_start_15d .. :try_end_16e} :catchall_96

    .line 481
    const/4 v13, 0x1

    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteCursor;->onChange(Z)V

    .line 483
    const/4 v13, 0x1

    goto/16 :goto_e
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 498
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->deactivate()V

    .line 499
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->deactivateCommon()V

    .line 500
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorDeactivated()V

    .line 501
    return-void
.end method

.method public deleteRow()Z
    .registers 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 332
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->checkPosition()V

    .line 335
    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_e

    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    if-nez v3, :cond_17

    .line 336
    :cond_e
    const-string v3, "Cursor"

    const-string v4, "Could not delete row because either the row ID column is not available or ithas not been read."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v9

    .line 376
    :goto_16
    return v3

    .line 350
    :cond_17
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 353
    :try_start_1c
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    iget v7, p0, Landroid/database/sqlite/SQLiteCursor;->mRowIdColumnIndex:I

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget-object v8, p0, Landroid/database/sqlite/SQLiteCursor;->mCurrentRowID:Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_48
    .catchall {:try_start_1c .. :try_end_48} :catchall_61
    .catch Landroid/database/SQLException; {:try_start_1c .. :try_end_48} :catch_5d

    .line 355
    const/4 v2, 0x1

    .line 360
    .local v2, success:Z
    :goto_49
    :try_start_49
    iget v1, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    .line 361
    .local v1, pos:I
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->requery()Z

    .line 367
    invoke-virtual {p0, v1}, Landroid/database/sqlite/SQLiteCursor;->moveToPosition(I)Z
    :try_end_51
    .catchall {:try_start_49 .. :try_end_51} :catchall_61

    .line 369
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 372
    if-eqz v2, :cond_68

    .line 373
    invoke-virtual {p0, v10}, Landroid/database/sqlite/SQLiteCursor;->onChange(Z)V

    move v3, v10

    .line 374
    goto :goto_16

    .line 356
    .end local v1           #pos:I
    .end local v2           #success:Z
    :catch_5d
    move-exception v3

    move-object v0, v3

    .line 357
    .local v0, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    .restart local v2       #success:Z
    goto :goto_49

    .line 369
    .end local v0           #e:Landroid/database/SQLException;
    .end local v2           #success:Z
    :catchall_61
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3

    .restart local v1       #pos:I
    .restart local v2       #success:Z
    :cond_68
    move v3, v9

    .line 376
    goto :goto_16
.end method

.method protected finalize()V
    .registers 4

    .prologue
    .line 585
    :try_start_0
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v1, :cond_3a

    .line 586
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->close()V

    .line 587
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finalizing cursor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " that has not been deactivated or closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    .local v0, message:Ljava/lang/String;
    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->notifyActiveCursorFinalized()V

    .line 596
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_35
    .catchall {:try_start_0 .. :try_end_35} :catchall_35

    .line 603
    .end local v0           #message:Ljava/lang/String;
    :catchall_35
    move-exception v1

    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    throw v1

    :cond_3a
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->finalize()V

    .line 605
    return-void
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 12
    .parameter "columnName"

    .prologue
    const/4 v9, -0x1

    .line 300
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    if-nez v6, :cond_20

    .line 301
    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    .line 302
    .local v1, columns:[Ljava/lang/String;
    array-length v0, v1

    .line 303
    .local v0, columnCount:I
    new-instance v4, Ljava/util/HashMap;

    const/high16 v6, 0x3f80

    invoke-direct {v4, v0, v6}, Ljava/util/HashMap;-><init>(IF)V

    .line 304
    .local v4, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_10
    if-ge v3, v0, :cond_1e

    .line 305
    aget-object v6, v1, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 307
    :cond_1e
    iput-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    .line 311
    .end local v0           #columnCount:I
    .end local v1           #columns:[Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_20
    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    .line 312
    .local v5, periodIndex:I
    if-eq v5, v9, :cond_4b

    .line 313
    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    .line 314
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "Cursor"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requesting column name with table name -- "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 318
    .end local v2           #e:Ljava/lang/Exception;
    :cond_4b
    iget-object v6, p0, Landroid/database/sqlite/SQLiteCursor;->mColumnNameMap:Ljava/util/Map;

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 319
    .local v3, i:Ljava/lang/Integer;
    if-eqz v3, :cond_5a

    .line 320
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 322
    :goto_59
    return v6

    :cond_5a
    move v6, v9

    goto :goto_59
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 382
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mColumns:[Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 268
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    .line 269
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 271
    :cond_9
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    return v0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method

.method public onMove(II)Z
    .registers 5
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    .line 258
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_1b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    if-lt p2, v0, :cond_1b

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v1}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v1

    add-int/2addr v0, v1

    if-lt p2, v0, :cond_1e

    .line 260
    :cond_1b
    invoke-direct {p0, p2}, Landroid/database/sqlite/SQLiteCursor;->fillWindow(I)V

    .line 263
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 4
    .parameter "observer"

    .prologue
    const v1, 0x7fffffff

    .line 176
    invoke-super {p0, p1}, Landroid/database/AbstractWindowedCursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 177
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    if-ne v1, v0, :cond_e

    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    if-eq v1, v0, :cond_29

    :cond_e
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    if-nez v0, :cond_29

    .line 179
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 181
    :try_start_15
    new-instance v0, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    invoke-direct {v0, p0}, Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;-><init>(Landroid/database/sqlite/SQLiteCursor;)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mNotificationHandler:Landroid/database/sqlite/SQLiteCursor$MainThreadNotificationHandler;

    .line 182
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z

    if-eqz v0, :cond_26

    .line 183
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->notifyDataSetChange()V

    .line 184
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteCursor;->mPendingData:Z
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2a

    .line 187
    :cond_26
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 191
    :cond_29
    return-void

    .line 187
    :catchall_2a
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public requery()Z
    .registers 6

    .prologue
    .line 513
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteCursor;->isClosed()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 514
    const/4 v3, 0x0

    .line 554
    :goto_7
    return v3

    .line 516
    :cond_8
    const-wide/16 v1, 0x0

    .line 524
    .local v1, timeStart:J
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 526
    :try_start_f
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v3, :cond_18

    .line 527
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v3}, Landroid/database/CursorWindow;->clear()V

    .line 529
    :cond_18
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mPos:I

    .line 531
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v3, p0}, Landroid/database/sqlite/SQLiteCursorDriver;->cursorRequeried(Landroid/database/Cursor;)V

    .line 532
    const/4 v3, -0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 533
    iget v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 534
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_44

    .line 536
    :try_start_2c
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mQuery:Landroid/database/sqlite/SQLiteQuery;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteQuery;->requery()V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_3f

    .line 538
    :try_start_31
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_44

    .line 541
    iget-object v3, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 549
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->requery()Z

    move-result v0

    .local v0, result:Z
    move v3, v0

    .line 554
    goto :goto_7

    .line 538
    .end local v0           #result:Z
    :catchall_3f
    move-exception v3

    :try_start_40
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v3
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_44

    .line 541
    :catchall_44
    move-exception v3

    iget-object v4, p0, Landroid/database/sqlite/SQLiteCursor;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v3
.end method

.method public setLoadStyle(II)V
    .registers 5
    .parameter "initialRead"
    .parameter "maxRead"

    .prologue
    .line 90
    iput p2, p0, Landroid/database/sqlite/SQLiteCursor;->mMaxRead:I

    .line 91
    iput p1, p0, Landroid/database/sqlite/SQLiteCursor;->mInitialRead:I

    .line 92
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>(Z)V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 93
    return-void
.end method

.method public setSelectionArguments([Ljava/lang/String;)V
    .registers 3
    .parameter "selectionArgs"

    .prologue
    .line 576
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mDriver:Landroid/database/sqlite/SQLiteCursorDriver;

    invoke-interface {v0, p1}, Landroid/database/sqlite/SQLiteCursorDriver;->setBindArguments([Ljava/lang/String;)V

    .line 577
    return-void
.end method

.method public setWindow(Landroid/database/CursorWindow;)V
    .registers 3
    .parameter "window"

    .prologue
    .line 559
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    if-eqz v0, :cond_18

    .line 560
    iget v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCursorState:I

    .line 561
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadLock()V

    .line 563
    :try_start_d
    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    invoke-virtual {v0}, Landroid/database/CursorWindow;->close()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_1b

    .line 565
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    .line 567
    const/4 v0, -0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteCursor;->mCount:I

    .line 569
    :cond_18
    iput-object p1, p0, Landroid/database/sqlite/SQLiteCursor;->mWindow:Landroid/database/CursorWindow;

    .line 570
    return-void

    .line 565
    :catchall_1b
    move-exception v0

    invoke-direct {p0}, Landroid/database/sqlite/SQLiteCursor;->queryThreadUnlock()V

    throw v0
.end method

.method public supportsUpdates()Z
    .registers 2

    .prologue
    .line 391
    invoke-super {p0}, Landroid/database/AbstractWindowedCursor;->supportsUpdates()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Landroid/database/sqlite/SQLiteCursor;->mEditTable:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method
