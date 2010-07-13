.class final Ljava/util/AbstractList$FullListIterator;
.super Ljava/util/AbstractList$SimpleListIterator;
.source "AbstractList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/AbstractList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FullListIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<TE;>.Simple",
        "ListIterator;",
        "Ljava/util/ListIterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Ljava/util/AbstractList;


# direct methods
.method constructor <init>(Ljava/util/AbstractList;I)V
    .registers 4
    .parameter
    .parameter "start"

    .prologue
    .line 91
    .local p0, this:Ljava/util/AbstractList$FullListIterator;,"Ljava/util/AbstractList<TE;>.FullListIterator;"
    iput-object p1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    .line 92
    invoke-direct {p0, p1}, Ljava/util/AbstractList$SimpleListIterator;-><init>(Ljava/util/AbstractList;)V

    .line 93
    if-ltz p2, :cond_13

    invoke-virtual {p1}, Ljava/util/AbstractList;->size()I

    move-result v0

    if-gt p2, v0, :cond_13

    .line 94
    const/4 v0, 0x1

    sub-int v0, p2, v0

    iput v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    .line 98
    return-void

    .line 96
    :cond_13
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, this:Ljava/util/AbstractList$FullListIterator;,"Ljava/util/AbstractList<TE;>.FullListIterator;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_31

    .line 103
    :try_start_8
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V
    :try_end_11
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_11} :catch_29

    .line 107
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    .line 108
    const/4 v1, -0x1

    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    .line 109
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v1, v1, Ljava/util/AbstractList;->modCount:I

    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    if-eq v1, v2, :cond_28

    .line 110
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    .line 115
    :cond_28
    return-void

    .line 104
    :catch_29
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 113
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_31
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public hasPrevious()Z
    .registers 2

    .prologue
    .line 118
    .local p0, this:Ljava/util/AbstractList$FullListIterator;,"Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    if-ltz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 122
    .local p0, this:Ljava/util/AbstractList$FullListIterator;,"Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, this:Ljava/util/AbstractList$FullListIterator;,"Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, v3, Ljava/util/AbstractList;->modCount:I

    if-ne v2, v3, :cond_23

    .line 128
    :try_start_8
    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v3, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    invoke-virtual {v2, v3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, result:Ljava/lang/Object;,"TE;"
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    iput v2, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    .line 130
    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/AbstractList$FullListIterator;->pos:I
    :try_end_1a
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_1a} :catch_1b

    .line 131
    return-object v1

    .line 132
    .end local v1           #result:Ljava/lang/Object;,"TE;"
    :catch_1b
    move-exception v2

    move-object v0, v2

    .line 133
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 136
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_23
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 140
    .local p0, this:Ljava/util/AbstractList$FullListIterator;,"Ljava/util/AbstractList<TE;>.FullListIterator;"
    iget v0, p0, Ljava/util/AbstractList$FullListIterator;->pos:I

    return v0
.end method

.method public set(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p0, this:Ljava/util/AbstractList$FullListIterator;,"Ljava/util/AbstractList<TE;>.FullListIterator;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget v1, p0, Ljava/util/AbstractList$FullListIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, v2, Ljava/util/AbstractList;->modCount:I

    if-ne v1, v2, :cond_18

    .line 146
    :try_start_8
    iget-object v1, p0, Ljava/util/AbstractList$FullListIterator;->this$0:Ljava/util/AbstractList;

    iget v2, p0, Ljava/util/AbstractList$FullListIterator;->lastPosition:I

    invoke-virtual {v1, v2, p1}, Ljava/util/AbstractList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_8 .. :try_end_f} :catch_10

    .line 153
    return-void

    .line 147
    :catch_10
    move-exception v1

    move-object v0, v1

    .line 148
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 151
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_18
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method
