.class Ljava/util/TreeMap$AbstractMapIterator;
.super Ljava/lang/Object;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AbstractMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field backingMap:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field lastNode:Ljava/util/TreeMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field node:Ljava/util/TreeMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;",
            "Ljava/util/TreeMap$Entry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, this:Ljava/util/TreeMap$AbstractMapIterator;,"Ljava/util/TreeMap$AbstractMapIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Ljava/util/TreeMap$AbstractMapIterator;->backingMap:Ljava/util/TreeMap;

    .line 91
    iget v0, p1, Ljava/util/TreeMap;->modCount:I

    iput v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->expectedModCount:I

    .line 92
    iput-object p2, p0, Ljava/util/TreeMap$AbstractMapIterator;->node:Ljava/util/TreeMap$Entry;

    .line 93
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 96
    .local p0, this:Ljava/util/TreeMap$AbstractMapIterator;,"Ljava/util/TreeMap$AbstractMapIterator<TK;TV;>;"
    iget-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->node:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method final makeNext()V
    .registers 3

    .prologue
    .line 114
    .local p0, this:Ljava/util/TreeMap$AbstractMapIterator;,"Ljava/util/TreeMap$AbstractMapIterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/TreeMap$AbstractMapIterator;->backingMap:Ljava/util/TreeMap;

    iget v1, v1, Ljava/util/TreeMap;->modCount:I

    if-eq v0, v1, :cond_e

    .line 115
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 116
    :cond_e
    iget-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->node:Ljava/util/TreeMap$Entry;

    if-nez v0, :cond_18

    .line 117
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 119
    :cond_18
    iget-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->node:Ljava/util/TreeMap$Entry;

    iput-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->lastNode:Ljava/util/TreeMap$Entry;

    .line 120
    iget-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->node:Ljava/util/TreeMap$Entry;

    invoke-static {v0}, Ljava/util/TreeMap;->successor(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->node:Ljava/util/TreeMap$Entry;

    .line 121
    return-void
.end method

.method public final remove()V
    .registers 3

    .prologue
    .line 100
    .local p0, this:Ljava/util/TreeMap$AbstractMapIterator;,"Ljava/util/TreeMap$AbstractMapIterator<TK;TV;>;"
    iget v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/TreeMap$AbstractMapIterator;->backingMap:Ljava/util/TreeMap;

    iget v1, v1, Ljava/util/TreeMap;->modCount:I

    if-ne v0, v1, :cond_23

    .line 101
    iget-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->lastNode:Ljava/util/TreeMap$Entry;

    if-eqz v0, :cond_1d

    .line 102
    iget-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->backingMap:Ljava/util/TreeMap;

    iget-object v1, p0, Ljava/util/TreeMap$AbstractMapIterator;->lastNode:Ljava/util/TreeMap$Entry;

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->rbDelete(Ljava/util/TreeMap$Entry;)V

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->lastNode:Ljava/util/TreeMap$Entry;

    .line 104
    iget v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/TreeMap$AbstractMapIterator;->expectedModCount:I

    .line 111
    return-void

    .line 106
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 109
    :cond_23
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
