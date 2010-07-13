.class public abstract Ljava/util/AbstractMap;
.super Ljava/lang/Object;
.source "AbstractMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation
.end field

.field valuesCollection:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 45
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .prologue
    .line 58
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 59
    return-void
.end method

.method protected clone()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 471
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/AbstractMap;

    .line 472
    .local v0, result:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    iput-object v1, v0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    .line 473
    iput-object v1, v0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    .line 474
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 5
    .parameter "key"

    .prologue
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 72
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_23

    .line 73
    .end local p0           #this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    .line 85
    :goto_22
    return v1

    .line 79
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    .line 81
    goto :goto_22

    .line 85
    :cond_37
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 5
    .parameter "value"

    .prologue
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 99
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_23

    .line 100
    .end local p0           #this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 101
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move v1, v2

    .line 112
    :goto_22
    return v1

    .line 106
    :cond_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_23

    move v1, v2

    .line 108
    goto :goto_22

    .line 112
    :cond_37
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public abstract entrySet()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 139
    if-ne p0, p1, :cond_6

    move v7, v10

    .line 163
    :goto_5
    return v7

    .line 142
    :cond_6
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_4a

    .line 143
    move-object v0, p1

    check-cast v0, Ljava/util/Map;

    move-object v4, v0

    .line 144
    .local v4, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v7, v8, :cond_1a

    move v7, v9

    .line 145
    goto :goto_5

    .line 150
    :cond_1a
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 151
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_48

    .line 152
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 153
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 154
    .local v3, key:Ljava/lang/Object;,"TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 155
    .local v6, value:Ljava/lang/Object;,"TV;"
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 156
    .local v5, obj:Ljava/lang/Object;
    if-eqz v5, :cond_42

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_46

    :cond_42
    if-nez v5, :cond_22

    if-eq v5, v6, :cond_22

    :cond_46
    move v7, v9

    .line 157
    goto :goto_5

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3           #key:Ljava/lang/Object;,"TK;"
    .end local v5           #obj:Ljava/lang/Object;
    .end local v6           #value:Ljava/lang/Object;,"TV;"
    :cond_48
    move v7, v10

    .line 161
    goto :goto_5

    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v4           #map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :cond_4a
    move v7, v9

    .line 163
    goto :goto_5
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 177
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_25

    .line 178
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 179
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 181
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 192
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :goto_24
    return-object v2

    .line 185
    :cond_25
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 186
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 187
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_25

    .line 188
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_24

    .line 192
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_3c
    const/4 v2, 0x0

    goto :goto_24
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 205
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 206
    .local v1, result:I
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 207
    .end local p0           #this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 208
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_9

    .line 210
    :cond_1b
    return v1
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 222
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 234
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_b

    .line 235
    new-instance v0, Ljava/util/AbstractMap$1;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$1;-><init>(Ljava/util/AbstractMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    .line 267
    :cond_b
    iget-object v0, p0, Ljava/util/AbstractMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 292
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 314
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 316
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_20
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 330
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 331
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz p1, :cond_28

    .line 332
    :cond_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 333
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 334
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 336
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 348
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :goto_27
    return-object v2

    .line 340
    :cond_28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 341
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 342
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_28

    .line 343
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    goto :goto_27

    .line 348
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    :cond_42
    const/4 v2, 0x0

    goto :goto_27
.end method

.method public size()I
    .registers 2

    .prologue
    .line 358
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    const-string v6, "(this Map)"

    .line 369
    invoke-virtual {p0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 370
    const-string v5, "{}"

    .line 396
    :goto_a
    return-object v5

    .line 373
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/AbstractMap;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x1c

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 374
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v5, 0x7b

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 376
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_23
    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 377
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 378
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 379
    .local v3, key:Ljava/lang/Object;
    if-eq v3, p0, :cond_52

    .line 380
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 384
    :goto_38
    const/16 v5, 0x3d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 385
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 386
    .local v4, value:Ljava/lang/Object;
    if-eq v4, p0, :cond_58

    .line 387
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 391
    :goto_46
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_23

    .line 392
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    .line 382
    .end local v4           #value:Ljava/lang/Object;
    :cond_52
    const-string v5, "(this Map)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_38

    .line 389
    .restart local v4       #value:Ljava/lang/Object;
    :cond_58
    const-string v5, "(this Map)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_46

    .line 395
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<TK;TV;>;"
    .end local v3           #key:Ljava/lang/Object;
    .end local v4           #value:Ljava/lang/Object;
    :cond_5e
    const/16 v5, 0x7d

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 396
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_a
.end method

.method public values()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, this:Ljava/util/AbstractMap;,"Ljava/util/AbstractMap<TK;TV;>;"
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    if-nez v0, :cond_b

    .line 423
    new-instance v0, Ljava/util/AbstractMap$2;

    invoke-direct {v0, p0}, Ljava/util/AbstractMap$2;-><init>(Ljava/util/AbstractMap;)V

    iput-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    .line 455
    :cond_b
    iget-object v0, p0, Ljava/util/AbstractMap;->valuesCollection:Ljava/util/Collection;

    return-object v0
.end method
