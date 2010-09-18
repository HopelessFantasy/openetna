.class public Landroid/database/sqlite/SQLiteStatement;
.super Landroid/database/sqlite/SQLiteProgram;
.source "SQLiteStatement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SQLiteStatement"


# instance fields
.field private final mSql:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .registers 4
    .parameter "db"
    .parameter "sql"

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Landroid/database/sqlite/SQLiteProgram;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mSql:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private final native native_1x1_long()J
.end method

.method private final native native_1x1_string()Ljava/lang/String;
.end method

.method private final native native_execute()V
.end method


# virtual methods
.method public execute()V
    .registers 8

    .prologue
    .line 57
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 58
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mLogStats:Z

    .line 59
    .local v6, logStats:Z
    if-eqz v6, :cond_2b

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v2, v0

    .line 61
    .local v2, startTime:J
    :goto_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 66
    :try_start_13
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()V

    .line 67
    if-eqz v6, :cond_22

    .line 68
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(ZJJ)V
    :try_end_22
    .catchall {:try_start_13 .. :try_end_22} :catchall_2f

    .line 71
    :cond_22
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 72
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    .line 74
    return-void

    .line 59
    .end local v2           #startTime:J
    :cond_2b
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_10

    .line 71
    .restart local v2       #startTime:J
    :catchall_2f
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 72
    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public executeInsert()J
    .registers 8

    .prologue
    .line 87
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 88
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mLogStats:Z

    .line 89
    .local v6, logStats:Z
    if-eqz v6, :cond_31

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v2, v0

    .line 91
    .local v2, startTime:J
    :goto_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 96
    :try_start_13
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_execute()V

    .line 97
    if-eqz v6, :cond_22

    .line 98
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(ZJJ)V

    .line 100
    :cond_22
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lastInsertRow()J
    :try_end_27
    .catchall {:try_start_13 .. :try_end_27} :catchall_35

    move-result-wide v0

    .line 102
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 103
    iget-object v4, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v0

    .line 89
    .end local v2           #startTime:J
    :cond_31
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_10

    .line 102
    .restart local v2       #startTime:J
    :catchall_35
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 103
    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public simpleQueryForLong()J
    .registers 10

    .prologue
    .line 116
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 117
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mLogStats:Z

    .line 118
    .local v6, logStats:Z
    if-eqz v6, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v2, v0

    .line 120
    .local v2, startTime:J
    :goto_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 125
    :try_start_13
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_long()J

    move-result-wide v7

    .line 126
    .local v7, retValue:J
    if-eqz v6, :cond_23

    .line 127
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(ZJJ)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_30

    .line 131
    :cond_23
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 132
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-wide v7

    .line 118
    .end local v2           #startTime:J
    .end local v7           #retValue:J
    :cond_2c
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_10

    .line 131
    .restart local v2       #startTime:J
    :catchall_30
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 132
    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method

.method public simpleQueryForString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 145
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->lock()V

    .line 146
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    iget-boolean v6, v0, Landroid/database/sqlite/SQLiteDatabase;->mLogStats:Z

    .line 147
    .local v6, logStats:Z
    if-eqz v6, :cond_2c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    move-wide v2, v0

    .line 149
    .local v2, startTime:J
    :goto_10
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->acquireReference()V

    .line 154
    :try_start_13
    invoke-direct {p0}, Landroid/database/sqlite/SQLiteStatement;->native_1x1_string()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, retValue:Ljava/lang/String;
    if-eqz v6, :cond_23

    .line 156
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->logTimeStat(ZJJ)V
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_30

    .line 160
    :cond_23
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 161
    iget-object v0, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    return-object v7

    .line 147
    .end local v2           #startTime:J
    .end local v7           #retValue:Ljava/lang/String;
    :cond_2c
    const-wide/16 v0, 0x0

    move-wide v2, v0

    goto :goto_10

    .line 160
    .restart local v2       #startTime:J
    :catchall_30
    move-exception v0

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->releaseReference()V

    .line 161
    iget-object v1, p0, Landroid/database/sqlite/SQLiteStatement;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->unlock()V

    throw v0
.end method
