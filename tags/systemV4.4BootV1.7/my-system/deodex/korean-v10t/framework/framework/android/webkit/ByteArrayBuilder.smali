.class Landroid/webkit/ByteArrayBuilder;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ByteArrayBuilder$Chunk;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x2000


# instance fields
.field private mChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field

.field private mMinCapacity:I

.field private mPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/ByteArrayBuilder;->init(I)V

    .line 44
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "minCapacity"

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-direct {p0, p1}, Landroid/webkit/ByteArrayBuilder;->init(I)V

    .line 48
    return-void
.end method

.method private appendChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;
    .registers 5
    .parameter "length"

    .prologue
    .line 121
    iget v1, p0, Landroid/webkit/ByteArrayBuilder;->mMinCapacity:I

    if-ge p1, v1, :cond_6

    .line 122
    iget p1, p0, Landroid/webkit/ByteArrayBuilder;->mMinCapacity:I

    .line 126
    :cond_6
    iget-object v1, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 127
    invoke-direct {p0, p1}, Landroid/webkit/ByteArrayBuilder;->obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 134
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_12
    :goto_12
    return-object v0

    .line 129
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_13
    iget-object v1, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 130
    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    iget v1, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    iget-object v2, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v2, v2

    if-ne v1, v2, :cond_12

    .line 131
    invoke-direct {p0, p1}, Landroid/webkit/ByteArrayBuilder;->obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    goto :goto_12
.end method

.method private init(I)V
    .registers 3
    .parameter "minCapacity"

    .prologue
    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mPool:Ljava/util/LinkedList;

    .line 54
    if-gtz p1, :cond_12

    .line 55
    const/16 p1, 0x2000

    .line 57
    :cond_12
    iput p1, p0, Landroid/webkit/ByteArrayBuilder;->mMinCapacity:I

    .line 58
    return-void
.end method

.method private obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;
    .registers 4
    .parameter "length"

    .prologue
    .line 139
    iget-object v1, p0, Landroid/webkit/ByteArrayBuilder;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 140
    new-instance v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    invoke-direct {v0, p1}, Landroid/webkit/ByteArrayBuilder$Chunk;-><init>(I)V

    .line 144
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_d
    iget-object v1, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 145
    return-object v0

    .line 142
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_13
    iget-object v1, p0, Landroid/webkit/ByteArrayBuilder;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    .restart local v0       #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    goto :goto_d
.end method


# virtual methods
.method public append([B)V
    .registers 4
    .parameter "array"

    .prologue
    .line 61
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/webkit/ByteArrayBuilder;->append([BII)V

    .line 62
    return-void
.end method

.method public declared-synchronized append([BII)V
    .registers 8
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 65
    monitor-enter p0

    :goto_1
    if-lez p3, :cond_20

    .line 66
    :try_start_3
    invoke-direct {p0, p3}, Landroid/webkit/ByteArrayBuilder;->appendChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v1

    .line 67
    .local v1, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    iget-object v2, v1, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v2, v2

    iget v3, v1, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    sub-int/2addr v2, v3

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 68
    .local v0, amount:I
    iget-object v2, v1, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v3, v1, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    iget v2, v1, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_22

    .line 70
    sub-int/2addr p3, v0

    .line 71
    add-int/2addr p2, v0

    .line 72
    goto :goto_1

    .line 73
    .end local v0           #amount:I
    .end local v1           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_20
    monitor-exit p0

    return-void

    .line 65
    :catchall_22
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized clear()V
    .registers 3

    .prologue
    .line 113
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 114
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_5
    if-eqz v0, :cond_f

    .line 115
    invoke-virtual {p0, v0}, Landroid/webkit/ByteArrayBuilder;->releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V

    .line 116
    invoke-virtual {p0}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_11

    move-result-object v0

    goto :goto_5

    .line 118
    :cond_f
    monitor-exit p0

    return-void

    .line 113
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catchall_11
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getByteSize()I
    .registers 6

    .prologue
    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, total:I
    iget-object v3, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 105
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/webkit/ByteArrayBuilder$Chunk;>;"
    :goto_8
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 106
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 107
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v2, v3

    .line 108
    goto :goto_8

    .line 109
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_18
    return v2
.end method

.method public declared-synchronized getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;
    .registers 2

    .prologue
    .line 82
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_15

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    .line 83
    :goto_a
    monitor-exit p0

    return-object v0

    :cond_c
    :try_start_c
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_15

    goto :goto_a

    .line 82
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V
    .registers 3
    .parameter "c"

    .prologue
    .line 90
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput v0, p1, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 91
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mPool:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_2 .. :try_end_9} :catchall_b

    .line 92
    monitor-exit p0

    return-void

    .line 90
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
