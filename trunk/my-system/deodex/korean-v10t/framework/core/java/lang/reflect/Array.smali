.class public final Ljava/lang/reflect/Array;
.super Ljava/lang/Object;
.source "Array.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method private static native createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method private static native createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .registers 5
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 72
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_b

    .line 73
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    aget-object v0, p0, p1

    .line 97
    :goto_a
    return-object v0

    .line 75
    .restart local p0
    :cond_b
    instance-of v0, p0, [Z

    if-eqz v0, :cond_1d

    .line 76
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1a

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_a

    :cond_1a
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_a

    .line 78
    .restart local p0
    :cond_1d
    instance-of v0, p0, [B

    if-eqz v0, :cond_2d

    .line 79
    new-instance v0, Ljava/lang/Byte;

    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    aget-byte v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Byte;-><init>(B)V

    goto :goto_a

    .line 81
    .restart local p0
    :cond_2d
    instance-of v0, p0, [C

    if-eqz v0, :cond_3d

    .line 82
    new-instance v0, Ljava/lang/Character;

    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    aget-char v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Character;-><init>(C)V

    goto :goto_a

    .line 84
    .restart local p0
    :cond_3d
    instance-of v0, p0, [S

    if-eqz v0, :cond_4d

    .line 85
    new-instance v0, Ljava/lang/Short;

    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    aget-short v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Short;-><init>(S)V

    goto :goto_a

    .line 87
    .restart local p0
    :cond_4d
    instance-of v0, p0, [I

    if-eqz v0, :cond_5d

    .line 88
    new-instance v0, Ljava/lang/Integer;

    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_a

    .line 90
    .restart local p0
    :cond_5d
    instance-of v0, p0, [J

    if-eqz v0, :cond_6d

    .line 91
    new-instance v0, Ljava/lang/Long;

    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    aget-wide v1, p0, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Long;-><init>(J)V

    goto :goto_a

    .line 93
    .restart local p0
    :cond_6d
    instance-of v0, p0, [F

    if-eqz v0, :cond_7d

    .line 94
    new-instance v0, Ljava/lang/Float;

    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    aget v1, p0, p1

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    goto :goto_a

    .line 96
    .restart local p0
    :cond_7d
    instance-of v0, p0, [D

    if-eqz v0, :cond_8e

    .line 97
    new-instance v0, Ljava/lang/Double;

    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    aget-wide v1, p0, p1

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto/16 :goto_a

    .line 99
    .restart local p0
    :cond_8e
    if-nez p0, :cond_96

    .line 100
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 102
    :cond_96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getBoolean(Ljava/lang/Object;I)Z
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 129
    instance-of v0, p0, [Z

    if-eqz v0, :cond_b

    .line 130
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    aget-boolean v0, p0, p1

    return v0

    .line 131
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 132
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 133
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 134
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getByte(Ljava/lang/Object;I)B
    .registers 3
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 164
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 165
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    aget-byte v0, p0, p1

    .line 167
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getBoolean(Ljava/lang/Object;I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_a

    :cond_13
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public static getChar(Ljava/lang/Object;I)C
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 195
    instance-of v0, p0, [C

    if-eqz v0, :cond_b

    .line 196
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    aget-char v0, p0, p1

    return v0

    .line 197
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 199
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 200
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDouble(Ljava/lang/Object;I)D
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 230
    instance-of v0, p0, [D

    if-eqz v0, :cond_b

    .line 231
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    aget-wide v0, p0, p1

    .line 233
    :goto_a
    return-wide v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getFloat(Ljava/lang/Object;I)F

    move-result v0

    float-to-double v0, v0

    goto :goto_a
.end method

.method public static getFloat(Ljava/lang/Object;I)F
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 261
    instance-of v0, p0, [F

    if-eqz v0, :cond_b

    .line 262
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    aget v0, p0, p1

    .line 264
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getLong(Ljava/lang/Object;I)J

    move-result-wide v0

    long-to-float v0, v0

    goto :goto_a
.end method

.method public static getInt(Ljava/lang/Object;I)I
    .registers 3
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 292
    instance-of v0, p0, [I

    if-eqz v0, :cond_b

    .line 293
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    aget v0, p0, p1

    .line 295
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getShort(Ljava/lang/Object;I)S

    move-result v0

    goto :goto_a
.end method

.method public static getLength(Ljava/lang/Object;)I
    .registers 3
    .parameter "array"

    .prologue
    .line 316
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_a

    .line 317
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    array-length v0, p0

    .line 341
    :goto_9
    return v0

    .line 319
    .restart local p0
    :cond_a
    instance-of v0, p0, [Z

    if-eqz v0, :cond_14

    .line 320
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    array-length v0, p0

    goto :goto_9

    .line 322
    .restart local p0
    :cond_14
    instance-of v0, p0, [B

    if-eqz v0, :cond_1e

    .line 323
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    array-length v0, p0

    goto :goto_9

    .line 325
    .restart local p0
    :cond_1e
    instance-of v0, p0, [C

    if-eqz v0, :cond_28

    .line 326
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    array-length v0, p0

    goto :goto_9

    .line 328
    .restart local p0
    :cond_28
    instance-of v0, p0, [S

    if-eqz v0, :cond_32

    .line 329
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    array-length v0, p0

    goto :goto_9

    .line 331
    .restart local p0
    :cond_32
    instance-of v0, p0, [I

    if-eqz v0, :cond_3c

    .line 332
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    array-length v0, p0

    goto :goto_9

    .line 334
    .restart local p0
    :cond_3c
    instance-of v0, p0, [J

    if-eqz v0, :cond_46

    .line 335
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    array-length v0, p0

    goto :goto_9

    .line 337
    .restart local p0
    :cond_46
    instance-of v0, p0, [F

    if-eqz v0, :cond_50

    .line 338
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    array-length v0, p0

    goto :goto_9

    .line 340
    .restart local p0
    :cond_50
    instance-of v0, p0, [D

    if-eqz v0, :cond_5a

    .line 341
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    array-length v0, p0

    goto :goto_9

    .line 343
    .restart local p0
    :cond_5a
    if-nez p0, :cond_62

    .line 344
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 346
    :cond_62
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getLong(Ljava/lang/Object;I)J
    .registers 4
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 373
    instance-of v0, p0, [J

    if-eqz v0, :cond_b

    .line 374
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    aget-wide v0, p0, p1

    .line 376
    :goto_a
    return-wide v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getInt(Ljava/lang/Object;I)I

    move-result v0

    int-to-long v0, v0

    goto :goto_a
.end method

.method public static getShort(Ljava/lang/Object;I)S
    .registers 3
    .parameter "array"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 404
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    .line 405
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    aget-short v0, p0, p1

    .line 407
    :goto_a
    return v0

    .restart local p0
    :cond_b
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->getByte(Ljava/lang/Object;I)B

    move-result v0

    int-to-short v0, v0

    goto :goto_a
.end method

.method public static newInstance(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 3
    .parameter
    .parameter "size"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;
        }
    .end annotation

    .prologue
    .line 473
    .local p0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-nez v0, :cond_b

    .line 474
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createObjectArray(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 498
    :goto_a
    return-object v0

    .line 476
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_12

    .line 477
    new-array v0, p1, [Z

    goto :goto_a

    .line 479
    :cond_12
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_19

    .line 480
    new-array v0, p1, [B

    goto :goto_a

    .line 482
    :cond_19
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_20

    .line 483
    new-array v0, p1, [C

    goto :goto_a

    .line 485
    :cond_20
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_27

    .line 486
    new-array v0, p1, [S

    goto :goto_a

    .line 488
    :cond_27
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2e

    .line 489
    new-array v0, p1, [I

    goto :goto_a

    .line 491
    :cond_2e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_35

    .line 492
    new-array v0, p1, [J

    goto :goto_a

    .line 494
    :cond_35
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3c

    .line 495
    new-array v0, p1, [F

    goto :goto_a

    .line 497
    :cond_3c
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_43

    .line 498
    new-array v0, p1, [D

    goto :goto_a

    .line 500
    :cond_43
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_4d

    .line 501
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 503
    :cond_4d
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;
    .registers 4
    .parameter
    .parameter "dimensions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NegativeArraySizeException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 435
    .local p0, componentType:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    array-length v0, p1

    if-lez v0, :cond_8

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_10

    .line 436
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad number of dimensions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 438
    :cond_10
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1a

    .line 439
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 441
    :cond_1a
    if-nez p0, :cond_22

    .line 442
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 444
    :cond_22
    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->createMultiArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static set(Ljava/lang/Object;ILjava/lang/Object;)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_12

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_12
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_35

    .line 541
    if-eqz p2, :cond_2e

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 544
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_2e
    check-cast p0, [Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    aput-object p2, p0, p1

    .line 570
    .end local p2
    :cond_34
    :goto_34
    return-void

    .line 549
    .restart local p0
    .restart local p2
    :cond_35
    if-nez p2, :cond_3f

    .line 550
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Primitive array can\'t take null values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 553
    :cond_3f
    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_4d

    .line 554
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setBoolean(Ljava/lang/Object;IZ)V

    goto :goto_34

    .line 555
    .restart local p2
    :cond_4d
    instance-of v0, p2, Ljava/lang/Byte;

    if-eqz v0, :cond_5b

    .line 556
    check-cast p2, Ljava/lang/Byte;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_34

    .line 557
    .restart local p2
    :cond_5b
    instance-of v0, p2, Ljava/lang/Character;

    if-eqz v0, :cond_69

    .line 558
    check-cast p2, Ljava/lang/Character;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setChar(Ljava/lang/Object;IC)V

    goto :goto_34

    .line 559
    .restart local p2
    :cond_69
    instance-of v0, p2, Ljava/lang/Short;

    if-eqz v0, :cond_77

    .line 560
    check-cast p2, Ljava/lang/Short;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_34

    .line 561
    .restart local p2
    :cond_77
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_85

    .line 562
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_34

    .line 563
    .restart local p2
    :cond_85
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_93

    .line 564
    check-cast p2, Ljava/lang/Long;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_34

    .line 565
    .restart local p2
    :cond_93
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_a1

    .line 566
    check-cast p2, Ljava/lang/Float;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_34

    .line 567
    .restart local p2
    :cond_a1
    instance-of v0, p2, Ljava/lang/Double;

    if-eqz v0, :cond_34

    .line 568
    check-cast p2, Ljava/lang/Double;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_34
.end method

.method public static setBoolean(Ljava/lang/Object;IZ)V
    .registers 4
    .parameter "array"
    .parameter "index"
    .parameter "value"

    .prologue
    .line 595
    instance-of v0, p0, [Z

    if-eqz v0, :cond_b

    .line 596
    check-cast p0, [Z

    .end local p0
    check-cast p0, [Z

    aput-boolean p2, p0, p1

    .line 600
    :goto_a
    return-void

    .line 598
    .restart local p0
    :cond_b
    if-eqz p2, :cond_12

    const/4 v0, 0x1

    :goto_e
    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setByte(Ljava/lang/Object;IB)V

    goto :goto_a

    :cond_12
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static setByte(Ljava/lang/Object;IB)V
    .registers 4
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 625
    instance-of v0, p0, [B

    if-eqz v0, :cond_b

    .line 626
    check-cast p0, [B

    .end local p0
    check-cast p0, [B

    aput-byte p2, p0, p1

    .line 630
    :goto_a
    return-void

    .line 628
    .restart local p0
    :cond_b
    int-to-short v0, p2

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setShort(Ljava/lang/Object;IS)V

    goto :goto_a
.end method

.method public static setChar(Ljava/lang/Object;IC)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 655
    instance-of v0, p0, [C

    if-eqz v0, :cond_b

    .line 656
    check-cast p0, [C

    .end local p0
    check-cast p0, [C

    aput-char p2, p0, p1

    .line 664
    return-void

    .line 657
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 658
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 659
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_25

    .line 660
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 662
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setDouble(Ljava/lang/Object;ID)V
    .registers 6
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 689
    instance-of v0, p0, [D

    if-eqz v0, :cond_b

    .line 690
    check-cast p0, [D

    .end local p0
    check-cast p0, [D

    aput-wide p2, p0, p1

    .line 698
    return-void

    .line 691
    .restart local p0
    :cond_b
    if-nez p0, :cond_13

    .line 692
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 693
    :cond_13
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_25

    .line 694
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Not an array"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 696
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong array type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setFloat(Ljava/lang/Object;IF)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 723
    instance-of v0, p0, [F

    if-eqz v0, :cond_b

    .line 724
    check-cast p0, [F

    .end local p0
    check-cast p0, [F

    aput p2, p0, p1

    .line 728
    :goto_a
    return-void

    .line 726
    .restart local p0
    :cond_b
    float-to-double v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setDouble(Ljava/lang/Object;ID)V

    goto :goto_a
.end method

.method public static setInt(Ljava/lang/Object;II)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 753
    instance-of v0, p0, [I

    if-eqz v0, :cond_b

    .line 754
    check-cast p0, [I

    .end local p0
    check-cast p0, [I

    aput p2, p0, p1

    .line 758
    :goto_a
    return-void

    .line 756
    .restart local p0
    :cond_b
    int-to-long v0, p2

    invoke-static {p0, p1, v0, v1}, Ljava/lang/reflect/Array;->setLong(Ljava/lang/Object;IJ)V

    goto :goto_a
.end method

.method public static setLong(Ljava/lang/Object;IJ)V
    .registers 5
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 783
    instance-of v0, p0, [J

    if-eqz v0, :cond_b

    .line 784
    check-cast p0, [J

    .end local p0
    check-cast p0, [J

    aput-wide p2, p0, p1

    .line 788
    :goto_a
    return-void

    .line 786
    .restart local p0
    :cond_b
    long-to-float v0, p2

    invoke-static {p0, p1, v0}, Ljava/lang/reflect/Array;->setFloat(Ljava/lang/Object;IF)V

    goto :goto_a
.end method

.method public static setShort(Ljava/lang/Object;IS)V
    .registers 4
    .parameter "array"
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/ArrayIndexOutOfBoundsException;
        }
    .end annotation

    .prologue
    .line 813
    instance-of v0, p0, [S

    if-eqz v0, :cond_b

    .line 814
    check-cast p0, [S

    .end local p0
    check-cast p0, [S

    aput-short p2, p0, p1

    .line 818
    :goto_a
    return-void

    .line 816
    .restart local p0
    :cond_b
    invoke-static {p0, p1, p2}, Ljava/lang/reflect/Array;->setInt(Ljava/lang/Object;II)V

    goto :goto_a
.end method
