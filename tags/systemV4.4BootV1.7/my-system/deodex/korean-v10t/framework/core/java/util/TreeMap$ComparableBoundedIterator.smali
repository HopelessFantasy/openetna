.class Ljava/util/TreeMap$ComparableBoundedIterator;
.super Ljava/util/TreeMap$AbstractMapIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparableBoundedIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$AbstractMapIterator",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private final endKey:Ljava/lang/Comparable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Comparable",
            "<TK;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Comparable;)V
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
    .line 241
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedIterator;,"Ljava/util/TreeMap$ComparableBoundedIterator<TK;TV;>;"
    .local p1, treeMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, entry:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p3, endKey:Ljava/lang/Comparable;,"Ljava/lang/Comparable<TK;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 242
    iput-object p3, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->endKey:Ljava/lang/Comparable;

    .line 243
    return-void
.end method


# virtual methods
.method final cleanNext()V
    .registers 3

    .prologue
    .line 246
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedIterator;,"Ljava/util/TreeMap$ComparableBoundedIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_13

    iget-object v0, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->endKey:Ljava/lang/Comparable;

    iget-object v1, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_13

    .line 247
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    .line 249
    :cond_13
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 253
    .local p0, this:Ljava/util/TreeMap$ComparableBoundedIterator;,"Ljava/util/TreeMap$ComparableBoundedIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_12

    iget-object v0, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->endKey:Ljava/lang/Comparable;

    iget-object v1, p0, Ljava/util/TreeMap$ComparableBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
