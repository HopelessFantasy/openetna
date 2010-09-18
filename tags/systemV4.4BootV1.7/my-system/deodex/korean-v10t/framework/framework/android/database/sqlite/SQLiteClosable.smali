.class public abstract Landroid/database/sqlite/SQLiteClosable;
.super Ljava/lang/Object;
.source "SQLiteClosable.java"


# instance fields
.field private mLock:Ljava/lang/Object;

.field private mReferenceCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public acquireReference()V
    .registers 4

    .prologue
    .line 29
    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 30
    :try_start_3
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-gtz v1, :cond_12

    .line 31
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "attempt to acquire a reference on a close SQLiteClosable"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 35
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw v1

    .line 34
    :cond_12
    :try_start_12
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 35
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_f

    .line 36
    return-void
.end method

.method protected abstract onAllReferencesReleased()V
.end method

.method protected onAllReferencesReleasedFromContainer()V
    .registers 1

    .prologue
    .line 26
    return-void
.end method

.method public releaseReference()V
    .registers 4

    .prologue
    .line 39
    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_3
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 41
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_10

    .line 42
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleased()V

    .line 44
    :cond_10
    monitor-exit v0

    .line 45
    return-void

    .line 44
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public releaseReferenceFromContainer()V
    .registers 4

    .prologue
    .line 48
    iget-object v0, p0, Landroid/database/sqlite/SQLiteClosable;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 49
    :try_start_3
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    .line 50
    iget v1, p0, Landroid/database/sqlite/SQLiteClosable;->mReferenceCount:I

    if-nez v1, :cond_10

    .line 51
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteClosable;->onAllReferencesReleasedFromContainer()V

    .line 53
    :cond_10
    monitor-exit v0

    .line 54
    return-void

    .line 53
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
