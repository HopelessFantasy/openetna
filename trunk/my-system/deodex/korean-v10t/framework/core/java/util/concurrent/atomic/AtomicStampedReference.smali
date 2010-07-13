.class public Ljava/util/concurrent/atomic/AtomicStampedReference;
.super Ljava/lang/Object;
.source "AtomicStampedReference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
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
            "Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 5
    .parameter
    .parameter "initialStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, initialRef:Ljava/lang/Object;,"TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    return-void
.end method


# virtual methods
.method public attemptStamp(Ljava/lang/Object;I)Z
    .registers 6
    .parameter
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)Z"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    .line 161
    .local v0, current:Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_23

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p2, v1, :cond_21

    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

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

.method public compareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter "expectedStamp"
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 123
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    .line 124
    .local v0, current:Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-ne p3, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_20

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p4, v1, :cond_2d

    :cond_20
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p2, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

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

.method public get([I)Ljava/lang/Object;
    .registers 5
    .parameter "stampHolder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)TV;"
        }
    .end annotation

    .prologue
    .line 72
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    .line 73
    .local v0, p:Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;,"Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair<TV;>;"
    const/4 v1, 0x0

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v2

    aput v2, p1, v1

    .line 74
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

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
    .line 51
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    check-cast p0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-static {p0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getStamp()I
    .registers 2

    .prologue
    .line 60
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    iget-object v0, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    check-cast p0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-static {p0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v0

    return v0
.end method

.method public set(Ljava/lang/Object;I)V
    .registers 6
    .parameter
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;I)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, newReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    .line 142
    .local v0, current:Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_14

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p2, v1, :cond_1e

    .line 143
    :cond_14
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p1, p2}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 144
    :cond_1e
    return-void
.end method

.method public weakCompareAndSet(Ljava/lang/Object;Ljava/lang/Object;II)Z
    .registers 8
    .parameter
    .parameter
    .parameter "expectedStamp"
    .parameter "newStamp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;TV;II)Z"
        }
    .end annotation

    .prologue
    .line 97
    .local p0, this:Ljava/util/concurrent/atomic/AtomicStampedReference;,"Ljava/util/concurrent/atomic/AtomicStampedReference<TV;>;"
    .local p1, expectedReference:Ljava/lang/Object;,"TV;"
    .local p2, newReference:Ljava/lang/Object;,"TV;"
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    .line 98
    .local v0, current:Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;
    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-ne p3, v1, :cond_2f

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$000(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)Ljava/lang/Object;

    move-result-object v1

    if-ne p2, v1, :cond_20

    invoke-static {v0}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;->access$100(Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;)I

    move-result v1

    if-eq p4, v1, :cond_2d

    :cond_20
    iget-object v1, p0, Ljava/util/concurrent/atomic/AtomicStampedReference;->atomicRef:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;

    invoke-direct {v2, p2, p4}, Ljava/util/concurrent/atomic/AtomicStampedReference$ReferenceIntegerPair;-><init>(Ljava/lang/Object;I)V

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
