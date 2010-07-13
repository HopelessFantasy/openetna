.class Ljava/util/TreeMap$SubMapEntrySet;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field subMap:Ljava/util/TreeMap$SubMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$SubMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap$SubMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap$SubMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 535
    .local p0, this:Ljava/util/TreeMap$SubMapEntrySet;,"Ljava/util/TreeMap$SubMapEntrySet<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 536
    iput-object p1, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    .line 537
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/TreeMap$SubMapEntrySet;,"Ljava/util/TreeMap$SubMapEntrySet<TK;TV;>;"
    const/4 v6, 0x0

    .line 571
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2c

    .line 572
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 573
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 574
    .local v2, key:Ljava/lang/Object;,"TK;"
    iget-object v5, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v5, v2}, Ljava/util/TreeMap$SubMap;->access$300(Ljava/util/TreeMap$SubMap;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 575
    iget-object v5, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v5, v2}, Ljava/util/TreeMap$SubMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .local v3, v1:Ljava/lang/Object;,"TV;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 576
    .local v4, v2:Ljava/lang/Object;,"TV;"
    if-nez v3, :cond_27

    if-nez v4, :cond_25

    const/4 v5, 0x1

    .line 579
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #v1:Ljava/lang/Object;,"TV;"
    .end local v4           #v2:Ljava/lang/Object;,"TV;"
    :goto_24
    return v5

    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v2       #key:Ljava/lang/Object;,"TK;"
    .restart local v3       #v1:Ljava/lang/Object;,"TV;"
    .restart local v4       #v2:Ljava/lang/Object;,"TV;"
    :cond_25
    move v5, v6

    .line 576
    goto :goto_24

    :cond_27
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_24

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #key:Ljava/lang/Object;,"TK;"
    .end local v3           #v1:Ljava/lang/Object;,"TV;"
    .end local v4           #v2:Ljava/lang/Object;,"TV;"
    :cond_2c
    move v5, v6

    .line 579
    goto :goto_24
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 541
    .local p0, this:Ljava/util/TreeMap$SubMapEntrySet;,"Ljava/util/TreeMap$SubMapEntrySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v0}, Ljava/util/TreeMap$SubMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 6
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
    .line 546
    .local p0, this:Ljava/util/TreeMap$SubMapEntrySet;,"Ljava/util/TreeMap$SubMapEntrySet<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v2}, Ljava/util/TreeMap$SubMap;->firstEntry()Ljava/util/TreeMap$Entry;

    move-result-object v1

    .line 547
    .local v1, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    iget-boolean v2, v2, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v2, :cond_38

    .line 548
    iget-object v2, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v2}, Ljava/util/TreeMap$SubMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 549
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_28

    .line 550
    new-instance v2, Ljava/util/TreeMap$ComparableBoundedEntryIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    iget-object v4, v4, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Ljava/util/TreeMap$ComparableBoundedEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V

    .line 554
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :goto_27
    return-object v2

    .line 552
    .restart local v0       #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_28
    new-instance v2, Ljava/util/TreeMap$ComparatorBoundedEntryIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    iget-object v4, v4, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-direct {v2, v3, v1, v4}, Ljava/util/TreeMap$ComparatorBoundedEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Object;)V

    goto :goto_27

    .line 554
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_38
    new-instance v2, Ljava/util/TreeMap$UnboundedEntryIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapEntrySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/TreeMap$UnboundedEntryIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    goto :goto_27
.end method

.method public size()I
    .registers 4

    .prologue
    .line 559
    .local p0, this:Ljava/util/TreeMap$SubMapEntrySet;,"Ljava/util/TreeMap$SubMapEntrySet<TK;TV;>;"
    const/4 v1, 0x0

    .line 560
    .local v1, size:I
    invoke-virtual {p0}, Ljava/util/TreeMap$SubMapEntrySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 561
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 562
    add-int/lit8 v1, v1, 0x1

    .line 563
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_5

    .line 565
    :cond_11
    return v1
.end method
