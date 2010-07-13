.class Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;
.super Ljava/util/AbstractCollection;
.source "ScheduledThreadPoolExecutor.java"

# interfaces
.implements Ljava/util/concurrent/BlockingQueue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ScheduledThreadPoolExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedWorkQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/util/concurrent/BlockingQueue",
        "<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final dq:Ljava/util/concurrent/DelayQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/DelayQueue",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 500
    new-instance v0, Ljava/util/concurrent/DelayQueue;

    invoke-direct {v0}, Ljava/util/concurrent/DelayQueue;-><init>()V

    iput-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 496
    invoke-direct {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;-><init>()V

    return-void
.end method

.method static synthetic access$500(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;)Ljava/util/concurrent/DelayQueue;
    .registers 2
    .parameter "x0"

    .prologue
    .line 496
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic add(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 496
    check-cast p1, Ljava/lang/Runnable;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->add(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 508
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/DelayQueue;->add(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 519
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 527
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/DelayQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;)I
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 520
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/DelayQueue;->drainTo(Ljava/util/Collection;)I

    move-result v0

    return v0
.end method

.method public drainTo(Ljava/util/Collection;I)I
    .registers 4
    .parameter
    .parameter "maxElements"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<-",
            "Ljava/lang/Runnable;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 522
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<-Ljava/lang/Runnable;>;"
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/DelayQueue;->drainTo(Ljava/util/Collection;I)I

    move-result v0

    return v0
.end method

.method public bridge synthetic element()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->element()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public element()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 518
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->element()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 529
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 533
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue$1;-><init>(Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;)V

    return-object v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x0"

    .prologue
    .line 496
    check-cast p1, Ljava/lang/Runnable;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 496
    check-cast p1, Ljava/lang/Runnable;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Runnable;)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 509
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;)Z

    move-result v0

    return v0
.end method

.method public offer(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Z
    .registers 6
    .parameter "x"
    .parameter "timeout"
    .parameter "unit"

    .prologue
    .line 514
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .end local p1
    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/util/concurrent/DelayQueue;->offer(Ljava/util/concurrent/Delayed;JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->peek()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public peek()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->peek()Ljava/util/concurrent/Delayed;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public poll()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 501
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->poll()Ljava/util/concurrent/Delayed;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Runnable;
    .registers 5
    .parameter "timeout"
    .parameter "unit"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 505
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/DelayQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Delayed;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 496
    check-cast p1, Ljava/lang/Runnable;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->put(Ljava/lang/Runnable;)V

    return-void
.end method

.method public put(Ljava/lang/Runnable;)V
    .registers 3
    .parameter "x"

    .prologue
    .line 511
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor$ScheduledFutureTask;

    .end local p1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/DelayQueue;->put(Ljava/util/concurrent/Delayed;)V

    .line 512
    return-void
.end method

.method public remainingCapacity()I
    .registers 2

    .prologue
    .line 525
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->remove()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Runnable;
    .registers 2

    .prologue
    .line 517
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->remove()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "x"

    .prologue
    .line 526
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/DelayQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 528
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic take()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 496
    invoke-virtual {p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->take()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public take()Ljava/lang/Runnable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 503
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->take()Ljava/util/concurrent/Delayed;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Runnable;

    return-object p0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    .prologue
    .line 530
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/DelayQueue;->toArray()[Ljava/lang/Object;

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
    .line 531
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    iget-object v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor$DelayedWorkQueue;->dq:Ljava/util/concurrent/DelayQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/DelayQueue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
