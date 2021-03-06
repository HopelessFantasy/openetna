.class Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;
.super Ljava/util/AbstractSet;
.source "IdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<",
        "Ljava/util/Map$Entry",
        "<TKT;TVT;>;>;"
    }
.end annotation


# instance fields
.field private final associatedMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/IdentityHashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,"Ljava/util/IdentityHashMap$IdentityHashMapEntrySet<TKT;TVT;>;"
    .local p1, hm:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 192
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    .line 193
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 206
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,"Ljava/util/IdentityHashMap$IdentityHashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    invoke-virtual {v0}, Ljava/util/IdentityHashMap;->clear()V

    .line 207
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,"Ljava/util/IdentityHashMap$IdentityHashMapEntrySet<TKT;TVT;>;"
    const/4 v4, 0x0

    .line 220
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-eqz v2, :cond_1f

    .line 221
    iget-object v3, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v2, v0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Ljava/util/IdentityHashMap;->access$100(Ljava/util/IdentityHashMap;Ljava/lang/Object;)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v1

    .line 224
    .local v1, entry:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<**>;"
    if-eqz v1, :cond_1d

    invoke-virtual {v1, p1}, Ljava/util/IdentityHashMap$IdentityHashMapEntry;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    const/4 v2, 0x1

    .line 226
    .end local v1           #entry:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<**>;"
    :goto_1c
    return v2

    .restart local v1       #entry:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<**>;"
    :cond_1d
    move v2, v4

    .line 224
    goto :goto_1c

    .end local v1           #entry:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<**>;"
    :cond_1f
    move v2, v4

    .line 226
    goto :goto_1c
.end method

.method hashMap()Ljava/util/IdentityHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,"Ljava/util/IdentityHashMap$IdentityHashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TKT;TVT;>;>;"
        }
    .end annotation

    .prologue
    .line 231
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,"Ljava/util/IdentityHashMap$IdentityHashMapEntrySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;

    new-instance v1, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;

    invoke-direct {v1, p0}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet$1;-><init>(Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;)V

    iget-object v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 211
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,"Ljava/util/IdentityHashMap$IdentityHashMapEntrySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 212
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const/4 v0, 0x1

    .line 215
    :goto_12
    return v0

    .restart local p1
    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public size()I
    .registers 2

    .prologue
    .line 201
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;,"Ljava/util/IdentityHashMap$IdentityHashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapEntrySet;->associatedMap:Ljava/util/IdentityHashMap;

    iget v0, v0, Ljava/util/IdentityHashMap;->size:I

    return v0
.end method
