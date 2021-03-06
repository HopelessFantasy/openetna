.class public final Ljava/math/MathContext;
.super Ljava/lang/Object;
.source "MathContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final DECIMAL128:Ljava/math/MathContext; = null

.field public static final DECIMAL32:Ljava/math/MathContext; = null

.field public static final DECIMAL64:Ljava/math/MathContext; = null

.field public static final UNLIMITED:Ljava/math/MathContext; = null

.field private static final chPrecision:[C = null

.field private static final chRoundingMode:[C = null

.field private static final serialVersionUID:J = 0x4d6f25c81f7601ffL


# instance fields
.field private precision:I

.field private roundingMode:Ljava/math/RoundingMode;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 48
    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x22

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL128:Ljava/math/MathContext;

    .line 58
    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x7

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL32:Ljava/math/MathContext;

    .line 68
    new-instance v0, Ljava/math/MathContext;

    const/16 v1, 0x10

    sget-object v2, Ljava/math/RoundingMode;->HALF_EVEN:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->DECIMAL64:Ljava/math/MathContext;

    .line 77
    new-instance v0, Ljava/math/MathContext;

    const/4 v1, 0x0

    sget-object v2, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {v0, v1, v2}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    sput-object v0, Ljava/math/MathContext;->UNLIMITED:Ljava/math/MathContext;

    .line 103
    const/16 v0, 0xa

    new-array v0, v0, [C

    fill-array-data v0, :array_3e

    sput-object v0, Ljava/math/MathContext;->chPrecision:[C

    .line 114
    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_4c

    sput-object v0, Ljava/math/MathContext;->chRoundingMode:[C

    return-void

    .line 103
    nop

    :array_3e
    .array-data 0x2
        0x70t 0x0t
        0x72t 0x0t
        0x65t 0x0t
        0x63t 0x0t
        0x69t 0x0t
        0x73t 0x0t
        0x69t 0x0t
        0x6ft 0x0t
        0x6et 0x0t
        0x3dt 0x0t
    .end array-data

    .line 114
    :array_4c
    .array-data 0x2
        0x72t 0x0t
        0x6ft 0x0t
        0x75t 0x0t
        0x6et 0x0t
        0x64t 0x0t
        0x69t 0x0t
        0x6et 0x0t
        0x67t 0x0t
        0x4dt 0x0t
        0x6ft 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x3dt 0x0t
    .end array-data
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "precision"

    .prologue
    .line 136
    sget-object v0, Ljava/math/RoundingMode;->HALF_UP:Ljava/math/RoundingMode;

    invoke-direct {p0, p1, v0}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 137
    return-void
.end method

.method public constructor <init>(ILjava/math/RoundingMode;)V
    .registers 5
    .parameter "precision"
    .parameter "roundingMode"

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    if-gez p1, :cond_11

    .line 162
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "math.0C"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_11
    if-nez p2, :cond_1f

    .line 166
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "math.0D"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_1f
    iput p1, p0, Ljava/math/MathContext;->precision:I

    .line 169
    iput-object p2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 170
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 11
    .parameter "val"

    .prologue
    const/16 v8, 0xa

    const/4 v7, -0x1

    const-string v6, "math.0E"

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 194
    .local v0, charVal:[C
    array-length v4, v0

    const/16 v5, 0x1b

    if-lt v4, v5, :cond_16

    array-length v4, v0

    const/16 v5, 0x2d

    if-le v4, v5, :cond_22

    .line 196
    :cond_16
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "math.0E"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 199
    :cond_22
    const/4 v2, 0x0

    .local v2, i:I
    :goto_23
    sget-object v4, Ljava/math/MathContext;->chPrecision:[C

    array-length v4, v4

    if-ge v2, v4, :cond_33

    aget-char v4, v0, v2

    sget-object v5, Ljava/math/MathContext;->chPrecision:[C

    aget-char v5, v5, v2

    if-ne v4, v5, :cond_33

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    .line 203
    :cond_33
    sget-object v4, Ljava/math/MathContext;->chPrecision:[C

    array-length v4, v4

    if-ge v2, v4, :cond_44

    .line 205
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "math.0E"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 208
    :cond_44
    aget-char v4, v0, v2

    invoke-static {v4, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 209
    .local v1, digit:I
    if-ne v1, v7, :cond_58

    .line 211
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "math.0E"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 214
    :cond_58
    iput v1, p0, Ljava/math/MathContext;->precision:I

    .line 216
    add-int/lit8 v2, v2, 0x1

    .line 219
    :goto_5c
    aget-char v4, v0, v2

    invoke-static {v4, v8}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    .line 220
    if-ne v1, v7, :cond_8b

    .line 221
    aget-char v4, v0, v2

    const/16 v5, 0x20

    if-ne v4, v5, :cond_7f

    .line 223
    add-int/lit8 v2, v2, 0x1

    .line 239
    const/4 v3, 0x0

    .line 240
    .local v3, j:I
    :goto_6d
    sget-object v4, Ljava/math/MathContext;->chRoundingMode:[C

    array-length v4, v4

    if-ge v3, v4, :cond_a5

    aget-char v4, v0, v2

    sget-object v5, Ljava/math/MathContext;->chRoundingMode:[C

    aget-char v5, v5, v3

    if-ne v4, v5, :cond_a5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_6d

    .line 228
    .end local v3           #j:I
    :cond_7f
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "math.0E"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 231
    :cond_8b
    iget v4, p0, Ljava/math/MathContext;->precision:I

    mul-int/lit8 v4, v4, 0xa

    add-int/2addr v4, v1

    iput v4, p0, Ljava/math/MathContext;->precision:I

    .line 232
    iget v4, p0, Ljava/math/MathContext;->precision:I

    if-gez v4, :cond_a2

    .line 234
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "math.0E"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 236
    :cond_a2
    add-int/lit8 v2, v2, 0x1

    .line 237
    goto :goto_5c

    .line 244
    .restart local v3       #j:I
    :cond_a5
    sget-object v4, Ljava/math/MathContext;->chRoundingMode:[C

    array-length v4, v4

    if-ge v3, v4, :cond_b6

    .line 246
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "math.0E"

    invoke-static {v6}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 249
    :cond_b6
    array-length v4, v0

    sub-int/2addr v4, v2

    invoke-static {v0, v2, v4}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/math/RoundingMode;->valueOf(Ljava/lang/String;)Ljava/math/RoundingMode;

    move-result-object v4

    iput-object v4, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    .line 251
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 358
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 359
    iget v0, p0, Ljava/math/MathContext;->precision:I

    if-gez v0, :cond_13

    .line 361
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "math.0F"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 363
    :cond_13
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-nez v0, :cond_23

    .line 365
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "math.10"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 367
    :cond_23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .parameter "x"

    .prologue
    .line 305
    instance-of v1, p1, Ljava/math/MathContext;

    if-eqz v1, :cond_1c

    move-object v0, p1

    check-cast v0, Ljava/math/MathContext;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/math/MathContext;->getPrecision()I

    move-result v1

    iget v2, p0, Ljava/math/MathContext;->precision:I

    if-ne v1, v2, :cond_1c

    check-cast p1, Ljava/math/MathContext;

    .end local p1
    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v1

    iget-object v2, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    if-ne v1, v2, :cond_1c

    const/4 v1, 0x1

    :goto_1b
    return v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_1b
.end method

.method public getPrecision()I
    .registers 2

    .prologue
    .line 267
    iget v0, p0, Ljava/math/MathContext;->precision:I

    return v0
.end method

.method public getRoundingMode()Ljava/math/RoundingMode;
    .registers 2

    .prologue
    .line 289
    iget-object v0, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .prologue
    .line 320
    iget v0, p0, Ljava/math/MathContext;->precision:I

    shl-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v1}, Ljava/math/RoundingMode;->ordinal()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x2d

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 339
    .local v0, sb:Ljava/lang/StringBuffer;
    sget-object v1, Ljava/math/MathContext;->chPrecision:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 340
    iget v1, p0, Ljava/math/MathContext;->precision:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 341
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 342
    sget-object v1, Ljava/math/MathContext;->chRoundingMode:[C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 343
    iget-object v1, p0, Ljava/math/MathContext;->roundingMode:Ljava/math/RoundingMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
