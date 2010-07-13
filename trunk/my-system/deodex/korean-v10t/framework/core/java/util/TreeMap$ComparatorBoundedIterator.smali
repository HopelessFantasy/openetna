.class Ljava/util/TreeMap$ComparatorBoundedIterator;
.super Ljava/util/TreeMap$AbstractMapIterator;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComparatorBoundedIterator"
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
.field private final cmp:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-TK;>;"
        }
    .end annotation
.end field

.field private final endKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;Ljava/lang/Object;)V
    .registers 5
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
    .line 177
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedIterator;,"Ljava/util/TreeMap$ComparatorBoundedIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    .local p3, end:Ljava/lang/Object;,"TK;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 178
    iput-object p3, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->endKey:Ljava/lang/Object;

    .line 179
    invoke-virtual {p1}, Ljava/util/TreeMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->cmp:Ljava/util/Comparator;

    .line 180
    return-void
.end method


# virtual methods
.method final cleanNext()V
    .registers 4

    .prologue
    .line 183
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedIterator;,"Ljava/util/TreeMap$ComparatorBoundedIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_15

    iget-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->endKey:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    iget-object v2, v2, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_15

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    .line 186
    :cond_15
    return-void
.end method

.method public hasNext()Z
    .registers 4

    .prologue
    .line 190
    .local p0, this:Ljava/util/TreeMap$ComparatorBoundedIterator;,"Ljava/util/TreeMap$ComparatorBoundedIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->endKey:Ljava/lang/Object;

    if-eqz v0, :cond_18

    iget-object v0, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->cmp:Ljava/util/Comparator;

    iget-object v1, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->node:Ljava/util/TreeMap$Entry;

    iget-object v1, v1, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    iget-object v2, p0, Ljava/util/TreeMap$ComparatorBoundedIterator;->endKey:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method
