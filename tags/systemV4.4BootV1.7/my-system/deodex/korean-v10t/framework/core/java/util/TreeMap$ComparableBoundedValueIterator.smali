.class Ljava/util/TreeMap$ComparableBoundedValueIterator;
.super Ljava/util/TreeMap$ComparableBoundedIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparableBoundedValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$ComparableBoundedIterator",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V
    .registers 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;",
            "Ljava/lang/Comparable",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedValueIterator;,"Ljava/util/TreeMap$ComparableBoundedValueIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p3, end:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$ComparableBoundedIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V

    .line 293
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 296
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedValueIterator;,"Ljava/util/TreeMap$ComparableBoundedValueIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparableBoundedValueIterator;->makeNext()V

    .line 297
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparableBoundedValueIterator;->cleanNext()V

    .line 298
    iget-object v0, p0, Ljava/util/TreeMap$ComparableBoundedValueIterator;->lastNode:Ljava/util/TreeMap$Entry;

    iget-object v0, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
