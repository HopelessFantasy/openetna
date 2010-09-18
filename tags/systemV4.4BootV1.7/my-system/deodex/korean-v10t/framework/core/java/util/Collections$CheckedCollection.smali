.class Ljava/util/Collections$CheckedCollection;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckedCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x15e96dfd18e6cc6fL


# instance fields
.field c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<TE;>;"
        }
    .end annotation
.end field

.field type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;Ljava/lang/Class;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;",
            "Ljava/lang/Class",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 2709
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<TE;>;"
    .local p2, type:Ljava/lang/Class;,"Ljava/lang/Class<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2710
    if-eqz p1, :cond_7

    if-nez p2, :cond_d

    .line 2711
    :cond_7
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2713
    :cond_d
    iput-object p1, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    .line 2714
    iput-object p2, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    .line 2715
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 2767
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, obj:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    iget-object v1, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-static {p1, v1}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 2789
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, c1:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    .line 2790
    .local v4, size:I
    if-nez v4, :cond_8

    .line 2791
    const/4 v5, 0x0

    .line 2802
    :goto_7
    return v5

    .line 2793
    :cond_8
    new-array v1, v4, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 2794
    .local v1, arr:[Ljava/lang/Object;,"[TE;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 2795
    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<+TE;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    if-ge v2, v4, :cond_22

    .line 2796
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-static {v5, v6}, Ljava/util/Collections;->checkType(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v1, v2

    .line 2795
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 2798
    :cond_22
    const/4 v0, 0x0

    .line 2799
    .local v0, added:Z
    const/4 v2, 0x0

    :goto_24
    if-ge v2, v4, :cond_32

    .line 2800
    iget-object v5, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    aget-object v6, v1, v2

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2799
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_32
    move v5, v0

    .line 2802
    goto :goto_7
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 2823
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 2824
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 2735
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

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
    .line 2781
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, c1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 2728
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 2742
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v2, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 2743
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    instance-of v2, v0, Ljava/util/ListIterator;

    if-eqz v2, :cond_14

    .line 2744
    new-instance v1, Ljava/util/Collections$CheckedListIterator;

    check-cast v0, Ljava/util/ListIterator;

    .end local v0           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    iget-object v2, p0, Ljava/util/Collections$CheckedCollection;->type:Ljava/lang/Class;

    invoke-direct {v1, v0, v2}, Ljava/util/Collections$CheckedListIterator;-><init>(Ljava/util/ListIterator;Ljava/lang/Class;)V

    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    move-object v0, v1

    .line 2746
    .end local v1           #i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    .restart local v0       #i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_14
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "obj"

    .prologue
    .line 2774
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

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
    .line 2809
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, c1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

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
    .line 2816
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, c1:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 2721
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 2753
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

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
    .line 2760
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    .local p1, arr:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2831
    .local p0, this:Ljava/util/Collections$CheckedCollection;,"Ljava/util/Collections$CheckedCollection<TE;>;"
    iget-object v0, p0, Ljava/util/Collections$CheckedCollection;->c:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
