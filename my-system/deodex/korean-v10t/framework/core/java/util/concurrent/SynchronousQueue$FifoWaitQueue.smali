.class final Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;
.super Ljava/util/concurrent/SynchronousQueue$WaitQueue;
.source "SynchronousQueue.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/SynchronousQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FifoWaitQueue"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3247e27356cbc166L


# instance fields
.field private transient head:Ljava/util/concurrent/SynchronousQueue$Node;

.field private transient last:Ljava/util/concurrent/SynchronousQueue$Node;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;-><init>()V

    return-void
.end method


# virtual methods
.method deq()Ljava/util/concurrent/SynchronousQueue$Node;
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ljava/util/concurrent/SynchronousQueue$Node;

    .line 143
    .local v0, p:Ljava/util/concurrent/SynchronousQueue$Node;
    if-eqz v0, :cond_f

    .line 144
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$Node;->next:Ljava/util/concurrent/SynchronousQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ljava/util/concurrent/SynchronousQueue$Node;

    if-nez v1, :cond_d

    .line 145
    iput-object v2, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ljava/util/concurrent/SynchronousQueue$Node;

    .line 146
    :cond_d
    iput-object v2, v0, Ljava/util/concurrent/SynchronousQueue$Node;->next:Ljava/util/concurrent/SynchronousQueue$Node;

    .line 148
    :cond_f
    return-object v0
.end method

.method enq(Ljava/lang/Object;)Ljava/util/concurrent/SynchronousQueue$Node;
    .registers 4
    .parameter "x"

    .prologue
    .line 133
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$Node;

    invoke-direct {v0, p1}, Ljava/util/concurrent/SynchronousQueue$Node;-><init>(Ljava/lang/Object;)V

    .line 134
    .local v0, p:Ljava/util/concurrent/SynchronousQueue$Node;
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ljava/util/concurrent/SynchronousQueue$Node;

    if-nez v1, :cond_e

    .line 135
    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->head:Ljava/util/concurrent/SynchronousQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ljava/util/concurrent/SynchronousQueue$Node;

    .line 138
    :goto_d
    return-object v0

    .line 137
    :cond_e
    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ljava/util/concurrent/SynchronousQueue$Node;

    iput-object v0, v1, Ljava/util/concurrent/SynchronousQueue$Node;->next:Ljava/util/concurrent/SynchronousQueue$Node;

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$FifoWaitQueue;->last:Ljava/util/concurrent/SynchronousQueue$Node;

    goto :goto_d
.end method
