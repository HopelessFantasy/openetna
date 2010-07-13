.class Ljava/util/HashMap$HashMapIterator;
.super Ljava/lang/Object;
.source "HashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HashMapIterator"
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
.field final associatedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field canRemove:Z

.field entry:Ljava/util/HashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Entry",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field lastEntry:Ljava/util/HashMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap$Entry",
            "<TKT;TVT;>;"
        }
    .end annotation
.end field

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
.method constructor <init>(Ljava/util/MapEntry$Type;Ljava/util/HashMap;)V
    .registers 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/MapEntry$Type",
            "<TE;TKT;TVT;>;",
            "Ljava/util/HashMap",
            "<TKT;TVT;>;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/HashMap$HashMapIterator;,"Ljava/util/HashMap$HashMapIterator<TE;TKT;TVT;>;"
    .local p1, value:Ljava/util/MapEntry$Type;,"Ljava/util/MapEntry$Type<TE;TKT;TVT;>;"
    .local p2, hm:Ljava/util/HashMap;,"Ljava/util/HashMap<TKT;TVT;>;"
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput v0, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    .line 80
    iput-boolean v0, p0, Ljava/util/HashMap$HashMapIterator;->canRemove:Z

    .line 89
    iput-object p2, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    .line 90
    iput-object p1, p0, Ljava/util/HashMap$HashMapIterator;->type:Ljava/util/MapEntry$Type;

    .line 91
    iget v0, p2, Ljava/util/HashMap;->modCount:I

    iput v0, p0, Ljava/util/HashMap$HashMapIterator;->expectedModCount:I

    .line 92
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
    .line 119
    .local p0, this:Ljava/util/HashMap$HashMapIterator;,"Ljava/util/HashMap$HashMapIterator<TE;TKT;TVT;>;"
    iget v0, p0, Ljava/util/HashMap$HashMapIterator;->expectedModCount:I

    iget-object v1, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget v1, v1, Ljava/util/HashMap;->modCount:I

    if-eq v0, v1, :cond_e

    .line 120
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 122
    :cond_e
    return-void
.end method

