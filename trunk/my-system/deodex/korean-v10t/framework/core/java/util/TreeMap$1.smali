.class Ljava/util/TreeMap$1;
.super Ljava/util/AbstractSet;
.source "TreeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljava/util/TreeMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/TreeMap;


# direct methods
.method constructor <init>(Ljava/util/TreeMap;)V
    .registers 2
    .parameter

    .prologue
    .line 899
    .local p0, this:Ljava/util/TreeMap$1;,"Ljava/util/TreeMap.1;"
    iput-object p1, p0, Ljava/util/TreeMap$1;->this$0:Ljava/util/TreeMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 884
    .local p0, this:Ljava/util/TreeMap$1;,"Ljava/util/TreeMap.1;"
    iget-object v0, p0, Ljava/util/TreeMap$1;->this$0:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    .line 885
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/TreeMap$1;,"Ljava/util/TreeMap.1;"
    const/4 v6, 0x0

    .line 890
    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_24

    .line 891
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 892
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    iget-object v4, p0, Ljava/util/TreeMap$1;->this$0:Ljava/util/TreeMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .local v2, v1:Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    .line 893
    .local v3, v2:Ljava/lang/Object;
    if-nez v2, :cond_1f

    if-nez v3, :cond_1d

    const/4 v4, 0x1

    .line 895
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #v1:Ljava/lang/Object;
    .end local v3           #v2:Ljava/lang/Object;
    :goto_1c
    return v4

    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v2       #v1:Ljava/lang/Object;
    .restart local v3       #v2:Ljava/lang/Object;
    :cond_1d
    move v4, v6

    .line 893
    goto :goto_1c

    :cond_1f
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1c

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2           #v1:Ljava/lang/Object;
    .end local v3           #v2:Ljava/lang/Object;
    :cond_24
    move v4, v6

    .line 895
    goto :goto_1c
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 900
    .local p0, this:Ljava/util/TreeMap$1;,"Ljava/util/TreeMap.1;"
    new-instance v0, Ljava/util/TreeMap$UnboundedEntryIterator;

    iget-object v1, p0, Ljava/util/TreeMap$1;->this$0:Ljava/util/TreeMap;

    invoke-direct {v0, v1}, Ljava/util/TreeMap$UnboundedEntryIterator;-><init>(Ljava/util/TreeMap;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 879
    .local p0, this:Ljava/util/TreeMap$1;,"Ljava/util/TreeMap.1;"
    iget-object v0, p0, Ljava/util/TreeMap$1;->this$0:Ljava/util/TreeMap;

    iget v0, v0, Ljava/util/TreeMap;->size:I

    return v0
.end method
