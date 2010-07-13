.class public Ljava/lang/ThreadLocal;
.super Ljava/lang/Object;
.source "ThreadLocal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ThreadLocal$Values;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final hash:I

.field private final reference:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/lang/ThreadLocal",
            "<TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 128
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    .line 41
    .local p0, this:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    .line 138
    sget-object v0, Ljava/lang/ThreadLocal;->hashCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const v1, -0x3c6ef372

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndAdd(I)I

    move-result v0

    iput v0, p0, Ljava/lang/ThreadLocal;->hash:I

    .line 41
    return-void
.end method

.method static synthetic access$200(Ljava/lang/ThreadLocal;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Ljava/lang/ThreadLocal;->hash:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/ThreadLocal;)Ljava/lang/ref/Reference;
    .registers 2
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 55
    .local v0, currentThread:Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v3

    .line 56
    .local v3, values:Ljava/lang/ThreadLocal$Values;
    if-eqz v3, :cond_21

    .line 57
    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->access$000(Ljava/lang/ThreadLocal$Values;)[Ljava/lang/Object;

    move-result-object v2

    .line 58
    .local v2, table:[Ljava/lang/Object;
    iget v4, p0, Ljava/lang/ThreadLocal;->hash:I

    invoke-static {v3}, Ljava/lang/ThreadLocal$Values;->access$100(Ljava/lang/ThreadLocal$Values;)I

    move-result v5

    and-int v1, v4, v5

    .line 59
    .local v1, index:I
    iget-object v4, p0, Ljava/lang/ThreadLocal;->reference:Ljava/lang/ref/Reference;

    aget-object v5, v2, v1

    if-ne v4, v5, :cond_25

    .line 60
    add-int/lit8 v4, v1, 0x1

    aget-object v4, v2, v4

    .line 66
    .end local v1           #index:I
    .end local v2           #table:[Ljava/lang/Object;
    :goto_20
    return-object v4

    .line 63
    :cond_21
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v3

    .line 66
    :cond_25
    invoke-virtual {v3, p0}, Ljava/lang/ThreadLocal$Values;->getAfterMiss(Ljava/lang/ThreadLocal;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_20
.end method

.method protected initialValue()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, this:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .registers 3
    .parameter "current"

    .prologue
    .line 113
    .local p0, this:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    new-instance v0, Ljava/lang/ThreadLocal$Values;

    invoke-direct {v0}, Ljava/lang/ThreadLocal$Values;-><init>()V

    iput-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 102
    .local p0, this:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 103
    .local v0, currentThread:Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    .line 104
    .local v1, values:Ljava/lang/ThreadLocal$Values;
    if-eqz v1, :cond_d

    .line 105
    invoke-virtual {v1, p0}, Ljava/lang/ThreadLocal$Values;->remove(Ljava/lang/ThreadLocal;)V

    .line 107
    :cond_d
    return-void
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    .local p1, value:Ljava/lang/Object;,"TT;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 88
    .local v0, currentThread:Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    .line 89
    .local v1, values:Ljava/lang/ThreadLocal$Values;
    if-nez v1, :cond_e

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/ThreadLocal;->initializeValues(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;

    move-result-object v1

    .line 92
    :cond_e
    invoke-virtual {v1, p0, p1}, Ljava/lang/ThreadLocal$Values;->put(Ljava/lang/ThreadLocal;Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method values(Ljava/lang/Thread;)Ljava/lang/ThreadLocal$Values;
    .registers 3
    .parameter "current"

    .prologue
    .line 120
    .local p0, this:Ljava/lang/ThreadLocal;,"Ljava/lang/ThreadLocal<TT;>;"
    iget-object v0, p1, Ljava/lang/Thread;->localValues:Ljava/lang/ThreadLocal$Values;

    return-object v0
.end method
