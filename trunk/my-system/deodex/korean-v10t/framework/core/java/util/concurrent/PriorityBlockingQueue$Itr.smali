.class Ljava/util/concurrent/PriorityBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "PriorityBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/PriorityBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private final iter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/PriorityBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;Ljava/util/Iterator;)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 405
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue$Itr;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr<TE;>;"
    .local p2, i:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    iput-object p1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    iput-object p2, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->iter:Ljava/util/Iterator;

    .line 407
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 416
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue$Itr;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr<TE;>;"
    iget-object v0, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->iter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue$Itr;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->access$000(Ljava/util/concurrent/PriorityBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 421
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 423
    :try_start_9
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_13

    move-result-object v1

    .line 425
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1

    :catchall_13
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 430
    .local p0, this:Ljava/util/concurrent/PriorityBlockingQueue$Itr;,"Ljava/util/concurrent/PriorityBlockingQueue<TE;>.Itr<TE;>;"
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->this$0:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-static {v1}, Ljava/util/concurrent/PriorityBlockingQueue;->access$000(Ljava/util/concurrent/PriorityBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 431
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 433
    :try_start_9
    iget-object v1, p0, Ljava/util/concurrent/PriorityBlockingQueue$Itr;->iter:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_12

    .line 435
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 437
    return-void

    .line 435
    :catchall_12
    move-exception v1

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method
