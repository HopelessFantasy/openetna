.class public Landroid/database/sqlite/SQLiteQuery;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteQuery.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Cursor"


# instance fields
.field private mBindArgs:[Ljava/lang/String;

.field private mClosed:Z

.field private mOffsetIndex:I

.field private mQuery:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    .registers 6
    .parameter "db"
    .parameter "query"
    .parameter "offsetIndex"
    .parameter "bindArgs"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 51
    iput p3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    .line 52
    iput-object p2, p0, Landroid/database/sqlite/SQLiteQuery;->mQuery:Ljava/lang/String;

    .line 53
    iput-object p4, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    .line 54
    return-void
.end method

.method private final native native_column_count()I
.end method

.method private final native native_column_name(I)Ljava/lang/String;
.end method

.method private final native native_fill_window(Landroid/database/CursorWindow;IIII)I
.end method


# virtual methods
.method public bindDouble(ID)V
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 183
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 184
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_12

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindDouble(ID)V

    .line 185
    :cond_12
    return-void
.end method

.method public bindLong(IJ)V
    .registers 7
    .parameter "index"
    .parameter "value"

    .prologue
    .line 177
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 178
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_12

    invoke-super {p0, p1, p2, p3}, Landroid/database/sqlite/SQLiteProgram;->bindLong(IJ)V

    .line 179
    :cond_12
    return-void
.end method

.method public bindNull(I)V
    .registers 5
    .parameter "index"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 172
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_f

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteProgram;->bindNull(I)V

    .line 173
    :cond_f
    return-void
.end method

.method public bindString(ILjava/lang/String;)V
    .registers 5
    .parameter "index"
    .parameter "value"

    .prologue
    .line 189
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    const/4 v1, 0x1

    sub-int v1, p1, v1

    aput-object p2, v0, v1

    .line 190
    iget-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    if-nez v0, :cond_e

    invoke-super {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 191
    :cond_e
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 141
    invoke-super {p0}, Landroid/database/sqlite/SQLiteProgram;->close()V

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/database/sqlite/SQLiteQuery;->mClosed:Z

    .line 143
    return-void
.end method

.method columnCountLocked()I
    .registers 2

    .prologue
    .line 110
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 112
    :try_start_3
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteQuery;->native_column_count()I
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result v0

    .line 114
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method columnNameLocked(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 126
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V

    .line 128
    :try_start_3
    invoke-direct {p0, p1}, Landroid/database/sqlite/SQLiteQuery;->native_column_name(I)Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_b

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    return-object v0

    :catchall_b
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    throw v0
.end method

.method fillWindow(Landroid/database/CursorWindow;II)I
    .registers 15
    .parameter "window"
    .parameter "maxRead"
    .parameter "lastPos"

    .prologue
    .line 64
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 66
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v7, v0, Landroid/database/sqlite/SQLiteDatabase;->mLogStats:Z

    .line 67
    .local v7, logStats:Z
    if-eqz v7, :cond_3e

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v9, v0

    .line 69
    .local v9, startTime:J
    :goto_10
    :try_start_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->acquireReference()V
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_5e

    .line 71
    :try_start_13
    invoke-virtual {p1}, Landroid/database/CursorWindow;->acquireReference()V

    .line 75
    invoke-virtual {p1}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    iget v3, p0, Landroid/database/sqlite/SQLiteQuery;->mOffsetIndex:I

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/database/sqlite/SQLiteQuery;->native_fill_window(Landroid/database/CursorWindow;IIII)I

    move-result v8

    .line 82
    .local v8, numRows:I
    if-eqz v7, :cond_31

    .line 83
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    move-wide v2, v9

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(ZJJ)V
    :try_end_31
    .catchall {:try_start_13 .. :try_end_31} :catchall_59
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_31} :catch_42
    .catch Landroid/database/sqlite/SQLiteDatabaseCorruptException; {:try_start_13 .. :try_end_31} :catch_51

    .line 94
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_5e

    .line 97
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 98
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    move v0, v8

    .end local v8           #numRows:I
    :goto_3d
    return v0

    .line 67
    .end local v9           #startTime:J
    :cond_3e
    const-wide/16 v0, 0x0

    move-wide v9, v0

    goto :goto_10

    .line 87
    .restart local v9       #startTime:J
    :catch_42
    move-exception v0

    move-object v6, v0

    .line 89
    .local v6, e:Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 94
    :try_start_45
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_5e

    .line 97
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 98
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    goto :goto_3d

    .line 90
    .end local v6           #e:Ljava/lang/IllegalStateException;
    :catch_51
    move-exception v0

    move-object v6, v0

    .line 91
    .local v6, e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :try_start_53
    iget-object v0, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->onCorruption()V

    .line 92
    throw v6
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_59

    .line 94
    .end local v6           #e:Landroid/database/sqlite/SQLiteDatabaseCorruptException;
    :catchall_59
    move-exception v0

    :try_start_5a
    invoke-virtual {p1}, Landroid/database/CursorWindow;->releaseReference()V

    throw v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_5e

    .line 97
    :catchall_5e
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteQuery;->releaseReference()V

    .line 98
    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method requery()V
    .registers 9

    .prologue
    const-string v7, " "

    .line 149
    iget-object v5, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    if-eqz v5, :cond_55

    .line 150
    iget-object v5, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    array-length v4, v5

    .line 152
    .local v4, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    if-ge v2, v4, :cond_55

    .line 153
    add-int/lit8 v5, v2, 0x1

    :try_start_e
    iget-object v6, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-super {p0, v5, v6}, Landroid/database/sqlite/SQLiteProgram;->bindString(ILjava/lang/String;)V
    :try_end_15
    .catch Landroid/database/sqlite/SQLiteMisuseException; {:try_start_e .. :try_end_15} :catch_18

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 155
    :catch_18
    move-exception v5

    move-object v0, v5

    .line 156
    .local v0, e:Landroid/database/sqlite/SQLiteMisuseException;
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mQuery "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/database/sqlite/SQLiteQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    .local v1, errMsg:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    :goto_35
    if-ge v2, v4, :cond_46

    .line 158
    const-string v5, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v5, p0, Landroid/database/sqlite/SQLiteQuery;->mBindArgs:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 161
    :cond_46
    const-string v5, " "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 164
    .local v3, leakProgram:Ljava/lang/IllegalStateException;
    throw v3

    .line 167
    .end local v0           #e:Landroid/database/sqlite/SQLiteMisuseException;
    .end local v1           #errMsg:Ljava/lang/StringBuilder;
    .end local v2           #i:I
    .end local v3           #leakProgram:Ljava/lang/IllegalStateException;
    .end local v4           #len:I
    :cond_55
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQLiteQuery: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/database/sqlite/SQLiteQuery;->mQuery:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
