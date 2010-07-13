.class public Lorg/javia/arity/Symbols;
.super Ljava/lang/Object;
.source "Symbols.java"


# static fields
.field private static final builtin:[Lorg/javia/arity/Symbol;

.field private static final defines:[Ljava/lang/String;

.field private static shell:Lorg/javia/arity/Symbol;


# instance fields
.field private final compiler:Lorg/javia/arity/Compiler;

.field private delta:Ljava/util/Vector;

.field private frames:Ljava/util/Stack;

.field private symbols:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .prologue
    const-wide v14, 0x400921fb54442d18L

    const-wide/high16 v4, 0x3ff0

    const-wide/16 v2, 0x0

    const/4 v13, 0x0

    const-wide/high16 v11, 0x7ff0

    .line 208
    new-instance v0, Lorg/javia/arity/Symbol;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    sput-object v0, Lorg/javia/arity/Symbols;->shell:Lorg/javia/arity/Symbol;

    .line 215
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    move v0, v13

    .line 217
    :goto_1a
    const/16 v1, 0x2a

    if-ge v0, v1, :cond_34

    .line 218
    sget-object v1, Lorg/javia/arity/VM;->builtinArity:[B

    aget-byte v1, v1, v0

    if-ltz v1, :cond_30

    .line 219
    new-instance v7, Lorg/javia/arity/Symbol;

    sget-object v8, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    aget-object v8, v8, v0

    invoke-direct {v7, v8, v1, v0}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;IB)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 217
    :cond_30
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1a

    .line 223
    :cond_34
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "x"

    aput-object v1, v0, v13

    const/4 v1, 0x1

    const-string v7, "y"

    aput-object v7, v0, v1

    const/4 v1, 0x2

    const-string v7, "z"

    aput-object v7, v0, v1

    move v1, v13

    .line 224
    :goto_46
    array-length v7, v0

    if-ge v1, v7, :cond_5b

    .line 225
    new-instance v7, Lorg/javia/arity/Symbol;

    aget-object v8, v0, v1

    const/4 v9, -0x3

    add-int/lit8 v10, v1, 0x25

    int-to-byte v10, v10

    invoke-direct {v7, v8, v9, v10}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;IB)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 224
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_46

    .line 228
    :cond_5b
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "pi"

    invoke-direct {v0, v1, v14, v15}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 229
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "\u03c0"

    invoke-direct {v0, v1, v14, v15}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 230
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "e"

    const-wide v7, 0x4005bf0a8b145769L

    invoke-direct {v0, v1, v7, v8}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 233
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "Infinity"

    invoke-direct {v0, v1, v11, v12}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 234
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "infinity"

    invoke-direct {v0, v1, v11, v12}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 235
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "Inf"

    invoke-direct {v0, v1, v11, v12}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 236
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "inf"

    invoke-direct {v0, v1, v11, v12}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 237
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "\u221e"

    invoke-direct {v0, v1, v11, v12}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "NaN"

    const-wide/high16 v7, 0x7ff8

    invoke-direct {v0, v1, v7, v8}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 239
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "nan"

    const-wide/high16 v7, 0x7ff8

    invoke-direct {v0, v1, v7, v8}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;D)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 241
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "i"

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DD)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 242
    new-instance v0, Lorg/javia/arity/Symbol;

    const-string v1, "j"

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DD)V

    invoke-virtual {v6, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v0

    .line 245
    new-array v0, v0, [Lorg/javia/arity/Symbol;

    sput-object v0, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    .line 246
    sget-object v0, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    .line 249
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "ln(x)    = log(x)"

    aput-object v1, v0, v13

    const/4 v1, 0x1

    const-string v2, "log2(x)  = log(x) * 1.4426950408889634074"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "log10(x) = log(x) * 0.43429448190325182765"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "lg(x)    = log10(x)"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "lb(x)    = log2(x)"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "log(base, x) = log(x) / log(base)"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "gamma(x) = (x-1)!"

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    new-instance v0, Lorg/javia/arity/Compiler;

    invoke-direct {v0}, Lorg/javia/arity/Compiler;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    .line 210
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    .line 212
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    move v0, v3

    .line 61
    :goto_1d
    sget-object v1, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 62
    sget-object v1, Lorg/javia/arity/Symbols;->builtin:[Lorg/javia/arity/Symbol;

    aget-object v1, v1, v0

    .line 63
    iget-object v2, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v1, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2e
    move v0, v3

    .line 66
    :goto_2f
    :try_start_2f
    sget-object v1, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5c

    .line 67
    sget-object v1, Lorg/javia/arity/Symbols;->defines:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V
    :try_end_3f
    .catch Lorg/javia/arity/SyntaxException; {:try_start_2f .. :try_end_3f} :catch_42

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_2f

    .line 69
    :catch_42
    move-exception v0

    .line 70
    new-instance v1, Ljava/lang/Error;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :cond_5c
    return-void
.end method

.method public static isDefinition(Ljava/lang/String;)Z
    .registers 3
    .parameter

    .prologue
    .line 81
    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method


# virtual methods
.method add(Lorg/javia/arity/Symbol;)V
    .registers 4
    .parameter

    .prologue
    .line 266
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    if-nez v1, :cond_11

    .line 268
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    .line 270
    :cond_11
    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    if-eqz v0, :cond_19

    :goto_15
    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 271
    return-void

    .line 270
    :cond_19
    invoke-static {p1}, Lorg/javia/arity/Symbol;->newEmpty(Lorg/javia/arity/Symbol;)Lorg/javia/arity/Symbol;

    move-result-object v0

    goto :goto_15
.end method

.method addArguments([Ljava/lang/String;)V
    .registers 7
    .parameter

    .prologue
    .line 260
    const/4 v0, 0x0

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_15

    .line 261
    new-instance v1, Lorg/javia/arity/Symbol;

    aget-object v2, p1, v0

    const/4 v3, -0x3

    add-int/lit8 v4, v0, 0x25

    int-to-byte v4, v4

    invoke-direct {v1, v2, v3, v4}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;IB)V

    invoke-virtual {p0, v1}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 263
    :cond_15
    return-void
.end method

.method public declared-synchronized compile(Ljava/lang/String;)Lorg/javia/arity/Function;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 132
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compile(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 128
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileWithName(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Ljava/lang/String;D)V
    .registers 10
    .parameter
    .parameter

    .prologue
    .line 165
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/javia/arity/Symbol;

    const-wide/16 v4, 0x0

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DD)V

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 166
    monitor-exit p0

    return-void

    .line 165
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Ljava/lang/String;Lorg/javia/arity/Complex;)V
    .registers 9
    .parameter
    .parameter

    .prologue
    .line 169
    monitor-enter p0

    :try_start_1
    new-instance v0, Lorg/javia/arity/Symbol;

    iget-wide v2, p2, Lorg/javia/arity/Complex;->re:D

    iget-wide v4, p2, Lorg/javia/arity/Complex;->im:D

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;DD)V

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 170
    monitor-exit p0

    return-void

    .line 169
    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Ljava/lang/String;Lorg/javia/arity/Function;)V
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 141
    monitor-enter p0

    :try_start_1
    instance-of v0, p2, Lorg/javia/arity/Constant;

    if-eqz v0, :cond_e

    .line 142
    invoke-virtual {p2}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;D)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_17

    .line 146
    :goto_c
    monitor-exit p0

    return-void

    .line 144
    :cond_e
    :try_start_e
    new-instance v0, Lorg/javia/arity/Symbol;

    invoke-direct {v0, p1, p2}, Lorg/javia/arity/Symbol;-><init>(Ljava/lang/String;Lorg/javia/arity/Function;)V

    invoke-virtual {p0, v0}, Lorg/javia/arity/Symbols;->add(Lorg/javia/arity/Symbol;)V
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_17

    goto :goto_c

    .line 141
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized define(Lorg/javia/arity/FunctionAndName;)V
    .registers 4
    .parameter

    .prologue
    .line 153
    monitor-enter p0

    :try_start_1
    iget-object v0, p1, Lorg/javia/arity/FunctionAndName;->name:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 154
    iget-object v0, p1, Lorg/javia/arity/FunctionAndName;->name:Ljava/lang/String;

    iget-object v1, p1, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    invoke-virtual {p0, v0, v1}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;Lorg/javia/arity/Function;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 156
    :cond_c
    monitor-exit p0

    return-void

    .line 153
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized eval(Ljava/lang/String;)D
    .registers 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 94
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Function;->eval()D
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized evalComplex(Ljava/lang/String;)Lorg/javia/arity/Complex;
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;
        }
    .end annotation

    .prologue
    .line 98
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->compiler:Lorg/javia/arity/Compiler;

    invoke-virtual {v0, p0, p1}, Lorg/javia/arity/Compiler;->compileSimple(Lorg/javia/arity/Symbols;Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_d

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized lookup(Ljava/lang/String;I)Lorg/javia/arity/Symbol;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 274
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    sget-object v1, Lorg/javia/arity/Symbols;->shell:Lorg/javia/arity/Symbol;

    invoke-virtual {v1, p1, p2}, Lorg/javia/arity/Symbol;->setKey(Ljava/lang/String;I)Lorg/javia/arity/Symbol;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/javia/arity/Symbol;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized popFrame()V
    .registers 4

    .prologue
    .line 190
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    if-eqz v0, :cond_30

    .line 191
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    move v1, v0

    :goto_e
    if-ltz v1, :cond_30

    .line 192
    iget-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/javia/arity/Symbol;

    .line 193
    invoke-virtual {v0}, Lorg/javia/arity/Symbol;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    .line 194
    iget-object v2, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :goto_23
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_e

    .line 196
    :cond_27
    iget-object v2, p0, Lorg/javia/arity/Symbols;->symbols:Ljava/util/Hashtable;

    invoke-virtual {v2, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2d

    goto :goto_23

    .line 190
    :catchall_2d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 200
    :cond_30
    :try_start_30
    iget-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_2d

    .line 201
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized pushFrame()V
    .registers 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/javia/arity/Symbols;->frames:Ljava/util/Stack;

    iget-object v1, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/javia/arity/Symbols;->delta:Ljava/util/Vector;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 181
    monitor-exit p0

    return-void

    .line 179
    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
