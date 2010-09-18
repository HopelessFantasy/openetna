.class Lorg/javia/arity/DoubleStack;
.super Ljava/lang/Object;
.source "DoubleStack.java"


# instance fields
.field private im:[D

.field private re:[D

.field private size:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    .line 21
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    return-void
.end method


# virtual methods
.method clear()V
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    .line 26
    return-void
.end method

.method getIm()[D
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 57
    const/4 v0, 0x1

    move v1, v6

    .line 58
    :goto_3
    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    if-ge v1, v2, :cond_12

    .line 59
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->im:[D

    aget-wide v2, v2, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_16

    move v0, v6

    .line 64
    :cond_12
    if-eqz v0, :cond_19

    .line 65
    const/4 v0, 0x0

    .line 69
    :goto_15
    return-object v0

    .line 58
    :cond_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 67
    :cond_19
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    new-array v0, v0, [D

    .line 68
    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    invoke-static {v1, v6, v0, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_15
.end method

.method getRe()[D
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 51
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    new-array v0, v0, [D

    .line 52
    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 53
    return-object v0
.end method

.method pop(I)V
    .registers 5
    .parameter

    .prologue
    .line 44
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    if-le p1, v0, :cond_29

    .line 45
    new-instance v0, Ljava/lang/Error;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/javia/arity/DoubleStack;->size:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_29
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    .line 48
    return-void
.end method

.method push(DD)V
    .registers 10
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 29
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    iget-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v1, v1

    if-lt v0, v1, :cond_25

    .line 30
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v0, v0

    shl-int/lit8 v0, v0, 0x1

    .line 31
    new-array v1, v0, [D

    .line 32
    new-array v0, v0, [D

    .line 33
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget-object v3, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v2, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget-object v3, p0, Lorg/javia/arity/DoubleStack;->re:[D

    array-length v3, v3

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 35
    iput-object v1, p0, Lorg/javia/arity/DoubleStack;->re:[D

    .line 36
    iput-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    .line 38
    :cond_25
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->re:[D

    iget v1, p0, Lorg/javia/arity/DoubleStack;->size:I

    aput-wide p1, v0, v1

    .line 39
    iget-object v0, p0, Lorg/javia/arity/DoubleStack;->im:[D

    iget v1, p0, Lorg/javia/arity/DoubleStack;->size:I

    aput-wide p3, v0, v1

    .line 40
    iget v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/javia/arity/DoubleStack;->size:I

    .line 41
    return-void
.end method
