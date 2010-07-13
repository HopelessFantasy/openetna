.class Ljava/util/IdentityHashMap$IdentityHashMapIterator;
.super Ljava/lang/Object;
.source "IdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/IdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IdentityHashMapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        "KT:",
        "Ljava/lang/Object;",
        "VT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<TE;>;"
    }
.end annotation


# instance fields
.field final associatedMap:Ljava/util/IdentityHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field canRemove:Z

.field expectedModCount:I

.field private lastPosition:I

.field private position:I

.field final type:Ljava/util/MapEntry$Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/IdentityHashMap;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/IdentityHashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapIterator;,"Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    .local p1, value:Ljava/util/MapEntry$Type;,"Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, hm:Ljava/util/IdentityHashMap;,"Ljava/util/IdentityHashMap<TKT;TVT;>;"
    const/4 v0, 0x0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    .line 124
    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    .line 132
    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    .line 136
    iput-object p2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    .line 137
    iput-object p1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->type:Ljava/util/MapEntry$Type;

    .line 138
    iget v0, p2, Ljava/util/IdentityHashMap;->modCount:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 139
    return-void
.end method


# virtual methods
.method checkConcurrentMod()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/ConcurrentModificationException;
        }
    .end annotation

    .prologue
    .line 154
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapIterator;,"Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget v1, v1, Ljava/util/IdentityHashMap;->modCount:I

    if-eq v0, v1, :cond_e

    .line 155
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 157
    :cond_e
    return-void
.end method

.method public hasNext()Z
    .registers 3

    .prologue
    .line 142
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapIterator;,"Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    :goto_0
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v1, v1, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 144
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v0, v0, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    aget-object v0, v0, v1

    if-nez v0, :cond_1a

    .line 145
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    goto :goto_0

    .line 147
    :cond_1a
    const/4 v0, 0x1

    .line 150
    :goto_1b
    return v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public next()Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 160
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapIterator;,"Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->checkConcurrentMod()V

    .line 161
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_f

    .line 162
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 165
    :cond_f
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    invoke-static {v1, v2}, Ljava/util/IdentityHashMap;->access$000(Ljava/util/IdentityHashMap;I)Ljava/util/IdentityHashMap$IdentityHashMapEntry;

    move-result-object v0

    .line 167
    .local v0, result:Ljava/util/IdentityHashMap$IdentityHashMapEntry;,"Ljava/util/IdentityHashMap$IdentityHashMapEntry<TKT;TVT;>;"
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    .line 168
    iget v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    .line 170
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    .line 171
    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->type:Ljava/util/MapEntry$Type;

    invoke-interface {v1, v0}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove()V
    .registers 4

    .prologue
    .line 175
    .local p0, this:Ljava/util/IdentityHashMap$IdentityHashMapIterator;,"Ljava/util/IdentityHashMap$IdentityHashMapIterator<TE;TKT;TVT;>;"
    invoke-virtual {p0}, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->checkConcurrentMod()V

    .line 176
    iget-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    if-nez v0, :cond_d

    .line 177
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 180
    :cond_d
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->canRemove:Z

    .line 181
    iget-object v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v1, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->associatedMap:Ljava/util/IdentityHashMap;

    iget-object v1, v1, Ljava/util/IdentityHashMap;->elementData:[Ljava/lang/Object;

    iget v2, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/IdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->lastPosition:I

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->position:I

    .line 183
    iget v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/IdentityHashMap$IdentityHashMapIterator;->expectedModCount:I

    .line 184
    return-void
.end method
