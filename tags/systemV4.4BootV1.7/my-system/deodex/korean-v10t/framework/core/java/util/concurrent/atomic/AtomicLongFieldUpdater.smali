.class public abstract Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
.super Ljava/lang/Object;
.source "AtomicLongFieldUpdater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;,
        Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 52
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    return-void
.end method

.method public static newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;
    .registers 3
    .parameter
    .parameter "fieldName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TU;>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/atomic/AtomicLongFieldUpdater",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p0, tclass:Ljava/lang/Class;,"Ljava/lang/Class<TU;>;"
    sget-boolean v0, Ljava/util/concurrent/atomic/AtomicLong;->VM_SUPPORTS_LONG_CAS:Z

    if-eqz v0, :cond_a

    .line 44
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$CASUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 46
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;

    invoke-direct {v0, p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater$LockedUpdater;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_9
.end method


# virtual methods
.method public addAndGet(Ljava/lang/Object;J)J
    .registers 10
    .parameter
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .prologue
    .line 203
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 204
    .local v2, current:J
    add-long v4, v2, p2

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 205
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    return-wide v4
.end method

.method public abstract compareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method

.method public decrementAndGet(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 188
    .local v2, current:J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 189
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    return-wide v4
.end method

.method public abstract get(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation
.end method

.method public getAndAdd(Ljava/lang/Object;J)J
    .registers 10
    .parameter
    .parameter "delta"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .prologue
    .line 158
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 159
    .local v2, current:J
    add-long v4, v2, p2

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 160
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    return-wide v2
.end method

.method public getAndDecrement(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 142
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 143
    .local v2, current:J
    const-wide/16 v0, 0x1

    sub-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 144
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    return-wide v2
.end method

.method public getAndIncrement(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 128
    .local v2, current:J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 129
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    return-wide v2
.end method

.method public getAndSet(Ljava/lang/Object;J)J
    .registers 10
    .parameter
    .parameter "newValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)J"
        }
    .end annotation

    .prologue
    .line 114
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .local v2, current:J
    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    .line 115
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    return-wide v2
.end method

.method public incrementAndGet(Ljava/lang/Object;)J
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)J"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;,"Ljava/util/concurrent/atomic/AtomicLongFieldUpdater<TT;>;"
    .local p1, obj:Ljava/lang/Object;,"TT;"
    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->get(Ljava/lang/Object;)J

    move-result-wide v2

    .line 173
    .local v2, current:J
    const-wide/16 v0, 0x1

    add-long v4, v2, v0

    .local v4, next:J
    move-object v0, p0

    move-object v1, p1

    .line 174
    invoke-virtual/range {v0 .. v5}, Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;->compareAndSet(Ljava/lang/Object;JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    return-wide v4
.end method

.method public abstract set(Ljava/lang/Object;J)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;J)V"
        }
    .end annotation
.end method

.method public abstract weakCompareAndSet(Ljava/lang/Object;JJ)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;JJ)Z"
        }
    .end annotation
.end method
