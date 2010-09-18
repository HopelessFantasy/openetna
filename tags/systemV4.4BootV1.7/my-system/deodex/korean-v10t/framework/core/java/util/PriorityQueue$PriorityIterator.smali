.class Ljava/util/PriorityQueue$PriorityIterator;
.super Ljava/lang/Object;
.source "PriorityQueue.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/PriorityQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriorityIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field private allowRemove:Z

.field private currentIndex:I

.field final synthetic this$0:Ljava/util/PriorityQueue;


# direct methods
.method private constructor <init>(Ljava/util/PriorityQueue;)V
    .registers 3
    .parameter

    .prologue
    .line 292
    .local p0, this:Ljava/util/PriorityQueue$PriorityIterator;,"Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    iput-object p1, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    .line 296
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/PriorityQueue;Ljava/util/PriorityQueue$1;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 292
    .local p0, this:Ljava/util/PriorityQueue$PriorityIterator;,"Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    invoke-direct {p0, p1}, Ljava/util/PriorityQueue$PriorityIterator;-><init>(Ljava/util/PriorityQueue;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    .local p0, this:Ljava/util/PriorityQueue$PriorityIterator;,"Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    const/4 v2, 0x1

    .line 299
    iget v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    iget-object v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    invoke-static {v1}, Ljava/util/PriorityQueue;->access$100(Ljava/util/PriorityQueue;)I

    move-result v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_e

    move v0, v2

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public next()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 303
    .local p0, this:Ljava/util/PriorityQueue$PriorityIterator;,"Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    invoke-virtual {p0}, Ljava/util/PriorityQueue$PriorityIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_c

    .line 304
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 306
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    .line 307
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    invoke-static {v0}, Ljava/util/PriorityQueue;->access$200(Ljava/util/PriorityQueue;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 311
    .local p0, this:Ljava/util/PriorityQueue$PriorityIterator;,"Ljava/util/PriorityQueue<TE;>.PriorityIterator;"
    iget-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    if-nez v0, :cond_a

    .line 312
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 314
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->allowRemove:Z

    .line 315
    iget-object v0, p0, Ljava/util/PriorityQueue$PriorityIterator;->this$0:Ljava/util/PriorityQueue;

    iget v1, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    const/4 v2, 0x1

    sub-int v2, v1, v2

    iput v2, p0, Ljava/util/PriorityQueue$PriorityIterator;->currentIndex:I

    invoke-static {v0, v1}, Ljava/util/PriorityQueue;->access$300(Ljava/util/PriorityQueue;I)V

    .line 316
    return-void
.end method
