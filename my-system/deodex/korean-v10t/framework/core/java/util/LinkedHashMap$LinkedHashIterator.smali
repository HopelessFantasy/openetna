.class final Ljava/util/LinkedHashMap$LinkedHashIterator;
.super Ljava/util/HashMap$HashMapIterator;
.source "LinkedHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LinkedHashIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap$HashMapIterator",
        "<TE;TKT;TVT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/LinkedHashMap;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/LinkedHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashIterator;,"Ljava/util/LinkedHashMap$LinkedHashIterator<TE;TKT;TVT;>;"
    .local p1, value:Ljava/util/MapEntry$Type;,"Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, hm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TKT;TVT;>;"
    invoke-direct {p0, p1, p2}, Ljava/util/HashMap$HashMapIterator;-><init>(Ljava/util/MapEntry$Type;Ljava/util/HashMap;)V

    .line 150
    invoke-static {p2}, Ljava/util/LinkedHashMap;->access$000(Ljava/util/LinkedHashMap;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    move-result-object v0

    iput-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->entry:Ljava/util/HashMap$Entry;

    .line 151
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 155
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashIterator;,"Ljava/util/LinkedHashMap$LinkedHashIterator<TE;TKT;TVT;>;"
    iget-object v0, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->entry:Ljava/util/HashMap$Entry;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashIterator;,"Ljava/util/LinkedHashMap$LinkedHashIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedHashIterator;->checkConcurrentMod()V

    .line 161
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedHashIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 162
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 164
    :cond_f
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->type:Ljava/util/MapEntry$Type;

    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->entry:Ljava/util/HashMap$Entry;

    invoke-interface {v1, v2}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    .line 165
    .local v0, result:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->entry:Ljava/util/HashMap$Entry;

    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    .line 166
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->entry:Ljava/util/HashMap$Entry;

    check-cast v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iget-object v1, v1, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    iput-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->entry:Ljava/util/HashMap$Entry;

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->canRemove:Z

    .line 168
    return-object v0
.end method

.method public remove()V
    .registers 11

    .prologue
    .local p0, this:Ljava/util/LinkedHashMap$LinkedHashIterator;,"Ljava/util/LinkedHashMap$LinkedHashIterator<TE;TKT;TVT;>;"
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 173
    invoke-virtual {p0}, Ljava/util/LinkedHashMap$LinkedHashIterator;->checkConcurrentMod()V

    .line 174
    iget-boolean v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->canRemove:Z

    if-nez v6, :cond_f

    .line 175
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 178
    :cond_f
    iput-boolean v8, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->canRemove:Z

    .line 179
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->associatedMap:Ljava/util/HashMap;

    iget v7, v6, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Ljava/util/HashMap;->modCount:I

    .line 181
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v6, v6, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    if-nez v6, :cond_59

    move v0, v8

    .line 182
    .local v0, index:I
    :goto_20
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v6, v6, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v3, v6, v0

    check-cast v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 183
    .local v3, m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    if-ne v3, v6, :cond_71

    .line 184
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v6, v6, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    iget-object v7, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v7, v7, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    aput-object v7, v6, v0

    .line 195
    :goto_36
    iget-object v2, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    check-cast v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 196
    .local v2, lhme:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    iget-object v5, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 197
    .local v5, p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    iget-object v4, v2, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 198
    .local v4, n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    iget-object v1, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->associatedMap:Ljava/util/HashMap;

    check-cast v1, Ljava/util/LinkedHashMap;

    .line 199
    .local v1, lhm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TKT;TVT;>;"
    if-eqz v5, :cond_86

    .line 200
    iput-object v4, v5, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainForward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 201
    if-eqz v4, :cond_82

    .line 202
    iput-object v5, v4, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 214
    :goto_4a
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->associatedMap:Ljava/util/HashMap;

    iget v7, v6, Ljava/util/HashMap;->elementCount:I

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iput v7, v6, Ljava/util/HashMap;->elementCount:I

    .line 215
    iget v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->expectedModCount:I

    .line 216
    return-void

    .line 181
    .end local v0           #index:I
    .end local v1           #lhm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TKT;TVT;>;"
    .end local v2           #lhme:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    .end local v3           #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    .end local v4           #n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    .end local v5           #p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    :cond_59
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v6, v6, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    iget-object v7, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v7, v7, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v7, v7

    rem-int/2addr v6, v7

    move v0, v6

    goto :goto_20

    .line 190
    .restart local v0       #index:I
    .restart local v3       #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    :cond_6d
    iget-object v3, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    .end local v3           #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    check-cast v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 186
    .restart local v3       #m:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    :cond_71
    iget-object v6, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    if-eqz v6, :cond_7b

    .line 187
    iget-object v6, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    iget-object v7, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    if-ne v6, v7, :cond_6d

    .line 193
    :cond_7b
    iget-object v6, p0, Ljava/util/LinkedHashMap$LinkedHashIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v6, v6, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    iput-object v6, v3, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->next:Ljava/util/HashMap$Entry;

    goto :goto_36

    .line 204
    .restart local v1       #lhm:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<TKT;TVT;>;"
    .restart local v2       #lhme:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    .restart local v4       #n:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    .restart local v5       #p:Ljava/util/LinkedHashMap$LinkedHashMapEntry;,"Ljava/util/LinkedHashMap$LinkedHashMapEntry<TKT;TVT;>;"
    :cond_82
    invoke-static {v1, v5}, Ljava/util/LinkedHashMap;->access$102(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_4a

    .line 207
    :cond_86
    invoke-static {v1, v4}, Ljava/util/LinkedHashMap;->access$002(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    .line 208
    if-eqz v4, :cond_8e

    .line 209
    iput-object v9, v4, Ljava/util/LinkedHashMap$LinkedHashMapEntry;->chainBackward:Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_4a

    .line 211
    :cond_8e
    invoke-static {v1, v9}, Ljava/util/LinkedHashMap;->access$102(Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap$LinkedHashMapEntry;)Ljava/util/LinkedHashMap$LinkedHashMapEntry;

    goto :goto_4a
.end method
