.class public Ljava/util/HashSet;
.super Ljava/util/AbstractSet;
.source "HashSet.java"

# interfaces
.implements Ljava/util/Set;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x45bb7a6a694748ccL


# instance fields
.field transient backingMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 45
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 46
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "capacity"

    .prologue
    .line 56
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 57
    return-void
.end method

.method public constructor <init>(IF)V
    .registers 4
    .parameter "capacity"
    .parameter "loadFactor"

    .prologue
    .line 70
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    invoke-direct {p0, v0}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 82
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x6

    if-ge v3, v4, :cond_23

    const/16 v3, 0xb

    :goto_b
    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    invoke-direct {p0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/HashMap;)V

    .line 83
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 84
    .local v0, e:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 82
    .end local v0           #e:Ljava/lang/Object;,"TE;"
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_23
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    goto :goto_b

    .line 86
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_2a
    return-void
.end method

.method constructor <init>(Ljava/util/HashMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    .local p1, backingMap:Ljava/util/HashMap;,"Ljava/util/HashMap<TE;Ljava/util/HashSet<TE;>;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 89
    iput-object p1, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    .line 90
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 8
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 218
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 219
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    .line 220
    .local v3, length:I
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readFloat()F

    move-result v4

    .line 221
    .local v4, loadFactor:F
    invoke-virtual {p0, v3, v4}, Ljava/util/HashSet;->createBackingMap(IF)Ljava/util/HashMap;

    move-result-object v5

    iput-object v5, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    .line 222
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 223
    .local v0, elementCount:I
    move v1, v0

    .local v1, i:I
    :goto_16
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_24

    .line 224
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 225
    .local v2, key:Ljava/lang/Object;,"TE;"
    iget-object v5, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 227
    .end local v2           #key:Ljava/lang/Object;,"TE;"
    :cond_24
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 5
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 202
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 203
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    iget-object v2, v2, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v2, v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 204
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->loadFactor:F

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeFloat(F)V

    .line 205
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    iget v2, v2, Ljava/util/HashMap;->elementCount:I

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 206
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    iget-object v2, v2, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    array-length v1, v2

    .local v1, i:I
    :cond_1e
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_32

    .line 207
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    iget-object v2, v2, Ljava/util/HashMap;->elementData:[Ljava/util/HashMap$Entry;

    aget-object v0, v2, v1

    .line 208
    .local v0, entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TE;Ljava/util/HashSet<TE;>;>;"
    :goto_28
    if-eqz v0, :cond_1e

    .line 209
    iget-object v2, v0, Ljava/util/HashMap$Entry;->key:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 210
    iget-object v0, v0, Ljava/util/HashMap$Entry;->next:Ljava/util/HashMap$Entry;

    goto :goto_28

    .line 213
    .end local v0           #entry:Ljava/util/HashMap$Entry;,"Ljava/util/HashMap$Entry<TE;Ljava/util/HashSet<TE;>;>;"
    :cond_32
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 115
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 116
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 130
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 131
    .local v0, clone:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    iget-object v2, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0           #this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    check-cast p0, Ljava/util/HashMap;

    iput-object p0, v0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;
    :try_end_10
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_10} :catch_12

    move-object v2, v0

    .line 134
    .end local v0           #clone:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    :goto_11
    return-object v2

    .line 133
    :catch_12
    move-exception v2

    move-object v1, v2

    .line 134
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_11
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 149
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createBackingMap(IF)Ljava/util/HashMap;
    .registers 4
    .parameter "capacity"
    .parameter "loadFactor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF)",
            "Ljava/util/HashMap",
            "<TE;",
            "Ljava/util/HashSet",
            "<TE;>;>;"
        }
    .end annotation

    .prologue
    .line 230
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/HashMap;-><init>(IF)V

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 162
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 174
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 187
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public size()I
    .registers 2

    .prologue
    .line 198
    .local p0, this:Ljava/util/HashSet;,"Ljava/util/HashSet<TE;>;"
    iget-object v0, p0, Ljava/util/HashSet;->backingMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method
