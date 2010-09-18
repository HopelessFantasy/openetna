.class public abstract Lcom/lge/util/CursorList;
.super Ljava/lang/Object;
.source "CursorList.java"

# interfaces
.implements Ljava/util/List;
.implements Landroid/database/Cursor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/util/CursorList$CursorIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List",
        "<TT;>;",
        "Landroid/database/Cursor;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CACHE_SIZE:I = 0x14


# instance fields
.field cache:Lcom/lge/util/LRUHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lge/util/LRUHashMap",
            "<",
            "Ljava/lang/Integer;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .registers 3
    .parameter "cursor"

    .prologue
    .line 88
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    const/16 v0, 0x14

    invoke-direct {p0, p1, v0}, Lcom/lge/util/CursorList;-><init>(Landroid/database/Cursor;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I)V
    .registers 4
    .parameter "cursor"
    .parameter "cacheSize"

    .prologue
    .line 82
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    .line 84
    new-instance v0, Lcom/lge/util/LRUHashMap;

    invoke-direct {v0, p2}, Lcom/lge/util/LRUHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/lge/util/CursorList;->cache:Lcom/lge/util/LRUHashMap;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/lge/util/CursorList;)Landroid/database/Cursor;
    .registers 2
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private get(IZ)Ljava/lang/Object;
    .registers 7
    .parameter "location"
    .parameter "store"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)TT;"
        }
    .end annotation

    .prologue
    .line 132
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v2, p0, Lcom/lge/util/CursorList;->cache:Lcom/lge/util/LRUHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/lge/util/LRUHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 133
    .local v0, obj:Ljava/lang/Object;,"TT;"
    if-nez v0, :cond_2c

    .line 134
    iget-object v2, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .line 135
    .local v1, position:I
    add-int/lit8 v2, v1, 0x1

    if-ne v2, p1, :cond_2d

    .line 136
    iget-object v2, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 143
    :goto_1b
    iget-object v2, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v2}, Lcom/lge/util/CursorList;->createObject(Landroid/database/Cursor;)Ljava/lang/Object;

    move-result-object v0

    .line 144
    if-eqz p2, :cond_2c

    .line 145
    iget-object v2, p0, Lcom/lge/util/CursorList;->cache:Lcom/lge/util/LRUHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .end local v1           #position:I
    :cond_2c
    return-object v0

    .line 137
    .restart local v1       #position:I
    :cond_2d
    const/4 v2, 0x1

    sub-int v2, v1, v2

    if-ne v2, p1, :cond_38

    .line 138
    iget-object v2, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToPrevious()Z

    goto :goto_1b

    .line 140
    :cond_38
    iget-object v2, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1b
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p1, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p2, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 108
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<+TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "add operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 116
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 117
    return-void
.end method

.method public close()V
    .registers 2

    .prologue
    .line 250
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v0}, Lcom/lge/util/LRUHashMap;->clear()V

    .line 251
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 252
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3
    .parameter "object"

    .prologue
    .line 120
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 124
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    return v0
.end method

.method public copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V
    .registers 4
    .parameter "columnIndex"
    .parameter "buffer"

    .prologue
    .line 255
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->copyStringToBuffer(ILandroid/database/CharArrayBuffer;)V

    .line 256
    return-void
.end method

.method abstract createObject(Landroid/database/Cursor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")TT;"
        }
    .end annotation
.end method

