.class Ljava/util/Collections$SynchronizedCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2a61f84d099c99b5L


# instance fields
.field final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field

.field final mutex:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 407
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 408
    iput-object p1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    .line 409
    iput-object p0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    .line 410
    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 412
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 413
    iput-object p1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    .line 414
    iput-object p2, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    .line 415
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 503
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 504
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 505
    monitor-exit v0

    .line 506
    return-void

    .line 505
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 419
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 420
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 424
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 425
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 426
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 430
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 431
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 432
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 436
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 438
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 442
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 443
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 444
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isEmpty()Z
    .registers 3

    .prologue
    .line 448
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    monitor-exit v0

    return v1

    .line 450
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 454
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 455
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 456
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 460
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 462
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 466
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 467
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 468
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 472
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 473
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 474
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 478
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    monitor-exit v0

    return v1

    .line 480
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 484
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 486
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 497
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 499
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 491
    .local p0, this:Ljava/util/Collections$SynchronizedCollection;,"Ljava/util/Collections$SynchronizedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedCollection;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 492
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 493
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method
