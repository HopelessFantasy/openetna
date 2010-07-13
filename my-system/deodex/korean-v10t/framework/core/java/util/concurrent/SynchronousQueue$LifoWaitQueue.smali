.class final Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;
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
    name = "LifoWaitQueue"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x326b6965c68cc166L


# instance fields
.field private transient head:Ljava/util/concurrent/SynchronousQueue$Node;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/util/concurrent/SynchronousQueue$WaitQueue;-><init>()V

    return-void
.end method


# virtual methods
.method deq()Ljava/util/concurrent/SynchronousQueue$Node;
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ljava/util/concurrent/SynchronousQueue$Node;

    .line 165
    .local v0, p:Ljava/util/concurrent/SynchronousQueue$Node;
    if-eqz v0, :cond_b

    .line 166
    iget-object v1, v0, Ljava/util/concurrent/SynchronousQueue$Node;->next:Ljava/util/concurrent/SynchronousQueue$Node;

    iput-object v1, p0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ljava/util/concurrent/SynchronousQueue$Node;

    .line 167
    const/4 v1, 0x0

    iput-object v1, v0, Ljava/util/concurrent/SynchronousQueue$Node;->next:Ljava/util/concurrent/SynchronousQueue$Node;

    .line 169
    :cond_b
    return-object v0
.end method

.method enq(Ljava/lang/Object;)Ljava/util/concurrent/SynchronousQueue$Node;
    .registers 4
    .parameter "x"

    .prologue
    .line 160
    new-instance v0, Ljava/util/concurrent/SynchronousQueue$Node;

    iget-object v1, p0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ljava/util/concurrent/SynchronousQueue$Node;

    invoke-direct {v0, p1, v1}, Ljava/util/concurrent/SynchronousQueue$Node;-><init>(Ljava/lang/Object;Ljava/util/concurrent/SynchronousQueue$Node;)V

    iput-object v0, p0, Ljava/util/concurrent/SynchronousQueue$LifoWaitQueue;->head:Ljava/util/concurrent/SynchronousQueue$Node;

    return-object v0
.end method
