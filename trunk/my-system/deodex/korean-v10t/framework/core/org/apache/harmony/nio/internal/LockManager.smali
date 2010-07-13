.class final Lorg/apache/harmony/nio/internal/LockManager;
.super Ljava/lang/Object;
.source "LockManager.java"


# instance fields
.field private final lockComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field

.field private final locks:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Ljava/nio/channels/FileLock;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lorg/apache/harmony/nio/internal/LockManager$1;

    invoke-direct {v0, p0}, Lorg/apache/harmony/nio/internal/LockManager$1;-><init>(Lorg/apache/harmony/nio/internal/LockManager;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/LockManager;->lockComparator:Ljava/util/Comparator;

    .line 41
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Lorg/apache/harmony/nio/internal/LockManager;->lockComparator:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lorg/apache/harmony/nio/internal/LockManager;->locks:Ljava/util/SortedSet;

    .line 49
    return-void
.end method


# virtual methods
.method declared-synchronized addLock(Ljava/nio/channels/FileLock;)V
    .registers 10
    .parameter "lock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/channels/OverlappingFileLockException;
        }
    .end annotation

    .prologue
    .line 58
    monitor-enter p0

    :try_start_1
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    add-long v2, v4, v6

    .line 59
    .local v2, lockEnd:J
    iget-object v4, p0, Lorg/apache/harmony/nio/internal/LockManager;->locks:Ljava/util/SortedSet;

    invoke-interface {v4}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, keyItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/FileLock;>;"
    :cond_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/channels/FileLock;

    .line 61
    .local v0, existingLock:Ljava/nio/channels/FileLock;
    invoke-virtual {v0}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_2c

    .line 70
    .end local v0           #existingLock:Ljava/nio/channels/FileLock;
    :cond_25
    iget-object v4, p0, Lorg/apache/harmony/nio/internal/LockManager;->locks:Ljava/util/SortedSet;

    invoke-interface {v4, p1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_40

    .line 71
    monitor-exit p0

    return-void

    .line 66
    .restart local v0       #existingLock:Ljava/nio/channels/FileLock;
    :cond_2c
    :try_start_2c
    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->position()J

    move-result-wide v4

    invoke-virtual {p1}, Ljava/nio/channels/FileLock;->size()J

    move-result-wide v6

    invoke-virtual {v0, v4, v5, v6, v7}, Ljava/nio/channels/FileLock;->overlaps(JJ)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 67
    new-instance v4, Ljava/nio/channels/OverlappingFileLockException;

    invoke-direct {v4}, Ljava/nio/channels/OverlappingFileLockException;-><init>()V

    throw v4
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_40

    .line 58
    .end local v0           #existingLock:Ljava/nio/channels/FileLock;
    .end local v1           #keyItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/nio/channels/FileLock;>;"
    .end local v2           #lockEnd:J
    :catchall_40
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method declared-synchronized removeLock(Ljava/nio/channels/FileLock;)V
    .registers 3
    .parameter "lock"

    .prologue
    .line 78
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/LockManager;->locks:Ljava/util/SortedSet;

    invoke-interface {v0, p1}, Ljava/util/SortedSet;->remove(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 79
    monitor-exit p0

    return-void

    .line 78
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method
