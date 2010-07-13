.class public Ljava/util/LinkedList;
.super Ljava/util/AbstractSequentialList;
.source "LinkedList.java"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/Queue;
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/LinkedList$LinkIterator;,
        Ljava/util/LinkedList$Link;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSequentialList",
        "<TE;>;",
        "Ljava/util/List",
        "<TE;>;",
        "Ljava/util/Queue",
        "<TE;>;",
        "Ljava/lang/Cloneable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0xc29535d4a608822L


# instance fields
.field transient size:I

.field transient voidLink:Ljava/util/LinkedList$Link;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList$Link",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 184
    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 185
    new-instance v0, Ljava/util/LinkedList$Link;

    invoke-direct {v0, v1, v1, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 186
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 187
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 188
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
    .line 201
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 202
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 203
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v4, 0x0

    .line 808
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 809
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v3

    iput v3, p0, Ljava/util/LinkedList;->size:I

    .line 810
    new-instance v3, Ljava/util/LinkedList$Link;

    invoke-direct {v3, v4, v4, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 811
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 812
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .local v0, i:I
    :goto_15
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_26

    .line 813
    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v2, v3, v1, v4}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 814
    .local v2, nextLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 815
    move-object v1, v2

    .line 816
    goto :goto_15

    .line 817
    .end local v2           #nextLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_26
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 818
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v3, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 819
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 797
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 798
    iget v1, p0, Ljava/util/LinkedList;->size:I

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 799
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 800
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<TE;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 801
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_c

    .line 803
    :cond_1a
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 8
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    if-ltz p1, :cond_37

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-gt p1, v4, :cond_37

    .line 222
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 223
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_16

    .line 224
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 225
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 224
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 228
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 229
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 228
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 232
    :cond_1f
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 233
    .local v3, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    new-instance v2, Ljava/util/LinkedList$Link;

    invoke-direct {v2, p2, v3, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 234
    .local v2, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 235
    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 236
    iget v4, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->size:I

    .line 237
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    .line 241
    return-void

    .line 239
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v2           #newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v3           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_37
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 254
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 255
    .local v1, oldLast:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 256
    .local v0, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 257
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 258
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 259
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 260
    const/4 v2, 0x1

    return v2
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 11
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 284
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    if-ltz p1, :cond_6

    iget v7, p0, Ljava/util/LinkedList;->size:I

    if-le p1, v7, :cond_c

    .line 285
    :cond_6
    new-instance v7, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v7}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v7

    .line 287
    :cond_c
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    .line 288
    .local v0, adding:I
    if-nez v0, :cond_14

    .line 289
    const/4 v7, 0x0

    .line 311
    :goto_13
    return v7

    .line 291
    :cond_14
    iget-object v6, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 292
    .local v6, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v7, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v7, v7, 0x2

    if-ge p1, v7, :cond_24

    .line 293
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1d
    if-ge v2, p1, :cond_2d

    .line 294
    iget-object v6, v6, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 293
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 297
    .end local v2           #i:I
    :cond_24
    iget v2, p0, Ljava/util/LinkedList;->size:I

    .restart local v2       #i:I
    :goto_26
    if-lt v2, p1, :cond_2d

    .line 298
    iget-object v6, v6, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 297
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 301
    :cond_2d
    iget-object v5, v6, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 302
    .local v5, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_33
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_47

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 303
    .local v1, e:Ljava/lang/Object;,"TE;"
    new-instance v4, Ljava/util/LinkedList$Link;

    const/4 v7, 0x0

    invoke-direct {v4, v1, v6, v7}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 304
    .local v4, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v4, v6, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 305
    move-object v6, v4

    .line 306
    goto :goto_33

    .line 307
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v4           #newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_47
    iput-object v5, v6, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 308
    iput-object v6, v5, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 309
    iget v7, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v7, v0

    iput v7, p0, Ljava/util/LinkedList;->size:I

    .line 310
    iget v7, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Ljava/util/LinkedList;->modCount:I

    .line 311
    const/4 v7, 0x1

    goto :goto_13
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 326
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 327
    .local v0, adding:I
    if-nez v0, :cond_8

    .line 328
    const/4 v5, 0x0

    .line 340
    :goto_7
    return v5

    .line 330
    :cond_8
    iget-object v5, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v4, v5, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 331
    .local v4, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 332
    .local v1, e:Ljava/lang/Object;,"TE;"
    new-instance v3, Ljava/util/LinkedList$Link;

    const/4 v5, 0x0

    invoke-direct {v3, v1, v4, v5}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 333
    .local v3, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 334
    move-object v4, v3

    .line 335
    goto :goto_10

    .line 336
    .end local v1           #e:Ljava/lang/Object;,"TE;"
    .end local v3           #newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_24
    iget-object v5, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v5, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 337
    iget-object v5, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v4, v5, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 338
    iget v5, p0, Ljava/util/LinkedList;->size:I

    add-int/2addr v5, v0

    iput v5, p0, Ljava/util/LinkedList;->size:I

    .line 339
    iget v5, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Ljava/util/LinkedList;->modCount:I

    .line 340
    const/4 v5, 0x1

    goto :goto_7
.end method

.method public addFirst(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 351
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 352
    .local v1, oldFirst:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v2, v1}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 353
    .local v0, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 354
    iput-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 355
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 356
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 357
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 368
    .local v1, oldLast:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    new-instance v0, Ljava/util/LinkedList$Link;

    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    invoke-direct {v0, p1, v1, v2}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    .line 369
    .local v0, newLink:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 370
    iput-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 371
    iget v2, p0, Ljava/util/LinkedList;->size:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 372
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 373
    return-void
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 384
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-lez v0, :cond_19

    .line 385
    const/4 v0, 0x0

    iput v0, p0, Ljava/util/LinkedList;->size:I

    .line 386
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 387
    iget-object v0, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 388
    iget v0, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljava/util/LinkedList;->modCount:I

    .line 390
    :cond_19
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 8

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v6, 0x0

    .line 404
    :try_start_1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 405
    .local v1, l:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x0

    iput v2, v1, Ljava/util/LinkedList;->size:I

    .line 406
    new-instance v2, Ljava/util/LinkedList$Link;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedList$Link;-><init>(Ljava/lang/Object;Ljava/util/LinkedList$Link;Ljava/util/LinkedList$Link;)V

    iput-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 407
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 408
    iget-object v2, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v1, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v3, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 409
    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z
    :try_end_23
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_23} :catch_25

    move-object v2, v1

    .line 412
    .end local v1           #l:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    :goto_24
    return-object v2

    .line 411
    :catch_25
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/CloneNotSupportedException;
    move-object v2, v6

    .line 412
    goto :goto_24
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 5
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v2, 0x1

    .line 427
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 428
    .local v0, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_1a

    .line 429
    :goto_7
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_24

    .line 430
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    move v1, v2

    .line 443
    :goto_14
    return v1

    .line 433
    :cond_15
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    goto :goto_7

    .line 440
    :cond_18
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 436
    :cond_1a
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_24

    .line 437
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v1, :cond_18

    move v1, v2

    .line 438
    goto :goto_14

    .line 443
    :cond_24
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public element()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 739
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 448
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_22

    iget v2, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v2, :cond_22

    .line 449
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 450
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v2, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v2, v2, 0x2

    if-ge p1, v2, :cond_16

    .line 451
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 452
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 451
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 455
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 456
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 455
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 459
    :cond_1f
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 461
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_22
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2
.end method

