.class Ljava/util/HashMap$HashMapEntrySet;
.super Ljava/util/AbstractSet;
.source "HashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapEntrySet"
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
.field private final associatedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet;,"Ljava/util/HashMap$HashMapEntrySet<TKT;TVT;>;"
    .local p1, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<TKT;TVT;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 177
    iput-object p1, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    .line 178
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 191
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet;,"Ljava/util/HashMap$HashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 192
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 9
    .parameter "object"

    .prologue
    .line 205
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet;,"Ljava/util/HashMap$HashMapEntrySet<TKT;TVT;>;"
    instance-of v5, p1, Ljava/util/Map$Entry;

    if-eqz v5, :cond_2f

    .line 206
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 208
    .local v4, key:Ljava/lang/Object;
    if-nez v4, :cond_19

    .line 209
    iget-object v5, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->findNullKeyEntry()Ljava/util/HashMap$Entry;

    move-result-object v1

    .line 215
    .local v1, entry:Ljava/util/HashMap$Entry;
    :goto_14
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 217
    .end local v1           #entry:Ljava/util/HashMap$Entry;
    .end local v4           #key:Ljava/lang/Object;
    :goto_18
    return v5

    .line 211
    .restart local v4       #key:Ljava/lang/Object;
    :cond_19
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 212
    .local v2, hash:I
    const v5, 0x7fffffff

    and-int/2addr v5, v2

    iget-object v6, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    iget-object v6, v6, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v6, v6

    rem-int v3, v5, v6

    .line 213
    .local v3, index:I
    iget-object v5, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    invoke-virtual {v5, v4, v3, v2}, Ljava/util/HashMap;->findNonNullKeyEntry(Ljava/lang/Object;II)Ljava/util/HashMap$Entry;

    move-result-object v1

    .restart local v1       #entry:Ljava/util/HashMap$Entry;
    goto :goto_14

    .line 217
    .end local v1           #entry:Ljava/util/HashMap$Entry;
    .end local v2           #hash:I
    .end local v3           #index:I
    .end local v4           #key:Ljava/lang/Object;
    :cond_2f
    const/4 v5, 0x0

    goto :goto_18
.end method

.method hashMap()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<TKT;TVT;>;"
        }
    .end annotation

    .prologue
    .line 181
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet;,"Ljava/util/HashMap$HashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

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
    .line 222
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet;,"Ljava/util/HashMap$HashMapEntrySet<TKT;TVT;>;"
    new-instance v0, Ljava/util/HashMap$HashMapIterator;

    new-instance v1, Ljava/util/HashMap$HashMapEntrySet$1;

    invoke-direct {v1, p0}, Ljava/util/HashMap$HashMapEntrySet$1;-><init>(Ljava/util/HashMap$HashMapEntrySet;)V

    iget-object v2, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap$HashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/HashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 196
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet;,"Ljava/util/HashMap$HashMapEntrySet<TKT;TVT;>;"
    invoke-virtual {p0, p1}, Ljava/util/HashMap$HashMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 197
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    check-cast p1, Ljava/util/Map$Entry;

    .end local p1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const/4 v0, 0x1

    .line 200
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
    .line 186
    .local p0, this:Ljava/util/HashMap$HashMapEntrySet;,"Ljava/util/HashMap$HashMapEntrySet<TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/HashMap$HashMapEntrySet;->associatedMap:Ljava/util/HashMap;

    iget v0, v0, Ljava/util/HashMap;->elementCount:I

    return v0
.end method
