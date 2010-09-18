.class public abstract Ljava/util/AbstractCollection;
.super Ljava/lang/Object;
.source "AbstractCollection.java"

# interfaces
.implements Ljava/util/Collection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 40
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 81
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    const/4 v1, 0x0

    .line 82
    .local v1, result:Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 85
    const/4 v1, 0x1

    goto :goto_5

    .line 88
    :cond_17
    return v1
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 109
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 110
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 111
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 112
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_4

    .line 114
    :cond_11
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    .line 137
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 138
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    if-eqz p1, :cond_19

    .line 139
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 140
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 151
    :goto_18
    return v1

    .line 145
    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 146
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_19

    move v1, v2

    .line 147
    goto :goto_18

    .line 151
    :cond_27
    const/4 v1, 0x0

    goto :goto_18
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 178
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 179
    const/4 v1, 0x0

    .line 182
    :goto_15
    return v1

    :cond_16
    const/4 v1, 0x1

    goto :goto_15
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 196
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public abstract iterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    const/4 v2, 0x1

    .line 239
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 240
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    if-eqz p1, :cond_1c

    .line 241
    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 242
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v1, v2

    .line 255
    :goto_1b
    return v1

    .line 248
    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 249
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1c

    .line 250
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v1, v2

    .line 251
    goto :goto_1b

    .line 255
    :cond_2d
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 289
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 290
    .local v1, result:Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 293
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 294
    const/4 v1, 0x1

    goto :goto_5

    .line 297
    :cond_1a
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 331
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 332
    .local v1, result:Z
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 333
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_5
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 335
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 336
    const/4 v1, 0x1

    goto :goto_5

    .line 339
    :cond_1a
    return v1
.end method

.method public abstract size()I
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 7

    .prologue
    .line 356
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    .local v4, size:I
    const/4 v1, 0x0

    .line 357
    .local v1, index:I
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 358
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    new-array v0, v4, [Ljava/lang/Object;

    .local v0, array:[Ljava/lang/Object;
    move v2, v1

    .line 359
    .end local v1           #index:I
    .local v2, index:I
    :goto_c
    if-ge v2, v4, :cond_18

    .line 360
    add-int/lit8 v1, v2, 0x1

    .end local v2           #index:I
    .restart local v1       #index:I
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2

    move v2, v1

    .end local v1           #index:I
    .restart local v2       #index:I
    goto :goto_c

    .line 362
    :cond_18
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    .local v6, size:I
    const/4 v4, 0x0

    .line 368
    .local v4, index:I
    array-length v7, p1

    if-le v6, v7, :cond_1a

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 370
    .local v1, ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v1, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Object;

    move-object v0, v7

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 372
    .end local v1           #ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1a
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 373
    .local v2, entry:Ljava/lang/Object;,"TE;"
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .local v5, index:I
    aput-object v2, p1, v4

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_1e

    .line 375
    .end local v2           #entry:Ljava/lang/Object;,"TE;"
    :cond_2e
    array-length v7, p1

    if-ge v4, v7, :cond_34

    .line 376
    const/4 v7, 0x0

    aput-object v7, p1, v4

    .line 378
    :cond_34
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 391
    .local p0, this:Ljava/util/AbstractCollection;,"Ljava/util/AbstractCollection<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 392
    const-string v3, "[]"

    .line 410
    :goto_8
    return-object v3

    .line 395
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x10

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 396
    .local v0, buffer:Ljava/lang/StringBuilder;
    const/16 v3, 0x5b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 397
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 398
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<*>;"
    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3e

    .line 399
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 400
    .local v2, next:Ljava/lang/Object;
    if-eq v2, p0, :cond_38

    .line 401
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 405
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 406
    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 403
    :cond_38
    const-string v3, "(this Collection)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    .line 409
    .end local v2           #next:Ljava/lang/Object;
    :cond_3e
    const/16 v3, 0x5d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8
.end method