.method public getFirst()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 473
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 474
    .local v0, first:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_b

    .line 475
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 477
    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public getLast()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 489
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 490
    .local v0, last:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v1, :cond_b

    .line 491
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v1

    .line 493
    :cond_b
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .line 498
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 499
    .local v1, pos:I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 500
    .local v0, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_1e

    .line 501
    :goto_7
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_28

    .line 502
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    move v2, v1

    .line 517
    :goto_14
    return v2

    .line 505
    :cond_15
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 506
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 513
    :cond_1a
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 514
    add-int/lit8 v1, v1, 0x1

    .line 509
    :cond_1e
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_28

    .line 510
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1a

    move v2, v1

    .line 511
    goto :goto_14

    .line 517
    :cond_28
    const/4 v2, -0x1

    goto :goto_14
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 5
    .parameter "object"

    .prologue
    .line 532
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v1, p0, Ljava/util/LinkedList;->size:I

    .line 533
    .local v1, pos:I
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 534
    .local v0, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_1d

    .line 535
    :goto_8
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_29

    .line 536
    add-int/lit8 v1, v1, -0x1

    .line 537
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    move v2, v1

    .line 551
    :goto_17
    return v2

    .line 540
    :cond_18
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    goto :goto_8

    .line 548
    :cond_1b
    iget-object v0, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 543
    :cond_1d
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_29

    .line 544
    add-int/lit8 v1, v1, -0x1

    .line 545
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-nez v2, :cond_1b

    move v2, v1

    .line 546
    goto :goto_17

    .line 551
    :cond_29
    const/4 v2, -0x1

    goto :goto_17
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 569
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    new-instance v0, Ljava/util/LinkedList$LinkIterator;

    invoke-direct {v0, p0, p1}, Ljava/util/LinkedList$LinkIterator;-><init>(Ljava/util/LinkedList;I)V

    return-object v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 721
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, o:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 722
    const/4 v0, 0x1

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 734
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 735
    .local v0, first:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v1, :cond_a

    const/4 v1, 0x0

    :goto_9
    return-object v1

    :cond_a
    iget-object v1, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    goto :goto_9
