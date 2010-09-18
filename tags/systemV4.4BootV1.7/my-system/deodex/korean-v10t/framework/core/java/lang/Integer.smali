.class public final Ljava/lang/Integer;
.super Ljava/lang/Number;
.source "Integer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Integer$valueOfCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:I = 0x7fffffff

.field public static final MIN_VALUE:I = -0x80000000

.field public static final SIZE:I = 0x20

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x12e2a0a4f7818738L


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .parameter "value"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 84
    iput p1, p0, Ljava/lang/Integer;->value:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 99
    return-void
.end method

.method public static bitCount(I)I
    .registers 4
    .parameter "i"

    .prologue
    const v2, 0x33333333

    .line 692
    shr-int/lit8 v0, p0, 0x1

    const v1, 0x55555555

    and-int/2addr v0, v1

    sub-int/2addr p0, v0

    .line 693
    and-int v0, p0, v2

    shr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v2

    add-int p0, v0, v1

    .line 694
    shr-int/lit8 v0, p0, 0x4

    add-int/2addr v0, p0

    const v1, 0xf0f0f0f

    and-int p0, v0, v1

    .line 695
    shr-int/lit8 v0, p0, 0x8

    add-int/2addr p0, v0

    .line 696
    shr-int/lit8 v0, p0, 0x10

    add-int/2addr p0, v0

    .line 697
    and-int/lit8 v0, p0, 0x3f

    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 12
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v10, "unable to parse \'"

    const-string v9, "\' as integer"

    .line 138
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .line 139
    .local v2, i:I
    if-nez v3, :cond_2c

    .line 141
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 144
    :cond_2c
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 145
    .local v1, firstDigit:C
    const/16 v6, 0x2d

    if-ne v1, v6, :cond_58

    move v4, v8

    .line 146
    .local v4, negative:Z
    :goto_35
    if-eqz v4, :cond_60

    .line 147
    if-ne v3, v8, :cond_5a

    .line 149
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4           #negative:Z
    :cond_58
    move v4, v7

    .line 145
    goto :goto_35

    .line 152
    .restart local v4       #negative:Z
    :cond_5a
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 155
    :cond_60
    const/16 v0, 0xa

    .line 156
    .local v0, base:I
    const/16 v6, 0x30

    if-ne v1, v6, :cond_ac

    .line 157
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_6f

    .line 158
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 182
    :goto_6e
    return-object v6

    .line 160
    :cond_6f
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v6, 0x78

    if-eq v1, v6, :cond_7b

    const/16 v6, 0x58

    if-ne v1, v6, :cond_a9

    .line 161
    :cond_7b
    if-ne v2, v3, :cond_9c

    .line 163
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 166
    :cond_9c
    add-int/lit8 v2, v2, 0x1

    .line 167
    const/16 v0, 0x10

    .line 181
    :cond_a0
    :goto_a0
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v5

    .line 182
    .local v5, result:I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_6e

    .line 169
    .end local v5           #result:I
    :cond_a9
    const/16 v0, 0x8

    goto :goto_a0

    .line 171
    :cond_ac
    const/16 v6, 0x23

    if-ne v1, v6, :cond_a0

    .line 172
    if-ne v2, v3, :cond_d1

    .line 174
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 177
    :cond_d1
    add-int/lit8 v2, v2, 0x1

    .line 178
    const/16 v0, 0x10

    goto :goto_a0
.end method

