.class public Ljava/util/concurrent/atomic/AtomicMarkableReference;
.super Ljava/lang/Object;
.source "AtomicMarkableReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final atomicRef:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Z)V
    .registers 5
    .parameter
    .parameter "initialMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, initialRef:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    invoke-direct {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;-><init>(Ljava/lang/Object;Z)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    return-void
.end method


# virtual methods
.method public attemptMark(Ljava/lang/Object;Z)Z
    .registers 6
    .parameter
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)Z"
        }
    .end annotation

    .prologue
    .line 156
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    .line 157
    .local v0, current:Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_23

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v1

    if-eq p2, v1, :cond_21

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    invoke-direct {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    :cond_21
    const/4 v1, 0x1

    :goto_22
    return v1

    :cond_23
    const/4 v1, 0x0

    goto :goto_22
.end method

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .registers 8
    .parameter
    .parameter
    .parameter "expectedMark"
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 121
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    .line 122
    .local v0, current:Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v1

    if-ne p3, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_20

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v1

    if-eq p4, v1, :cond_2d

    :cond_20
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    invoke-direct {v2, p2, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2d
    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method

.method public get([Z)Ljava/lang/Object;
    .registers 5
    .parameter "markHolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([Z)TV;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    .line 72
    .local v0, p:Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;,"Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair<TV;>;"
    const/4 v1, 0x0

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v2

    aput-boolean v2, p1, v1

    .line 73
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public getReference()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 50
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    check-cast p0, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    invoke-static {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isMarked()Z
    .registers 2

    .prologue
    .line 59
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    check-cast p0, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    invoke-static {p0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;Z)V
    .registers 6
    .parameter
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;Z)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, newReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    .line 138
    .local v0, current:Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_14

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v1

    if-eq p2, v1, :cond_1e

    .line 139
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    invoke-direct {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 140
    :cond_1e
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;ZZ)Z
    .registers 8
    .parameter
    .parameter
    .parameter "expectedMark"
    .parameter "newMark"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;ZZ)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, this:Ljava/util/concurrent/atomic/AtomicMarkableReference;,"Ljava/util/concurrent/atomic/AtomicMarkableReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    .line 97
    .local v0, current:Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v1

    if-ne p3, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$000(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_20

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;->access$100(Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;)Z

    move-result v1

    if-eq p4, v1, :cond_2d

    :cond_20
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicMarkableReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;

    invoke-direct {v2, p2, p4}, Ljava/util/concurrent/atomic/AtomicMarkableReference$ReferenceBooleanPair;-><init>(Ljava/lang/Object;Z)V

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    :cond_2d
    const/4 v1, 0x1

    :goto_2e
    return v1

    :cond_2f
    const/4 v1, 0x0

    goto :goto_2e
.end method
