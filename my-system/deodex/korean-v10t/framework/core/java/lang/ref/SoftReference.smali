.class public Ljava/lang/ref/SoftReference;
.super Ljava/lang/ref/Reference;
.source "SoftReference.java"


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
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;-><init>()V

    .line 101
    iput-object p1, p0, Ljava/lang/ref/SoftReference;->referent:Ljava/lang/Object;

    .line 102
    return-void
.end method

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
    .line 116
    .local p0, this:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<TT;>;"
    .local p1, r:Ljava/lang/Object;,"TT;"
    .local p2, q:Ljava/lang/ref/ReferenceQueue;,"Ljava/lang/ref/ReferenceQueue<-TT;>;"
    invoke-direct {p0}, Ljava/lang/ref/Reference;-><init>()V

    .line 117
    iput-object p1, p0, Ljava/lang/ref/SoftReference;->referent:Ljava/lang/Object;

    .line 118
    iput-object p2, p0, Ljava/lang/ref/SoftReference;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 119
    return-void
.end method