.method public hasNext()Z
    .registers 6

    .prologue
    .line 95
    .local p0, this:Ljava/util/HashMap$HashMapIterator;,"Ljava/util/HashMap$HashMapIterator<TE;TKT;TVT;>;"
    iget-object v4, p0, Ljava/util/HashMap$HashMapIterator;->entry:Ljava/util/HashMap$Entry;

    if-eqz v4, :cond_6

    .line 96
    const/4 v4, 0x1

    .line 114
    :goto_5
    return v4

    .line 99
    :cond_6
    iget-object v4, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v0, v4, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    .line 100
    .local v0, elementData:[Ljava/util/HashMap$Entry;,"[Ljava/util/HashMap$Entry<TKT;TVT;>;"
    array-length v1, v0

    .line 101
    .local v1, length:I
    iget v2, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    .line 102
    .local v2, newPosition:I
    const/4 v3, 0x0

    .line 104
    .local v3, result:Z
    :goto_e
    if-ge v2, v1, :cond_18

    .line 105
    aget-object v4, v0, v2

    if-nez v4, :cond_17

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 108
    :cond_17
    const/4 v3, 0x1

    .line 113
    :cond_18
    iput v2, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    move v4, v3

    .line 114
    goto :goto_5
.end method

.method public next()Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Ljava/util/HashMap$HashMapIterator;,"Ljava/util/HashMap$HashMapIterator<TE;TKT;TVT;>;"
    iget v2, p0, Ljava/util/HashMap$HashMapIterator;->expectedModCount:I

    iget-object v3, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget v3, v3, Ljava/util/HashMap;->modCount:I

    if-eq v2, v3, :cond_e

    .line 128
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 130
    :cond_e
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapIterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 131
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 135
    :cond_1a
    iget-object v0, p0, Ljava/util/HashMap$HashMapIterator;->entry:Ljava/util/HashMap$Entry;

    .line 136
    .local v0, _entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TKT;TVT;>;"
    if-nez v0, :cond_3c

    .line 137
    iget-object v2, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v2, v2, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    iget v3, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    aget-object v1, v2, v3

    iput-object v1, p0, Ljava/util/HashMap$HashMapIterator;->lastEntry:Ljava/util/HashMap$Entry;

    .line 138
    .local v1, result:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TKT;TVT;>;"
    iget-object v2, p0, Ljava/util/HashMap$HashMapIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v2, v2, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    iput-object v2, p0, Ljava/util/HashMap$HashMapIterator;->entry:Ljava/util/HashMap$Entry;

    .line 146
    :goto_32
    const/4 v2, 0x1

    iput-boolean v2, p0, Ljava/util/HashMap$HashMapIterator;->canRemove:Z

    .line 147
    iget-object v2, p0, Ljava/util/HashMap$HashMapIterator;->type:Ljava/util/MapEntry$Type;

    invoke-interface {v2, v1}, Ljava/util/MapEntry$Type;->get(Ljava/util/MapEntry;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 140
    .end local v1           #result:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TKT;TVT;>;"
    :cond_3c
    iget-object v2, p0, Ljava/util/HashMap$HashMapIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v2, v2, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    if-eq v2, v0, :cond_48

    .line 141
    iget-object v2, p0, Ljava/util/HashMap$HashMapIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v2, v2, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    iput-object v2, p0, Ljava/util/HashMap$HashMapIterator;->lastEntry:Ljava/util/HashMap$Entry;

    .line 143
    :cond_48
    move-object v1, v0

    .line 144
    .restart local v1       #result:Ljava/util/MapEntry;,"Ljava/util/MapEntry<TKT;TVT;>;"
    iget-object v2, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    iput-object v2, p0, Ljava/util/HashMap$HashMapIterator;->entry:Ljava/util/HashMap$Entry;

    goto :goto_32
.end method

.method public remove()V
    .registers 6

    .prologue
    .local p0, this:Ljava/util/HashMap$HashMapIterator;,"Ljava/util/HashMap$HashMapIterator<TE;TKT;TVT;>;"
    const/4 v4, 0x1

    .line 152
    invoke-virtual {p0}, Ljava/util/HashMap$HashMapIterator;->checkConcurrentMod()V

    .line 153
    iget-boolean v0, p0, Ljava/util/HashMap$HashMapIterator;->canRemove:Z

    if-nez v0, :cond_e

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 157
    :cond_e
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/util/HashMap$HashMapIterator;->canRemove:Z

    .line 158
    iget-object v0, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget v1, v0, Ljava/util/HashMap;->modCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Ljava/util/HashMap;->modCount:I

    .line 159
    iget-object v0, p0, Ljava/util/HashMap$HashMapIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    iget-object v1, p0, Ljava/util/HashMap$HashMapIterator;->entry:Ljava/util/HashMap$Entry;

    if-ne v0, v1, :cond_51

    .line 160
    :cond_21
    iget-object v0, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v0, v0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    iget v1, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    sub-int/2addr v1, v4

    iput v1, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    aget-object v0, v0, v1

    if-eqz v0, :cond_21

    .line 163
    iget-object v0, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v0, v0, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    iget v1, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    iget-object v2, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget-object v2, v2, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    iget v3, p0, Ljava/util/HashMap$HashMapIterator;->position:I

    aget-object v2, v2, v3

    iget-object v2, v2, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    aput-object v2, v0, v1

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/HashMap$HashMapIterator;->entry:Ljava/util/HashMap$Entry;

    .line 168
    :goto_43
    iget-object v0, p0, Ljava/util/HashMap$HashMapIterator;->associatedMap:Ljava/util/HashMap;

    iget v1, v0, Ljava/util/HashMap;->elementCount:I

    sub-int/2addr v1, v4

    iput v1, v0, Ljava/util/HashMap;->elementCount:I

    .line 169
    iget v0, p0, Ljava/util/HashMap$HashMapIterator;->expectedModCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/HashMap$HashMapIterator;->expectedModCount:I

    .line 170
    return-void

    .line 166
    :cond_51
    iget-object v0, p0, Ljava/util/HashMap$HashMapIterator;->lastEntry:Ljava/util/HashMap$Entry;

    iget-object v1, p0, Ljava/util/HashMap$HashMapIterator;->entry:Ljava/util/HashMap$Entry;

    iput-object v1, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_43
.end method
