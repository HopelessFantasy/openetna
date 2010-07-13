.class Lorg/javia/arity/ByteStack;
.super Ljava/lang/Object;
.source "ByteStack.java"


# instance fields
.field private data:[B

.field private size:I


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/ByteStack;->size:I

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/ByteStack;->size:I

    .line 25
    return-void
.end method

.method pop(I)V
    .registers 3
    .parameter

    .prologue
    .line 37
    iget v0, p0, Lorg/javia/arity/ByteStack;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/javia/arity/ByteStack;->size:I

    .line 38
    return-void
.end method

.method push(B)V
    .registers 6
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 28
    iget v0, p0, Lorg/javia/arity/ByteStack;->size:I

    iget-object v1, p0, Lorg/javia/arity/ByteStack;->data:[B

    array-length v1, v1

    if-lt v0, v1, :cond_19

    .line 29
    iget-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    .line 30
    iget-object v1, p0, Lorg/javia/arity/ByteStack;->data:[B

    iget-object v2, p0, Lorg/javia/arity/ByteStack;->data:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    iput-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    .line 33
    :cond_19
    iget-object v0, p0, Lorg/javia/arity/ByteStack;->data:[B

    iget v1, p0, Lorg/javia/arity/ByteStack;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/javia/arity/ByteStack;->size:I

    aput-byte p1, v0, v1

    .line 34
    return-void
.end method

.method toArray()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 41
    iget v0, p0, Lorg/javia/arity/ByteStack;->size:I

    new-array v0, v0, [B

    .line 42
    iget-object v1, p0, Lorg/javia/arity/ByteStack;->data:[B

    iget v2, p0, Lorg/javia/arity/ByteStack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    return-object v0
.end method
