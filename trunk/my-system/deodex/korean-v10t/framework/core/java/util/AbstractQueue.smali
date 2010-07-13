.class public abstract Ljava/util/AbstractQueue;
.super Ljava/util/AbstractCollection;
.source "AbstractQueue.java"

# interfaces
.implements Ljava/util/Queue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 39
    .local p0, this:Ljava/util/AbstractQueue;,"Ljava/util/AbstractQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 40
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
    .line 54
    .local p0, this:Ljava/util/AbstractQueue;,"Ljava/util/AbstractQueue<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    if-nez p1, :cond_8

    .line 55
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 57
    :cond_8
    invoke-virtual {p0, p1}, Ljava/util/AbstractQueue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 58
    const/4 v0, 0x1

    return v0

    .line 60
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Ljava/util/AbstractQueue;,"Ljava/util/AbstractQueue<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-nez p1, :cond_8

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_8
    if-ne p0, p1, :cond_10

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 89
    :cond_10
    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 133
    .local p0, this:Ljava/util/AbstractQueue;,"Ljava/util/AbstractQueue<TE;>;"
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 134
    .local v0, o:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_0

    .line 135
    return-void
.end method

.method public element()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 117
    .local p0, this:Ljava/util/AbstractQueue;,"Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, o:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    .line 119
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 121
    :cond_c
    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Ljava/util/AbstractQueue;,"Ljava/util/AbstractQueue<TE;>;"
    invoke-virtual {p0}, Ljava/util/AbstractQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, o:Ljava/lang/Object;,"TE;"
    if-nez v0, :cond_c

    .line 103
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 105
    :cond_c
    return-object v0
.end method
