.class Lorg/javia/arity/MyFun;
.super Lorg/javia/arity/Function;
.source "UnitTest.java"


# instance fields
.field f:Lorg/javia/arity/Function;

.field symbols:Lorg/javia/arity/Symbols;


# direct methods
.method constructor <init>()V
    .registers 5

    .prologue
    .line 492
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 489
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/MyFun;->symbols:Lorg/javia/arity/Symbols;

    .line 494
    :try_start_a
    iget-object v0, p0, Lorg/javia/arity/MyFun;->symbols:Lorg/javia/arity/Symbols;

    const-string v1, "1-x"

    invoke-virtual {v0, v1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    iput-object v0, p0, Lorg/javia/arity/MyFun;->f:Lorg/javia/arity/Function;
    :try_end_14
    .catch Lorg/javia/arity/SyntaxException; {:try_start_a .. :try_end_14} :catch_15

    .line 498
    :goto_14
    return-void

    .line 495
    :catch_15
    move-exception v0

    .line 496
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_14
.end method


# virtual methods
.method public eval(D)D
    .registers 5
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lorg/javia/arity/MyFun;->f:Lorg/javia/arity/Function;

    invoke-virtual {v0, p1, p2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v0

    return-wide v0
.end method
