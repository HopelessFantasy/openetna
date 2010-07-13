.class Ljava/util/TreeMap$SubMapKeySet;
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
    name = "SubMapKeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TK;>;",
        "Ljava/util/Set",
        "<TK;>;"
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
    .line 587
    .local p0, this:Ljava/util/TreeMap$SubMapKeySet;,"Ljava/util/TreeMap$SubMapKeySet<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 588
    iput-object p1, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    .line 589
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 593
    .local p0, this:Ljava/util/TreeMap$SubMapKeySet;,"Ljava/util/TreeMap$SubMapKeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v0, p1}, Ljava/util/TreeMap$SubMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 598
    .local p0, this:Ljava/util/TreeMap$SubMapKeySet;,"Ljava/util/TreeMap$SubMapKeySet<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

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
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 614
    .local p0, this:Ljava/util/TreeMap$SubMapKeySet;,"Ljava/util/TreeMap$SubMapKeySet<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v2}, Ljava/util/TreeMap$SubMap;->firstEntry()Ljava/util/TreeMap$Entry;

    move-result-object v1

    .line 615
    .local v1, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    iget-boolean v2, v2, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v2, :cond_38

    .line 616
    iget-object v2, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v2}, Ljava/util/TreeMap$SubMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 617
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_28

    .line 618
    new-instance v2, Ljava/util/TreeMap$ComparableBoundedKeyIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    iget-object v4, v4, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Ljava/util/TreeMap$ComparableBoundedKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V

    .line 622
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :goto_27
    return-object v2

    .line 620
    .restart local v0       #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_28
    new-instance v2, Ljava/util/TreeMap$ComparatorBoundedKeyIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    iget-object v4, v4, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-direct {v2, v3, v1, v4}, Ljava/util/TreeMap$ComparatorBoundedKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Object;)V

    goto :goto_27

    .line 622
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_38
    new-instance v2, Ljava/util/TreeMap$UnboundedKeyIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapKeySet;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/TreeMap$UnboundedKeyIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    goto :goto_27
.end method

.method public size()I
    .registers 4

    .prologue
    .line 603
    .local p0, this:Ljava/util/TreeMap$SubMapKeySet;,"Ljava/util/TreeMap$SubMapKeySet<TK;TV;>;"
    const/4 v1, 0x0

    .line 604
    .local v1, size:I
    invoke-virtual {p0}, Ljava/util/TreeMap$SubMapKeySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 605
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TK;>;"
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 606
    add-int/lit8 v1, v1, 0x1

    .line 607
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_5

    .line 609
    :cond_11
    return v1
.end method
