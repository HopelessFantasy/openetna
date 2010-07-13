.class public Lorg/javia/arity/EvalContext;
.super Ljava/lang/Object;
.source "EvalContext.java"


# static fields
.field static final MAX_STACK_SIZE:I = 0x80


# instance fields
.field args1:[D

.field args1c:[Lorg/javia/arity/Complex;

.field args2:[D

.field args2c:[Lorg/javia/arity/Complex;

.field stackBase:I

.field final stackComplex:[Lorg/javia/arity/Complex;

.field stackRe:[D


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/16 v3, 0x80

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-array v0, v3, [D

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->stackRe:[D

    .line 28
    new-array v0, v3, [Lorg/javia/arity/Complex;

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    .line 29
    iput v1, p0, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 31
    new-array v0, v2, [D

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args1:[D

    .line 32
    new-array v0, v4, [D

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args2:[D

    .line 33
    new-array v0, v2, [Lorg/javia/arity/Complex;

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 34
    new-array v0, v4, [Lorg/javia/arity/Complex;

    iput-object v0, p0, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    move v0, v1

    .line 37
    :goto_23
    if-ge v0, v3, :cond_31

    .line 38
    iget-object v1, p0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    new-instance v2, Lorg/javia/arity/Complex;

    invoke-direct {v2}, Lorg/javia/arity/Complex;-><init>()V

    aput-object v2, v1, v0

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 40
    :cond_31
    return-void
.end method
