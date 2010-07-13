.class Ljava/util/TreeMap$ComparatorBoundedValueIterator;
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
    name = "ComparatorBoundedValueIterator"
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
        "<TV;>;"
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
    .line 226
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedValueIterator;,"Ljava/util/TreeMap$ComparatorBoundedValueIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p3, end:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1, p2, p3}, Ljava/util/TreeMap$ComparatorBoundedIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Object;)V

    .line 227
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
    .line 230
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedValueIterator;,"Ljava/util/TreeMap$ComparatorBoundedValueIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparatorBoundedValueIterator;->makeNext()V

    .line 231
    invoke-virtual {p0}, Ljava/util/TreeMap$ComparatorBoundedValueIterator;->cleanNext()V

    .line 232
    iget-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedValueIterator;->lastNode:Ljava/util/TreeMap$Entry;

    iget-object v0, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
