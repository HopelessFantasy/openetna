.class Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;
.super Ljava/lang/Object;
.source "SelectorImpl.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/nio/internal/SelectorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnaddableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private set:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 343
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, set:Ljava/util/Set;,"Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    iput-object p1, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    .line 345
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
    .line 356
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

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
    .line 360
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 364
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 365
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 368
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

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
    .line 372
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 348
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 352
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 376
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

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
    .line 380
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 384
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

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
    .line 388
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

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
    .line 392
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 396
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 400
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

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
    .line 404
    .local p0, this:Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;,"Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet<TE;>;"
    .local p1, a:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Lorg/apache/harmony/nio/internal/SelectorImpl$UnaddableSet;->set:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
