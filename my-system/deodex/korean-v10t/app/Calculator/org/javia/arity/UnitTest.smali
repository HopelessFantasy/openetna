.class public Lorg/javia/arity/UnitTest;
.super Ljava/lang/Object;
.source "UnitTest.java"


# static fields
.field static allOk:Z

.field static checkCounter:I

.field private static final profileCases:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 342
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "(100.5 + 20009.999)*(7+4+3)/(5/2)^3!)*2"

    aput-object v1, v0, v3

    const-string v1, "fun1(x)=(x+2)*(x+3)"

    aput-object v1, v0, v4

    const/4 v1, 0x2

    const-string v2, "otherFun(x)=(fun1(x-1)*x+1)*(fun1(2-x)+10)"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "log(x+30.5, 3)^.7*sin(x+.5)"

    aput-object v2, v0, v1

    sput-object v0, Lorg/javia/arity/UnitTest;->profileCases:[Ljava/lang/String;

    .line 467
    sput-boolean v4, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 468
    sput v3, Lorg/javia/arity/UnitTest;->checkCounter:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static check(DD)V
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 444
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 445
    invoke-static {p0, p1, p2, p3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 446
    const/4 v0, 0x0

    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 447
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed check #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/javia/arity/UnitTest;->checkCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 449
    :cond_3d
    return-void
.end method

.method static check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 452
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 453
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_4b

    .line 454
    :cond_1a
    const/4 v0, 0x0

    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 455
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "failed check #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lorg/javia/arity/UnitTest;->checkCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 457
    :cond_4b
    return-void
.end method

.method static check(Z)V
    .registers 2
    .parameter

    .prologue
    .line 460
    sget v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 461
    if-nez p0, :cond_b

    .line 462
    const/4 v0, 0x0

    sput-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    .line 465
    :cond_b
    return-void
.end method

.method static equal(DD)Z
    .registers 8
    .parameter
    .parameter

    .prologue
    const-wide v2, 0x3cd203af9ee75616L

    .line 438
    cmpl-double v0, p0, p2

    if-eqz v0, :cond_2a

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {p2, p3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2a

    :cond_15
    sub-double v0, p0, p2

    div-double/2addr v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2a

    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    :goto_2b
    return v0

    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method static equal(DLorg/javia/arity/Complex;)Z
    .registers 7
    .parameter
    .parameter

    .prologue
    .line 432
    iget-wide v0, p2, Lorg/javia/arity/Complex;->re:D

    invoke-static {p0, p1, v0, v1}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_22

    const-wide/16 v0, 0x0

    iget-wide v2, p2, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-nez v0, :cond_20

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-wide v0, p2, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_22

    :cond_20
    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static equal(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)Z
    .registers 6
    .parameter
    .parameter

    .prologue
    .line 428
    iget-wide v0, p0, Lorg/javia/arity/Complex;->re:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->re:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_16

    iget-wide v0, p0, Lorg/javia/arity/Complex;->im:D

    iget-wide v2, p1, Lorg/javia/arity/Complex;->im:D

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->equal(DD)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static main([Ljava/lang/String;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;,
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 271
    array-length v0, p0

    .line 272
    if-nez v0, :cond_c

    .line 273
    invoke-static {}, Lorg/javia/arity/UnitTest;->runUnitTests()V

    .line 274
    invoke-static {}, Lorg/javia/arity/UnitTest;->profile()V

    .line 295
    :cond_b
    :goto_b
    return-void

    .line 275
    :cond_c
    aget-object v1, p0, v3

    const-string v2, "-profile"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 276
    if-ne v0, v4, :cond_1c

    .line 277
    invoke-static {}, Lorg/javia/arity/UnitTest;->profile()V

    goto :goto_b

    .line 279
    :cond_1c
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    move v2, v4

    .line 280
    :goto_22
    sub-int v3, v0, v4

    if-ge v2, v3, :cond_32

    .line 281
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    .line 282
    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 284
    :cond_32
    sub-int/2addr v0, v4

    aget-object v0, p0, v0

    invoke-static {v1, v0}, Lorg/javia/arity/UnitTest;->profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V

    goto :goto_b

    .line 287
    :cond_39
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    move v2, v3

    .line 288
    :goto_3f
    if-ge v2, v0, :cond_b

    .line 289
    aget-object v3, p0, v2

    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    .line 290
    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 291
    iget-object v3, v3, Lorg/javia/arity/FunctionAndName;->function:Lorg/javia/arity/Function;

    .line 292
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, p0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 288
    add-int/lit8 v2, v2, 0x1

    goto :goto_3f
.end method

.method private static profile()V
    .registers 4

    .prologue
    .line 351
    sget-object v0, Lorg/javia/arity/UnitTest;->profileCases:[Ljava/lang/String;

    .line 352
    new-instance v1, Lorg/javia/arity/Symbols;

    invoke-direct {v1}, Lorg/javia/arity/Symbols;-><init>()V

    .line 354
    const/4 v2, 0x0

    :goto_8
    :try_start_8
    array-length v3, v0

    if-ge v2, v3, :cond_36

    .line 355
    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->compileWithName(Ljava/lang/String;)Lorg/javia/arity/FunctionAndName;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/javia/arity/Symbols;->define(Lorg/javia/arity/FunctionAndName;)V

    .line 356
    aget-object v3, v0, v2

    invoke-static {v1, v3}, Lorg/javia/arity/UnitTest;->profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V
    :try_end_19
    .catch Lorg/javia/arity/SyntaxException; {:try_start_8 .. :try_end_19} :catch_1c

    .line 354
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 358
    :catch_1c
    move-exception v0

    .line 359
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

    .line 361
    :cond_36
    return-void
.end method

.method static profile(Lorg/javia/arity/Symbols;Ljava/lang/String;)V
    .registers 14
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/javia/arity/SyntaxException;,
            Lorg/javia/arity/ArityException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v11, " us"

    const-string v10, ""

    .line 298
    invoke-virtual {p0, p1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    .line 299
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 313
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move v4, v9

    .line 315
    :goto_3a
    const/16 v5, 0x3e8

    if-ge v4, v5, :cond_44

    .line 316
    invoke-virtual {p0, p1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    .line 315
    add-int/lit8 v4, v4, 0x1

    goto :goto_3a

    .line 318
    :cond_44
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 319
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "compilation time: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sub-long v2, v4, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " us"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 321
    invoke-virtual {v0}, Lorg/javia/arity/Function;->arity()I

    move-result v2

    new-array v2, v2, [D

    .line 332
    invoke-virtual {v1}, Ljava/lang/Runtime;->gc()V

    .line 333
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move v1, v9

    .line 334
    :goto_76
    const v5, 0x186a0

    if-ge v1, v5, :cond_81

    .line 335
    invoke-virtual {v0, v2}, Lorg/javia/arity/Function;->eval([D)D

    .line 334
    add-int/lit8 v1, v1, 0x1

    goto :goto_76

    .line 337
    :cond_81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 338
    sub-long/2addr v0, v3

    .line 339
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "execution time: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/16 v4, 0x64

    cmp-long v4, v0, v4

    if-lez v4, :cond_c2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    long-to-double v0, v0

    const-wide/high16 v5, 0x4059

    div-double/2addr v0, v5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " us"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_b6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 340
    return-void

    .line 339
    :cond_c2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ns"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_b6
.end method

.method static runUnitTests()V
    .registers 15

    .prologue
    const/4 v14, 0x1

    const/4 v13, 0x0

    const-wide/high16 v11, -0x4010

    const-wide/high16 v9, 0x3ff0

    const-wide/16 v7, 0x0

    .line 364
    sput v13, Lorg/javia/arity/UnitTest;->checkCounter:I

    .line 366
    const-wide/high16 v0, -0x10

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-Infinity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 367
    const-wide/high16 v0, 0x7ff8

    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lorg/javia/arity/Util;->doubleToString(DI)Ljava/lang/String;

    move-result-object v0

    const-string v1, "NaN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 369
    new-instance v0, Lorg/javia/arity/Complex;

    invoke-direct {v0}, Lorg/javia/arity/Complex;-><init>()V

    .line 370
    new-instance v1, Lorg/javia/arity/Complex;

    invoke-direct {v1}, Lorg/javia/arity/Complex;-><init>()V

    .line 371
    new-instance v2, Lorg/javia/arity/Complex;

    invoke-direct {v2}, Lorg/javia/arity/Complex;-><init>()V

    .line 373
    invoke-virtual {v0, v7, v8, v11, v12}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4, v14}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 374
    const-wide v3, 0x4000fbe76c8b4396L

    invoke-virtual {v0, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/4 v4, 0x3

    invoke-static {v3, v4, v13}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 375
    const-wide v3, 0x3ff00000000001c2L

    invoke-virtual {v0, v7, v8, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0x14

    const/4 v5, 0x3

    invoke-static {v3, v4, v5}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 376
    invoke-virtual {v0, v9, v10, v11, v12}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4, v14}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1-i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 377
    invoke-virtual {v0, v9, v10, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v3, v4, v14}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1+i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 378
    const-wide v3, 0x3ff1eb851eb851ecL

    const-wide v5, 0x3ff1eb851eb851ecL

    invoke-virtual {v0, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/16 v4, 0x9

    invoke-static {v3, v4, v13}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.12+1.1i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 379
    const-wide v3, 0x3ff1f9a6b50b0f28L

    invoke-virtual {v0, v3, v4, v11, v12}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    const/4 v4, 0x7

    invoke-static {v3, v4, v13}, Lorg/javia/arity/Util;->complexToString(Lorg/javia/arity/Complex;II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1.123-i"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 381
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-virtual {v1, v7, v8, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v3

    const-wide v4, 0x3fa620227b598efaL

    invoke-virtual {v2, v4, v5, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 382
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-virtual {v1, v9, v10, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/javia/arity/Complex;->pow(Lorg/javia/arity/Complex;)Lorg/javia/arity/Complex;

    move-result-object v3

    const-wide v4, -0x4059dfdd84a67106L

    invoke-virtual {v2, v4, v5, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-static {v3, v2}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 384
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->abs()D

    move-result-wide v2

    invoke-static {v2, v3, v9, v10}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 385
    const-wide v2, 0x401d8e64b8d4ddadL

    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide/high16 v3, 0x4000

    invoke-virtual {v1, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 386
    invoke-virtual {v0, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->log()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, 0x400921fb54442d18L

    invoke-virtual {v1, v7, v8, v3, v4}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 388
    const-wide/high16 v2, 0x4000

    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, 0x401d8e64b8d4ddadL

    invoke-virtual {v1, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 389
    const-wide v2, 0x400921fb54442d18L

    invoke-virtual {v0, v7, v8, v2, v3}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->exp()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v11, v12, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 391
    invoke-static {v9, v10}, Lorg/javia/arity/MoreMath;->lgamma(D)D

    move-result-wide v2

    invoke-static {v2, v3, v7, v8}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 392
    invoke-virtual {v0, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->lgamma()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v7, v8, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 394
    invoke-virtual {v0, v7, v8, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 395
    invoke-virtual {v0, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v1, v9, v10, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 396
    invoke-virtual {v0, v7, v8, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, 0x3fdfdf7d1bddb102L

    const-wide v5, -0x403c2a9aa17621dcL

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 397
    const-wide/high16 v2, -0x4000

    invoke-virtual {v0, v2, v3, v9, v10}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide v3, -0x403a0b3593673371L

    const-wide v5, 0x3fd4e517e5914ed7L

    invoke-virtual {v1, v3, v4, v5, v6}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 398
    const-wide/high16 v2, 0x4010

    invoke-virtual {v0, v2, v3, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v2

    invoke-virtual {v2}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v2

    const-wide/high16 v3, 0x4038

    invoke-virtual {v1, v3, v4, v7, v8}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 399
    const-wide/high16 v2, 0x4010

    const-wide/high16 v4, 0x4008

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v0

    invoke-virtual {v0}, Lorg/javia/arity/Complex;->factorial()Lorg/javia/arity/Complex;

    move-result-object v0

    const-wide v2, 0x3f906d4886f77388L

    const-wide v4, -0x3fdd222761c5d807L

    invoke-virtual {v1, v2, v3, v4, v5}, Lorg/javia/arity/Complex;->set(DD)Lorg/javia/arity/Complex;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/javia/arity/UnitTest;->check(Lorg/javia/arity/Complex;Lorg/javia/arity/Complex;)V

    .line 401
    invoke-static {v11, v12}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff8

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 402
    const-wide v0, -0x406147ae147ae148L

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->log(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x7ff8

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 403
    const-wide v0, -0x406147ae147ae148L

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v0

    int-to-double v0, v0

    invoke-static {v0, v1, v7, v8}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 404
    const-wide v0, 0x3f9eb851eb851eb8L

    invoke-static {v0, v1}, Lorg/javia/arity/MoreMath;->intLog10(D)I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4000

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 405
    const/4 v0, 0x3

    invoke-static {v0}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 406
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/javia/arity/MoreMath;->intExp10(I)D

    move-result-wide v0

    const-wide v2, 0x3fb999999999999aL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 408
    const-wide v0, 0x3ff3c28f5c28f5c3L

    const-wide v2, 0x3f947ae147ae147bL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff3d70a3d70a3d7L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 409
    const-wide v0, 0x3ff3c28f5c28f5c3L

    const-wide v2, 0x3fd999999999999aL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, 0x3ff3333333333334L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 410
    const-wide v0, -0x400c3d70a3d70a3dL

    const-wide v2, 0x3f947ae147ae147bL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, -0x400c28f5c28f5c29L

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 411
    const-wide v0, -0x400c3d70a3d70a3dL

    const-wide v2, 0x3fd999999999999aL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/Util;->shortApprox(DD)D

    move-result-wide v0

    const-wide v2, -0x400cccccccccccccL

    invoke-static {v0, v1, v2, v3}, Lorg/javia/arity/UnitTest;->check(DD)V

    .line 413
    invoke-static {}, Lorg/javia/arity/TestFormat;->testFormat()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 415
    invoke-static {}, Lorg/javia/arity/TestEval;->testEval()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 417
    invoke-static {}, Lorg/javia/arity/UnitTest;->testRecursiveEval()Z

    move-result v0

    invoke-static {v0}, Lorg/javia/arity/UnitTest;->check(Z)V

    .line 419
    sget-boolean v0, Lorg/javia/arity/UnitTest;->allOk:Z

    if-nez v0, :cond_2c6

    .line 420
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n*** Some tests FAILED ***\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 421
    invoke-static {v14}, Ljava/lang/System;->exit(I)V

    .line 425
    :goto_2c5
    return-void

    .line 423
    :cond_2c6
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\n*** All tests passed OK ***\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_2c5
.end method

.method static testRecursiveEval()Z
    .registers 11

    .prologue
    const-wide/high16 v9, 0x4000

    const-wide/high16 v7, 0x3ff0

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 471
    new-instance v0, Lorg/javia/arity/Symbols;

    invoke-direct {v0}, Lorg/javia/arity/Symbols;-><init>()V

    .line 472
    const-string v1, "myfun"

    new-instance v2, Lorg/javia/arity/MyFun;

    invoke-direct {v2}, Lorg/javia/arity/MyFun;-><init>()V

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Symbols;->define(Ljava/lang/String;Lorg/javia/arity/Function;)V

    .line 474
    :try_start_16
    const-string v1, "1+myfun(x)"

    invoke-virtual {v0, v1}, Lorg/javia/arity/Symbols;->compile(Ljava/lang/String;)Lorg/javia/arity/Function;

    move-result-object v0

    .line 475
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v1

    cmpl-double v1, v1, v9

    if-nez v1, :cond_48

    const-wide/high16 v1, 0x3ff0

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v1

    cmpl-double v1, v1, v7

    if-nez v1, :cond_48

    const-wide/high16 v1, 0x4000

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Function;->eval(D)D

    move-result-wide v1

    cmpl-double v1, v1, v5

    if-nez v1, :cond_48

    const-wide/high16 v1, 0x4008

    invoke-virtual {v0, v1, v2}, Lorg/javia/arity/Function;->eval(D)D
    :try_end_3f
    .catch Lorg/javia/arity/SyntaxException; {:try_start_16 .. :try_end_3f} :catch_4a

    move-result-wide v0

    const-wide/high16 v2, -0x4010

    cmpl-double v0, v0, v2

    if-nez v0, :cond_48

    const/4 v0, 0x1

    .line 483
    :goto_47
    return v0

    :cond_48
    move v0, v4

    .line 475
    goto :goto_47

    .line 480
    :catch_4a
    move-exception v0

    .line 481
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

    .line 482
    sput-boolean v4, Lorg/javia/arity/UnitTest;->allOk:Z

    move v0, v4

    .line 483
    goto :goto_47
.end method
