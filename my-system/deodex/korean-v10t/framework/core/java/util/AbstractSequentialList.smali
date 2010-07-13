.class public abstract Ljava/util/AbstractSequentialList;
.super Ljava/util/AbstractList;
.source "AbstractSequentialList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractList",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 36
    .local p0, this:Ljava/util/AbstractSequentialList;,"Ljava/util/AbstractSequentialList<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 37
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 4
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Ljava/util/AbstractSequentialList;,"Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    .line 42
    return-void
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 7
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, this:Ljava/util/AbstractSequentialList;,"Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 47
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 60
    .local v0, colIt:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractSequentialList;->size()I

    move-result v2

    .line 61
    .local v2, size:I
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 62
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    goto :goto_c

    .line 64
    :cond_1a
    invoke-virtual {p0}, Ljava/util/AbstractSequentialList;->size()I

    move-result v3

    if-eq v2, v3, :cond_22

    const/4 v3, 0x1

    :goto_21
    return v3

    :cond_22
    const/4 v3, 0x0

    goto :goto_21
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Ljava/util/AbstractSequentialList;,"Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v1

    return-object v1

    .line 72
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 73
    .local v0, e:Ljava/util/NoSuchElementException;
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Ljava/util/AbstractSequentialList;,"Ljava/util/AbstractSequentialList<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public abstract listIterator(I)Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 6
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Ljava/util/AbstractSequentialList;,"Ljava/util/AbstractSequentialList<TE;>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 89
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TE;>;"
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 90
    .local v2, result:Ljava/lang/Object;,"TE;"
    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V
    :try_end_b
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_b} :catch_c

    .line 91
    return-object v2

    .line 92
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TE;>;"
    .end local v2           #result:Ljava/lang/Object;,"TE;"
    :catch_c
    move-exception v3

    move-object v0, v3

    .line 93
    .local v0, e:Ljava/util/NoSuchElementException;
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Ljava/util/AbstractSequentialList;,"Ljava/util/AbstractSequentialList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/AbstractSequentialList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 100
    .local v0, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<TE;>;"
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 101
    .local v1, result:Ljava/lang/Object;,"TE;"
    invoke-interface {v0, p2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    .line 102
    return-object v1
.end method
