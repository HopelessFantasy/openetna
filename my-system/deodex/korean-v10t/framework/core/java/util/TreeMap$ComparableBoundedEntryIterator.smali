.class Ljava/util/TreeMap$ComparableBoundedEntryIterator;
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
    name = "ComparableBoundedEntryIterator"
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
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
    .line 262
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedEntryIterator;,"Ljava/util/TreeMap$ComparableBoundedEntryIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p3, end:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$ComparableBoundedIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V

    .line 263
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 257
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedEntryIterator;,"Ljava/util/TreeMap$ComparableBoundedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparableBoundedEntryIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 266
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedEntryIterator;,"Ljava/util/TreeMap$ComparableBoundedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparableBoundedEntryIterator;->makeNext()V

    .line 267
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparableBoundedEntryIterator;->cleanNext()V

    .line 268
    iget-object v0, p0, Ljava/util/TreeMap$ComparableBoundedEntryIterator;->lastNode:Ljava/util/TreeMap$Entry;

    return-object v0
.end method
