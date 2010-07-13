.class final Ljava/util/Hashtable$HashIterator;
.super Ljava/lang/Object;
.source "Hashtable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HashIterator"
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
.field private canRemove:Z

.field private expectedModCount:I

.field private lastEntry:Ljava/util/Hashtable$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private lastPosition:I

.field private position:I

.field final synthetic this$0:Ljava/util/Hashtable;

.field private final type:Ljava/util/MapEntry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/MapEntry$Type",
            "<TE;TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Hashtable;Ljava/util/MapEntry$Type;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator<TE;>;"
    .local p2, value:Ljava/util/MapEntry$Type;,"Ljava/util/MapEntry$Type<TE;TK;TV;>;"
    iput-object p1, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/Hashtable$HashIterator;->canRemove:Z

    .line 136
    iput-object p2, p0, Ljava/util/Hashtable$HashIterator;->type:Ljava/util/MapEntry$Type;

    .line 137
    iget v0, p1, Ljava/util/Hashtable;->lastSlot:I

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    .line 138
    iget v0, p1, Ljava/util/Hashtable;->modCount:I

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    .line 139
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 4

    .prologue
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator<TE;>;"
    const/4 v2, 0x1

    .line 142
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-eqz v0, :cond_d

    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    if-eqz v0, :cond_d

    move v0, v2

    .line 152
    :goto_c
    return v0

    .line 145
    :cond_d
    :goto_d
    iget v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    iget-object v1, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget v1, v1, Ljava/util/Hashtable;->firstSlot:I

    if-lt v0, v1, :cond_27

    .line 146
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget-object v0, v0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    iget v1, p0, Ljava/util/Hashtable$HashIterator;->position:I

    aget-object v0, v0, v1

    if-nez v0, :cond_25

    .line 147
    iget v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    goto :goto_d

    :cond_25
    move v0, v2

    .line 149
    goto :goto_c

    .line 152
    :cond_27
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator<TE;>;"
    const/4 v2, 0x1

    .line 156
    iget v0, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget v1, v1, Ljava/util/Hashtable;->modCount:I

    if-ne v0, v1, :cond_53

    .line 157
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-eqz v0, :cond_13

    .line 158
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    .line 160
    :cond_13
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-nez v0, :cond_3e

    .line 162
    :goto_17
    iget v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    iget-object v1, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget v1, v1, Ljava/util/Hashtable;->firstSlot:I

    if-lt v0, v1, :cond_31

    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget-object v0, v0, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    iget v1, p0, Ljava/util/Hashtable$HashIterator;->position:I

    aget-object v0, v0, v1

    iput-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-nez v0, :cond_31

    .line 163
    iget v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    goto :goto_17

    .line 165
    :cond_31
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-eqz v0, :cond_3e

    .line 166
    iget v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->lastPosition:I

    .line 169
    iget v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljava/util/Hashtable$HashIterator;->position:I

    .line 172
    :cond_3e
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-eqz v0, :cond_4d

    .line 173
    iput-boolean v2, p0, Ljava/util/Hashtable$HashIterator;->canRemove:Z

    .line 174
    iget-object v0, p0, Ljava/util/Hashtable$HashIterator;->type:Ljava/util/MapEntry$Type;

    iget-object v1, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    invoke-interface {v0, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 176
    :cond_4d
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 178
    :cond_53
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method public remove()V
    .registers 7

    .prologue
    .line 182
    .local p0, this:Ljava/util/Hashtable$HashIterator;,"Ljava/util/Hashtable<TK;TV;>.HashIterator<TE;>;"
    iget v2, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget v3, v3, Ljava/util/Hashtable;->modCount:I

    if-ne v2, v3, :cond_5a

    .line 183
    iget-boolean v2, p0, Ljava/util/Hashtable$HashIterator;->canRemove:Z

    if-eqz v2, :cond_63

    .line 184
    const/4 v2, 0x0

    iput-boolean v2, p0, Ljava/util/Hashtable$HashIterator;->canRemove:Z

    .line 185
    iget-object v2, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    monitor-enter v2

    .line 186
    const/4 v1, 0x0

    .line 187
    .local v1, removed:Z
    :try_start_13
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget-object v3, v3, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    iget v4, p0, Ljava/util/Hashtable$HashIterator;->lastPosition:I

    aget-object v0, v3, v4

    .line 188
    .local v0, entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-ne v0, v3, :cond_44

    .line 189
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget-object v3, v3, Ljava/util/Hashtable;->elementData:[Ljava/util/Hashtable$Entry;

    iget v4, p0, Ljava/util/Hashtable$HashIterator;->lastPosition:I

    iget-object v5, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    aput-object v5, v3, v4

    .line 190
    const/4 v1, 0x1

    .line 200
    :cond_2a
    :goto_2a
    if-eqz v1, :cond_59

    .line 201
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget v4, v3, Ljava/util/Hashtable;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v3, Ljava/util/Hashtable;->modCount:I

    .line 202
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->this$0:Ljava/util/Hashtable;

    iget v4, v3, Ljava/util/Hashtable;->elementCount:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, v3, Ljava/util/Hashtable;->elementCount:I

    .line 203
    iget v3, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/Hashtable$HashIterator;->expectedModCount:I

    .line 204
    monitor-exit v2

    return-void

    .line 192
    :cond_44
    :goto_44
    if-eqz v0, :cond_4f

    iget-object v3, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    iget-object v4, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    if-eq v3, v4, :cond_4f

    .line 193
    iget-object v0, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    goto :goto_44

    .line 195
    :cond_4f
    if-eqz v0, :cond_2a

    .line 196
    iget-object v3, p0, Ljava/util/Hashtable$HashIterator;->lastEntry:Ljava/util/Hashtable$Entry;

    iget-object v3, v3, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    iput-object v3, v0, Ljava/util/Hashtable$Entry;->next:Ljava/util/Hashtable$Entry;

    .line 197
    const/4 v1, 0x1

    goto :goto_2a

    .line 212
    :cond_59
    monitor-exit v2
    :try_end_5a
    .catchall {:try_start_13 .. :try_end_5a} :catchall_60

    .line 217
    .end local v0           #entry:Ljava/util/Hashtable$Entry;,"Ljava/util/Hashtable$Entry<TK;TV;>;"
    .end local v1           #removed:Z
    :cond_5a
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 212
    .restart local v1       #removed:Z
    :catchall_60
    move-exception v3

    :try_start_61
    monitor-exit v2
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v3

    .line 214
    .end local v1           #removed:Z
    :cond_63
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
.end method
