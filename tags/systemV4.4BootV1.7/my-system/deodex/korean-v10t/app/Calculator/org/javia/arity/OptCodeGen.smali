.class Lorg/javia/arity/OptCodeGen;
.super Lorg/javia/arity/SimpleCodeGen;
.source "OptCodeGen.java"


# instance fields
.field context:Lorg/javia/arity/EvalContext;

.field intrinsicArity:I

.field sp:I

.field stack:[Lorg/javia/arity/Complex;

.field traceCode:[B

.field traceConstsIm:[D

.field traceConstsRe:[D

.field traceFuncs:[Lorg/javia/arity/Function;

.field tracer:Lorg/javia/arity/CompiledFunction;


# direct methods
.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .registers 8
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1}, Lorg/javia/arity/SimpleCodeGen;-><init>(Lorg/javia/arity/SyntaxException;)V

    .line 26
    new-instance v0, Lorg/javia/arity/EvalContext;

    invoke-direct {v0}, Lorg/javia/arity/EvalContext;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    .line 28
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    iget-object v0, v0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    .line 30
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    .line 31
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    .line 32
    new-array v0, v1, [Lorg/javia/arity/Function;

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    .line 33
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    .line 34
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-object v4, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    iget-object v5, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    iput-object v0, p0, Lorg/javia/arity/OptCodeGen;->tracer:Lorg/javia/arity/CompiledFunction;

    .line 40
    return-void
.end method


# virtual methods
.method getFun(I)Lorg/javia/arity/CompiledFunction;
    .registers 8
    .parameter

    .prologue
    .line 116
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1}, Lorg/javia/arity/ByteStack;->toArray()[B

    move-result-object v2

    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v1}, Lorg/javia/arity/DoubleStack;->getRe()[D

    move-result-object v3

    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v1}, Lorg/javia/arity/DoubleStack;->getIm()[D

    move-result-object v4

    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v1}, Lorg/javia/arity/FunctionStack;->toArray()[Lorg/javia/arity/Function;

    move-result-object v5

    move v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    return-object v0
.end method

.method push(Lorg/javia/arity/Token;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x25

    const/4 v9, 0x2

    const-wide/high16 v7, 0x7ff8

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 52
    iget v0, p1, Lorg/javia/arity/Token;->id:I

    packed-switch v0, :pswitch_data_124

    .line 88
    iget-byte v0, p1, Lorg/javia/arity/Token;->vmop:B

    .line 89
    if-gtz v0, :cond_36

    .line 90
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "wrong vmop: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :pswitch_29
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-wide v1, p1, Lorg/javia/arity/Token;->value:D

    aput-wide v1, v0, v5

    .line 56
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v5

    move v0, v6

    .line 93
    :cond_36
    :goto_36
    iget v1, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    .line 94
    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceCode:[B

    aput-byte v0, v2, v5

    .line 95
    const/16 v2, 0x8

    if-eq v0, v2, :cond_108

    .line 96
    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->tracer:Lorg/javia/arity/CompiledFunction;

    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->context:Lorg/javia/arity/EvalContext;

    iget v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    invoke-virtual {v2, v3, v4}, Lorg/javia/arity/CompiledFunction;->execWithoutCheckComplex(Lorg/javia/arity/EvalContext;I)I

    move-result v2

    iput v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    .line 104
    :goto_4c
    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v3, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v2, v2, v3

    iget-wide v2, v2, Lorg/javia/arity/Complex;->re:D

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_5c

    if-ne v0, v6, :cond_116

    .line 105
    :cond_5c
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/javia/arity/ByteStack;->pop(I)V

    .line 106
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lorg/javia/arity/DoubleStack;->pop(I)V

    .line 107
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v1, v1, v2

    iget-wide v1, v1, Lorg/javia/arity/Complex;->re:D

    iget-object v3, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v4, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v3, v3, v4

    iget-wide v3, v3, Lorg/javia/arity/Complex;->im:D

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/DoubleStack;->push(DD)V

    move v0, v6

    .line 112
    :cond_86
    :goto_86
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1, v0}, Lorg/javia/arity/ByteStack;->push(B)V

    .line 113
    :goto_8b
    return-void

    .line 61
    :pswitch_8c
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->symbols:Lorg/javia/arity/Symbols;

    iget-object v1, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    iget v2, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Symbols;->lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v0

    .line 62
    if-nez v0, :cond_c2

    .line 63
    iget-object v0, p0, Lorg/javia/arity/OptCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "undefined \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with arity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p1, Lorg/javia/arity/Token;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 65
    :cond_c2
    iget-byte v1, v0, Lorg/javia/arity/Symbol;->op:B

    if-lez v1, :cond_ec

    .line 66
    iget-byte v0, v0, Lorg/javia/arity/Symbol;->op:B

    .line 67
    if-lt v0, v3, :cond_36

    const/16 v1, 0x29

    if-gt v0, v1, :cond_36

    .line 68
    sub-int v1, v0, v3

    .line 69
    add-int/lit8 v2, v1, 0x1

    iget v3, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    if-le v2, v3, :cond_da

    .line 70
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 72
    :cond_da
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v1, v1, v2

    iput-wide v7, v1, Lorg/javia/arity/Complex;->re:D

    .line 73
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1, v0}, Lorg/javia/arity/ByteStack;->push(B)V

    goto :goto_8b

    .line 77
    :cond_ec
    iget-object v1, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-eqz v1, :cond_f9

    .line 79
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    iget-object v0, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    aput-object v0, v1, v5

    move v0, v9

    goto/16 :goto_36

    .line 82
    :cond_f9
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->traceConstsRe:[D

    iget-wide v2, v0, Lorg/javia/arity/Symbol;->valueRe:D

    aput-wide v2, v1, v5

    .line 83
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->traceConstsIm:[D

    iget-wide v2, v0, Lorg/javia/arity/Symbol;->valueIm:D

    aput-wide v2, v1, v5

    move v0, v6

    .line 85
    goto/16 :goto_36

    .line 98
    :cond_108
    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->stack:[Lorg/javia/arity/Complex;

    iget v3, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    aget-object v2, v2, v3

    iput-wide v7, v2, Lorg/javia/arity/Complex;->re:D

    goto/16 :goto_4c

    .line 109
    :cond_116
    if-ne v0, v9, :cond_86

    .line 110
    iget-object v1, p0, Lorg/javia/arity/OptCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v2, p0, Lorg/javia/arity/OptCodeGen;->traceFuncs:[Lorg/javia/arity/Function;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    goto/16 :goto_86

    .line 52
    nop

    :pswitch_data_124
    .packed-switch 0x9
        :pswitch_29
        :pswitch_8c
        :pswitch_8c
    .end packed-switch
.end method

.method start()V
    .registers 2

    .prologue
    .line 44
    invoke-super {p0}, Lorg/javia/arity/SimpleCodeGen;->start()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lorg/javia/arity/OptCodeGen;->sp:I

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lorg/javia/arity/OptCodeGen;->intrinsicArity:I

    .line 47
    return-void
.end method
