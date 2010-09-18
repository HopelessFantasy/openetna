.class Ljava/util/TreeMap$SubMapValuesCollection;
.super Ljava/util/AbstractCollection;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SubMapValuesCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TV;>;"
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
.method public constructor <init>(Ljava/util/TreeMap$SubMap;)V
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
    .line 629
    .local p0, this:Ljava/util/TreeMap$SubMapValuesCollection;,"Ljava/util/TreeMap$SubMapValuesCollection<TK;TV;>;"
    .local p1, subMap:Ljava/util/TreeMap$SubMap;,"Ljava/util/TreeMap$SubMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 630
    iput-object p1, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    .line 631
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .registers 2

    .prologue
    .line 635
    .local p0, this:Ljava/util/TreeMap$SubMapValuesCollection;,"Ljava/util/TreeMap$SubMapValuesCollection<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

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
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 640
    .local p0, this:Ljava/util/TreeMap$SubMapValuesCollection;,"Ljava/util/TreeMap$SubMapValuesCollection<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v2}, Ljava/util/TreeMap$SubMap;->firstEntry()Ljava/util/TreeMap$Entry;

    move-result-object v1

    .line 641
    .local v1, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    iget-object v2, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    iget-boolean v2, v2, Ljava/util/TreeMap$SubMap;->hasEnd:Z

    if-eqz v2, :cond_38

    .line 642
    iget-object v2, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-virtual {v2}, Ljava/util/TreeMap$SubMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 643
    .local v0, cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_28

    .line 644
    new-instance v2, Ljava/util/TreeMap$ComparableBoundedValueIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    iget-object v4, v4, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/TreeMap;->access$100(Ljava/lang/Object;)Ljava/lang/Comparable;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Ljava/util/TreeMap$ComparableBoundedValueIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V

    .line 648
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :goto_27
    return-object v2

    .line 646
    .restart local v0       #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_28
    new-instance v2, Ljava/util/TreeMap$ComparatorBoundedValueIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    iget-object v4, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    iget-object v4, v4, Ljava/util/TreeMap$SubMap;->endKey:Ljava/lang/Object;

    invoke-direct {v2, v3, v1, v4}, Ljava/util/TreeMap$ComparatorBoundedValueIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Object;)V

    goto :goto_27

    .line 648
    .end local v0           #cmp:Ljava/util/Comparator;,"Ljava/util/Comparator<-TK;>;"
    :cond_38
    new-instance v2, Ljava/util/TreeMap$UnboundedValueIterator;

    iget-object v3, p0, Ljava/util/TreeMap$SubMapValuesCollection;->subMap:Ljava/util/TreeMap$SubMap;

    invoke-static {v3}, Ljava/util/TreeMap$SubMap;->access$200(Ljava/util/TreeMap$SubMap;)Ljava/util/TreeMap;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/util/TreeMap$UnboundedValueIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    goto :goto_27
.end method

.method public size()I
    .registers 4

    .prologue
    .line 653
    .local p0, this:Ljava/util/TreeMap$SubMapValuesCollection;,"Ljava/util/TreeMap$SubMapValuesCollection<TK;TV;>;"
    const/4 v0, 0x0

    .line 654
    .local v0, cnt:I
    invoke-virtual {p0}, Ljava/util/TreeMap$SubMapValuesCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TV;>;"
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 655
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 656
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 658
    :cond_11
    return v0
.end method
