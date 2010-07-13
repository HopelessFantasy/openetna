.class public Lorg/javia/arity/Function;
.super Ljava/lang/Object;
.source "Function.java"


# instance fields
.field private cachedArity:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lorg/javia/arity/Function;->cachedArity:I

    return-void
.end method


# virtual methods
.method public arity()I
    .registers 3

    .prologue
    .line 37
    iget v0, p0, Lorg/javia/arity/Function;->cachedArity:I

    if-ltz v0, :cond_7

    .line 38
    iget v0, p0, Lorg/javia/arity/Function;->cachedArity:I

    .line 44
    :goto_6
    return v0

    .line 40
    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x5

    if-ge v0, v1, :cond_17

    .line 41
    new-array v1, v0, [D

    .line 43
    :try_start_d
    invoke-virtual {p0, v1}, Lorg/javia/arity/Function;->eval([D)D

    .line 44
    iput v0, p0, Lorg/javia/arity/Function;->cachedArity:I
    :try_end_12
    .catch Lorg/javia/arity/ArityException; {:try_start_d .. :try_end_12} :catch_13

    goto :goto_6

    .line 45
    :catch_13
    move-exception v1

    .line 40
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 49
    :cond_17
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Function subclass should implement eval() for some arity"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eval()D
    .registers 3

    .prologue
    .line 57
    new-instance v0, Lorg/javia/arity/ArityException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw v0
.end method

.method public eval(D)D
    .registers 5
    .parameter

    .prologue
    .line 61
    new-instance v0, Lorg/javia/arity/ArityException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw v0
.end method

.method public eval(DD)D
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 65
    new-instance v0, Lorg/javia/arity/ArityException;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw v0
.end method

.method public eval([D)D
    .registers 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 75
    array-length v0, p1

    packed-switch v0, :pswitch_data_22

    .line 83
    new-instance v0, Lorg/javia/arity/ArityException;

    array-length v1, p1

    invoke-direct {v0, v1}, Lorg/javia/arity/ArityException;-><init>(I)V

    throw v0

    .line 77
    :pswitch_c
    invoke-virtual {p0}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v0

    .line 81
    :goto_10
    return-wide v0

    .line 79
    :pswitch_11
    aget-wide v0, p1, v1

    invoke-virtual {p0, v0, v1}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v0

    goto :goto_10

    .line 81
    :pswitch_18
    aget-wide v0, p1, v1

    const/4 v2, 0x1

    aget-wide v2, p1, v2

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/javia/arity/Function;->eval(DD)D

    move-result-wide v0

    goto :goto_10

    .line 75
    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_c
        :pswitch_11
        :pswitch_18
    .end packed-switch
.end method

.method public eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 7
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    .line 96
    new-instance v0, Lorg/javia/arity/Complex;

    iget-wide v1, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_14

    iget-wide v1, p1, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v1, v2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v1

    :goto_10
    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object v0

    :cond_14
    const-wide/high16 v1, 0x7ff8

    goto :goto_10
.end method

.method public eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 10
    .parameter
    .parameter

    .prologue
    const-wide/16 v5, 0x0

    .line 100
    new-instance v0, Lorg/javia/arity/Complex;

    iget-wide v1, p1, Lorg/javia/arity/Complex;->im:D

    cmpl-double v1, v1, v5

    if-nez v1, :cond_1c

    iget-wide v1, p2, Lorg/javia/arity/Complex;->im:D

    cmpl-double v1, v1, v5

    if-nez v1, :cond_1c

    iget-wide v1, p1, Lorg/javia/arity/Complex;->re:D

    iget-wide v3, p2, Lorg/javia/arity/Complex;->re:D

    invoke-virtual {p0, v1, v2, v3, v4}, Lorg/javia/arity/Function;->eval(DD)D

    move-result-wide v1

    :goto_18
    invoke-direct {v0, v1, v2, v5, v6}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object v0

    :cond_1c
    const-wide/high16 v1, 0x7ff8

    goto :goto_18
.end method

.method public eval([Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;
    .registers 8
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const-wide/16 v4, 0x0

    .line 104
    array-length v0, p1

    packed-switch v0, :pswitch_data_48

    .line 112
    array-length v0, p1

    new-array v0, v0, [D

    .line 113
    array-length v1, p1

    sub-int/2addr v1, v2

    :goto_d
    if-ltz v1, :cond_3d

    .line 114
    aget-object v2, p1, v1

    iget-wide v2, v2, Lorg/javia/arity/Complex;->im:D

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_34

    .line 115
    new-instance v0, Lorg/javia/arity/Complex;

    const-wide/high16 v1, 0x7ff8

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/javia/arity/Complex;-><init>(DD)V

    .line 119
    :goto_1e
    return-object v0

    .line 106
    :pswitch_1f
    invoke-virtual {p0}, Lorg/javia/arity/Function;->evalComplex()Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1e

    .line 108
    :pswitch_24
    aget-object v0, p1, v1

    invoke-virtual {p0, v0}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1e

    .line 110
    :pswitch_2b
    aget-object v0, p1, v1

    aget-object v1, p1, v2

    invoke-virtual {p0, v0, v1}, Lorg/javia/arity/Function;->eval(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v0

    goto :goto_1e

    .line 117
    :cond_34
    aget-object v2, p1, v1

    iget-wide v2, v2, Lorg/javia/arity/Complex;->re:D

    aput-wide v2, v0, v1

    .line 113
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 119
    :cond_3d
    new-instance v1, Lorg/javia/arity/Complex;

    invoke-virtual {p0, v0}, Lorg/javia/arity/Function;->eval([D)D

    move-result-wide v2

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/javia/arity/Complex;-><init>(DD)V

    move-object v0, v1

    goto :goto_1e

    .line 104
    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_1f
        :pswitch_24
        :pswitch_2b
    .end packed-switch
.end method

.method public evalComplex()Lorg/javia/arity/Complex;
    .registers 6

    .prologue
    .line 92
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-virtual {p0}, Lorg/javia/arity/Function;->eval()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/javia/arity/Complex;-><init>(DD)V

    return-object v0
.end method