.method public static getInteger(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 225
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move-object v2, v3

    .line 235
    :goto_a
    return-object v2

    .line 228
    :cond_b
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_13

    move-object v2, v3

    .line 230
    goto :goto_a

    .line 233
    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_a

    .line 234
    :catch_18
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move-object v2, v3

    .line 235
    goto :goto_a
.end method

.method public static getInteger(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 5
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 255
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 256
    :cond_8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 265
    :goto_c
    return-object v2

    .line 258
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_18

    .line 260
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c

    .line 263
    :cond_18
    :try_start_18
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_c

    .line 264
    :catch_1d
    move-exception v0

    .line 265
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_c
.end method

.method public static getInteger(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 5
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 285
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move-object v2, p1

    .line 295
    :goto_9
    return-object v2

    .line 288
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 289
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_12

    move-object v2, p1

    .line 290
    goto :goto_9

    .line 293
    :cond_12
    :try_start_12
    invoke-static {v1}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_9

    .line 294
    :catch_17
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move-object v2, p1

    .line 295
    goto :goto_9
.end method

.method public static highestOneBit(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 628
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 629
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 630
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 631
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 632
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 633
    ushr-int/lit8 v0, p0, 0x1

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v0, p0

    return v0
.end method

.method public static lowestOneBit(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 648
    neg-int v0, p0

    and-int/2addr v0, p0

    return v0
.end method

.method public static numberOfLeadingZeros(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 661
    shr-int/lit8 v0, p0, 0x1

    or-int/2addr p0, v0

    .line 662
    shr-int/lit8 v0, p0, 0x2

    or-int/2addr p0, v0

    .line 663
    shr-int/lit8 v0, p0, 0x4

    or-int/2addr p0, v0

    .line 664
    shr-int/lit8 v0, p0, 0x8

    or-int/2addr p0, v0

    .line 665
    shr-int/lit8 v0, p0, 0x10

    or-int/2addr p0, v0

    .line 666
    xor-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method public static numberOfTrailingZeros(I)I
    .registers 3
    .parameter "i"

    .prologue
    .line 679
    neg-int v0, p0

    and-int/2addr v0, p0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    return v0
.end method

.method private static parse(Ljava/lang/String;IIZ)I
    .registers 15
    .parameter "string"
    .parameter "offset"
    .parameter "radix"
    .parameter "negative"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-string v10, "unable to parse \'"

    const-string v9, "\' as integer"

    .line 379
    const/high16 v6, -0x8000

    div-int v2, v6, p2

    .line 380
    .local v2, max:I
    const/4 v5, 0x0

    .local v5, result:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    move v4, p1

    .line 381
    .end local p1
    .local v4, offset:I
    :goto_e
    if-ge v4, v1, :cond_85

    .line 382
    add-int/lit8 p1, v4, 0x1

    .end local v4           #offset:I
    .restart local p1
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 383
    .local v0, digit:I
    const/4 v6, -0x1

    if-ne v0, v6, :cond_3c

    .line 385
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 388
    :cond_3c
    if-le v2, v5, :cond_5d

    .line 390
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 393
    :cond_5d
    mul-int v6, v5, p2

    sub-int v3, v6, v0

    .line 394
    .local v3, next:I
    if-le v3, v5, :cond_82

    .line 396
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 399
    :cond_82
    move v5, v3

    move v4, p1

    .line 400
    .end local p1
    .restart local v4       #offset:I
    goto :goto_e

    .line 401
    .end local v0           #digit:I
    .end local v3           #next:I
    :cond_85
    if-nez p3, :cond_a9

    .line 402
    neg-int v5, v5

    .line 403
    if-gez v5, :cond_a9

    .line 405
    new-instance v6, Ljava/lang/NumberFormatException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to parse \'"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' as integer"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 409
    :cond_a9
    return v5
.end method

.method public static parseInt(Ljava/lang/String;)I
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 333
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static parseInt(Ljava/lang/String;I)I
    .registers 10
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const-string v7, "unable to parse \'"

    const-string v6, "\' as integer"

    .line 355
    if-eqz p0, :cond_d

    const/4 v3, 0x2

    if-lt p1, v3, :cond_d

    const/16 v3, 0x24

    if-le p1, v3, :cond_2c

    .line 358
    :cond_d
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to parse \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as integer"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 361
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .line 362
    .local v0, i:I
    if-nez v1, :cond_52

    .line 364
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to parse \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as integer"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    :cond_52
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_81

    const/4 v3, 0x1

    move v2, v3

    .line 368
    .local v2, negative:Z
    :goto_5c
    if-eqz v2, :cond_84

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_84

    .line 370
    new-instance v3, Ljava/lang/NumberFormatException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to parse \'"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' as integer"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 367
    .end local v2           #negative:Z
    :cond_81
    const/4 v3, 0x0

    move v2, v3

    goto :goto_5c

    .line 374
    .restart local v2       #negative:Z
    :cond_84
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Integer;->parse(Ljava/lang/String;IIZ)I

    move-result v3

    return v3
.end method

.method public static reverse(I)I
    .registers 6
    .parameter "i"

    .prologue
    const v4, 0x55555555

    const v3, 0x33333333

    const v2, 0xf0f0f0f

    .line 772
    and-int v0, p0, v4

    shl-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, p0, 0x1

    and-int/2addr v1, v4

    or-int p0, v0, v1

    .line 773
    and-int v0, p0, v3

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, p0, 0x2

    and-int/2addr v1, v3

    or-int p0, v0, v1

    .line 774
    and-int v0, p0, v2

    shl-int/lit8 v0, v0, 0x4

    shr-int/lit8 v1, p0, 0x4

    and-int/2addr v1, v2

    or-int p0, v0, v1

    .line 775
    invoke-static {p0}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v0

    return v0
.end method

.method public static reverseBytes(I)I
    .registers 7
    .parameter "i"

    .prologue
    const v5, 0xff00

    .line 755
    ushr-int/lit8 v3, p0, 0x18

    .line 756
    .local v3, b3:I
    ushr-int/lit8 v4, p0, 0x8

    and-int v2, v4, v5

    .line 757
    .local v2, b2:I
    and-int v4, p0, v5

    shl-int/lit8 v1, v4, 0x8

    .line 758
    .local v1, b1:I
    shl-int/lit8 v0, p0, 0x18

    .line 759
    .local v0, b0:I
    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    return v4
.end method

.method public static rotateLeft(II)I
    .registers 4
    .parameter "i"
    .parameter "distance"

    .prologue
    .line 712
    if-nez p1, :cond_4

    move v0, p0

    .line 720
    :goto_3
    return v0

    :cond_4
    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    goto :goto_3
.end method

.method public static rotateRight(II)I
    .registers 4
    .parameter "i"
    .parameter "distance"

    .prologue
    .line 735
    if-nez p1, :cond_4

    move v0, p0

    .line 743
    :goto_3
    return v0

    :cond_4
    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    goto :goto_3
.end method

.method public static signum(I)I
    .registers 2
    .parameter "i"

    .prologue
    .line 789
    if-nez p0, :cond_4

    const/4 v0, 0x0

    :goto_3
    return v0

    :cond_4
    if-gez p0, :cond_8

    const/4 v0, -0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public static toBinaryString(I)Ljava/lang/String;
    .registers 7
    .parameter "i"

    .prologue
    .line 427
    const/4 v1, 0x1

    .local v1, count:I
    move v2, p0

    .line 429
    .local v2, j:I
    if-gez p0, :cond_1d

    .line 430
    const/16 v1, 0x20

    .line 437
    :cond_6
    new-array v0, v1, [C

    .line 439
    .local v0, buffer:[C
    :cond_8
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x1

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 440
    ushr-int/lit8 p0, p0, 0x1

    .line 441
    if-gtz v1, :cond_8

    .line 442
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3

    .line 432
    .end local v0           #buffer:[C
    :cond_1d
    :goto_1d
    ushr-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 433
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static toHexString(I)Ljava/lang/String;
    .registers 8
    .parameter "i"

    .prologue
    .line 456
    const/4 v1, 0x1

    .local v1, count:I
    move v2, p0

    .line 458
    .local v2, j:I
    if-gez p0, :cond_25

    .line 459
    const/16 v1, 0x8

    .line 466
    :cond_6
    new-array v0, v1, [C

    .line 468
    .local v0, buffer:[C
    :cond_8
    and-int/lit8 v3, p0, 0xf

    .line 469
    .local v3, t:I
    const/16 v4, 0x9

    if-le v3, v4, :cond_2c

    .line 470
    const/16 v4, 0xa

    sub-int v4, v3, v4

    add-int/lit8 v3, v4, 0x61

    .line 474
    :goto_14
    add-int/lit8 v1, v1, -0x1

    int-to-char v4, v3

    aput-char v4, v0, v1

    .line 475
    ushr-int/lit8 p0, p0, 0x4

    .line 476
    if-gtz v1, :cond_8

    .line 477
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v4

    .line 461
    .end local v0           #buffer:[C
    .end local v3           #t:I
    :cond_25
    :goto_25
    ushr-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_6

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 472
    .restart local v0       #buffer:[C
    .restart local v3       #t:I
    :cond_2c
    add-int/lit8 v3, v3, 0x30

    goto :goto_14
.end method

.method public static toOctalString(I)Ljava/lang/String;
    .registers 7
    .parameter "i"

    .prologue
    .line 490
    const/4 v1, 0x1

    .local v1, count:I
    move v2, p0

    .line 492
    .local v2, j:I
    if-gez p0, :cond_1d

    .line 493
    const/16 v1, 0xb

    .line 500
    :cond_6
    new-array v0, v1, [C

    .line 502
    .local v0, buffer:[C
    :cond_8
    add-int/lit8 v1, v1, -0x1

    and-int/lit8 v3, p0, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    aput-char v3, v0, v1

    .line 503
    ushr-int/lit8 p0, p0, 0x3

    .line 504
    if-gtz v1, :cond_8

    .line 505
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v3, v4, v5, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v3

    .line 495
    .end local v0           #buffer:[C
    :cond_1d
    :goto_1d
    ushr-int/lit8 v2, v2, 0x3

    if-eqz v2, :cond_6

    .line 496
    add-int/lit8 v1, v1, 0x1

    goto :goto_1d
.end method

.method public static toString(I)Ljava/lang/String;
    .registers 2
    .parameter "i"

    .prologue
    .line 524
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(II)Ljava/lang/String;
    .registers 10
    .parameter "i"
    .parameter "radix"

    .prologue
    const/4 v7, 0x0

    .line 543
    const/4 v5, 0x2

    if-lt p1, v5, :cond_8

    const/16 v5, 0x24

    if-le p1, v5, :cond_a

    .line 544
    :cond_8
    const/16 p1, 0xa

    .line 546
    :cond_a
    if-nez p0, :cond_f

    .line 547
    const-string v5, "0"

    .line 573
    :goto_e
    return-object v5

    .line 550
    :cond_f
    const/4 v2, 0x2

    .local v2, count:I
    move v3, p0

    .line 551
    .local v3, j:I
    if-gez p0, :cond_1f

    const/4 v5, 0x1

    move v4, v5

    .line 552
    .local v4, negative:Z
    :goto_15
    if-nez v4, :cond_19

    .line 553
    const/4 v2, 0x1

    .line 554
    neg-int v3, p0

    .line 556
    :cond_19
    :goto_19
    div-int/2addr p0, p1

    if-eqz p0, :cond_21

    .line 557
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .end local v4           #negative:Z
    :cond_1f
    move v4, v7

    .line 551
    goto :goto_15

    .line 560
    .restart local v4       #negative:Z
    :cond_21
    new-array v0, v2, [C

    .line 562
    .local v0, buffer:[C
    :cond_23
    rem-int v5, v3, p1

    sub-int v1, v7, v5

    .line 563
    .local v1, ch:I
    const/16 v5, 0x9

    if-le v1, v5, :cond_46

    .line 564
    const/16 v5, 0xa

    sub-int v5, v1, v5

    add-int/lit8 v1, v5, 0x61

    .line 568
    :goto_31
    add-int/lit8 v2, v2, -0x1

    int-to-char v5, v1

    aput-char v5, v0, v2

    .line 569
    div-int/2addr v3, p1

    if-nez v3, :cond_23

    .line 570
    if-eqz v4, :cond_3f

    .line 571
    const/16 v5, 0x2d

    aput-char v5, v0, v7

    .line 573
    :cond_3f
    new-instance v5, Ljava/lang/String;

    array-length v6, v0

    invoke-direct {v5, v7, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_e

    .line 566
    :cond_46
    add-int/lit8 v1, v1, 0x30

    goto :goto_31
.end method

.method public static valueOf(I)Ljava/lang/Integer;
    .registers 3
    .parameter "i"

    .prologue
    .line 806
    const/16 v0, -0x80

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7f

    if-le p0, v0, :cond_e

    .line 807
    :cond_8
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 809
    :goto_d
    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Integer$valueOfCache;->CACHE:[Ljava/lang/Integer;

    add-int/lit16 v1, p0, 0x80

    aget-object v0, v0, v1

    goto :goto_d
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Integer;
    .registers 3
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 613
    invoke-static {p0, p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 2

    .prologue
    .line 103
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Integer;)I
    .registers 4
    .parameter "object"

    .prologue
    .line 120
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    if-le v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Ljava/lang/Integer;->value:I

    iget v1, p1, Ljava/lang/Integer;->value:I

    if-ge v0, v1, :cond_10

    const/4 v0, -0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Integer;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 187
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 203
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_e

    iget v0, p0, Ljava/lang/Integer;->value:I

    check-cast p1, Ljava/lang/Integer;

    .end local p1
    iget v1, p1, Ljava/lang/Integer;->value:I

    if-ne v0, v1, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public floatValue()F
    .registers 2

    .prologue
    .line 209
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 301
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public intValue()I
    .registers 2

    .prologue
    .line 312
    iget v0, p0, Ljava/lang/Integer;->value:I

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 317
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public shortValue()S
    .registers 2

    .prologue
    .line 414
    iget v0, p0, Ljava/lang/Integer;->value:I

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 510
    iget v0, p0, Ljava/lang/Integer;->value:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
