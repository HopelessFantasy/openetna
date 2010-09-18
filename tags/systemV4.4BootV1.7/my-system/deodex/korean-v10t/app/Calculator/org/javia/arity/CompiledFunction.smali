.class public Lorg/javia/arity/CompiledFunction;
.super Lorg/javia/arity/Function;
.source "CompiledFunction.java"


# static fields
.field private static final NO_ARGS:[D

.field private static final NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

.field private static context:Lorg/javia/arity/EvalContext;

.field private static final random:Ljava/util/Random;


# instance fields
.field private final arity:I

.field private final code:[B

.field private final constsIm:[D

.field private final constsRe:[D

.field private final funcs:[Lorg/javia/arity/Function;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 37
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    .line 96
    new-array v0, v1, [D

    sput-object v0, Lorg/javia/arity/CompiledFunction;->NO_ARGS:[D

    .line 97
    new-instance v0, Lorg/javia/arity/EvalContext;

    invoke-direct {v0}, Lorg/javia/arity/EvalContext;-><init>()V

    sput-object v0, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    .line 308
    new-array v0, v1, [Lorg/javia/arity/Complex;

    sput-object v0, Lorg/javia/arity/CompiledFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    return-void
.end method

.method constructor <init>(I[B[D[D[Lorg/javia/arity/Function;)V
    .registers 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/javia/arity/Function;-><init>()V

    .line 46
    iput p1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    .line 47
    iput-object p2, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    .line 48
    iput-object p3, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    .line 49
    iput-object p4, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    .line 50
    iput-object p5, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    .line 51
    return-void
.end method

.method private checkArity(I)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p0}, Lorg/javia/arity/CompiledFunction;->arity()I

    move-result v0

    if-eq v0, p1, :cond_2d

    .line 92
    new-instance v0, Lorg/javia/arity/ArityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/javia/arity/CompiledFunction;->arity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " arguments, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/javia/arity/ArityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_2d
    return-void
.end method

.method private exec(Lorg/javia/arity/EvalContext;IZ)I
    .registers 9
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    add-int/lit8 v0, p2, 0x1

    .line 176
    if-eqz p3, :cond_2d

    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->execWithoutCheckComplex(Lorg/javia/arity/EvalContext;I)I

    move-result v1

    .line 178
    :goto_8
    if-eq v1, v0, :cond_32

    .line 179
    new-instance v2, Ljava/lang/Error;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack pointer after exec: expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", got "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 176
    :cond_2d
    invoke-virtual {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->execWithoutCheck(Lorg/javia/arity/EvalContext;I)I

    move-result v1

    goto :goto_8

    .line 183
    :cond_32
    if-eqz p3, :cond_48

    .line 184
    iget-object v0, p1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    iget v2, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v2, v1, v2

    aget-object v0, v0, v2

    iget-object v2, p1, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 188
    :goto_43
    iget v0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v0, v1, v0

    return v0

    .line 186
    :cond_48
    iget-object v0, p1, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v2, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    sub-int v2, v1, v2

    iget-object v3, p1, Lorg/javia/arity/EvalContext;->stackRe:[D

    aget-wide v3, v3, v1

    aput-wide v3, v0, v2

    goto :goto_43
.end method

.method private toComplex([DLorg/javia/arity/EvalContext;)[Lorg/javia/arity/Complex;
    .registers 11
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 140
    array-length v0, p1

    packed-switch v0, :pswitch_data_40

    .line 154
    array-length v0, p1

    new-array v0, v0, [Lorg/javia/arity/Complex;

    move v1, v4

    .line 155
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_1d

    .line 156
    new-instance v2, Lorg/javia/arity/Complex;

    aget-wide v3, p1, v1

    invoke-direct {v2, v3, v4, v5, v6}, Lorg/javia/arity/Complex;-><init>(DD)V

    aput-object v2, v0, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 142
    :pswitch_1b
    sget-object v0, Lorg/javia/arity/CompiledFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    .line 159
    :cond_1d
    :goto_1d
    return-object v0

    .line 145
    :pswitch_1e
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 146
    new-instance v1, Lorg/javia/arity/Complex;

    aget-wide v2, p1, v4

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/javia/arity/Complex;-><init>(DD)V

    aput-object v1, v0, v4

    goto :goto_1d

    .line 149
    :pswitch_2a
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    .line 150
    new-instance v1, Lorg/javia/arity/Complex;

    aget-wide v2, p1, v4

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/javia/arity/Complex;-><init>(DD)V

    aput-object v1, v0, v4

    .line 151
    new-instance v1, Lorg/javia/arity/Complex;

    aget-wide v2, p1, v7

    invoke-direct {v1, v2, v3, v5, v6}, Lorg/javia/arity/Complex;-><init>(DD)V

    aput-object v1, v0, v7

    goto :goto_1d

    .line 140
    nop

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1e
        :pswitch_2a
    .end packed-switch
.end method


# virtual methods
.method public arity()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    return v0
.end method

.method public eval()D
    .registers 3

    .prologue
    .line 101
    sget-object v0, Lorg/javia/arity/CompiledFunction;->NO_ARGS:[D

    invoke-virtual {p0, v0}, Lorg/javia/arity/CompiledFunction;->eval([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public eval(D)D
    .registers 6
    .parameter

    .prologue
    .line 106
    sget-object v0, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 107
    :try_start_3
    sget-object v1, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, p2, v1}, Lorg/javia/arity/CompiledFunction;->eval(DLorg/javia/arity/EvalContext;)D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 108
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public eval(DD)D
    .registers 12
    .parameter
    .parameter

    .prologue
    .line 113
    sget-object v6, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v6

    .line 114
    :try_start_3
    sget-object v5, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/javia/arity/CompiledFunction;->eval(DDLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    monitor-exit v6

    return-wide v0

    .line 115
    :catchall_e
    move-exception v0

    monitor-exit v6
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public eval(DDLorg/javia/arity/EvalContext;)D
    .registers 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 132
    iget-object v0, p5, Lorg/javia/arity/EvalContext;->args2:[D

    .line 133
    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 134
    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 135
    invoke-virtual {p0, v0, p5}, Lorg/javia/arity/CompiledFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    return-wide v0
.end method

.method public eval(DLorg/javia/arity/EvalContext;)D
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p3, Lorg/javia/arity/EvalContext;->args1:[D

    .line 127
    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 128
    invoke-virtual {p0, v0, p3}, Lorg/javia/arity/CompiledFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide v0

    return-wide v0
.end method

.method public eval([D)D
    .registers 5
    .parameter

    .prologue
    .line 120
    sget-object v0, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 121
    :try_start_3
    sget-object v1, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v1}, Lorg/javia/arity/CompiledFunction;->eval([DLorg/javia/arity/EvalContext;)D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 122
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public eval([DLorg/javia/arity/EvalContext;)D
    .registers 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v0, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-eqz v0, :cond_12

    .line 164
    invoke-direct {p0, p1, p2}, Lorg/javia/arity/CompiledFunction;->toComplex([DLorg/javia/arity/EvalContext;)[Lorg/javia/arity/Complex;

    move-result-object v0

    .line 165
    invoke-virtual {p0, v0, p2}, Lorg/javia/arity/CompiledFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    .line 166
    invoke-virtual {v0}, Lorg/javia/arity/Complex;->toReal()D

    move-result-wide v0

    .line 171
    :goto_11
    return-wide v0

    .line 168
    :cond_12
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/javia/arity/CompiledFunction;->checkArity(I)V

    .line 169
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v1, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    iget v0, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    array-length v1, p1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-direct {p0, p2, v0, v3}, Lorg/javia/arity/CompiledFunction;->exec(Lorg/javia/arity/EvalContext;IZ)I

    .line 171
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->stackRe:[D

    iget v1, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    aget-wide v0, v0, v1

    goto :goto_11
.end method

.method public eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 4
    .parameter

    .prologue
    .line 317
    sget-object v0, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 318
    :try_start_3
    sget-object v1, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v1}, Lorg/javia/arity/CompiledFunction;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 319
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 324
    sget-object v0, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 325
    :try_start_3
    sget-object v1, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, p2, v1}, Lorg/javia/arity/CompiledFunction;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 326
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .registers 6
    .parameter
    .parameter
    .parameter

    .prologue
    .line 343
    iget-object v0, p3, Lorg/javia/arity/EvalContext;->args2c:[Lorg/javia/arity/Complex;

    .line 344
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 345
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 346
    invoke-virtual {p0, v0, p3}, Lorg/javia/arity/CompiledFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .registers 5
    .parameter
    .parameter

    .prologue
    .line 337
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->args1c:[Lorg/javia/arity/Complex;

    .line 338
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 339
    invoke-virtual {p0, v0, p2}, Lorg/javia/arity/CompiledFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method public eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 4
    .parameter

    .prologue
    .line 331
    sget-object v0, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    monitor-enter v0

    .line 332
    :try_start_3
    sget-object v1, Lorg/javia/arity/CompiledFunction;->context:Lorg/javia/arity/EvalContext;

    invoke-virtual {p0, p1, v1}, Lorg/javia/arity/CompiledFunction;->eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 333
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public eval([Lorg/javia/arity/Complex;Lorg/javia/arity/EvalContext;)Lorg/javia/arity/Complex;
    .registers 9
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 350
    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/javia/arity/CompiledFunction;->checkArity(I)V

    .line 351
    iget-object v0, p2, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    .line 352
    iget v1, p2, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 353
    const/4 v2, 0x0

    :goto_a
    array-length v3, p1

    if-ge v2, v3, :cond_19

    .line 354
    add-int v3, v2, v1

    aget-object v3, v0, v3

    aget-object v4, p1, v2

    invoke-virtual {v3, v4}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    .line 353
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 356
    :cond_19
    array-length v2, p1

    add-int/2addr v2, v1

    sub-int/2addr v2, v5

    invoke-direct {p0, p2, v2, v5}, Lorg/javia/arity/CompiledFunction;->exec(Lorg/javia/arity/EvalContext;IZ)I

    .line 357
    new-instance v2, Lorg/javia/arity/Complex;

    aget-object v0, v0, v1

    invoke-direct {v2, v0}, Lorg/javia/arity/Complex;-><init>(Lorg/javia/arity/Complex;)V

    return-object v2
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .registers 2

    .prologue
    .line 312
    sget-object v0, Lorg/javia/arity/CompiledFunction;->NO_ARGS_COMPLEX:[Lorg/javia/arity/Complex;

    invoke-virtual {p0, v0}, Lorg/javia/arity/CompiledFunction;->eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v0

    return-object v0
.end method

.method execWithoutCheck(Lorg/javia/arity/EvalContext;I)I
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    move-object v5, v0

    if-eqz v5, :cond_23

    .line 193
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "This function can only be evaluated in complex mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 196
    :cond_23
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/javia/arity/EvalContext;->stackRe:[D

    move-object v5, v0

    .line 198
    move-object/from16 v0, p0

    iget v0, v0, Lorg/javia/arity/CompiledFunction;->arity:I

    move v6, v0

    sub-int v6, p2, v6

    .line 199
    const/4 v7, 0x0

    .line 200
    const/4 v8, 0x0

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v9, v0

    array-length v9, v9

    .line 203
    const/4 v10, 0x0

    move/from16 v11, p2

    move/from16 v18, v7

    move v7, v10

    move/from16 v10, v18

    :goto_3f
    if-ge v7, v9, :cond_2a7

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v12, v0

    aget-byte v12, v12, v7

    packed-switch v12, :pswitch_data_2a8

    .line 302
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown opcode "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v8, v0

    aget-byte v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 207
    :pswitch_6b
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    move-object v12, v0

    add-int/lit8 v13, v10, 0x1

    aget-wide v14, v12, v10

    aput-wide v14, v5, v11

    move v10, v13

    .line 203
    :goto_79
    add-int/lit8 v7, v7, 0x1

    goto :goto_3f

    .line 211
    :pswitch_7c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    move-object v12, v0

    add-int/lit8 v13, v8, 0x1

    aget-object p2, v12, v8

    .line 212
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/javia/arity/CompiledFunction;

    move v8, v0

    if-eqz v8, :cond_9c

    .line 213
    check-cast p2, Lorg/javia/arity/CompiledFunction;

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move v2, v11

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/javia/arity/CompiledFunction;->exec(Lorg/javia/arity/EvalContext;IZ)I

    move-result v8

    move v11, v8

    move v8, v13

    goto :goto_79

    .line 215
    :cond_9c
    invoke-virtual/range {p2 .. p2}, Lorg/javia/arity/Function;->arity()I

    move-result v8

    .line 216
    sub-int/2addr v11, v8

    .line 218
    move-object/from16 v0, p1

    iget v0, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    move v12, v0

    .line 220
    add-int/lit8 v14, v11, 0x1

    :try_start_a8
    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 221
    packed-switch v8, :pswitch_data_2fe

    .line 232
    new-array v14, v8, [D

    .line 233
    add-int/lit8 v15, v11, 0x1

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move-object v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/javia/arity/Function;->eval([D)D
    :try_end_c5
    .catchall {:try_start_a8 .. :try_end_c5} :catchall_f5

    move-result-wide v14

    .line 237
    :goto_c6
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 239
    add-int/lit8 v8, v11, 0x1

    aput-wide v14, v5, v8

    move v11, v8

    move v8, v13

    .line 242
    goto :goto_79

    .line 223
    :pswitch_d2
    :try_start_d2
    invoke-virtual/range {p2 .. p2}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v14

    goto :goto_c6

    .line 226
    :pswitch_d7
    add-int/lit8 v8, v11, 0x1

    aget-wide v14, v5, v8

    move-object/from16 v0, p2

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v14

    goto :goto_c6

    .line 229
    :pswitch_e3
    add-int/lit8 v8, v11, 0x1

    aget-wide v14, v5, v8

    add-int/lit8 v8, v11, 0x2

    aget-wide v16, v5, v8

    move-object/from16 v0, p2

    move-wide v1, v14

    move-wide/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Function;->eval(DD)D
    :try_end_f3
    .catchall {:try_start_d2 .. :try_end_f3} :catchall_f5

    move-result-wide v14

    goto :goto_c6

    .line 237
    :catchall_f5
    move-exception v5

    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    throw v5

    .line 245
    :pswitch_fc
    add-int/lit8 v11, v11, 0x1

    sget-object v12, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    invoke-virtual {v12}, Ljava/util/Random;->nextDouble()D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 247
    :pswitch_108
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    add-double/2addr v12, v14

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 248
    :pswitch_115
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    sub-double/2addr v12, v14

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 249
    :pswitch_122
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    mul-double/2addr v12, v14

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 250
    :pswitch_12f
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    div-double/2addr v12, v14

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 251
    :pswitch_13c
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    rem-double/2addr v12, v14

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 254
    :pswitch_149
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    invoke-static {v12, v13, v14, v15}, Lorg/javia/arity/MoreMath;->pow(DD)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 258
    :pswitch_159
    aget-wide v12, v5, v11

    neg-double v12, v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 259
    :pswitch_160
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->factorial(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 261
    :pswitch_16a
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->sin(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 262
    :pswitch_174
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->cos(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 263
    :pswitch_17e
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->tan(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 264
    :pswitch_188
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->asin(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 265
    :pswitch_192
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->acos(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 266
    :pswitch_19c
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->atan(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 268
    :pswitch_1a6
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->exp(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 269
    :pswitch_1b0
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 271
    :pswitch_1ba
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 272
    :pswitch_1c4
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->cbrt(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 274
    :pswitch_1ce
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->sinh(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 275
    :pswitch_1d8
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->cosh(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 276
    :pswitch_1e2
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->tanh(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 277
    :pswitch_1ec
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->asinh(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 278
    :pswitch_1f6
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->acosh(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 279
    :pswitch_200
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Lorg/javia/arity/MoreMath;->atanh(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 281
    :pswitch_20a
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 282
    :pswitch_214
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 283
    :pswitch_21e
    aget-wide v12, v5, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 284
    :pswitch_228
    aget-wide v12, v5, v11

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-lez v12, :cond_236

    const-wide/high16 v12, 0x3ff0

    :goto_232
    aput-wide v12, v5, v11

    goto/16 :goto_79

    :cond_236
    aget-wide v12, v5, v11

    const-wide/16 v14, 0x0

    cmpg-double v12, v12, v14

    if-gez v12, :cond_241

    const-wide/high16 v12, -0x4010

    goto :goto_232

    :cond_241
    const-wide/16 v12, 0x0

    goto :goto_232

    .line 286
    :pswitch_244
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 287
    :pswitch_254
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 288
    :pswitch_264
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    invoke-static {v12, v13, v14, v15}, Lorg/javia/arity/MoreMath;->gcd(DD)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 289
    :pswitch_274
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    invoke-static {v12, v13, v14, v15}, Lorg/javia/arity/MoreMath;->combinations(DD)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 290
    :pswitch_284
    add-int/lit8 v11, v11, -0x1

    aget-wide v12, v5, v11

    add-int/lit8 v14, v11, 0x1

    aget-wide v14, v5, v14

    invoke-static {v12, v13, v14, v15}, Lorg/javia/arity/MoreMath;->permutations(DD)D

    move-result-wide v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 298
    :pswitch_294
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v12, v0

    aget-byte v12, v12, v7

    add-int/2addr v12, v6

    const/16 v13, 0x24

    sub-int/2addr v12, v13

    aget-wide v12, v5, v12

    aput-wide v12, v5, v11

    goto/16 :goto_79

    .line 305
    :cond_2a7
    return v11

    .line 205
    :pswitch_data_2a8
    .packed-switch 0x1
        :pswitch_6b
        :pswitch_7c
        :pswitch_108
        :pswitch_115
        :pswitch_122
        :pswitch_12f
        :pswitch_13c
        :pswitch_fc
        :pswitch_159
        :pswitch_149
        :pswitch_160
        :pswitch_1ba
        :pswitch_1c4
        :pswitch_1a6
        :pswitch_1b0
        :pswitch_16a
        :pswitch_174
        :pswitch_17e
        :pswitch_188
        :pswitch_192
        :pswitch_19c
        :pswitch_1ce
        :pswitch_1d8
        :pswitch_1e2
        :pswitch_1ec
        :pswitch_1f6
        :pswitch_200
        :pswitch_20a
        :pswitch_214
        :pswitch_21e
        :pswitch_228
        :pswitch_244
        :pswitch_254
        :pswitch_264
        :pswitch_274
        :pswitch_284
        :pswitch_294
        :pswitch_294
        :pswitch_294
        :pswitch_294
        :pswitch_294
    .end packed-switch

    .line 221
    :pswitch_data_2fe
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_d7
        :pswitch_e3
    .end packed-switch
.end method

.method execWithoutCheckComplex(Lorg/javia/arity/EvalContext;I)I
    .registers 22
    .parameter
    .parameter

    .prologue
    .line 361
    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/javia/arity/EvalContext;->stackComplex:[Lorg/javia/arity/Complex;

    move-object v5, v0

    .line 363
    move-object/from16 v0, p0

    iget v0, v0, Lorg/javia/arity/CompiledFunction;->arity:I

    move v6, v0

    sub-int v6, p2, v6

    .line 364
    const/4 v7, 0x0

    .line 365
    const/4 v8, 0x0

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v9, v0

    array-length v9, v9

    .line 368
    const/4 v10, 0x0

    move/from16 v11, p2

    move/from16 v18, v7

    move v7, v10

    move/from16 v10, v18

    :goto_1c
    if-ge v7, v9, :cond_2a9

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v12, v0

    aget-byte v12, v12, v7

    packed-switch v12, :pswitch_data_2aa

    .line 490
    new-instance v5, Ljava/lang/Error;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown opcode "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v8, v0

    aget-byte v7, v8, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 371
    :pswitch_48
    add-int/lit8 v11, v11, 0x1

    .line 372
    aget-object v12, v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    move-object v13, v0

    aget-wide v13, v13, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    move-object v15, v0

    if-nez v15, :cond_64

    const-wide/16 v15, 0x0

    :goto_5c
    invoke-virtual/range {v12 .. v16}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    .line 373
    add-int/lit8 v10, v10, 0x1

    .line 368
    :cond_61
    :goto_61
    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    .line 372
    :cond_64
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    move-object v15, v0

    aget-wide v15, v15, v10

    goto :goto_5c

    .line 377
    :pswitch_6c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    move-object v12, v0

    add-int/lit8 v13, v8, 0x1

    aget-object p2, v12, v8

    .line 378
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/javia/arity/CompiledFunction;

    move v8, v0

    if-eqz v8, :cond_8c

    .line 379
    check-cast p2, Lorg/javia/arity/CompiledFunction;

    const/4 v8, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move v2, v11

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lorg/javia/arity/CompiledFunction;->exec(Lorg/javia/arity/EvalContext;IZ)I

    move-result v8

    move v11, v8

    move v8, v13

    goto :goto_61

    .line 381
    :cond_8c
    invoke-virtual/range {p2 .. p2}, Lorg/javia/arity/Function;->arity()I

    move-result v8

    .line 382
    sub-int/2addr v11, v8

    .line 384
    move-object/from16 v0, p1

    iget v0, v0, Lorg/javia/arity/EvalContext;->stackBase:I

    move v12, v0

    .line 386
    add-int/lit8 v14, v11, 0x1

    :try_start_98
    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 387
    packed-switch v8, :pswitch_data_300

    .line 398
    new-array v14, v8, [Lorg/javia/arity/Complex;

    .line 399
    add-int/lit8 v15, v11, 0x1

    const/16 v16, 0x0

    move-object v0, v5

    move v1, v15

    move-object v2, v14

    move/from16 v3, v16

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 400
    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/javia/arity/Function;->eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    :try_end_b5
    .catchall {:try_start_98 .. :try_end_b5} :catchall_d4

    move-result-object v8

    .line 403
    :goto_b6
    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    .line 405
    add-int/lit8 v11, v11, 0x1

    aget-object v12, v5, v11

    invoke-virtual {v12, v8}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move v8, v13

    .line 407
    goto :goto_61

    .line 389
    :pswitch_c4
    :try_start_c4
    new-instance v8, Lorg/javia/arity/Complex;

    invoke-virtual/range {p2 .. p2}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v14

    const-wide/16 v16, 0x0

    move-object v0, v8

    move-wide v1, v14

    move-wide/from16 v3, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V
    :try_end_d3
    .catchall {:try_start_c4 .. :try_end_d3} :catchall_d4

    goto :goto_b6

    .line 403
    :catchall_d4
    move-exception v5

    move v0, v12

    move-object/from16 v1, p1

    iput v0, v1, Lorg/javia/arity/EvalContext;->stackBase:I

    throw v5

    .line 392
    :pswitch_db
    add-int/lit8 v8, v11, 0x1

    :try_start_dd
    aget-object v8, v5, v8

    move-object/from16 v0, p2

    move-object v1, v8

    invoke-virtual {v0, v1}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v8

    goto :goto_b6

    .line 395
    :pswitch_e7
    add-int/lit8 v8, v11, 0x1

    aget-object v8, v5, v8

    add-int/lit8 v14, v11, 0x2

    aget-object v14, v5, v14

    move-object/from16 v0, p2

    move-object v1, v8

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    :try_end_f6
    .catchall {:try_start_dd .. :try_end_f6} :catchall_d4

    move-result-object v8

    goto :goto_b6

    .line 410
    :pswitch_f8
    add-int/lit8 v11, v11, 0x1

    aget-object v12, v5, v11

    sget-object v13, Lorg/javia/arity/CompiledFunction;->random:Ljava/util/Random;

    invoke-virtual {v13}, Ljava/util/Random;->nextDouble()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    invoke-virtual/range {v12 .. v16}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 412
    :pswitch_109
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->add(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 414
    :pswitch_116
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->sub(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 416
    :pswitch_123
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->mul(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 417
    :pswitch_130
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->div(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 418
    :pswitch_13d
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->mod(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 419
    :pswitch_14a
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 421
    :pswitch_157
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->negate()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 422
    :pswitch_15e
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 424
    :pswitch_165
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->sin()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 425
    :pswitch_16c
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->cos()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 426
    :pswitch_173
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->tan()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 427
    :pswitch_17a
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->sinh()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 428
    :pswitch_181
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->cosh()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 429
    :pswitch_188
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->tanh()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 431
    :pswitch_18f
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->asin()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 432
    :pswitch_196
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->acos()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 433
    :pswitch_19d
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->atan()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 434
    :pswitch_1a4
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->asinh()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 435
    :pswitch_1ab
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->acosh()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 436
    :pswitch_1b2
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->atanh()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 438
    :pswitch_1b9
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 439
    :pswitch_1c0
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 441
    :pswitch_1c7
    aget-object v12, v5, v11

    invoke-virtual {v12}, Lorg/javia/arity/Complex;->sqrt()Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 442
    :pswitch_1ce
    aget-object v12, v5, v11

    new-instance v13, Lorg/javia/arity/Complex;

    const-wide v14, 0x400aaaaaaaaaaaabL

    const-wide/16 v16, 0x0

    invoke-direct/range {v13 .. v17}, Lorg/javia/arity/Complex;-><init>(DD)V

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 445
    :pswitch_1e1
    aget-object v12, v5, v11

    aget-object v13, v5, v11

    invoke-virtual {v13}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v13

    const-wide/16 v15, 0x0

    invoke-virtual/range {v12 .. v16}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 446
    :pswitch_1f0
    aget-object v12, v5, v11

    aget-object v13, v5, v11

    iget-wide v13, v13, Lorg/javia/arity/Complex;->re:D

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    invoke-virtual/range {v12 .. v16}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 447
    :pswitch_201
    aget-object v12, v5, v11

    aget-object v13, v5, v11

    iget-wide v13, v13, Lorg/javia/arity/Complex;->re:D

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    const-wide/16 v15, 0x0

    invoke-virtual/range {v12 .. v16}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 449
    :pswitch_212
    aget-object v12, v5, v11

    iget-wide v12, v12, Lorg/javia/arity/Complex;->re:D

    .line 450
    aget-object v14, v5, v11

    const-wide/16 v15, 0x0

    cmpl-double v15, v12, v15

    if-lez v15, :cond_22a

    const-wide/high16 v12, 0x3ff0

    :goto_220
    const-wide/16 v15, 0x0

    move-object v0, v14

    move-wide v1, v12

    move-wide v3, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    :cond_22a
    const-wide/16 v15, 0x0

    cmpg-double v12, v12, v15

    if-gez v12, :cond_233

    const-wide/high16 v12, -0x4010

    goto :goto_220

    :cond_233
    const-wide/16 v12, 0x0

    goto :goto_220

    .line 454
    :pswitch_236
    add-int/lit8 v11, v11, -0x1

    .line 455
    add-int/lit8 v12, v11, 0x1

    aget-object v12, v5, v12

    iget-wide v12, v12, Lorg/javia/arity/Complex;->re:D

    aget-object v14, v5, v11

    iget-wide v14, v14, Lorg/javia/arity/Complex;->re:D

    cmpg-double v12, v12, v14

    if-gez v12, :cond_61

    .line 456
    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 461
    :pswitch_251
    add-int/lit8 v11, v11, -0x1

    .line 462
    aget-object v12, v5, v11

    iget-wide v12, v12, Lorg/javia/arity/Complex;->re:D

    add-int/lit8 v14, v11, 0x1

    aget-object v14, v5, v14

    iget-wide v14, v14, Lorg/javia/arity/Complex;->re:D

    cmpg-double v12, v12, v14

    if-gez v12, :cond_61

    .line 463
    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 469
    :pswitch_26c
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->gcd(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 473
    :pswitch_279
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->combinations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 477
    :pswitch_286
    add-int/lit8 v11, v11, -0x1

    aget-object v12, v5, v11

    add-int/lit8 v13, v11, 0x1

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->permutations(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 486
    :pswitch_293
    add-int/lit8 v11, v11, 0x1

    aget-object v12, v5, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/javia/arity/CompiledFunction;->code:[B

    move-object v13, v0

    aget-byte v13, v13, v7

    add-int/2addr v13, v6

    const/16 v14, 0x24

    sub-int/2addr v13, v14

    aget-object v13, v5, v13

    invoke-virtual {v12, v13}, Lorg/javia/arity/Complex;->set(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    goto/16 :goto_61

    .line 493
    :cond_2a9
    return v11

    .line 369
    :pswitch_data_2aa
    .packed-switch 0x1
        :pswitch_48
        :pswitch_6c
        :pswitch_109
        :pswitch_116
        :pswitch_123
        :pswitch_130
        :pswitch_13d
        :pswitch_f8
        :pswitch_157
        :pswitch_14a
        :pswitch_15e
        :pswitch_1c7
        :pswitch_1ce
        :pswitch_1b9
        :pswitch_1c0
        :pswitch_165
        :pswitch_16c
        :pswitch_173
        :pswitch_18f
        :pswitch_196
        :pswitch_19d
        :pswitch_17a
        :pswitch_181
        :pswitch_188
        :pswitch_1a4
        :pswitch_1ab
        :pswitch_1b2
        :pswitch_1e1
        :pswitch_1f0
        :pswitch_201
        :pswitch_212
        :pswitch_236
        :pswitch_251
        :pswitch_26c
        :pswitch_279
        :pswitch_286
        :pswitch_293
        :pswitch_293
        :pswitch_293
        :pswitch_293
        :pswitch_293
    .end packed-switch

    .line 387
    :pswitch_data_300
    .packed-switch 0x0
        :pswitch_c4
        :pswitch_db
        :pswitch_e7
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v3, 0x0

    const-string v8, "; "

    const-string v7, "\nuses only "

    .line 59
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    iget v1, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    if-eqz v1, :cond_1f

    .line 62
    const-string v1, "arity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/javia/arity/CompiledFunction;->arity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1f
    move v1, v3

    move v2, v3

    .line 64
    :goto_21
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    array-length v4, v4

    if-ge v1, v4, :cond_76

    .line 65
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->code:[B

    aget-byte v4, v4, v1

    .line 66
    sget-object v5, Lorg/javia/arity/VM;->opcodeName:[Ljava/lang/String;

    aget-object v5, v5, v4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    const/4 v5, 0x1

    if-ne v4, v5, :cond_70

    .line 68
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 69
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    if-nez v4, :cond_4e

    .line 70
    iget-object v4, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v4, v4, v3

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 74
    :goto_44
    add-int/lit8 v3, v3, 0x1

    .line 79
    :cond_46
    :goto_46
    const-string v4, "; "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 72
    :cond_4e
    const/16 v4, 0x28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-object v5, p0, Lorg/javia/arity/CompiledFunction;->constsIm:[D

    aget-wide v5, v5, v3

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_44

    .line 75
    :cond_70
    const/4 v5, 0x2

    if-ne v4, v5, :cond_46

    .line 76
    add-int/lit8 v2, v2, 0x1

    goto :goto_46

    .line 81
    :cond_76
    iget-object v1, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    array-length v1, v1

    if-eq v3, v1, :cond_91

    .line 82
    const-string v1, "\nuses only "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, " consts out of "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v3, p0, Lorg/javia/arity/CompiledFunction;->constsRe:[D

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 84
    :cond_91
    iget-object v1, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    array-length v1, v1

    if-eq v2, v1, :cond_ac

    .line 85
    const-string v1, "\nuses only "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " funcs out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/javia/arity/CompiledFunction;->funcs:[Lorg/javia/arity/Function;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 87
    :cond_ac
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
