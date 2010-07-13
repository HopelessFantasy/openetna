.class Ljava/util/TreeMap$ComparatorBoundedEntryIterator;
.super Ljava/util/TreeMap$ComparatorBoundedIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparatorBoundedEntryIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$ComparatorBoundedIterator",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Object;)V
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
            "<TK;TV;>;TK;)V"
        }
    .end annotation

    .prologue
    .line 198
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedEntryIterator;,"Ljava/util/TreeMap$ComparatorBoundedEntryIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p3, end:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$ComparatorBoundedIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Object;)V

    .line 199
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 194
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedEntryIterator;,"Ljava/util/TreeMap$ComparatorBoundedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparatorBoundedEntryIterator;->next()Ljava/util/Map$Entry;

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
    .line 202
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedEntryIterator;,"Ljava/util/TreeMap$ComparatorBoundedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparatorBoundedEntryIterator;->makeNext()V

    .line 203
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparatorBoundedEntryIterator;->cleanNext()V

    .line 204
    iget-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedEntryIterator;->lastNode:Ljava/util/TreeMap$Entry;

    return-object v0
.end method
