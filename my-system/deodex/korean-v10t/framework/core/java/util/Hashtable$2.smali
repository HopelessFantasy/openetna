.class Ljava/util/Hashtable$2;
.super Ljava/util/AbstractSet;
.source "Hashtable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/Hashtable;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/Hashtable;


# direct methods
.method constructor <init>(Ljava/util/Hashtable;)V
    .registers 2
    .parameter

    .prologue
    .line 498
    .local p0, this:Ljava/util/Hashtable$2;,"Ljava/util/Hashtable.2;"
    iput-object p1, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 470
    .local p0, this:Ljava/util/Hashtable$2;,"Ljava/util/Hashtable.2;"
    iget-object v0, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 471
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    .line 490
    .local p0, this:Ljava/util/Hashtable$2;,"Ljava/util/Hashtable.2;"
    iget-object v3, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    monitor-enter v3

    .line 491
    :try_start_3
    iget-object v4, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/Hashtable;->getEntry(Ljava/lang/Object;)Ljava/util/Hashtable$Entry;

    move-result-object v1

    .line 493
    .local v1, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v3

    return v2

    .line 494
    .end local v1           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    :catchall_17
    move-exception v2

    monitor-exit v3
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_17

    throw v2
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 499
    .local p0, this:Ljava/util/Hashtable$2;,"Ljava/util/Hashtable.2;"
    new-instance v0, Ljava/util/Hashtable$HashIterator;

    iget-object v1, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable$2$1;

    invoke-direct {v2, p0}, Ljava/util/Hashtable$2$1;-><init>(Ljava/util/Hashtable$2;)V

    invoke-direct {v0, v1, v2}, Ljava/util/Hashtable$HashIterator;-><init>(Ljava/util/Hashtable;Ljava/util/MapEntry$Type;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .line 476
    .local p0, this:Ljava/util/Hashtable$2;,"Ljava/util/Hashtable.2;"
    iget-object v0, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 477
    :try_start_3
    invoke-virtual {p0, p1}, Ljava/util/Hashtable$2;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 478
    iget-object v1, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const/4 v1, 0x1

    monitor-exit v0

    move v0, v1

    .line 483
    :goto_17
    return v0

    .restart local p1
    :cond_18
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_17

    .line 484
    .end local p1
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public size()I
    .registers 3

    .prologue
    .line 463
    .local p0, this:Ljava/util/Hashtable$2;,"Ljava/util/Hashtable.2;"
    iget-object v0, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-object v1, p0, Ljava/util/Hashtable$2;->this$0:Ljava/util/Hashtable;

    iget v1, v1, Ljava/util/Hashtable;->elementCount:I

    monitor-exit v0

    return v1

    .line 465
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method
