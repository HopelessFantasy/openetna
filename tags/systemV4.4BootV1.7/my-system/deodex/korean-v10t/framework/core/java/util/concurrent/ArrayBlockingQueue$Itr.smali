.class Ljava/util/concurrent/ArrayBlockingQueue$Itr;
.super Ljava/lang/Object;
.source "ArrayBlockingQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ArrayBlockingQueue;
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
.field private lastRet:I

.field private nextIndex:I

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ArrayBlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .registers 4
    .parameter

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v1, -0x1

    .line 618
    iput-object p1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 620
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->access$000(Ljava/util/concurrent/ArrayBlockingQueue;)I

    move-result v0

    if-nez v0, :cond_11

    .line 621
    iput v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 626
    :goto_10
    return-void

    .line 623
    :cond_11
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->access$100(Ljava/util/concurrent/ArrayBlockingQueue;)I

    move-result v0

    iput v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 624
    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->access$200(Ljava/util/concurrent/ArrayBlockingQueue;)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->access$100(Ljava/util/concurrent/ArrayBlockingQueue;)I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    goto :goto_10
.end method

.method private checkNext()V
    .registers 4

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v2, -0x1

    .line 642
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->access$300(Ljava/util/concurrent/ArrayBlockingQueue;)I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 643
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 644
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 650
    :cond_10
    :goto_10
    return-void

    .line 646
    :cond_11
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->access$200(Ljava/util/concurrent/ArrayBlockingQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 647
    iget-object v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    if-nez v0, :cond_10

    .line 648
    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    goto :goto_10
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 634
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-ltz v0, :cond_6

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
    .line 653
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v2}, Ljava/util/concurrent/ArrayBlockingQueue;->access$400(Ljava/util/concurrent/ArrayBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    .line 654
    .local v0, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 656
    :try_start_9
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    if-gez v2, :cond_18

    .line 657
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
    :try_end_13
    .catchall {:try_start_9 .. :try_end_13} :catchall_13

    .line 664
    :catchall_13
    move-exception v2

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 658
    :cond_18
    :try_start_18
    iget v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 659
    iget-object v1, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 660
    .local v1, x:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    iget v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ArrayBlockingQueue;->inc(I)I

    move-result v2

    iput v2, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 661
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->checkNext()V
    :try_end_2b
    .catchall {:try_start_18 .. :try_end_2b} :catchall_13

    .line 664
    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-object v1
.end method

.method public remove()V
    .registers 6

    .prologue
    .local p0, this:Ljava/util/concurrent/ArrayBlockingQueue$Itr;,"Ljava/util/concurrent/ArrayBlockingQueue<TE;>.Itr;"
    const/4 v4, -0x1

    .line 669
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->access$400(Ljava/util/concurrent/ArrayBlockingQueue;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    .line 670
    .local v1, lock:Ljava/util/concurrent/locks/ReentrantLock;
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 672
    :try_start_a
    iget v0, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 673
    .local v0, i:I
    if-ne v0, v4, :cond_19

    .line 674
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    throw v3
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_14

    .line 683
    .end local v0           #i:I
    :catchall_14
    move-exception v3

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3

    .line 675
    .restart local v0       #i:I
    :cond_19
    const/4 v3, -0x1

    :try_start_1a
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->lastRet:I

    .line 677
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->access$100(Ljava/util/concurrent/ArrayBlockingQueue;)I

    move-result v2

    .line 678
    .local v2, ti:I
    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->removeAt(I)V

    .line 680
    if-ne v0, v2, :cond_38

    iget-object v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->this$0:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-static {v3}, Ljava/util/concurrent/ArrayBlockingQueue;->access$100(Ljava/util/concurrent/ArrayBlockingQueue;)I

    move-result v3

    :goto_2f
    iput v3, p0, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->nextIndex:I

    .line 681
    invoke-direct {p0}, Ljava/util/concurrent/ArrayBlockingQueue$Itr;->checkNext()V
    :try_end_34
    .catchall {:try_start_1a .. :try_end_34} :catchall_14

    .line 683
    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 685
    return-void

    :cond_38
    move v3, v0

    .line 680
    goto :goto_2f
.end method
