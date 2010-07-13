.class public Lorg/javia/arity/Constant;
.super Lorg/javia/arity/Function;
.source "Constant.java"


# instance fields
.field private value:Lorg/javia/arity/Complex;


# direct methods
.method public constructor <init>(Lorg/javia/arity/Complex;)V
    .registers 3
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 23
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0, p1}, Lorg/javia/arity/Complex;-><init>(Lorg/javia/arity/Complex;)V

    iput-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    .line 24
    return-void
.end method


# virtual methods
.method public eval()D
    .registers 3

    .prologue
    .line 33
    iget-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->toReal()D

    move-result-wide v0

    return-wide v0
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/javia/arity/Constant;->value:Lorg/javia/arity/Complex;

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
