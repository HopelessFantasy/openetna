.class public Ljava/util/TreeSet;
.super Ljava/util/AbstractSet;
.source "TreeSet.java"

# interfaces
.implements Ljava/util/SortedSet;
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
        "Ljava/util/SortedSet",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2267af6c6a1278a5L


# instance fields
.field private transient backingMap:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap",
            "<TE;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 52
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/TreeSet;-><init>()V

    .line 69
    invoke-virtual {p0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/util/Comparator;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator",
            "<-TE;>;)V"
        }
    .end annotation

    .prologue
    .line 80
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 81
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/util/SortedMap;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedMap",
            "<TE;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, map:Ljava/util/SortedMap;,"Ljava/util/SortedMap<TE;TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 42
    iput-object p1, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/SortedSet;)V
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, set:Ljava/util/SortedSet;,"Ljava/util/SortedSet<TE;>;"
    invoke-interface {p1}, Ljava/util/SortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 94
    invoke-interface {p1}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 95
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 98
    :cond_19
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 9
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 395
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 396
    new-instance v3, Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Comparator;

    invoke-direct {v3, v6}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 397
    .local v3, map:Ljava/util/TreeMap;,"Ljava/util/TreeMap<TE;TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 398
    .local v4, size:I
    if-lez v4, :cond_3f

    .line 399
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 400
    .local v1, key:Ljava/lang/Object;,"TE;"
    new-instance v2, Ljava/util/TreeMap$Entry;

    invoke-direct {v2, v1, v1}, Ljava/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 401
    .local v2, last:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TE;TE;>;"
    iput-object v2, v3, Ljava/util/TreeMap;->root:Ljava/util/TreeMap$Entry;

    .line 402
    const/4 v6, 0x1

    iput v6, v3, Ljava/util/TreeMap;->size:I

    .line 403
    const/4 v0, 0x1

    .local v0, i:I
    :goto_23
    if-ge v0, v4, :cond_3f

    .line 404
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    .line 405
    new-instance v5, Ljava/util/TreeMap$Entry;

    invoke-direct {v5, v1, v1}, Ljava/util/TreeMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 406
    .local v5, x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TE;TE;>;"
    iput-object v2, v5, Ljava/util/TreeMap$Entry;->parent:Ljava/util/TreeMap$Entry;

    .line 407
    iput-object v5, v2, Ljava/util/TreeMap$Entry;->right:Ljava/util/TreeMap$Entry;

    .line 408
    iget v6, v3, Ljava/util/TreeMap;->size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Ljava/util/TreeMap;->size:I

    .line 409
    invoke-virtual {v3, v5}, Ljava/util/TreeMap;->balance(Ljava/util/TreeMap$Entry;)V

    .line 410
    move-object v2, v5

    .line 403
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 413
    .end local v0           #i:I
    .end local v1           #key:Ljava/lang/Object;,"TE;"
    .end local v2           #last:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TE;TE;>;"
    .end local v5           #x:Ljava/util/TreeMap$Entry;,"Ljava/util/TreeMap$Entry<TE;TE;>;"
    :cond_3f
    iput-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    .line 414
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
    .line 380
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 381
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 382
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->size()I

    move-result v1

    .line 383
    .local v1, size:I
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 384
    if-lez v1, :cond_2f

    .line 385
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 386
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :goto_21
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_21

    .line 390
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :cond_2f
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
    .line 117
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1, p1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 137
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 149
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->clear()V

    .line 150
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 164
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/TreeSet;

    .line 165
    .local v0, clone:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    instance-of v2, v2, Ljava/util/TreeMap;

    if-eqz v2, :cond_1a

    .line 166
    iget-object p0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    .end local p0           #this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    check-cast p0, Ljava/util/TreeMap;

    invoke-virtual {p0}, Ljava/util/TreeMap;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/SortedMap;

    iput-object p0, v0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    :goto_18
    move-object v2, v0

    .line 172
    .end local v0           #clone:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    :goto_19
    return-object v2

    .line 168
    .restart local v0       #clone:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .restart local p0       #this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    :cond_1a
    new-instance v2, Ljava/util/TreeMap;

    iget-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-direct {v2, v3}, Ljava/util/TreeMap;-><init>(Ljava/util/SortedMap;)V

    iput-object v2, v0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;
    :try_end_23
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_18

    .line 171
    .end local v0           #clone:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .end local p0           #this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    :catch_24
    move-exception v2

    move-object v1, v2

    .line 172
    .local v1, e:Ljava/lang/CloneNotSupportedException;
    const/4 v2, 0x0

    goto :goto_19
.end method

.method public comparator()Ljava/util/Comparator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<-TE;>;"
        }
    .end annotation

    .prologue
    .line 183
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 203
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public first()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 215
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->firstKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 238
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, end:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 239
    .local v1, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1b

    .line 240
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 244
    :goto_f
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v3, p1}, Ljava/util/SortedMap;->headMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedMap;)V

    return-object v2

    .line 242
    :cond_1b
    invoke-interface {v1, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_f
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 256
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->isEmpty()Z

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
    .line 268
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 281
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 301
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0, p1}, Ljava/util/SortedMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 312
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    iget-object v0, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v0}, Ljava/util/SortedMap;->size()I

    move-result v0

    return v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 337
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, start:Ljava/lang/Object;,"TE;"
    .local p2, end:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 338
    .local v1, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1e

    .line 339
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    invoke-interface {v2, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_30

    .line 340
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v3, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedMap;)V

    .line 344
    :goto_1d
    return-object v2

    .line 343
    :cond_1e
    invoke-interface {v1, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gtz v2, :cond_30

    .line 344
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v3, p1, p2}, Ljava/util/SortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedMap;)V

    goto :goto_1d

    .line 347
    :cond_30
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 370
    .local p0, this:Ljava/util/TreeSet;,"Ljava/util/TreeSet<TE;>;"
    .local p1, start:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v2}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    .line 371
    .local v1, c:Ljava/util/Comparator;,"Ljava/util/Comparator<-TE;>;"
    if-nez v1, :cond_1b

    .line 372
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    move-object v2, v0

    invoke-interface {v2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 376
    :goto_f
    new-instance v2, Ljava/util/TreeSet;

    iget-object v3, p0, Ljava/util/TreeSet;->backingMap:Ljava/util/SortedMap;

    invoke-interface {v3, p1}, Ljava/util/SortedMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedMap;)V

    return-object v2

    .line 374
    :cond_1b
    invoke-interface {v1, p1, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    goto :goto_f
.end method
