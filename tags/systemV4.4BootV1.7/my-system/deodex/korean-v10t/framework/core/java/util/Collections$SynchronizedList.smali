.class Ljava/util/Collections$SynchronizedList;
.super Ljava/util/Collections$SynchronizedCollection;
.source "Collections.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedList"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedCollection",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 552
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;)V

    .line 553
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    .line 554
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TE;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 557
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p1, l:Ljava/util/List;,"Ljava/util/List<TE;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedCollection;-><init>(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 558
    iput-object p1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    .line 559
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 656
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    instance-of v0, v0, Ljava/util/RandomAccess;

    if-eqz v0, :cond_10

    .line 657
    new-instance v0, Ljava/util/Collections$SynchronizedRandomAccessList;

    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Ljava/util/Collections$SynchronizedRandomAccessList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 659
    :goto_f
    return-object v0

    :cond_10
    move-object v0, p0

    goto :goto_f
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
    .line 636
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 637
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 638
    monitor-exit v0

    .line 639
    return-void

    .line 638
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 562
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 563
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 564
    monitor-exit v0

    .line 565
    return-void

    .line 564
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 568
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 569
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 570
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 575
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 576
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 577
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 581
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 583
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 588
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 589
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    .line 590
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 594
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 595
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 596
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 600
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    monitor-exit v0

    return v1

    .line 602
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 608
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 612
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 613
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 614
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 620
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 624
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 625
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 626
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public subList(II)Ljava/util/List;
    .registers 7
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 630
    .local p0, this:Ljava/util/Collections$SynchronizedList;,"Ljava/util/Collections$SynchronizedList<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedList;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedList;->list:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedList;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedList;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 632
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
