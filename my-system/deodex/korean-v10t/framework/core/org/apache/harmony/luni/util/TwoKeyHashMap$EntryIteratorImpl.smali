.class Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;
.super Ljava/lang/Object;
.source "TwoKeyHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/util/TwoKeyHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntryIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<",
        "Ljava/lang/String;",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private curr:I

.field private curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private found:Z

.field private returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field

.field private returned_index:I

.field private startModCount:I

.field final synthetic this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;


# direct methods
.method constructor <init>(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)V
    .registers 3
    .parameter

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v0, -0x1

    .line 395
    iput-object p1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    .line 391
    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 396
    invoke-static {p1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    .line 397
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v2, 0x1

    .line 400
    iget-boolean v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    if-eqz v0, :cond_7

    move v0, v2

    .line 414
    :goto_6
    return v0

    .line 403
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eqz v0, :cond_11

    .line 404
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 406
    :cond_11
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-nez v0, :cond_50

    .line 407
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    :goto_1b
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_39

    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v0, v0, v1

    if-nez v0, :cond_39

    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    goto :goto_1b

    .line 410
    :cond_39
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iget-object v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v1}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_50

    .line 411
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v0

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 414
    :cond_50
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eqz v0, :cond_58

    move v0, v2

    :goto_55
    iput-boolean v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    goto :goto_6

    :cond_58
    const/4 v0, 0x0

    goto :goto_55
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 387
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "TV;>;"
        }
    .end annotation

    .prologue
    .line 418
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v0, v1, :cond_10

    .line 419
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 421
    :cond_10
    invoke-virtual {p0}, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 422
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 425
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->found:Z

    .line 426
    iget v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr:I

    iput v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 427
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 428
    iget-object v0, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->curr_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    return-object v0
.end method

.method public remove()V
    .registers 7

    .prologue
    .local p0, this:Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap<TE;TK;TV;>.EntryIteratorImpl;"
    const/4 v5, -0x1

    .line 432
    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    if-ne v2, v5, :cond_b

    .line 433
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 436
    :cond_b
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$300(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    move-result v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    if-eq v2, v3, :cond_1b

    .line 437
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 440
    :cond_1b
    const/4 v1, 0x0

    .line 441
    .local v1, p:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    aget-object v0, v2, v3

    .line 442
    .local v0, e:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;,"Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry<TE;TK;TV;>;"
    :goto_26
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    if-eq v0, v2, :cond_2e

    .line 443
    move-object v1, v0

    .line 444
    iget-object v0, v0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    goto :goto_26

    .line 446
    :cond_2e
    if-eqz v1, :cond_49

    .line 447
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v2, v2, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iput-object v2, v1, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    .line 451
    :goto_36
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$010(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    .line 452
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$308(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)I

    .line 453
    iget v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->startModCount:I

    .line 454
    iput v5, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    .line 455
    return-void

    .line 449
    :cond_49
    iget-object v2, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->this$0:Lorg/apache/harmony/luni/util/TwoKeyHashMap;

    invoke-static {v2}, Lorg/apache/harmony/luni/util/TwoKeyHashMap;->access$400(Lorg/apache/harmony/luni/util/TwoKeyHashMap;)[Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    move-result-object v2

    iget v3, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_index:I

    iget-object v4, p0, Lorg/apache/harmony/luni/util/TwoKeyHashMap$EntryIteratorImpl;->returned_entry:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    iget-object v4, v4, Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;->next:Lorg/apache/harmony/luni/util/TwoKeyHashMap$Entry;

    aput-object v4, v2, v3

    goto :goto_36
.end method
