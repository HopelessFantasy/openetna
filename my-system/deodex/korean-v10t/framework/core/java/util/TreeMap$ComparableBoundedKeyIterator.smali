.class Ljava/util/TreeMap$ComparableBoundedKeyIterator;
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
    name = "ComparableBoundedKeyIterator"
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
        "<TK;>;"
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
    .line 277
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedKeyIterator;,"Ljava/util/TreeMap$ComparableBoundedKeyIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p3, end:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$ComparableBoundedIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V

    .line 278
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedKeyIterator;,"Ljava/util/TreeMap$ComparableBoundedKeyIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparableBoundedKeyIterator;->makeNext()V

    .line 282
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparableBoundedKeyIterator;->cleanNext()V

    .line 283
    iget-object v0, p0, Ljava/util/TreeMap$ComparableBoundedKeyIterator;->lastNode:Ljava/util/TreeMap$Entry;

    iget-object v0, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method
