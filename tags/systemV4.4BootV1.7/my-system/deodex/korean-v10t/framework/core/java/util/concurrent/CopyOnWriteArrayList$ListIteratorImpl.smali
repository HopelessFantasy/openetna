.class Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;
.super Ljava/lang/Object;
.source "CopyOnWriteArrayList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/concurrent/CopyOnWriteArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListIteratorImpl"
.end annotation


# instance fields
.field private final arr:[Ljava/lang/Object;

.field private current:I

.field private final size:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 4
    .parameter "data"
    .parameter "current"

    .prologue
    .line 759
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 760
    iput p2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    .line 761
    iput-object p1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->arr:[Ljava/lang/Object;

    .line 762
    array-length v0, p1

    iput v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->size:I

    .line 763
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation add"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 770
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->size:I

    if-ge v0, v1, :cond_8

    .line 771
    const/4 v0, 0x1

    .line 773
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 777
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 781
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 782
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->arr:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    aget-object v0, v0, v1

    return-object v0

    .line 784
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 788
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 792
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 793
    iget-object v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->arr:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    sub-int/2addr v1, v3

    iput v1, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    aget-object v0, v0, v1

    return-object v0

    .line 795
    :cond_11
    new-instance v0, Ljava/util/NoSuchElementException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pos is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public previousIndex()I
    .registers 3

    .prologue
    .line 799
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->current:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public remove()V
    .registers 3

    .prologue
    .line 803
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .parameter "o"

    .prologue
    .line 807
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation set"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final size()I
    .registers 2

    .prologue
    .line 756
    iget v0, p0, Ljava/util/concurrent/CopyOnWriteArrayList$ListIteratorImpl;->size:I

    return v0
.end method