.end method

.method public poll()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 726
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    goto :goto_5
.end method

.method public remove()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 8
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 584
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    if-ltz p1, :cond_36

    iget v4, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v4, :cond_36

    .line 585
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 586
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v4, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v4, v4, 0x2

    if-ge p1, v4, :cond_16

    .line 587
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 588
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 587
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 591
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 592
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 591
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 595
    :cond_1f
    iget-object v3, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 596
    .local v3, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 597
    .local v2, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v2, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 598
    iput-object v3, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 599
    iget v4, p0, Ljava/util/LinkedList;->size:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Ljava/util/LinkedList;->size:I

    .line 600
    iget v4, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Ljava/util/LinkedList;->modCount:I

    .line 601
    iget-object v4, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v4

    .line 603
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v2           #next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v3           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_36
    new-instance v4, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v4}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v4
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 7
    .parameter "object"

    .prologue
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v4, 0x1

    .line 608
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 609
    .local v0, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    if-eqz p1, :cond_16

    .line 610
    :goto_7
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v3, :cond_21

    iget-object v3, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    .line 611
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    goto :goto_7

    .line 614
    :cond_16
    :goto_16
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v3, :cond_21

    iget-object v3, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    if-eqz v3, :cond_21

    .line 615
    iget-object v0, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    goto :goto_16

    .line 618
    :cond_21
    iget-object v3, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-ne v0, v3, :cond_27

    .line 619
    const/4 v3, 0x0

    .line 627
    :goto_26
    return v3

    .line 621
    :cond_27
    iget-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 622
    .local v1, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 623
    .local v2, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iput-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 624
    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 625
    iget v3, p0, Ljava/util/LinkedList;->size:I

    sub-int/2addr v3, v4

    iput v3, p0, Ljava/util/LinkedList;->size:I

    .line 626
    iget v3, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Ljava/util/LinkedList;->modCount:I

    move v3, v4

    .line 627
    goto :goto_26
.end method

