.class public Ljava/lang/ref/PhantomReference;
.super Ljava/lang/ref/Reference;
.source "PhantomReference.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/ref/Reference",
        "<TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/ref/ReferenceQueue",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, this:Ljava/lang/ref/PhantomReference;,"Ljava/lang/ref/PhantomReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    .local p2, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;-><init>()V

    .line 65
    iput-object p1, p0, Ljava/lang/ref/PhantomReference;->referent:Ljava/lang/Object;

    .line 66
    iput-object p2, p0, Ljava/lang/ref/PhantomReference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 67
    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Ljava/lang/ref/PhantomReference;,"Ljava/lang/ref/PhantomReference<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method
