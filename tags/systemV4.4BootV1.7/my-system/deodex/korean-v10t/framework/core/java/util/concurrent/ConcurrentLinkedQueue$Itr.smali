.class Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;
.super Ljava/lang/Object;
.source "ConcurrentLinkedQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/ConcurrentLinkedQueue;
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
.field private lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field private nextItem:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field

.field private nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue$Node",
            "<TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .registers 2
    .parameter

    .prologue
    .line 389
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iput-object p1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    .line 391
    return-void
.end method

.method private advance()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    const/4 v4, 0x0

    .line 398
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    iput-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 399
    iget-object v2, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 401
    .local v2, x:Ljava/lang/Object;,"TE;"
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v3, :cond_19

    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->this$0:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->first()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    move-object v1, v3

    .line 403
    .local v1, p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :goto_12
    if-nez v1, :cond_21

    .line 404
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 405
    iput-object v4, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    .line 412
    :goto_18
    return-object v2

    .line 401
    .end local v1           #p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_19
    iget-object v3, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v3

    move-object v1, v3

    goto :goto_12

    .line 408
    .restart local v1       #p:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    :cond_21
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getItem()Ljava/lang/Object;

    move-result-object v0

    .line 409
    .local v0, item:Ljava/lang/Object;,"TE;"
    if-eqz v0, :cond_2c

    .line 410
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 411
    iput-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextItem:Ljava/lang/Object;

    goto :goto_18

    .line 414
    :cond_2c
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->getNext()Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    move-result-object v1

    .line 415
    goto :goto_12
.end method


# virtual methods
.method public hasNext()Z
    .registers 2

    .prologue
    .line 419
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->nextNode:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    if-nez v0, :cond_a

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 424
    :cond_a
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->advance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .local p0, this:Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;,"Ljava/util/concurrent/ConcurrentLinkedQueue<TE;>.Itr;"
    const/4 v1, 0x0

    .line 428
    iget-object v0, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 429
    .local v0, l:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;,"Ljava/util/concurrent/ConcurrentLinkedQueue$Node<TE;>;"
    if-nez v0, :cond_b

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 431
    :cond_b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue$Node;->setItem(Ljava/lang/Object;)V

    .line 432
    iput-object v1, p0, Ljava/util/concurrent/ConcurrentLinkedQueue$Itr;->lastRet:Ljava/util/concurrent/ConcurrentLinkedQueue$Node;

    .line 433
    return-void
.end method