.method public removeFirst()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 639
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 640
    .local v0, first:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_21

    .line 641
    iget-object v1, v0, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 642
    .local v1, next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 643
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 644
    iget v2, p0, Ljava/util/LinkedList;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 645
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 646
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 648
    .end local v1           #next:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_21
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public removeLast()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 660
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v0, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 661
    .local v0, last:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v0, v2, :cond_21

    .line 662
    iget-object v1, v0, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 663
    .local v1, previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v1, v2, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 664
    iget-object v2, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iput-object v2, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 665
    iget v2, p0, Ljava/util/LinkedList;->size:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Ljava/util/LinkedList;->size:I

    .line 666
    iget v2, p0, Ljava/util/LinkedList;->modCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Ljava/util/LinkedList;->modCount:I

    .line 667
    iget-object v2, v0, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    return-object v2

    .line 669
    .end local v1           #previous:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :cond_21
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p2, object:Ljava/lang/Object;,"TE;"
    if-ltz p1, :cond_24

    iget v3, p0, Ljava/util/LinkedList;->size:I

    if-ge p1, v3, :cond_24

    .line 692
    iget-object v1, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    .line 693
    .local v1, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    iget v3, p0, Ljava/util/LinkedList;->size:I

    div-int/lit8 v3, v3, 0x2

    if-ge p1, v3, :cond_16

    .line 694
    const/4 v0, 0x0

    .local v0, i:I
    :goto_f
    if-gt v0, p1, :cond_1f

    .line 695
    iget-object v1, v1, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 694
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 698
    .end local v0           #i:I
    :cond_16
    iget v0, p0, Ljava/util/LinkedList;->size:I

    .restart local v0       #i:I
    :goto_18
    if-le v0, p1, :cond_1f

    .line 699
    iget-object v1, v1, Ljava/util/LinkedList$Link;->previous:Ljava/util/LinkedList$Link;

    .line 698
    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    .line 702
    :cond_1f
    iget-object v2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 703
    .local v2, result:Ljava/lang/Object;,"TE;"
    iput-object p2, v1, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    .line 704
    return-object v2

    .line 706
    .end local v0           #i:I
    .end local v1           #link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    .end local v2           #result:Ljava/lang/Object;,"TE;"
    :cond_24
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v3}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v3
.end method

.method public size()I
    .registers 2

    .prologue
    .line 717
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    iget v0, p0, Ljava/util/LinkedList;->size:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 6

    .prologue
    .line 751
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    const/4 v1, 0x0

    .line 752
    .local v1, index:I
    iget v4, p0, Ljava/util/LinkedList;->size:I

    new-array v0, v4, [Ljava/lang/Object;

    .line 753
    .local v0, contents:[Ljava/lang/Object;
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v3, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 754
    .local v3, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :goto_9
    iget-object v4, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v3, v4, :cond_17

    .line 755
    add-int/lit8 v2, v1, 0x1

    .end local v1           #index:I
    .local v2, index:I
    iget-object v4, v3, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v4, v0, v1

    .line 756
    iget-object v3, v3, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v1, v2

    .end local v2           #index:I
    .restart local v1       #index:I
    goto :goto_9

    .line 758
    :cond_17
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 780
    .local p0, this:Ljava/util/LinkedList;,"Ljava/util/LinkedList<TE;>;"
    .local p1, contents:[Ljava/lang/Object;,"[TT;"
    const/4 v2, 0x0

    .line 781
    .local v2, index:I
    iget v5, p0, Ljava/util/LinkedList;->size:I

    array-length v6, p1

    if-le v5, v6, :cond_1a

    .line 782
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 783
    .local v1, ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    iget v5, p0, Ljava/util/LinkedList;->size:I

    invoke-static {v1, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    move-object p1, v0

    .line 785
    .end local v1           #ct:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_1a
    iget-object v5, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    iget-object v4, v5, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    .line 786
    .local v4, link:Ljava/util/LinkedList$Link;,"Ljava/util/LinkedList$Link<TE;>;"
    :goto_1e
    iget-object v5, p0, Ljava/util/LinkedList;->voidLink:Ljava/util/LinkedList$Link;

    if-eq v4, v5, :cond_2c

    .line 787
    add-int/lit8 v3, v2, 0x1

    .end local v2           #index:I
    .local v3, index:I
    iget-object v5, v4, Ljava/util/LinkedList$Link;->data:Ljava/lang/Object;

    aput-object v5, p1, v2

    .line 788
    iget-object v4, v4, Ljava/util/LinkedList$Link;->next:Ljava/util/LinkedList$Link;

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1e

    .line 790
    :cond_2c
    array-length v5, p1

    if-ge v2, v5, :cond_32

    .line 791
    const/4 v5, 0x0

    aput-object v5, p1, v2

    .line 793
    :cond_32
    return-object p1
.end method
