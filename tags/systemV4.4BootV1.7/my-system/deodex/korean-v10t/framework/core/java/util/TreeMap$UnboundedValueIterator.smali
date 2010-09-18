.class Ljava/util/TreeMap$UnboundedValueIterator;
.super Ljava/util/TreeMap$AbstractMapIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnboundedValueIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/TreeMap$AbstractMapIterator",
        "<TK;TV;>;",
        "Ljava/util/Iterator",
        "<TV;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/TreeMap;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, this:Ljava/util/TreeMap$UnboundedValueIterator;,"Ljava/util/TreeMap$UnboundedValueIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 163
    return-void

    .line 162
    :cond_9
    iget-object v0, p1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    invoke-static {v0}, Ljava/util/TreeMap;->minimum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_5
.end method

.method public constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V
    .registers 3
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
    .line 158
    .local p0, this:Ljava/util/TreeMap$UnboundedValueIterator;,"Ljava/util/TreeMap$UnboundedValueIterator<TK;TV;>;"
    .local p1, treeMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 159
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
    .line 166
    .local p0, this:Ljava/util/TreeMap$UnboundedValueIterator;,"Ljava/util/TreeMap$UnboundedValueIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$UnboundedValueIterator;->makeNext()V

    .line 167
    iget-object v0, p0, Ljava/util/TreeMap$UnboundedValueIterator;->lastNode:Ljava/util/TreeMap$Entry;

    iget-object v0, v0, Ljava/util/TreeMap$Entry;->value:Ljava/lang/Object;

    return-object v0
.end method
