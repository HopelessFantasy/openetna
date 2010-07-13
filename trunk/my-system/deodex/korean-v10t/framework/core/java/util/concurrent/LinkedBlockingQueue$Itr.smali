.class Ljava/util/concurrent/LinkedBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "LinkedBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/LinkedBlockingQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private current:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private currentElement:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/LinkedBlockingQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/LinkedBlockingQueue;)V
    .registers 5
    .parameter

    .prologue
    .line 605
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 606
    invoke-static {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 607
    .local v0, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-static {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->access$100(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 608
    .local v1, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 609
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 611
    :try_start_13
    invoke-static {p1}, Ljava/util/concurrent/LinkedBlockingQueue;->access$200(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v2

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 612
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v2, :cond_25

    .line 613
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_2c

    .line 615
    :cond_25
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 616
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 618
    return-void

    .line 615
    :catchall_2c
    move-exception v2

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 616
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 621
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 625
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 626
    .local v0, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v3}, Ljava/util/concurrent/LinkedBlockingQueue;->access$100(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 627
    .local v1, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 628
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 630
    :try_start_12
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v3, :cond_24

    .line 631
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_1c

    .line 639
    :catchall_1c
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 640
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 632
    :cond_24
    :try_start_24
    iget-object v2, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;

    .line 633
    .local v2, x:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 634
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 635
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-eqz v3, :cond_3a

    .line 636
    iget-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->current:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iget-object v3, v3, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    iput-object v3, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->currentElement:Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_24 .. :try_end_3a} :catchall_1c

    .line 639
    :cond_3a
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 640
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v2
.end method

.method public remove()V
    .registers 8

    .prologue
    .line 645
    .local p0, this:Ljava/util/concurrent/LinkedBlockingQueue$Itr;,"Ljava/util/concurrent/LinkedBlockingQueue<TE;>.Itr;"
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    if-nez v6, :cond_a

    .line 646
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6}, Ljava/lang/IllegalStateException;-><init>()V

    throw v6

    .line 647
    :cond_a
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->access$000(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    .line 648
    .local v3, putLock:Ljava/util/concurrent/locks/ReentrantLock;
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->access$100(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v4

    .line 649
    .local v4, takeLock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 650
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 652
    :try_start_1c
    iget-object v1, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 653
    .local v1, node:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    const/4 v6, 0x0

    iput-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->lastRet:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 654
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->access$200(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v5

    .line 655
    .local v5, trail:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->access$200(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/LinkedBlockingQueue$Node;

    move-result-object v6

    iget-object v2, v6, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 656
    .local v2, p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :goto_2f
    if-eqz v2, :cond_37

    if-eq v2, v1, :cond_37

    .line 657
    move-object v5, v2

    .line 658
    iget-object v2, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    goto :goto_2f

    .line 660
    :cond_37
    if-ne v2, v1, :cond_5b

    .line 661
    const/4 v6, 0x0

    iput-object v6, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->item:Ljava/lang/Object;

    .line 662
    iget-object v6, v2, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    iput-object v6, v5, Ljava/util/concurrent/LinkedBlockingQueue$Node;->next:Ljava/util/concurrent/LinkedBlockingQueue$Node;

    .line 663
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->access$300(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    move-result v0

    .line 664
    .local v0, c:I
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->access$400(Ljava/util/concurrent/LinkedBlockingQueue;)I

    move-result v6

    if-ne v0, v6, :cond_5b

    .line 665
    iget-object v6, p0, Ljava/util/concurrent/LinkedBlockingQueue$Itr;->this$0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-static {v6}, Ljava/util/concurrent/LinkedBlockingQueue;->access$500(Ljava/util/concurrent/LinkedBlockingQueue;)Ljava/util/concurrent/locks/Condition;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_5b
    .catchall {:try_start_1c .. :try_end_5b} :catchall_62

    .line 668
    .end local v0           #c:I
    :cond_5b
    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 669
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 671
    return-void

    .line 668
    .end local v1           #node:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v2           #p:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    .end local v5           #trail:Ljava/util/concurrent/LinkedBlockingQueue$Node;,"Ljava/util/concurrent/LinkedBlockingQueue$Node<TE;>;"
    :catchall_62
    move-exception v6

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 669
    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v6
.end method
