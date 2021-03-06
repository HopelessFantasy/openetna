.class Ljava/util/Collections$SynchronizedSortedMap;
.super Ljava/util/Collections$SynchronizedMap;
.source "Collections.java"

# interfaces
.implements Ljava/util/SortedMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SynchronizedSortedMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Collections$SynchronizedMap",
        "<TK;TV;>;",
        "Ljava/util/SortedMap",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7a194bdf48d1f3d1L


# instance fields
.field private final sm:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/SortedMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 820
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;)V

    .line 821
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 822
    return-void
.end method

.method constructor <init>(Ljava/util/SortedMap;Ljava/lang/Object;)V
    .registers 3
    .parameter
    .parameter "mutex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TK;TV;>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 825
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/Collections$SynchronizedMap;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 826
    iput-object p1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    .line 827
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
    .line 869
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 870
    :try_start_3
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 871
    monitor-exit v0

    .line 872
    return-void

    .line 871
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation

    .prologue
    .line 830
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 831
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 832
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public firstKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 836
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 837
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 838
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 842
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, endKey:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 843
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 845
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public lastKey()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 849
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 850
    :try_start_3
    iget-object v1, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v1}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 851
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 855
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    .local p2, endKey:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 856
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 858
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method

.method public tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedMap",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 862
    .local p0, this:Ljava/util/Collections$SynchronizedSortedMap;,"Ljava/util/Collections$SynchronizedSortedMap<TK;TV;>;"
    .local p1, startKey:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    monitor-enter v0

    .line 863
    :try_start_3
    new-instance v1, Ljava/util/Collections$SynchronizedSortedMap;

    iget-object v2, p0, Ljava/util/Collections$SynchronizedSortedMap;->sm:Ljava/util/SortedMap;

    invoke-interface {v2, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    iget-object v3, p0, Ljava/util/Collections$SynchronizedSortedMap;->mutex:Ljava/lang/Object;

    invoke-direct {v1, v2, v3}, Ljava/util/Collections$SynchronizedSortedMap;-><init>(Ljava/util/SortedMap;Ljava/lang/Object;)V

    monitor-exit v0

    return-object v1

    .line 865
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v1
.end method
