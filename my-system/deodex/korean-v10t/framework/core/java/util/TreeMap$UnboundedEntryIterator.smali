.class Ljava/util/TreeMap$UnboundedEntryIterator;
.super Ljava/util/TreeMap$AbstractMapIterator;
.source "TreeMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/TreeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnboundedEntryIterator"
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
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
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
    .line 131
    .local p0, this:Ljava/util/TreeMap$UnboundedEntryIterator;,"Ljava/util/TreeMap$UnboundedEntryIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 132
    return-void

    .line 131
    :cond_9
    iget-object v0, p1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    invoke-static {v0}, Ljava/util/TreeMap;->minimum(Ljava/util/TreeMap$Entry;)Ljava/util/TreeMap$Entry;

    move-result-object v0

    goto :goto_5
.end method

.method constructor <init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V
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
    .line 127
    .local p0, this:Ljava/util/TreeMap$UnboundedEntryIterator;,"Ljava/util/TreeMap$UnboundedEntryIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, startNode:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 128
    return-void
.end method


# virtual methods
.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 124
    .local p0, this:Ljava/util/TreeMap$UnboundedEntryIterator;,"Ljava/util/TreeMap$UnboundedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$UnboundedEntryIterator;->next()Ljava/util/Map$Entry;

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
    .line 135
    .local p0, this:Ljava/util/TreeMap$UnboundedEntryIterator;,"Ljava/util/TreeMap$UnboundedEntryIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$UnboundedEntryIterator;->makeNext()V

    .line 136
    iget-object v0, p0, Ljava/util/TreeMap$UnboundedEntryIterator;->lastNode:Ljava/util/TreeMap$Entry;

    return-object v0
.end method