.method public deactivate()V
    .registers 2

    .prologue
    .line 259
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cache:Lcom/lge/util/LRUHashMap;

    invoke-virtual {v0}, Lcom/lge/util/LRUHashMap;->clear()V

    .line 260
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 261
    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 93
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_10

    .line 95
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 97
    :cond_10
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 128
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/lge/util/CursorList;->get(IZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getBlob(I)[B
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 264
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnCount()I
    .registers 2

    .prologue
    .line 268
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    return v0
.end method

.method public getColumnIndex(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"

    .prologue
    .line 272
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnIndexOrThrow(Ljava/lang/String;)I
    .registers 3
    .parameter "columnName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 277
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getColumnName(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 281
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .registers 2

    .prologue
    .line 285
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 289
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 293
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .prologue
    .line 297
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(I)F
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 301
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 305
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .registers 4
    .parameter "columnIndex"

    .prologue
    .line 309
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPosition()I
    .registers 2

    .prologue
    .line 313
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 317
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 321
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantsAllOnMoveCalls()Z
    .registers 2

    .prologue
    .line 325
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getWantsAllOnMoveCalls()Z

    move-result v0

    return v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 7
    .parameter "object"

    .prologue
    .line 152
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v3, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 154
    .local v2, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    :try_start_7
    invoke-virtual {p0}, Lcom/lge/util/CursorList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2a

    .line 155
    invoke-virtual {p0, v0}, Lcom/lge/util/CursorList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 156
    .local v1, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 157
    iget-object v3, p0, Lcom/lge/util/CursorList;->cache:Lcom/lge/util/LRUHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_7 .. :try_end_20} :catchall_31

    .line 162
    iget-object v3, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v3, v0

    .line 164
    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    :goto_26
    return v3

    .line 154
    .restart local v1       #obj:Ljava/lang/Object;,"TT;"
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 162
    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    :cond_2a
    iget-object v3, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 164
    const/4 v3, -0x1

    goto :goto_26

    .line 162
    :catchall_31
    move-exception v3

    iget-object v4, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v3
.end method

.method public isAfterLast()Z
    .registers 2

    .prologue
    .line 329
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    return v0
.end method

.method public isBeforeFirst()Z
    .registers 2

    .prologue
    .line 333
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    return v0
.end method

.method public isClosed()Z
    .registers 2

    .prologue
    .line 337
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 168
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    invoke-virtual {p0}, Lcom/lge/util/CursorList;->size()I

    move-result v0

    if-lez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public isFirst()Z
    .registers 2

    .prologue
    .line 341
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isFirst()Z

    move-result v0

    return v0
.end method

.method public isLast()Z
    .registers 2

    .prologue
    .line 345
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isLast()Z

    move-result v0

    return v0
.end method

.method public isNull(I)Z
    .registers 3
    .parameter "columnIndex"

    .prologue
    .line 349
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    invoke-virtual {p0}, Lcom/lge/util/CursorList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 7
    .parameter "object"

    .prologue
    .line 176
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v3, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v2

    .line 178
    .local v2, position:I
    :try_start_6
    invoke-virtual {p0}, Lcom/lge/util/CursorList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .local v0, i:I
    :goto_d
    if-ltz v0, :cond_2c

    .line 179
    invoke-virtual {p0, v0}, Lcom/lge/util/CursorList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 180
    .local v1, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 181
    iget-object v3, p0, Lcom/lge/util/CursorList;->cache:Lcom/lge/util/LRUHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/lge/util/LRUHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catchall {:try_start_6 .. :try_end_22} :catchall_33

    .line 186
    iget-object v3, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v3, v0

    .line 188
    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    :goto_28
    return v3

    .line 178
    .restart local v1       #obj:Ljava/lang/Object;,"TT;"
    :cond_29
    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    .line 186
    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    :cond_2c
    iget-object v3, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v3, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 188
    const/4 v3, -0x1

    goto :goto_28

    .line 186
    .end local v0           #i:I
    :catchall_33
    move-exception v3

    iget-object v4, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v4, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    throw v3
.end method

.method public listIterator()Ljava/util/ListIterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    new-instance v0, Lcom/lge/util/CursorList$CursorIterator;

    invoke-direct {v0, p0}, Lcom/lge/util/CursorList$CursorIterator;-><init>(Lcom/lge/util/CursorList;)V

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .registers 3
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 196
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 197
    new-instance v0, Lcom/lge/util/CursorList$CursorIterator;

    invoke-direct {v0, p0}, Lcom/lge/util/CursorList$CursorIterator;-><init>(Lcom/lge/util/CursorList;)V

    return-object v0
.end method

.method public move(I)Z
    .registers 3
    .parameter "offset"

    .prologue
    .line 353
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->move(I)Z

    move-result v0

    return v0
.end method

.method public moveToFirst()Z
    .registers 2

    .prologue
    .line 357
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .registers 2

    .prologue
    .line 361
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToLast()Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .registers 2

    .prologue
    .line 365
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .registers 3
    .parameter "position"

    .prologue
    .line 369
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPrevious()Z
    .registers 2

    .prologue
    .line 373
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToPrevious()Z

    move-result v0

    return v0
.end method

.method public registerContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 377
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 378
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 381
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 382
    return-void
.end method

.method public remove(I)Ljava/lang/Object;
    .registers 4
    .parameter "location"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 4
    .parameter "object"

    .prologue
    .line 205
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 209
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requery()Z
    .registers 2

    .prologue
    .line 385
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    return v0
.end method

.method public respond(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 3
    .parameter "extras"

    .prologue
    .line 389
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->respond(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 213
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .parameter "location"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .prologue
    .line 217
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p2, object:Ljava/lang/Object;,"TT;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "set operation is not supported from CursorList"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .registers 4
    .parameter "cr"
    .parameter "uri"

    .prologue
    .line 393
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1, p2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    .line 394
    return-void
.end method

.method public size()I
    .registers 2

    .prologue
    .line 221
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_5
.end method

.method public subList(II)Ljava/util/List;
    .registers 6
    .parameter "start"
    .parameter "end"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 225
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .local v1, subList:Ljava/util/List;,"Ljava/util/List<TT;>;"
    move v0, p1

    .local v0, i:I
    :goto_6
    if-gt v0, p2, :cond_12

    .line 227
    invoke-virtual {p0, v0}, Lcom/lge/util/CursorList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 229
    :cond_12
    return-object v1
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 5

    .prologue
    .line 233
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    invoke-virtual {p0}, Lcom/lge/util/CursorList;->size()I

    move-result v1

    .line 234
    .local v1, l:I
    new-array v2, v1, [Ljava/lang/Object;

    .line 235
    .local v2, objs:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    if-ge v0, v1, :cond_12

    .line 236
    invoke-virtual {p0, v0}, Lcom/lge/util/CursorList;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v0

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 238
    :cond_12
    return-object v2
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    .local p1, array:[Ljava/lang/Object;,"[TT;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_d

    .line 244
    invoke-virtual {p0, v0}, Lcom/lge/util/CursorList;->get(I)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, p1, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 246
    :cond_d
    return-object p1
.end method

.method public unregisterContentObserver(Landroid/database/ContentObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 397
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 398
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .parameter "observer"

    .prologue
    .line 401
    .local p0, this:Lcom/lge/util/CursorList;,"Lcom/lge/util/CursorList<TT;>;"
    iget-object v0, p0, Lcom/lge/util/CursorList;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 402
    return-void
.end method
