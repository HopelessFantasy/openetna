.class public Ljava/util/concurrent/CopyOnWriteArraySet;
.super Ljava/util/AbstractSet;
.source "CopyOnWriteArraySet.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4bbdd092901569d7L


# instance fields
.field private final al:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 74
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 84
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    .line 85
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
    .line 96
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    move-result v0

    return v0
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
    .line 98
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAllAbsent(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 93
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 90
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 89
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
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
    .line 94
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "o"

    .prologue
    .line 95
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 88
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 91
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, this:Ljava/util/concurrent/CopyOnWriteArraySet;,"Ljava/util/concurrent/CopyOnWriteArraySet<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArraySet;->al:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
