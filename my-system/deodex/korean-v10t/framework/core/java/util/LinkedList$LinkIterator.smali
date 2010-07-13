.class final Ljava/util/LinkedList$LinkIterator;
.super Ljava/lang/Object;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/LinkedList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LinkIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator",
        "<TET;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field lastLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field link:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TET;>;"
        }
    .end annotation
.end field

.field final list:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<TET;>;"
        }
    .end annotation
.end field

.field pos:I


# direct methods
.method constructor <init>(Ljava/util/LinkedList;I)V
    .registers 5
    .parameter
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<TET;>;I)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    .local p1, object:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TET;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    .line 64
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->modCount:I

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    .line 65
    if-ltz p2, :cond_4e

    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    if-gt p2, v0, :cond_4e

    .line 69
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v0, v0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 70
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v0, v0, 0x2

    if-ge p2, v0, :cond_37

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    :goto_24
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_54

    .line 72
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 71
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    goto :goto_24

    .line 75
    :cond_37
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v0, v0, Ljava/util/LinkedList;->size:I

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    :goto_3d
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    if-lt v0, p2, :cond_54

    .line 76
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 75
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    goto :goto_3d

    .line 80
    :cond_4e
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 82
    :cond_54
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    .local p1, object:Ljava/lang/Object;,"TET;"
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    if-ne v2, v3, :cond_3b

    .line 86
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 87
    .local v1, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 88
    .local v0, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 89
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 90
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 91
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 92
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 93
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    .line 94
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->size:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->size:I

    .line 95
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    .line 99
    return-void

    .line 97
    .end local v0           #newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    .end local v1           #next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    :cond_3b
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 102
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasPrevious()Z
    .registers 3

    .prologue
    .line 106
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v2, v2, Ljava/util/LinkedList;->modCount:I

    if-ne v1, v2, :cond_27

    .line 111
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 112
    .local v0, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_21

    .line 113
    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 114
    iget v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 115
    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 117
    :cond_21
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 119
    .end local v0           #next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    :cond_27
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method public nextIndex()I
    .registers 2

    .prologue
    .line 123
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public previous()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TET;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    if-ne v0, v1, :cond_2b

    .line 128
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget-object v1, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_25

    .line 129
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 130
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    iput-object v0, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 131
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 132
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v0, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v0

    .line 134
    :cond_25
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 136
    :cond_2b
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public previousIndex()I
    .registers 2

    .prologue
    .line 140
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    return v0
.end method

.method public remove()V
    .registers 6

    .prologue
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    const/4 v4, 0x1

    .line 144
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v3, Ljava/util/LinkedList;->modCount:I

    if-ne v2, v3, :cond_45

    .line 145
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    if-eqz v2, :cond_3f

    .line 146
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 147
    .local v0, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 148
    .local v1, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 149
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 150
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iget-object v3, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    if-ne v2, v3, :cond_24

    .line 151
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    sub-int/2addr v2, v4

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->pos:I

    .line 153
    :cond_24
    iput-object v1, p0, Ljava/util/LinkedList$LinkIterator;->link:Ljava/util/LinkedList$Link;

    .line 154
    const/4 v2, 0x0

    iput-object v2, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    .line 155
    iget v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    .line 156
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->size:I

    sub-int/2addr v3, v4

    iput v3, v2, Ljava/util/LinkedList;->size:I

    .line 157
    iget-object v2, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v3, v2, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljava/util/LinkedList;->modCount:I

    .line 164
    return-void

    .line 159
    .end local v0           #next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    .end local v1           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TET;>;"
    :cond_3f
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2

    .line 162
    :cond_45
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2
.end method

.method public set(Ljava/lang/Object;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TET;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, this:Ljava/util/LinkedList$LinkIterator;,"Ljava/util/LinkedList$LinkIterator<TET;>;"
    .local p1, object:Ljava/lang/Object;,"TET;"
    iget v0, p0, Ljava/util/LinkedList$LinkIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/LinkedList$LinkIterator;->list:Ljava/util/LinkedList;

    iget v1, v1, Ljava/util/LinkedList;->modCount:I

    if-ne v0, v1, :cond_17

    .line 168
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    if-eqz v0, :cond_11

    .line 169
    iget-object v0, p0, Ljava/util/LinkedList$LinkIterator;->lastLink:Ljava/util/LinkedList$Link;

    iput-object p1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 176
    return-void

    .line 171
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 174
    :cond_17
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method
