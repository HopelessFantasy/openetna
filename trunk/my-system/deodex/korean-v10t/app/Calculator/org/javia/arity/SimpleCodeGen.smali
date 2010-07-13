.class Lorg/javia/arity/SimpleCodeGen;
.super Lorg/javia/arity/TokenConsumer;
.source "SimpleCodeGen.java"


# static fields
.field static final HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;


# instance fields
.field code:Lorg/javia/arity/ByteStack;

.field consts:Lorg/javia/arity/DoubleStack;

.field exception:Lorg/javia/arity/SyntaxException;

.field funcs:Lorg/javia/arity/FunctionStack;

.field symbols:Lorg/javia/arity/Symbols;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 26
    new-instance v0, Lorg/javia/arity/SyntaxException;

    invoke-direct {v0}, Lorg/javia/arity/SyntaxException;-><init>()V

    sput-object v0, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    return-void
.end method

.method constructor <init>(Lorg/javia/arity/SyntaxException;)V
    .registers 3
    .parameter

    .prologue
    .line 37
    invoke-direct {p0}, Lorg/javia/arity/TokenConsumer;-><init>()V

    .line 28
    new-instance v0, Lorg/javia/arity/ByteStack;

    invoke-direct {v0}, Lorg/javia/arity/ByteStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    .line 29
    new-instance v0, Lorg/javia/arity/DoubleStack;

    invoke-direct {v0}, Lorg/javia/arity/DoubleStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    .line 30
    new-instance v0, Lorg/javia/arity/FunctionStack;

    invoke-direct {v0}, Lorg/javia/arity/FunctionStack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    .line 38
    iput-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    .line 39
    return-void
.end method


# virtual methods
.method getFun()Lorg/javia/arity/CompiledFunction;
    .registers 7

    .prologue
    .line 91
    new-instance v0, Lorg/javia/arity/CompiledFunction;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v2}, Lorg/javia/arity/ByteStack;->toArray()[B

    move-result-object v2

    iget-object v3, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v3}, Lorg/javia/arity/DoubleStack;->getRe()[D

    move-result-object v3

    iget-object v4, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v4}, Lorg/javia/arity/DoubleStack;->getIm()[D

    move-result-object v4

    iget-object v5, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v5}, Lorg/javia/arity/FunctionStack;->toArray()[Lorg/javia/arity/Function;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;-><init>(I[B[D[D[Lorg/javia/arity/Function;)V

    return-object v0
.end method

.method push(Lorg/javia/arity/Token;)V
    .registers 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 55
    iget v0, p1, Lorg/javia/arity/Token;->id:I

    packed-switch v0, :pswitch_data_9e

    .line 82
    iget-byte v0, p1, Lorg/javia/arity/Token;->vmop:B

    .line 83
    if-gtz v0, :cond_2d

    .line 84
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

    .line 58
    :pswitch_23
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-wide v1, p1, Lorg/javia/arity/Token;->value:D

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/DoubleStack;->push(DD)V

    move v0, v6

    .line 87
    :cond_2d
    :goto_2d
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v1, v0}, Lorg/javia/arity/ByteStack;->push(B)V

    .line 88
    return-void

    .line 63
    :pswitch_33
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->symbols:Lorg/javia/arity/Symbols;

    iget-object v1, p1, Lorg/javia/arity/Token;->name:Ljava/lang/String;

    iget v2, p1, Lorg/javia/arity/Token;->arity:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Symbols;->lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v0

    .line 64
    if-nez v0, :cond_69

    .line 65
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

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

    .line 67
    :cond_69
    iget-byte v1, v0, Lorg/javia/arity/Symbol;->op:B

    if-lez v1, :cond_84

    .line 68
    iget-byte v0, v0, Lorg/javia/arity/Symbol;->op:B

    .line 69
    const/16 v1, 0x25

    if-lt v0, v1, :cond_2d

    const/16 v1, 0x29

    if-gt v0, v1, :cond_2d

    .line 70
    sget-object v0, Lorg/javia/arity/SimpleCodeGen;->HAS_ARGUMENTS:Lorg/javia/arity/SyntaxException;

    const-string v1, "eval() on implicit function"

    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->exception:Lorg/javia/arity/SyntaxException;

    iget v2, v2, Lorg/javia/arity/SyntaxException;->position:I

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/SyntaxException;->set(Ljava/lang/String;I)Lorg/javia/arity/SyntaxException;

    move-result-object v0

    throw v0

    .line 72
    :cond_84
    iget-object v1, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    if-eqz v1, :cond_92

    .line 73
    const/4 v1, 0x2

    .line 74
    iget-object v2, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    iget-object v0, v0, Lorg/javia/arity/Symbol;->fun:Lorg/javia/arity/Function;

    invoke-virtual {v2, v0}, Lorg/javia/arity/FunctionStack;->push(Lorg/javia/arity/Function;)V

    move v0, v1

    goto :goto_2d

    .line 77
    :cond_92
    iget-object v1, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    iget-wide v2, v0, Lorg/javia/arity/Symbol;->valueRe:D

    iget-wide v4, v0, Lorg/javia/arity/Symbol;->valueIm:D

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/javia/arity/DoubleStack;->push(DD)V

    move v0, v6

    .line 79
    goto :goto_2d

    .line 55
    nop

    :pswitch_data_9e
    .packed-switch 0x9
        :pswitch_23
        :pswitch_33
        :pswitch_33
    .end packed-switch
.end method

.method setSymbols(Lorg/javia/arity/Symbols;)Lorg/javia/arity/SimpleCodeGen;
    .registers 2
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lorg/javia/arity/SimpleCodeGen;->symbols:Lorg/javia/arity/Symbols;

    .line 43
    return-object p0
.end method

.method start()V
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->code:Lorg/javia/arity/ByteStack;

    invoke-virtual {v0}, Lorg/javia/arity/ByteStack;->clear()V

    .line 49
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->consts:Lorg/javia/arity/DoubleStack;

    invoke-virtual {v0}, Lorg/javia/arity/DoubleStack;->clear()V

    .line 50
    iget-object v0, p0, Lorg/javia/arity/SimpleCodeGen;->funcs:Lorg/javia/arity/FunctionStack;

    invoke-virtual {v0}, Lorg/javia/arity/FunctionStack;->clear()V

    .line 51
    return-void
.end method
