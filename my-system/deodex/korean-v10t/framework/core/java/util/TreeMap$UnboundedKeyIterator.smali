.class Ljava/util/TreeMap$UnboundedKeyIterator;
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
    name = "UnboundedKeyIterator"
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
        "<TK;>;"
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
    .line 146
    .local p0, this:Ljava/util/TreeMap$UnboundedKeyIterator;,"Ljava/util/TreeMap$UnboundedKeyIterator<TK;TV;>;"
    .local p1, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    iget-object v0, p1, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    if-nez v0, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-direct {p0, p1, v0}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 147
    return-void

    .line 146
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
    .line 142
    .local p0, this:Ljava/util/TreeMap$UnboundedKeyIterator;,"Ljava/util/TreeMap$UnboundedKeyIterator<TK;TV;>;"
    .local p1, treeMap:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TK;TV;>;"
    .local p2, entry:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TK;TV;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/TreeMap$AbstractMapIterator;-><init>(Ljava/util/TreeMap;Ljava/util/TreeMap$Entry;)V

    .line 143
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
    .line 150
    .local p0, this:Ljava/util/TreeMap$UnboundedKeyIterator;,"Ljava/util/TreeMap$UnboundedKeyIterator<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/TreeMap$UnboundedKeyIterator;->makeNext()V

    .line 151
    iget-object v0, p0, Ljava/util/TreeMap$UnboundedKeyIterator;->lastNode:Ljava/util/TreeMap$Entry;

    iget-object v0, v0, Ljava/util/TreeMap$Entry;->key:Ljava/lang/Object;

    return-object v0
.end method
