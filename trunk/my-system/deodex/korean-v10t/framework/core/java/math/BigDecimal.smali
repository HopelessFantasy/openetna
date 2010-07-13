.class public Ljava/math/BigDecimal;
.super Ljava/lang/Number;
.source "BigDecimal.java"

# interfaces
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/math/BigDecimal$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/math/BigDecimal;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal; = null

.field private static final BI_SCALED_BY_ZERO_LENGTH:I = 0xb

.field private static final CH_ZEROS:[C = null

.field private static final FIVE_POW:[Ljava/math/BigInteger; = null

.field private static final LOG10_2:D = 0.3010299956639812

.field private static final LONG_FIVE_POW:[J = null

.field private static final LONG_FIVE_POW_BIT_LENGTH:[I = null

.field private static final LONG_TEN_POW:[J = null

.field private static final LONG_TEN_POW_BIT_LENGTH:[I = null

.field public static final ONE:Ljava/math/BigDecimal; = null

.field public static final ROUND_CEILING:I = 0x2

.field public static final ROUND_DOWN:I = 0x1

.field public static final ROUND_FLOOR:I = 0x3

.field public static final ROUND_HALF_DOWN:I = 0x5

.field public static final ROUND_HALF_EVEN:I = 0x6

.field public static final ROUND_HALF_UP:I = 0x4

.field public static final ROUND_UNNECESSARY:I = 0x7

.field public static final ROUND_UP:I = 0x0

.field public static final TEN:Ljava/math/BigDecimal; = null

.field private static final TEN_POW:[Ljava/math/BigInteger; = null

.field public static final ZERO:Ljava/math/BigDecimal; = null

.field private static final ZERO_SCALED_BY:[Ljava/math/BigDecimal; = null

.field private static final serialVersionUID:J = 0x54c71557f981284fL


# instance fields
.field private transient bitLength:I

.field private transient hashCode:I

.field private intVal:Ljava/math/BigInteger;

.field private transient precision:I

.field private scale:I

.field private transient smallValue:J

.field private transient toStringImage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/16 v6, 0x30

    const/16 v5, 0xb

    const/4 v4, 0x0

    .line 43
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, v4, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v2, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    .line 50
    new-instance v2, Ljava/math/BigDecimal;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 57
    new-instance v2, Ljava/math/BigDecimal;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(II)V

    sput-object v2, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    .line 163
    const/16 v2, 0x13

    new-array v2, v2, [J

    fill-array-data v2, :array_aa

    sput-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    .line 185
    const/16 v2, 0x1c

    new-array v2, v2, [J

    fill-array-data v2, :array_fa

    sput-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    .line 215
    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    .line 216
    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    .line 224
    new-array v2, v5, [Ljava/math/BigDecimal;

    sput-object v2, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    .line 230
    new-array v2, v5, [Ljava/math/BigDecimal;

    sput-object v2, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    .line 233
    const/16 v2, 0x64

    new-array v2, v2, [C

    sput-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    .line 237
    const/4 v0, 0x0

    .line 239
    .local v0, i:I
    :goto_4c
    sget-object v2, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v2, v2

    if-ge v0, v2, :cond_6a

    .line 240
    sget-object v2, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v0, v4}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v3, v2, v0

    .line 241
    sget-object v2, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    new-instance v3, Ljava/math/BigDecimal;

    invoke-direct {v3, v4, v0}, Ljava/math/BigDecimal;-><init>(II)V

    aput-object v3, v2, v0

    .line 242
    sget-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    aput-char v6, v2, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 245
    :cond_6a
    :goto_6a
    sget-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v2, v2

    if-ge v0, v2, :cond_76

    .line 246
    sget-object v2, Ljava/math/BigDecimal;->CH_ZEROS:[C

    aput-char v6, v2, v0

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_6a

    .line 248
    :cond_76
    const/4 v1, 0x0

    .local v1, j:I
    :goto_77
    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8b

    .line 249
    sget-object v2, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    sget-object v3, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v3

    aput v3, v2, v1

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_77

    .line 251
    :cond_8b
    const/4 v1, 0x0

    :goto_8c
    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    array-length v2, v2

    if-ge v1, v2, :cond_a0

    .line 252
    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v3

    aput v3, v2, v1

    .line 251
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 256
    :cond_a0
    sget-object v2, Ljava/math/Multiplication;->bigTenPows:[Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    .line 257
    sget-object v2, Ljava/math/Multiplication;->bigFivePows:[Ljava/math/BigInteger;

    sput-object v2, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    .line 258
    return-void

    .line 163
    nop

    :array_aa
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x10t 0x27t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xa0t 0x86t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x40t 0x42t 0xft 0x0t 0x0t 0x0t 0x0t 0x0t
        0x80t 0x96t 0x98t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t
        0x0t 0xcat 0x9at 0x3bt 0x0t 0x0t 0x0t 0x0t
        0x0t 0xe4t 0xbt 0x54t 0x2t 0x0t 0x0t 0x0t
        0x0t 0xe8t 0x76t 0x48t 0x17t 0x0t 0x0t 0x0t
        0x0t 0x10t 0xa5t 0xd4t 0xe8t 0x0t 0x0t 0x0t
        0x0t 0xa0t 0x72t 0x4et 0x18t 0x9t 0x0t 0x0t
        0x0t 0x40t 0x7at 0x10t 0xf3t 0x5at 0x0t 0x0t
        0x0t 0x80t 0xc6t 0xa4t 0x7et 0x8dt 0x3t 0x0t
        0x0t 0x0t 0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t
        0x0t 0x0t 0x8at 0x5dt 0x78t 0x45t 0x63t 0x1t
        0x0t 0x0t 0x64t 0xa7t 0xb3t 0xb6t 0xe0t 0xdt
    .end array-data

    .line 185
    :array_fa
    .array-data 0x8
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x19t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x7dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x71t 0x2t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x35t 0xct 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x9t 0x3dt 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x2dt 0x31t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe1t 0xf5t 0x5t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x65t 0xcdt 0x1dt 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf9t 0x2t 0x95t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xddt 0xet 0xe9t 0x2t 0x0t 0x0t 0x0t 0x0t
        0x51t 0x4at 0x8dt 0xet 0x0t 0x0t 0x0t 0x0t
        0x95t 0x73t 0xc2t 0x48t 0x0t 0x0t 0x0t 0x0t
        0xe9t 0x41t 0xcct 0x6bt 0x1t 0x0t 0x0t 0x0t
        0x8dt 0x49t 0xfdt 0x1at 0x7t 0x0t 0x0t 0x0t
        0xc1t 0x6ft 0xf2t 0x86t 0x23t 0x0t 0x0t 0x0t
        0xc5t 0x2et 0xbct 0xa2t 0xb1t 0x0t 0x0t 0x0t
        0xd9t 0xe9t 0xact 0x2dt 0x78t 0x3t 0x0t 0x0t
        0x3dt 0x91t 0x60t 0xe4t 0x58t 0x11t 0x0t 0x0t
        0x31t 0xd6t 0xe2t 0x75t 0xbct 0x56t 0x0t 0x0t
        0xf5t 0x2et 0x6et 0x4dt 0xaet 0xb1t 0x1t 0x0t
        0xc9t 0xeat 0x26t 0x83t 0x67t 0x78t 0x8t 0x0t
        0xedt 0x95t 0xc2t 0x8ft 0x5t 0x5at 0x2at 0x0t
        0xa1t 0xedt 0xcct 0xcet 0x1bt 0xc2t 0xd3t 0x0t
        0x25t 0xa4t 0x0t 0xat 0x8bt 0xcat 0x22t 0x4t
        0xb9t 0x34t 0x3t 0x32t 0xb7t 0xf4t 0xadt 0x14t
        0x9dt 0x7t 0x10t 0xfat 0x93t 0xc7t 0x65t 0x67t
    .end array-data
.end method

.method public constructor <init>(D)V
    .registers 15
    .parameter "val"

    .prologue
    .line 544
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 142
    const/4 v7, 0x0

    iput-object v7, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 145
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 284
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 545
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v7

    if-nez v7, :cond_18

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v7

    if-eqz v7, :cond_24

    .line 547
    :cond_18
    new-instance v7, Ljava/lang/NumberFormatException;

    const-string v8, "math.03"

    invoke-static {v8}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 549
    :cond_24
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    .line 553
    .local v1, bits:J
    const/16 v7, 0x433

    const/16 v8, 0x34

    shr-long v8, v1, v8

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    long-to-int v8, v8

    sub-int/2addr v7, v8

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 555
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v8, 0x433

    if-ne v7, v8, :cond_8d

    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const/4 v9, 0x1

    shl-long/2addr v7, v9

    move-wide v3, v7

    .line 557
    .local v3, mantisa:J
    :goto_44
    const-wide/16 v7, 0x0

    cmp-long v7, v3, v7

    if-nez v7, :cond_50

    .line 558
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 559
    const/4 v7, 0x1

    iput v7, p0, Ljava/math/BigDecimal;->precision:I

    .line 562
    :cond_50
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_64

    .line 563
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v3, v4}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 564
    .local v6, trailingZeros:I
    ushr-long/2addr v3, v6

    .line 565
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int/2addr v7, v6

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 568
    .end local v6           #trailingZeros:I
    :cond_64
    const/16 v7, 0x3f

    shr-long v7, v1, v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_6f

    .line 569
    neg-long v3, v3

    .line 571
    :cond_6f
    invoke-static {v3, v4}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v5

    .line 572
    .local v5, mantisaBits:I
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v7, :cond_b3

    .line 573
    if-nez v5, :cond_98

    const/4 v7, 0x0

    :goto_7a
    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 574
    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_9d

    .line 575
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    shl-long v7, v3, v7

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 584
    :goto_89
    const/4 v7, 0x0

    iput v7, p0, Ljava/math/BigDecimal;->scale:I

    .line 598
    :goto_8c
    return-void

    .line 555
    .end local v3           #mantisa:J
    .end local v5           #mantisaBits:I
    :cond_8d
    const-wide v7, 0xfffffffffffffL

    and-long/2addr v7, v1

    const-wide/high16 v9, 0x10

    or-long/2addr v7, v9

    move-wide v3, v7

    goto :goto_44

    .line 573
    .restart local v3       #mantisa:J
    .restart local v5       #mantisaBits:I
    :cond_98
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v7, v5, v7

    goto :goto_7a

    .line 578
    :cond_9d
    new-instance v0, Ljava/math/BigInt;

    invoke-direct {v0}, Ljava/math/BigInt;-><init>()V

    .line 579
    .local v0, bi:Ljava/math/BigInt;
    invoke-virtual {v0, v3, v4}, Ljava/math/BigInt;->putLongInt(J)V

    .line 580
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    neg-int v7, v7

    invoke-virtual {v0, v7}, Ljava/math/BigInt;->shift(I)V

    .line 581
    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iput-object v7, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    goto :goto_89

    .line 585
    .end local v0           #bi:Ljava/math/BigInt;
    :cond_b3
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v7, :cond_e9

    .line 587
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    sget-object v8, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    array-length v8, v8

    if-ge v7, v8, :cond_db

    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW_BIT_LENGTH:[I

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget v7, v7, v8

    add-int/2addr v7, v5

    const/16 v8, 0x40

    if-ge v7, v8, :cond_db

    .line 589
    sget-object v7, Ljava/math/BigDecimal;->LONG_FIVE_POW:[J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    aget-wide v7, v7, v8

    mul-long/2addr v7, v3

    iput-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 590
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v7, v8}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v7

    iput v7, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_8c

    .line 592
    :cond_db
    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    invoke-direct {p0, v7}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_8c

    .line 595
    :cond_e9
    iput-wide v3, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 596
    iput v5, p0, Ljava/math/BigDecimal;->bitLength:I

    goto :goto_8c
.end method

.method public constructor <init>(DLjava/math/MathContext;)V
    .registers 4
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 623
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 624
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 625
    return-void
.end method

.method public constructor <init>(I)V
    .registers 3
    .parameter "val"

    .prologue
    .line 717
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 718
    return-void
.end method

.method private constructor <init>(II)V
    .registers 5
    .parameter "smallValue"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 294
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 145
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 284
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 295
    int-to-long v0, p1

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 296
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 297
    invoke-static {p1}, Ljava/math/BigDecimal;->bitLength(I)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 298
    return-void
.end method

.method public constructor <init>(ILjava/math/MathContext;)V
    .registers 4
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 736
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(II)V

    .line 737
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 738
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4
    .parameter "val"

    .prologue
    .line 749
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljava/math/BigDecimal;-><init>(JI)V

    .line 750
    return-void
.end method

.method private constructor <init>(JI)V
    .registers 6
    .parameter "smallValue"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 288
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 145
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 284
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 289
    iput-wide p1, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 290
    iput p3, p0, Ljava/math/BigDecimal;->scale:I

    .line 291
    invoke-static {p1, p2}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 292
    return-void
.end method

.method public constructor <init>(JLjava/math/MathContext;)V
    .registers 4
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 768
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(J)V

    .line 769
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 770
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5
    .parameter "val"

    .prologue
    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 502
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/math/MathContext;)V
    .registers 6
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 524
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 525
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 526
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "val"

    .prologue
    .line 637
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 638
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;I)V
    .registers 5
    .parameter "unscaledVal"
    .parameter "scale"

    .prologue
    const/4 v1, 0x0

    .line 674
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 142
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 145
    iput v1, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 284
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 675
    if-nez p1, :cond_13

    .line 676
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 678
    :cond_13
    iput p2, p0, Ljava/math/BigDecimal;->scale:I

    .line 679
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    .line 680
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V
    .registers 4
    .parameter "unscaledVal"
    .parameter "scale"
    .parameter "mc"

    .prologue
    .line 704
    invoke-direct {p0, p1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 705
    invoke-direct {p0, p3}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 706
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/MathContext;)V
    .registers 3
    .parameter "val"
    .parameter "mc"

    .prologue
    .line 656
    invoke-direct {p0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 657
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 658
    return-void
.end method

.method public constructor <init>([C)V
    .registers 4
    .parameter "in"

    .prologue
    .line 459
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 460
    return-void
.end method

.method public constructor <init>([CII)V
    .registers 21
    .parameter "in"
    .parameter "offset"
    .parameter "len"

    .prologue
    .line 321
    invoke-direct/range {p0 .. p0}, Ljava/lang/Number;-><init>()V

    .line 142
    const/4 v13, 0x0

    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 145
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->hashCode:I

    .line 284
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 322
    move/from16 v4, p2

    .line 323
    .local v4, begin:I
    const/4 v13, 0x1

    sub-int v13, p3, v13

    add-int v7, p2, v13

    .line 324
    .local v7, last:I
    const/4 v10, 0x0

    .line 328
    .local v10, scaleString:Ljava/lang/String;
    if-nez p1, :cond_25

    .line 329
    new-instance v13, Ljava/lang/NullPointerException;

    invoke-direct {v13}, Ljava/lang/NullPointerException;-><init>()V

    throw v13

    .line 331
    :cond_25
    move-object/from16 v0, p1

    array-length v0, v0

    move v13, v0

    if-ge v7, v13, :cond_31

    if-ltz p2, :cond_31

    if-lez p3, :cond_31

    if-gez v7, :cond_37

    .line 332
    :cond_31
    new-instance v13, Ljava/lang/NumberFormatException;

    invoke-direct {v13}, Ljava/lang/NumberFormatException;-><init>()V

    throw v13

    .line 334
    :cond_37
    new-instance v11, Ljava/lang/StringBuilder;

    move-object v0, v11

    move/from16 v1, p3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 335
    .local v11, unscaledBuffer:Ljava/lang/StringBuilder;
    const/4 v5, 0x0

    .line 337
    .local v5, bufLength:I
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_4f

    aget-char v13, p1, p2

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_4f

    .line 338
    add-int/lit8 p2, p2, 0x1

    .line 339
    add-int/lit8 v4, v4, 0x1

    .line 341
    :cond_4f
    const/4 v6, 0x0

    .line 342
    .local v6, counter:I
    const/4 v12, 0x0

    .line 345
    .local v12, wasNonZero:Z
    :goto_51
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_77

    aget-char v13, p1, p2

    const/16 v14, 0x2e

    if-eq v13, v14, :cond_77

    aget-char v13, p1, p2

    const/16 v14, 0x65

    if-eq v13, v14, :cond_77

    aget-char v13, p1, p2

    const/16 v14, 0x45

    if-eq v13, v14, :cond_77

    .line 346
    if-nez v12, :cond_72

    .line 347
    aget-char v13, p1, p2

    const/16 v14, 0x30

    if-ne v13, v14, :cond_75

    .line 348
    add-int/lit8 v6, v6, 0x1

    .line 345
    :cond_72
    :goto_72
    add-int/lit8 p2, p2, 0x1

    goto :goto_51

    .line 350
    :cond_75
    const/4 v12, 0x1

    goto :goto_72

    .line 355
    :cond_77
    sub-int v13, p2, v4

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v4

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 356
    sub-int v13, p2, v4

    add-int/2addr v5, v13

    .line 358
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_130

    aget-char v13, p1, p2

    const/16 v14, 0x2e

    if-ne v13, v14, :cond_130

    .line 359
    add-int/lit8 p2, p2, 0x1

    .line 361
    move/from16 v4, p2

    .line 363
    :goto_93
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_b3

    aget-char v13, p1, p2

    const/16 v14, 0x65

    if-eq v13, v14, :cond_b3

    aget-char v13, p1, p2

    const/16 v14, 0x45

    if-eq v13, v14, :cond_b3

    .line 364
    if-nez v12, :cond_ae

    .line 365
    aget-char v13, p1, p2

    const/16 v14, 0x30

    if-ne v13, v14, :cond_b1

    .line 366
    add-int/lit8 v6, v6, 0x1

    .line 363
    :cond_ae
    :goto_ae
    add-int/lit8 p2, p2, 0x1

    goto :goto_93

    .line 368
    :cond_b1
    const/4 v12, 0x1

    goto :goto_ae

    .line 372
    :cond_b3
    sub-int v13, p2, v4

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 373
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    add-int/2addr v5, v13

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    move-object v0, v11

    move-object/from16 v1, p1

    move v2, v4

    move v3, v13

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 379
    :goto_cd
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_137

    aget-char v13, p1, p2

    const/16 v14, 0x65

    if-eq v13, v14, :cond_de

    aget-char v13, p1, p2

    const/16 v14, 0x45

    if-ne v13, v14, :cond_137

    .line 380
    :cond_de
    add-int/lit8 p2, p2, 0x1

    .line 382
    move/from16 v4, p2

    .line 383
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_fc

    aget-char v13, p1, p2

    const/16 v14, 0x2b

    if-ne v13, v14, :cond_fc

    .line 384
    add-int/lit8 p2, p2, 0x1

    .line 385
    move/from16 v0, p2

    move v1, v7

    if-gt v0, v1, :cond_fc

    aget-char v13, p1, p2

    const/16 v14, 0x2d

    if-eq v13, v14, :cond_fc

    .line 386
    add-int/lit8 v4, v4, 0x1

    .line 390
    :cond_fc
    add-int/lit8 v13, v7, 0x1

    sub-int/2addr v13, v4

    move-object/from16 v0, p1

    move v1, v4

    move v2, v13

    invoke-static {v0, v1, v2}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v10

    .line 392
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    int-to-long v13, v13

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    int-to-long v15, v15

    sub-long v8, v13, v15

    .line 393
    .local v8, newScale:J
    long-to-int v13, v8

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v13, v0

    int-to-long v13, v13

    cmp-long v13, v8, v13

    if-eqz v13, :cond_137

    .line 396
    new-instance v13, Ljava/lang/NumberFormatException;

    const-string v14, "math.02"

    invoke-static {v14}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 376
    .end local v8           #newScale:J
    :cond_130
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    goto :goto_cd

    .line 400
    :cond_137
    const/16 v13, 0x13

    if-ge v5, v13, :cond_176

    .line 401
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/math/BigDecimal;->smallValue:J

    .line 402
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/math/BigDecimal;->smallValue:J

    move-wide v13, v0

    invoke-static {v13, v14}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v13

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->bitLength:I

    .line 406
    :goto_156
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v13

    sub-int/2addr v13, v6

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 407
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v13

    const/16 v14, 0x2d

    if-ne v13, v14, :cond_175

    .line 408
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->precision:I

    move v13, v0

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 410
    :cond_175
    return-void

    .line 404
    :cond_176
    new-instance v13, Ljava/math/BigInteger;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto :goto_156
.end method

.method public constructor <init>([CIILjava/math/MathContext;)V
    .registers 5
    .parameter "in"
    .parameter "offset"
    .parameter "len"
    .parameter "mc"

    .prologue
    .line 440
    invoke-direct {p0, p1, p2, p3}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 441
    invoke-direct {p0, p4}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 442
    return-void
.end method

.method public constructor <init>([CLjava/math/MathContext;)V
    .registers 5
    .parameter "in"
    .parameter "mc"

    .prologue
    .line 484
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Ljava/math/BigDecimal;-><init>([CII)V

    .line 485
    invoke-direct {p0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 486
    return-void
.end method

.method private static addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 10
    .parameter "thisValue"
    .parameter "augend"
    .parameter "diffScale"

    .prologue
    .line 888
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v1, v1

    if-ge p2, v1, :cond_29

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    aget v3, v3, p2

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_29

    .line 890
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    aget-wide v5, v5, p2

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    .line 894
    :goto_28
    return-object v1

    .line 892
    :cond_29
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    iget-object v0, v1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    .line 893
    .local v0, bi:Ljava/math/BigInt;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget-object v1, v1, Ljava/math/BigInteger;->bigInt:Ljava/math/BigInt;

    invoke-virtual {v0, v1}, Ljava/math/BigInt;->add(Ljava/math/BigInt;)V

    .line 894
    new-instance v1, Ljava/math/BigDecimal;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v0}, Ljava/math/BigInteger;-><init>(Ljava/math/BigInt;)V

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_28
.end method

.method private aproxPrecision()I
    .registers 5

    .prologue
    .line 3072
    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v0, :cond_7

    iget v0, p0, Ljava/math/BigDecimal;->precision:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    const-wide v2, 0x3fd34413509f79ffL

    mul-double/2addr v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method private static bitLength(I)I
    .registers 3
    .parameter "smallValue"

    .prologue
    .line 3172
    if-gez p0, :cond_4

    .line 3173
    xor-int/lit8 p0, p0, -0x1

    .line 3175
    :cond_4
    const/16 v0, 0x20

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static bitLength(J)I
    .registers 4
    .parameter "smallValue"

    .prologue
    .line 3165
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gez v0, :cond_9

    .line 3166
    const-wide/16 v0, -0x1

    xor-long/2addr p0, v0

    .line 3168
    :cond_9
    const/16 v0, 0x40

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private static divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 9
    .parameter "scaledDividend"
    .parameter "scaledDivisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1203
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 1205
    .local v0, quotAndRem:[Ljava/math/BigInteger;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    .line 1206
    .local v1, quotient:Ljava/math/BigInteger;
    const/4 v2, 0x1

    aget-object v0, v0, v2

    .line 1207
    .local v0, remainder:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_18

    .line 1208
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0
    invoke-direct {p0, v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, p0

    move-object p0, v1

    .line 1234
    .end local v0           #remainder:Ljava/math/BigInteger;
    .end local v1           #quotient:Ljava/math/BigInteger;
    .end local p1
    .end local p3
    .local p0, quotient:Ljava/math/BigInteger;
    :goto_17
    return-object p1

    .line 1210
    .restart local v0       #remainder:Ljava/math/BigInteger;
    .restart local v1       #quotient:Ljava/math/BigInteger;
    .local p0, scaledDividend:Ljava/math/BigInteger;
    .restart local p1
    .restart local p3
    :cond_18
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result p0

    .end local p0           #scaledDividend:Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v2

    mul-int v4, p0, v2

    .line 1212
    .local v4, sign:I
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p0

    const/16 v2, 0x3f

    if-ge p0, v2, :cond_68

    .line 1213
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 1214
    .local v2, rem:J
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p0

    .line 1215
    .end local p1
    .local p0, divisor:J
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .end local v2           #rem:J
    const/4 v0, 0x1

    shl-long/2addr v2, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    .end local v0           #remainder:Ljava/math/BigInteger;
    move-result-wide p0

    .end local p0           #divisor:J
    invoke-static {v2, v3, p0, p1}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result p0

    .line 1217
    .local p0, compRem:I
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_66

    const/4 p1, 0x1

    :goto_48
    add-int/lit8 p0, p0, 0x5

    mul-int/2addr p0, v4

    invoke-static {p1, p0, p3}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    .end local p0           #compRem:I
    move-result p0

    .line 1226
    .restart local p0       #compRem:I
    :goto_4f
    if-eqz p0, :cond_9b

    .line 1227
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result p1

    const/16 p3, 0x3f

    if-ge p1, p3, :cond_8b

    .line 1228
    .end local p3
    invoke-virtual {v1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    int-to-long p0, p0

    add-long/2addr p0, v2

    invoke-static {p0, p1, p2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    .end local p0           #compRem:I
    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    .end local v1           #quotient:Ljava/math/BigInteger;
    .local p0, quotient:Ljava/math/BigInteger;
    goto :goto_17

    .line 1217
    .restart local v1       #quotient:Ljava/math/BigInteger;
    .local p0, compRem:I
    .restart local p3
    :cond_66
    const/4 p1, 0x0

    goto :goto_48

    .line 1222
    .end local p0           #compRem:I
    .restart local v0       #remainder:Ljava/math/BigInteger;
    .restart local p1
    :cond_68
    invoke-virtual {v0}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    .end local v0           #remainder:Ljava/math/BigInteger;
    move-result-object p0

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object p1

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p0

    .line 1223
    .restart local p0       #compRem:I
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result p1

    if-eqz p1, :cond_89

    const/4 p1, 0x1

    :goto_81
    add-int/lit8 p0, p0, 0x5

    mul-int/2addr p0, v4

    invoke-static {p1, p0, p3}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    .end local p0           #compRem:I
    move-result p0

    .restart local p0       #compRem:I
    goto :goto_4f

    :cond_89
    const/4 p1, 0x0

    goto :goto_81

    .line 1230
    .end local p3
    :cond_8b
    int-to-long p0, p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    .end local p0           #compRem:I
    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 1231
    .end local v1           #quotient:Ljava/math/BigInteger;
    .local p0, quotient:Ljava/math/BigInteger;
    new-instance p1, Ljava/math/BigDecimal;

    invoke-direct {p1, p0, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_17

    .line 1234
    .restart local v1       #quotient:Ljava/math/BigInteger;
    .local p0, compRem:I
    .restart local p3
    :cond_9b
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0           #compRem:I
    invoke-direct {p0, v1, p2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    move-object p1, p0

    move-object p0, v1

    .end local v1           #quotient:Ljava/math/BigInteger;
    .local p0, quotient:Ljava/math/BigInteger;
    goto/16 :goto_17
.end method

.method private static dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 16
    .parameter "scaledDividend"
    .parameter "scaledDivisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1238
    div-long v1, p0, p2

    .line 1239
    .local v1, quotient:J
    rem-long v3, p0, p2

    .line 1240
    .local v3, remainder:J
    invoke-static {p0, p1}, Ljava/lang/Long;->signum(J)I

    move-result v6

    invoke-static {p2, p3}, Ljava/lang/Long;->signum(J)I

    move-result v7

    mul-int v5, v6, v7

    .line 1241
    .local v5, sign:I
    const-wide/16 v6, 0x0

    cmp-long v6, v3, v6

    if-eqz v6, :cond_2e

    .line 1244
    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const/4 v8, 0x1

    shl-long/2addr v6, v8

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v0

    .line 1246
    .local v0, compRem:I
    long-to-int v6, v1

    and-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v0, 0x5

    mul-int/2addr v7, v5

    invoke-static {v6, v7, p5}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v1, v6

    .line 1251
    .end local v0           #compRem:I
    :cond_2e
    invoke-static {v1, v2, p4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v6

    return-object v6
.end method

.method private getUnscaledValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 3150
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    if-nez v0, :cond_c

    .line 3151
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 3153
    :cond_c
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    return-object v0
.end method

.method private inplaceRound(Ljava/math/MathContext;)V
    .registers 16
    .parameter "mc"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 2894
    invoke-virtual {p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 2896
    .local v3, mcPrecision:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v8

    if-lt v8, v3, :cond_e

    if-nez v3, :cond_f

    .line 2938
    :cond_e
    :goto_e
    return-void

    .line 2900
    :cond_f
    invoke-virtual {p0}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    sub-int v1, v8, v3

    .line 2902
    .local v1, discardedPrecision:I
    if-lez v1, :cond_e

    .line 2906
    iget v8, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v9, 0x40

    if-ge v8, v9, :cond_21

    .line 2907
    invoke-direct {p0, p1, v1}, Ljava/math/BigDecimal;->smallRound(Ljava/math/MathContext;I)V

    goto :goto_e

    .line 2911
    :cond_21
    int-to-long v8, v1

    invoke-static {v8, v9}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 2912
    .local v6, sizeOfFraction:Ljava/math/BigInteger;
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v2

    .line 2913
    .local v2, integerAndFraction:[Ljava/math/BigInteger;
    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v8, v8

    int-to-long v10, v1

    sub-long v4, v8, v10

    .line 2917
    .local v4, newScale:J
    aget-object v8, v2, v13

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v8

    if-eqz v8, :cond_8d

    .line 2919
    aget-object v8, v2, v13

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v13}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    .line 2921
    .local v0, compRem:I
    aget-object v8, v2, v12

    invoke-virtual {v8, v12}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v8

    if-eqz v8, :cond_9c

    move v8, v13

    :goto_53
    aget-object v9, v2, v13

    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v9

    add-int/lit8 v10, v0, 0x5

    mul-int/2addr v9, v10

    invoke-virtual {p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v10

    invoke-static {v8, v9, v10}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v0

    .line 2924
    if-eqz v0, :cond_73

    .line 2925
    aget-object v8, v2, v12

    int-to-long v9, v0

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v2, v12

    .line 2927
    :cond_73
    new-instance v7, Ljava/math/BigDecimal;

    aget-object v8, v2, v12

    invoke-direct {v7, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 2929
    .local v7, tempBD:Ljava/math/BigDecimal;
    invoke-virtual {v7}, Ljava/math/BigDecimal;->precision()I

    move-result v8

    if-le v8, v3, :cond_8d

    .line 2930
    aget-object v8, v2, v12

    sget-object v9, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    aput-object v8, v2, v12

    .line 2931
    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    .line 2935
    .end local v0           #compRem:I
    .end local v7           #tempBD:Ljava/math/BigDecimal;
    :cond_8d
    invoke-static {v4, v5}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v8

    iput v8, p0, Ljava/math/BigDecimal;->scale:I

    .line 2936
    iput v3, p0, Ljava/math/BigDecimal;->precision:I

    .line 2937
    aget-object v8, v2, v12

    invoke-direct {p0, v8}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    goto/16 :goto_e

    .restart local v0       #compRem:I
    :cond_9c
    move v8, v12

    .line 2921
    goto :goto_53
.end method

.method private isZero()Z
    .registers 5

    .prologue
    .line 1931
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-nez v0, :cond_e

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private static longCompareTo(JJ)I
    .registers 5
    .parameter "value1"
    .parameter "value2"

    .prologue
    .line 2941
    cmp-long v0, p0, p2

    if-lez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    cmp-long v0, p0, p2

    if-gez v0, :cond_c

    const/4 v0, -0x1

    goto :goto_5

    :cond_c
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private movePoint(J)Ljava/math/BigDecimal;
    .registers 9
    .parameter "newScale"

    .prologue
    const-wide/16 v1, 0x0

    const/16 v4, 0x40

    const/4 v5, 0x0

    .line 2142
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2143
    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 2159
    :goto_13
    return-object v0

    .line 2149
    :cond_14
    cmp-long v0, p1, v1

    if-ltz v0, :cond_35

    .line 2150
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_27

    .line 2151
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_13

    .line 2153
    :cond_27
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p1, p2}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13

    .line 2155
    :cond_35
    neg-long v0, p1

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_57

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    neg-long v2, p1

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_57

    .line 2157
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    neg-long v3, p1

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, v5}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_13

    .line 2159
    :cond_57
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    neg-long v2, p1

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_13
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 4
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 3132
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 3134
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 3135
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_19

    .line 3136
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 3138
    :cond_19
    return-void
.end method

.method private static roundingBehavior(IILjava/math/RoundingMode;)I
    .registers 8
    .parameter "parityBit"
    .parameter "fraction"
    .parameter "roundingMode"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x5

    .line 2997
    const/4 v0, 0x0

    .line 2999
    .local v0, increment:I
    sget-object v1, Ljava/math/BigDecimal$1;->$SwitchMap$java$math$RoundingMode:[I

    invoke-virtual {p2}, Ljava/math/RoundingMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_56

    .line 3033
    :cond_e
    :goto_e
    :pswitch_e
    return v0

    .line 3001
    :pswitch_f
    if-eqz p1, :cond_e

    .line 3003
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "math.08"

    invoke-static {v2}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3007
    :pswitch_1d
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    .line 3008
    goto :goto_e

    .line 3012
    :pswitch_22
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3013
    goto :goto_e

    .line 3015
    :pswitch_2b
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3016
    goto :goto_e

    .line 3018
    :pswitch_34
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v1, v3, :cond_e

    .line 3019
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 3023
    :pswitch_3f
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v1, v3, :cond_e

    .line 3024
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 3028
    :pswitch_4a
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v1, p0

    if-le v1, v3, :cond_e

    .line 3029
    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result v0

    goto :goto_e

    .line 2999
    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_f
        :pswitch_1d
        :pswitch_e
        :pswitch_22
        :pswitch_2b
        :pswitch_34
        :pswitch_3f
        :pswitch_4a
    .end packed-switch
.end method

.method private setUnscaledValue(Ljava/math/BigInteger;)V
    .registers 4
    .parameter "unscaledValue"

    .prologue
    .line 3157
    iput-object p1, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 3158
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    iput v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 3159
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_14

    .line 3160
    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    .line 3162
    :cond_14
    return-void
.end method

.method private smallRound(Ljava/math/MathContext;I)V
    .registers 21
    .parameter "mc"
    .parameter "discardedPrecision"

    .prologue
    .line 2954
    sget-object v14, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    aget-wide v10, v14, p2

    .line 2955
    .local v10, sizeOfFraction:J
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v14, v0

    int-to-long v14, v14

    move/from16 v0, p2

    int-to-long v0, v0

    move-wide/from16 v16, v0

    sub-long v8, v14, v16

    .line 2956
    .local v8, newScale:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Ljava/math/BigDecimal;->smallValue:J

    move-wide v12, v0

    .line 2958
    .local v12, unscaledVal:J
    div-long v6, v12, v10

    .line 2959
    .local v6, integer:J
    rem-long v4, v12, v10

    .line 2962
    .local v4, fraction:J
    const-wide/16 v14, 0x0

    cmp-long v14, v4, v14

    if-eqz v14, :cond_5d

    .line 2964
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    const/16 v16, 0x1

    shl-long v14, v14, v16

    invoke-static {v14, v15, v10, v11}, Ljava/math/BigDecimal;->longCompareTo(JJ)I

    move-result v3

    .line 2966
    .local v3, compRem:I
    long-to-int v14, v6

    and-int/lit8 v14, v14, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->signum(J)I

    move-result v15

    add-int/lit8 v16, v3, 0x5

    mul-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Ljava/math/BigDecimal;->roundingBehavior(IILjava/math/RoundingMode;)I

    move-result v14

    int-to-long v14, v14

    add-long/2addr v6, v14

    .line 2970
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v14

    long-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->log10(D)D

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_5d

    .line 2971
    const-wide/16 v14, 0xa

    div-long/2addr v6, v14

    .line 2972
    const-wide/16 v14, 0x1

    sub-long/2addr v8, v14

    .line 2976
    .end local v3           #compRem:I
    :cond_5d
    invoke-static {v8, v9}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 2977
    invoke-virtual/range {p1 .. p1}, Ljava/math/MathContext;->getPrecision()I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->precision:I

    .line 2978
    move-wide v0, v6

    move-object/from16 v2, p0

    iput-wide v0, v2, Ljava/math/BigDecimal;->smallValue:J

    .line 2979
    invoke-static {v6, v7}, Ljava/math/BigDecimal;->bitLength(J)I

    move-result v14

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Ljava/math/BigDecimal;->bitLength:I

    .line 2980
    const/4 v14, 0x0

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    .line 2981
    return-void
.end method

.method private static toIntScale(J)I
    .registers 4
    .parameter "longScale"

    .prologue
    .line 3091
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_13

    .line 3093
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.09"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3094
    :cond_13
    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_26

    .line 3096
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.0A"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3098
    :cond_26
    long-to-int v0, p0

    return v0
.end method

.method private valueExact(I)J
    .registers 5
    .parameter "bitLengthOfType"

    .prologue
    .line 3052
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigIntegerExact()Ljava/math/BigInteger;

    move-result-object v0

    .line 3054
    .local v0, bigInteger:Ljava/math/BigInteger;
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    if-ge v1, p1, :cond_f

    .line 3056
    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v1

    return-wide v1

    .line 3059
    :cond_f
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "math.08"

    invoke-static {v2}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(D)Ljava/math/BigDecimal;
    .registers 4
    .parameter "val"

    .prologue
    .line 837
    invoke-static {p0, p1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 839
    :cond_c
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "math.03"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 841
    :cond_18
    new-instance v0, Ljava/math/BigDecimal;

    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static valueOf(J)Ljava/math/BigDecimal;
    .registers 4
    .parameter "unscaledVal"

    .prologue
    .line 810
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-ltz v0, :cond_12

    const-wide/16 v0, 0xb

    cmp-long v0, p0, v0

    if-gez v0, :cond_12

    .line 811
    sget-object v0, Ljava/math/BigDecimal;->BI_SCALED_BY_ZERO:[Ljava/math/BigDecimal;

    long-to-int v1, p0

    aget-object v0, v0, v1

    .line 813
    :goto_11
    return-object v0

    :cond_12
    new-instance v0, Ljava/math/BigDecimal;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_11
.end method

.method public static valueOf(JI)Ljava/math/BigDecimal;
    .registers 5
    .parameter "unscaledVal"
    .parameter "scale"

    .prologue
    .line 789
    if-nez p2, :cond_7

    .line 790
    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    .line 796
    :goto_6
    return-object v0

    .line 792
    :cond_7
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_19

    if-ltz p2, :cond_19

    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    array-length v0, v0

    if-ge p2, v0, :cond_19

    .line 794
    sget-object v0, Ljava/math/BigDecimal;->ZERO_SCALED_BY:[Ljava/math/BigDecimal;

    aget-object v0, v0, p2

    goto :goto_6

    .line 796
    :cond_19
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p0, p1, p2}, Ljava/math/BigDecimal;-><init>(JI)V

    goto :goto_6
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .registers 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3145
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    .line 3146
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 3147
    return-void
.end method

.method private static zeroScaledBy(J)Ljava/math/BigDecimal;
    .registers 7
    .parameter "longScale"

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 3116
    long-to-int v0, p0

    int-to-long v0, v0

    cmp-long v0, p0, v0

    if-nez v0, :cond_f

    .line 3117
    long-to-int v0, p0

    invoke-static {v3, v4, v0}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 3122
    :goto_e
    return-object v0

    .line 3119
    :cond_f
    cmp-long v0, p0, v3

    if-ltz v0, :cond_1c

    .line 3120
    new-instance v0, Ljava/math/BigDecimal;

    const v1, 0x7fffffff

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_e

    .line 3122
    :cond_1c
    new-instance v0, Ljava/math/BigDecimal;

    const/high16 v1, -0x8000

    invoke-direct {v0, v2, v1}, Ljava/math/BigDecimal;-><init>(II)V

    goto :goto_e
.end method


# virtual methods
.method public abs()Ljava/math/BigDecimal;
    .registers 2

    .prologue
    .line 1838
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v0

    if-gez v0, :cond_b

    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    move-object v0, p0

    goto :goto_a
.end method

.method public abs(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "mc"

    .prologue
    .line 1853
    invoke-virtual {p0}, Ljava/math/BigDecimal;->abs()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1854
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1855
    return-object v0
.end method

.method public add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 7
    .parameter "augend"

    .prologue
    .line 857
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 859
    .local v0, diffScale:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 860
    if-gtz v0, :cond_10

    move-object v1, p1

    .line 882
    :goto_f
    return-object v1

    .line 863
    :cond_10
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    move-object v1, p0

    .line 864
    goto :goto_f

    .line 866
    :cond_18
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 867
    if-ltz v0, :cond_22

    move-object v1, p0

    .line 868
    goto :goto_f

    .line 872
    :cond_22
    if-nez v0, :cond_52

    .line 874
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x40

    if-ge v1, v2, :cond_3e

    .line 875
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    add-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_f

    .line 877
    :cond_3e
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_f

    .line 878
    :cond_52
    if-lez v0, :cond_59

    .line 880
    invoke-static {p0, p1, v0}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_f

    .line 882
    :cond_59
    neg-int v1, v0

    invoke-static {p1, p0, v1}, Ljava/math/BigDecimal;->addAndMult10(Ljava/math/BigDecimal;Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_f
.end method

.method public add(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 16
    .parameter "augend"
    .parameter "mc"

    .prologue
    .line 916
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v0, v7, v9

    .line 919
    .local v0, diffScale:J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v7

    if-nez v7, :cond_1a

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    if-nez v7, :cond_23

    .line 921
    :cond_1a
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    .line 950
    :goto_22
    return-object v7

    .line 924
    :cond_23
    invoke-direct {p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, 0x1

    sub-long v9, v0, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_45

    .line 925
    move-object v2, p1

    .line 926
    .local v2, larger:Ljava/math/BigDecimal;
    move-object v5, p0

    .line 933
    .local v5, smaller:Ljava/math/BigDecimal;
    :goto_32
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v7

    invoke-direct {v2}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v8

    if-lt v7, v8, :cond_5e

    .line 935
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_22

    .line 927
    .end local v2           #larger:Ljava/math/BigDecimal;
    .end local v5           #smaller:Ljava/math/BigDecimal;
    :cond_45
    invoke-direct {p1}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v7

    int-to-long v7, v7

    neg-long v9, v0

    const-wide/16 v11, 0x1

    sub-long/2addr v9, v11

    cmp-long v7, v7, v9

    if-gez v7, :cond_55

    .line 928
    move-object v2, p0

    .line 929
    .restart local v2       #larger:Ljava/math/BigDecimal;
    move-object v5, p1

    .restart local v5       #smaller:Ljava/math/BigDecimal;
    goto :goto_32

    .line 931
    .end local v2           #larger:Ljava/math/BigDecimal;
    .end local v5           #smaller:Ljava/math/BigDecimal;
    :cond_55
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_22

    .line 938
    .restart local v2       #larger:Ljava/math/BigDecimal;
    .restart local v5       #smaller:Ljava/math/BigDecimal;
    :cond_5e
    invoke-virtual {v2}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    .line 939
    .local v4, largerSignum:I
    invoke-virtual {v5}, Ljava/math/BigDecimal;->signum()I

    move-result v7

    if-ne v4, v7, :cond_89

    .line 940
    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    const/16 v8, 0xa

    invoke-static {v7, v8}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 949
    .local v6, tempBI:Ljava/math/BigInteger;
    :goto_7b
    new-instance v3, Ljava/math/BigDecimal;

    iget v7, v2, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 950
    .end local v2           #larger:Ljava/math/BigDecimal;
    .local v3, larger:Ljava/math/BigDecimal;
    invoke-virtual {v3, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v7

    goto :goto_22

    .line 943
    .end local v3           #larger:Ljava/math/BigDecimal;
    .end local v6           #tempBI:Ljava/math/BigInteger;
    .restart local v2       #larger:Ljava/math/BigDecimal;
    :cond_89
    invoke-direct {v2}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v7

    int-to-long v8, v4

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    .line 945
    .restart local v6       #tempBI:Ljava/math/BigInteger;
    const/16 v7, 0xa

    invoke-static {v6, v7}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v7

    mul-int/lit8 v8, v4, 0x9

    int-to-long v8, v8

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    goto :goto_7b
.end method

.method public byteValueExact()B
    .registers 3

    .prologue
    .line 2701
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 35
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/math/BigDecimal;)I
    .registers 13
    .parameter "val"

    .prologue
    .line 2274
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    .line 2275
    .local v3, thisSign:I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v6

    .line 2277
    .local v6, valueSign:I
    if-ne v3, v6, :cond_84

    .line 2278
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    iget v8, p1, Ljava/math/BigDecimal;->scale:I

    if-ne v7, v8, :cond_32

    iget v7, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_32

    iget v7, p1, Ljava/math/BigDecimal;->bitLength:I

    const/16 v8, 0x40

    if-ge v7, v8, :cond_32

    .line 2279
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-gez v7, :cond_26

    const/4 v7, -0x1

    .line 2301
    :goto_25
    return v7

    .line 2279
    :cond_26
    iget-wide v7, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v9, p1, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_30

    const/4 v7, 0x1

    goto :goto_25

    :cond_30
    const/4 v7, 0x0

    goto :goto_25

    .line 2281
    :cond_32
    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    iget v9, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v9, v9

    sub-long v1, v7, v9

    .line 2282
    .local v1, diffScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v7

    invoke-direct {p1}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v8

    sub-int v0, v7, v8

    .line 2283
    .local v0, diffPrecision:I
    int-to-long v7, v0

    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    cmp-long v7, v7, v9

    if-lez v7, :cond_4e

    move v7, v3

    .line 2284
    goto :goto_25

    .line 2285
    :cond_4e
    int-to-long v7, v0

    const-wide/16 v9, 0x1

    sub-long v9, v1, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_59

    .line 2286
    neg-int v7, v3

    goto :goto_25

    .line 2288
    :cond_59
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    .line 2289
    .local v4, thisUnscaled:Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2291
    .local v5, valUnscaled:Ljava/math/BigInteger;
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-gez v7, :cond_75

    .line 2292
    neg-long v7, v1

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    .line 2296
    :cond_70
    :goto_70
    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    goto :goto_25

    .line 2293
    :cond_75
    const-wide/16 v7, 0x0

    cmp-long v7, v1, v7

    if-lez v7, :cond_70

    .line 2294
    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    goto :goto_70

    .line 2298
    .end local v0           #diffPrecision:I
    .end local v1           #diffScale:J
    .end local v4           #thisUnscaled:Ljava/math/BigInteger;
    .end local v5           #valUnscaled:Ljava/math/BigInteger;
    :cond_84
    if-ge v3, v6, :cond_88

    .line 2299
    const/4 v7, -0x1

    goto :goto_25

    .line 2301
    :cond_88
    const/4 v7, 0x1

    goto :goto_25
.end method

.method public divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 18
    .parameter "divisor"

    .prologue
    .line 1325
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    .line 1326
    .local v9, p:Ljava/math/BigInteger;
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    .line 1329
    .local v10, q:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v12, v0

    int-to-long v12, v12

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v14, v0

    int-to-long v14, v14

    sub-long v1, v12, v14

    .line 1332
    .local v1, diffScale:J
    const/4 v6, 0x0

    .line 1333
    .local v6, l:I
    const/4 v4, 0x1

    .line 1334
    .local v4, i:I
    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    array-length v12, v12

    const/4 v13, 0x1

    sub-int v7, v12, v13

    .line 1336
    .local v7, lastPow:I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v12

    if-eqz v12, :cond_30

    .line 1338
    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "math.04"

    invoke-static {v13}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1340
    :cond_30
    invoke-virtual {v9}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_3b

    .line 1341
    invoke-static {v1, v2}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v12

    .line 1382
    :goto_3a
    return-object v12

    .line 1344
    :cond_3b
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1345
    .local v3, gcd:Ljava/math/BigInteger;
    invoke-virtual {v9, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 1346
    invoke-virtual {v10, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    .line 1348
    invoke-virtual {v10}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v5

    .line 1349
    .local v5, k:I
    invoke-virtual {v10, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v10

    .line 1352
    :goto_4f
    sget-object v12, Ljava/math/BigDecimal;->FIVE_POW:[Ljava/math/BigInteger;

    aget-object v12, v12, v4

    invoke-virtual {v10, v12}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v11

    .line 1353
    .local v11, quotAndRem:[Ljava/math/BigInteger;
    const/4 v12, 0x1

    aget-object v12, v11, v12

    invoke-virtual {v12}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-nez v12, :cond_69

    .line 1354
    add-int/2addr v6, v4

    .line 1355
    if-ge v4, v7, :cond_65

    .line 1356
    add-int/lit8 v4, v4, 0x1

    .line 1358
    :cond_65
    const/4 v12, 0x0

    aget-object v10, v11, v12

    goto :goto_4f

    .line 1360
    :cond_69
    const/4 v12, 0x1

    if-ne v4, v12, :cond_84

    .line 1367
    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v12

    sget-object v13, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v12, v13}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_86

    .line 1369
    new-instance v12, Ljava/lang/ArithmeticException;

    const-string v13, "math.05"

    invoke-static {v13}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1363
    :cond_84
    const/4 v4, 0x1

    .line 1365
    goto :goto_4f

    .line 1372
    :cond_86
    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v12

    if-gez v12, :cond_90

    .line 1373
    invoke-virtual {v9}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v9

    .line 1376
    :cond_90
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    int-to-long v12, v12

    add-long/2addr v12, v1

    invoke-static {v12, v13}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v8

    .line 1378
    .local v8, newScale:I
    sub-int v4, v5, v6

    .line 1380
    if-lez v4, :cond_a9

    invoke-static {v9, v4}, Ljava/math/Multiplication;->multiplyByFivePow(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v12

    move-object v9, v12

    .line 1382
    :goto_a3
    new-instance v12, Ljava/math/BigDecimal;

    invoke-direct {v12, v9, v8}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_3a

    .line 1380
    :cond_a9
    neg-int v12, v4

    invoke-virtual {v9, v12}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v12

    move-object v9, v12

    goto :goto_a3
.end method

.method public divide(Ljava/math/BigDecimal;I)Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"
    .parameter "roundingMode"

    .prologue
    .line 1278
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    .line 1125
    invoke-static {p3}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 16
    .parameter "divisor"
    .parameter "scale"
    .parameter "roundingMode"

    .prologue
    const-wide/16 v10, 0x0

    const/16 v4, 0x40

    .line 1154
    if-nez p3, :cond_c

    .line 1155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1157
    :cond_c
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 1159
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "math.04"

    invoke-static {v1}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1162
    :cond_1e
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    int-to-long v2, p2

    sub-long v6, v0, v2

    .line 1163
    .local v6, diffScale:J
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_8c

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_8c

    .line 1164
    cmp-long v0, v6, v10

    if-nez v0, :cond_3f

    .line 1165
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1198
    :goto_3e
    return-object v0

    .line 1169
    :cond_3f
    cmp-long v0, v6, v10

    if-lez v0, :cond_66

    .line 1170
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_8c

    iget v0, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_8c

    .line 1172
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v4, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    long-to-int v5, v6

    aget-wide v4, v4, v5

    mul-long/2addr v2, v4

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3e

    .line 1178
    :cond_66
    neg-long v0, v6

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_8c

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    neg-long v2, v6

    long-to-int v2, v2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_8c

    .line 1180
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    iget-wide v2, p1, Ljava/math/BigDecimal;->smallValue:J

    move v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3e

    .line 1188
    :cond_8c
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v8

    .line 1189
    .local v8, scaledDividend:Ljava/math/BigInteger;
    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v9

    .line 1191
    .local v9, scaledDivisor:Ljava/math/BigInteger;
    cmp-long v0, v6, v10

    if-lez v0, :cond_a3

    .line 1193
    long-to-int v0, v6

    int-to-long v0, v0

    invoke-static {v9, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v9

    .line 1198
    :cond_9e
    :goto_9e
    invoke-static {v8, v9, p2, p3}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_3e

    .line 1194
    :cond_a3
    cmp-long v0, v6, v10

    if-gez v0, :cond_9e

    .line 1196
    neg-long v0, v6

    long-to-int v0, v0

    int-to-long v0, v0

    invoke-static {v8, v0, v1}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v8

    goto :goto_9e
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 22
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1408
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v15

    int-to-long v15, v15

    const-wide/16 v17, 0x2

    add-long v15, v15, v17

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    add-long v15, v15, v17

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v17

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v13, v15, v17

    .line 1410
    .local v13, traillingZeros:J
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v15, v0

    int-to-long v15, v15

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    sub-long v5, v15, v17

    .line 1411
    .local v5, diffScale:J
    move-wide v10, v5

    .line 1413
    .local v10, newScale:J
    const/4 v7, 0x1

    .line 1414
    .local v7, i:I
    sget-object v15, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v15, v15

    const/16 v16, 0x1

    sub-int v9, v15, v16

    .line 1416
    .local v9, lastPow:I
    const/4 v15, 0x1

    new-array v12, v15, [Ljava/math/BigInteger;

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    aput-object v16, v12, v15

    .line 1418
    .local v12, quotAndRem:[Ljava/math/BigInteger;
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v15

    if-eqz v15, :cond_57

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v15

    if-nez v15, :cond_57

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v15

    if-eqz v15, :cond_5c

    .line 1420
    :cond_57
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v15

    .line 1457
    :goto_5b
    return-object v15

    .line 1422
    :cond_5c
    const-wide/16 v15, 0x0

    cmp-long v15, v13, v15

    if-lez v15, :cond_72

    .line 1424
    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-static {v13, v14}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v16

    aput-object v16, v12, v15

    .line 1425
    add-long/2addr v10, v13

    .line 1427
    :cond_72
    const/4 v15, 0x0

    aget-object v15, v12, v15

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v12

    .line 1428
    const/4 v15, 0x0

    aget-object v8, v12, v15

    .line 1430
    .local v8, integerQuot:Ljava/math/BigInteger;
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->signum()I

    move-result v15

    if-eqz v15, :cond_cc

    .line 1432
    const/4 v15, 0x1

    aget-object v15, v12, v15

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 1434
    .local v4, compRem:I
    sget-object v15, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v16, v12, v16

    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->signum()I

    move-result v16

    add-int/lit8 v17, v4, 0x5

    mul-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 1436
    const-wide/16 v15, 0x1

    add-long/2addr v10, v15

    .line 1457
    .end local v4           #compRem:I
    :cond_bc
    new-instance v15, Ljava/math/BigDecimal;

    invoke-static {v10, v11}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v16

    move-object v0, v15

    move-object v1, v8

    move/from16 v2, v16

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;ILjava/math/MathContext;)V

    goto :goto_5b

    .line 1439
    :cond_cc
    :goto_cc
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v15

    if-nez v15, :cond_bc

    .line 1440
    sget-object v15, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v15, v15, v7

    invoke-virtual {v8, v15}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v12

    .line 1441
    const/4 v15, 0x1

    aget-object v15, v12, v15

    invoke-virtual {v15}, Ljava/math/BigInteger;->signum()I

    move-result v15

    if-nez v15, :cond_f5

    int-to-long v15, v7

    sub-long v15, v10, v15

    cmp-long v15, v15, v5

    if-ltz v15, :cond_f5

    .line 1443
    int-to-long v15, v7

    sub-long/2addr v10, v15

    .line 1444
    if-ge v7, v9, :cond_f1

    .line 1445
    add-int/lit8 v7, v7, 0x1

    .line 1447
    :cond_f1
    const/4 v15, 0x0

    aget-object v8, v12, v15

    goto :goto_cc

    .line 1449
    :cond_f5
    const/4 v15, 0x1

    if-eq v7, v15, :cond_bc

    .line 1452
    const/4 v7, 0x1

    goto :goto_cc
.end method

.method public divide(Ljava/math/BigDecimal;Ljava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "divisor"
    .parameter "roundingMode"

    .prologue
    .line 1303
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-virtual {p0, p1, v0, p2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"

    .prologue
    const/4 v2, 0x0

    .line 1703
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1705
    .local v0, quotAndRem:[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1706
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1707
    return-object v0
.end method

.method public divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;
    .registers 6
    .parameter "divisor"
    .parameter "mc"

    .prologue
    const/4 v2, 0x0

    .line 1734
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/math/BigDecimal;

    .line 1736
    .local v0, quotAndRem:[Ljava/math/BigDecimal;
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v1

    aput-object v1, v0, v2

    .line 1737
    const/4 v1, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v2, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1738
    return-object v0
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 18
    .parameter "divisor"

    .prologue
    .line 1477
    const/4 v10, 0x1

    new-array v7, v10, [Ljava/math/BigInteger;

    const/4 v10, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    aput-object v11, v7, v10

    .line 1478
    .local v7, quotAndRem:[Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v10, v0

    int-to-long v10, v10

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move v12, v0

    int-to-long v12, v12

    sub-long v4, v10, v12

    .line 1479
    .local v4, newScale:J
    const-wide/16 v8, 0x0

    .line 1480
    .local v8, tempScale:J
    const/4 v1, 0x1

    .line 1481
    .local v1, i:I
    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v10, v10

    const/4 v11, 0x1

    sub-int v3, v10, v11

    .line 1483
    .local v3, lastPow:I
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_33

    .line 1485
    new-instance v10, Ljava/lang/ArithmeticException;

    const-string v11, "math.04"

    invoke-static {v11}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1487
    :cond_33
    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v10, v4

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v12

    int-to-long v12, v12

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    cmp-long v10, v10, v12

    if-gtz v10, :cond_4b

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v10

    if-eqz v10, :cond_58

    .line 1491
    :cond_4b
    sget-object v2, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    .line 1520
    .local v2, integralValue:Ljava/math/BigInteger;
    :goto_4d
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_cf

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v10

    :goto_57
    return-object v10

    .line 1492
    .end local v2           #integralValue:Ljava/math/BigInteger;
    :cond_58
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-nez v10, :cond_6b

    .line 1493
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .restart local v2       #integralValue:Ljava/math/BigInteger;
    goto :goto_4d

    .line 1494
    .end local v2           #integralValue:Ljava/math/BigInteger;
    :cond_6b
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_8a

    .line 1495
    invoke-static {v4, v5}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 1496
    .local v6, powerOfTen:Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1497
    .restart local v2       #integralValue:Ljava/math/BigInteger;
    invoke-virtual {v2, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    goto :goto_4d

    .line 1499
    .end local v2           #integralValue:Ljava/math/BigInteger;
    .end local v6           #powerOfTen:Ljava/math/BigInteger;
    :cond_8a
    neg-long v10, v4

    invoke-static {v10, v11}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v6

    .line 1500
    .restart local v6       #powerOfTen:Ljava/math/BigInteger;
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v10

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 1502
    .restart local v2       #integralValue:Ljava/math/BigInteger;
    :goto_9f
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v10

    if-nez v10, :cond_cb

    .line 1503
    sget-object v10, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v10, v10, v1

    invoke-virtual {v2, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v7

    .line 1504
    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_c8

    int-to-long v10, v1

    sub-long v10, v8, v10

    cmp-long v10, v10, v4

    if-ltz v10, :cond_c8

    .line 1506
    int-to-long v10, v1

    sub-long/2addr v8, v10

    .line 1507
    if-ge v1, v3, :cond_c4

    .line 1508
    add-int/lit8 v1, v1, 0x1

    .line 1510
    :cond_c4
    const/4 v10, 0x0

    aget-object v2, v7, v10

    goto :goto_9f

    .line 1512
    :cond_c8
    const/4 v10, 0x1

    if-ne v1, v10, :cond_cd

    .line 1518
    :cond_cb
    move-wide v4, v8

    goto :goto_4d

    .line 1515
    :cond_cd
    const/4 v1, 0x1

    goto :goto_9f

    .line 1520
    .end local v6           #powerOfTen:Ljava/math/BigInteger;
    :cond_cf
    new-instance v10, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v11

    invoke-direct {v10, v2, v11}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_57
.end method

.method public divideToIntegralValue(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 32
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1548
    invoke-virtual/range {p2 .. p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v14

    .line 1549
    .local v14, mcPrecision:I
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v24

    sub-int v6, v23, v24

    .line 1550
    .local v6, diffPrecision:I
    sget-object v23, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v13, v23, v24

    .line 1551
    .local v13, lastPow:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    move-object/from16 v0, p1

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v7, v23, v25

    .line 1552
    .local v7, diffScale:J
    move-wide v15, v7

    .line 1553
    .local v15, newScale:J
    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v23, v7

    const-wide/16 v25, 0x1

    add-long v18, v23, v25

    .line 1554
    .local v18, quotPrecision:J
    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/math/BigInteger;

    move-object/from16 v17, v0

    .line 1556
    .local v17, quotAndRem:[Ljava/math/BigInteger;
    if-eqz v14, :cond_52

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v23

    if-nez v23, :cond_52

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v23

    if-eqz v23, :cond_57

    .line 1557
    :cond_52
    invoke-virtual/range {p0 .. p1}, Ljava/math/BigDecimal;->divideToIntegralValue(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v23

    .line 1635
    :goto_56
    return-object v23

    .line 1560
    :cond_57
    const-wide/16 v23, 0x0

    cmp-long v23, v18, v23

    if-gtz v23, :cond_72

    .line 1561
    const/16 v23, 0x0

    sget-object v24, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    aput-object v24, v17, v23

    .line 1602
    :cond_63
    :goto_63
    const/16 v23, 0x0

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    if-nez v23, :cond_16c

    .line 1603
    invoke-static {v7, v8}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v23

    goto :goto_56

    .line 1562
    :cond_72
    const-wide/16 v23, 0x0

    cmp-long v23, v7, v23

    if-nez v23, :cond_89

    .line 1564
    const/16 v23, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    goto :goto_63

    .line 1565
    :cond_89
    const-wide/16 v23, 0x0

    cmp-long v23, v7, v23

    if-lez v23, :cond_cf

    .line 1567
    const/16 v23, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v25

    invoke-static {v7, v8}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    .line 1570
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v23, v18

    const-wide/16 v25, 0x1

    add-long v23, v23, v25

    const-wide/16 v25, 0x0

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v23

    move-wide v0, v7

    move-wide/from16 v2, v23

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v15

    .line 1572
    const/16 v23, 0x0

    const/16 v24, 0x0

    aget-object v24, v17, v24

    invoke-static/range {v15 .. v16}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    goto :goto_63

    .line 1576
    :cond_cf
    move-wide v0, v7

    neg-long v0, v0

    move-wide/from16 v23, v0

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v25, v0

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v27, v0

    sub-long v25, v25, v27

    const-wide/16 v27, 0x0

    invoke-static/range {v25 .. v28}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v25

    invoke-static/range {v23 .. v26}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    .line 1579
    .local v9, exp:J
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-static {v9, v10}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v23

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v17

    .line 1581
    add-long/2addr v15, v9

    .line 1582
    neg-long v9, v15

    .line 1584
    const/16 v23, 0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    if-eqz v23, :cond_63

    const-wide/16 v23, 0x0

    cmp-long v23, v9, v23

    if-lez v23, :cond_63

    .line 1586
    new-instance v23, Ljava/math/BigDecimal;

    const/16 v24, 0x1

    aget-object v24, v17, v24

    invoke-direct/range {v23 .. v24}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v23, v23, v9

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigDecimal;->precision()I

    move-result v25

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v25, v0

    sub-long v4, v23, v25

    .line 1588
    .local v4, compRemDiv:J
    const-wide/16 v23, 0x0

    cmp-long v23, v4, v23

    if-nez v23, :cond_15a

    .line 1590
    const/16 v23, 0x1

    const/16 v24, 0x1

    aget-object v24, v17, v24

    invoke-static {v9, v10}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    invoke-direct/range {p1 .. p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v24

    aput-object v24, v17, v23

    .line 1592
    const/16 v23, 0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(I)I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide v4, v0

    .line 1594
    :cond_15a
    const-wide/16 v23, 0x0

    cmp-long v23, v4, v23

    if-lez v23, :cond_63

    .line 1597
    new-instance v23, Ljava/lang/ArithmeticException;

    const-string v24, "math.06"

    invoke-static/range {v24 .. v24}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1605
    .end local v4           #compRemDiv:J
    .end local v9           #exp:J
    :cond_16c
    const/16 v23, 0x0

    aget-object v22, v17, v23

    .line 1606
    .local v22, strippedBI:Ljava/math/BigInteger;
    new-instance v12, Ljava/math/BigDecimal;

    const/16 v23, 0x0

    aget-object v23, v17, v23

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    .line 1607
    .local v12, integralValue:Ljava/math/BigDecimal;
    invoke-virtual {v12}, Ljava/math/BigDecimal;->precision()I

    move-result v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v20, v0

    .line 1608
    .local v20, resultPrecision:J
    const/4 v11, 0x1

    .line 1610
    .local v11, i:I
    :goto_186
    const/16 v23, 0x0

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v23

    if-nez v23, :cond_1d4

    .line 1611
    sget-object v23, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v23, v23, v11

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v17

    .line 1612
    const/16 v23, 0x1

    aget-object v23, v17, v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->signum()I

    move-result v23

    if-nez v23, :cond_1cd

    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v20, v23

    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v25, v0

    cmp-long v23, v23, v25

    if-gez v23, :cond_1b8

    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v23, v15, v23

    cmp-long v23, v23, v7

    if-ltz v23, :cond_1cd

    .line 1615
    :cond_1b8
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v20, v20, v23

    .line 1616
    move v0, v11

    int-to-long v0, v0

    move-wide/from16 v23, v0

    sub-long v15, v15, v23

    .line 1617
    if-ge v11, v13, :cond_1c8

    .line 1618
    add-int/lit8 v11, v11, 0x1

    .line 1620
    :cond_1c8
    const/16 v23, 0x0

    aget-object v22, v17, v23

    goto :goto_186

    .line 1622
    :cond_1cd
    const/16 v23, 0x1

    move v0, v11

    move/from16 v1, v23

    if-ne v0, v1, :cond_1e8

    .line 1629
    :cond_1d4
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v23, v0

    cmp-long v23, v20, v23

    if-lez v23, :cond_1ea

    .line 1631
    new-instance v23, Ljava/lang/ArithmeticException;

    const-string v24, "math.06"

    invoke-static/range {v24 .. v24}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 1625
    :cond_1e8
    const/4 v11, 0x1

    goto :goto_186

    .line 1633
    :cond_1ea
    invoke-static/range {v15 .. v16}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v23

    move/from16 v0, v23

    move-object v1, v12

    iput v0, v1, Ljava/math/BigDecimal;->scale:I

    .line 1634
    move-object v0, v12

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;->setUnscaledValue(Ljava/math/BigInteger;)V

    move-object/from16 v23, v12

    .line 1635
    goto/16 :goto_56
.end method

.method public doubleValue()D
    .registers 24

    .prologue
    .line 2763
    invoke-virtual/range {p0 .. p0}, Ljava/math/BigDecimal;->signum()I

    move-result v14

    .line 2764
    .local v14, sign:I
    const/16 v6, 0x434

    .line 2767
    .local v6, exponent:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->bitLength:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fd34413509f79ffL

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-long v0, v0

    move-wide/from16 v19, v0

    sub-long v11, v17, v19

    .line 2772
    .local v11, powerOfTwo:J
    const-wide/16 v17, -0x432

    cmp-long v17, v11, v17

    if-ltz v17, :cond_32

    if-nez v14, :cond_3b

    .line 2774
    :cond_32
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    .line 2859
    :goto_3a
    return-wide v17

    .line 2775
    :cond_3b
    const-wide/16 v17, 0x401

    cmp-long v17, v11, v17

    if-lez v17, :cond_4a

    .line 2777
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto :goto_3a

    .line 2779
    :cond_4a
    invoke-direct/range {p0 .. p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v9

    .line 2781
    .local v9, mantisa:Ljava/math/BigInteger;
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    if-gtz v17, :cond_c6

    .line 2783
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v17

    move-object v0, v9

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2805
    :goto_75
    invoke-virtual {v9}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v8

    .line 2806
    .local v8, lowestSetBit:I
    invoke-virtual {v9}, Ljava/math/BigInteger;->bitLength()I

    move-result v17

    const/16 v18, 0x36

    sub-int v5, v17, v18

    .line 2807
    .local v5, discardedSize:I
    if-lez v5, :cond_11c

    .line 2809
    invoke-virtual {v9, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    .line 2810
    .local v2, bits:J
    move-wide v15, v2

    .line 2812
    .local v15, tempBits:J
    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_98

    if-lt v8, v5, :cond_a2

    :cond_98
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_a6

    .line 2814
    :cond_a2
    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    .line 2826
    :cond_a6
    :goto_a6
    const-wide/high16 v17, 0x40

    and-long v17, v17, v2

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-nez v17, :cond_137

    .line 2828
    const/16 v17, 0x1

    shr-long v2, v2, v17

    .line 2830
    add-int/2addr v6, v5

    .line 2836
    :goto_b5
    const/16 v17, 0x7fe

    move v0, v6

    move/from16 v1, v17

    if-le v0, v1, :cond_141

    .line 2837
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x7ff0

    mul-double v17, v17, v19

    goto/16 :goto_3a

    .line 2786
    .end local v2           #bits:J
    .end local v5           #discardedSize:I
    .end local v8           #lowestSetBit:I
    .end local v15           #tempBits:J
    :cond_c6
    move-object/from16 v0, p0

    iget v0, v0, Ljava/math/BigDecimal;->scale:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v17, v0

    invoke-static/range {v17 .. v18}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v10

    .line 2787
    .local v10, powerOfTen:Ljava/math/BigInteger;
    const/16 v17, 0x64

    move-wide v0, v11

    long-to-int v0, v0

    move/from16 v18, v0

    sub-int v7, v17, v18

    .line 2790
    .local v7, k:I
    if-lez v7, :cond_e4

    .line 2793
    invoke-virtual {v9, v7}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v9

    .line 2794
    sub-int/2addr v6, v7

    .line 2797
    :cond_e4
    invoke-virtual {v9, v10}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v13

    .line 2799
    .local v13, quotAndRem:[Ljava/math/BigInteger;
    const/16 v17, 0x1

    aget-object v17, v13, v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    .line 2801
    .local v4, compRem:I
    const/16 v17, 0x0

    aget-object v17, v13, v17

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v17

    add-int/lit8 v18, v4, 0x3

    mul-int v18, v18, v4

    div-int/lit8 v18, v18, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v18 .. v19}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 2803
    add-int/lit8 v6, v6, -0x2

    goto/16 :goto_75

    .line 2818
    .end local v4           #compRem:I
    .end local v7           #k:I
    .end local v10           #powerOfTen:Ljava/math/BigInteger;
    .end local v13           #quotAndRem:[Ljava/math/BigInteger;
    .restart local v5       #discardedSize:I
    .restart local v8       #lowestSetBit:I
    :cond_11c
    invoke-virtual {v9}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v17

    move v0, v5

    neg-int v0, v0

    move/from16 v19, v0

    shl-long v2, v17, v19

    .line 2819
    .restart local v2       #bits:J
    move-wide v15, v2

    .line 2821
    .restart local v15       #tempBits:J
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-nez v17, :cond_a6

    .line 2822
    const-wide/16 v17, 0x2

    add-long v2, v2, v17

    goto/16 :goto_a6

    .line 2832
    :cond_137
    const/16 v17, 0x2

    shr-long v2, v2, v17

    .line 2833
    add-int/lit8 v17, v5, 0x1

    add-int v6, v6, v17

    goto/16 :goto_b5

    .line 2838
    :cond_141
    if-gtz v6, :cond_18b

    .line 2840
    const/16 v17, -0x35

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_154

    .line 2841
    move v0, v14

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    mul-double v17, v17, v19

    goto/16 :goto_3a

    .line 2845
    :cond_154
    const/16 v17, 0x1

    shr-long v2, v15, v17

    .line 2846
    const-wide/16 v17, -0x1

    add-int/lit8 v19, v6, 0x3f

    ushr-long v17, v17, v19

    and-long v15, v2, v17

    .line 2847
    move v0, v6

    neg-int v0, v0

    move/from16 v17, v0

    shr-long v2, v2, v17

    .line 2849
    const-wide/16 v17, 0x3

    and-long v17, v17, v2

    const-wide/16 v19, 0x3

    cmp-long v17, v17, v19

    if-eqz v17, :cond_182

    const-wide/16 v17, 0x1

    and-long v17, v17, v2

    const-wide/16 v19, 0x1

    cmp-long v17, v17, v19

    if-nez v17, :cond_186

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-eqz v17, :cond_186

    if-ge v8, v5, :cond_186

    .line 2851
    :cond_182
    const-wide/16 v17, 0x1

    add-long v2, v2, v17

    .line 2853
    :cond_186
    const/4 v6, 0x0

    .line 2854
    const/16 v17, 0x1

    shr-long v2, v2, v17

    .line 2857
    :cond_18b
    move v0, v14

    int-to-long v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, -0x8000

    and-long v17, v17, v19

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v19, v0

    const/16 v21, 0x34

    shl-long v19, v19, v21

    or-long v17, v17, v19

    const-wide v19, 0xfffffffffffffL

    and-long v19, v19, v2

    or-long v2, v17, v19

    .line 2859
    invoke-static {v2, v3}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    goto/16 :goto_3a
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "x"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2319
    if-ne p0, p1, :cond_6

    move v2, v7

    .line 2330
    :goto_5
    return v2

    .line 2322
    :cond_6
    instance-of v2, p1, Ljava/math/BigDecimal;

    if-eqz v2, :cond_30

    .line 2323
    move-object v0, p1

    check-cast v0, Ljava/math/BigDecimal;

    move-object v1, v0

    .line 2324
    .local v1, x1:Ljava/math/BigDecimal;
    iget v2, v1, Ljava/math/BigDecimal;->scale:I

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    if-ne v2, v3, :cond_2e

    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_24

    iget-wide v2, v1, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p0, Ljava/math/BigDecimal;->smallValue:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2e

    :cond_22
    move v2, v7

    goto :goto_5

    :cond_24
    iget-object v2, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    iget-object v3, v1, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    :cond_2e
    move v2, v6

    goto :goto_5

    .end local v1           #x1:Ljava/math/BigDecimal;
    :cond_30
    move v2, v6

    .line 2330
    goto :goto_5
.end method

.method public floatValue()F
    .registers 11

    .prologue
    const/4 v9, 0x0

    .line 2727
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v3

    int-to-float v0, v3

    .line 2728
    .local v0, floatResult:F
    iget v3, p0, Ljava/math/BigDecimal;->bitLength:I

    int-to-long v3, v3

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    int-to-double v5, v5

    const-wide v7, 0x3fd34413509f79ffL

    div-double/2addr v5, v7

    double-to-long v5, v5

    sub-long v1, v3, v5

    .line 2729
    .local v1, powerOfTwo:J
    const-wide/16 v3, -0x95

    cmp-long v3, v1, v3

    if-ltz v3, :cond_1f

    cmpl-float v3, v0, v9

    if-nez v3, :cond_21

    .line 2731
    :cond_1f
    mul-float/2addr v0, v9

    .line 2738
    :goto_20
    return v0

    .line 2732
    :cond_21
    const-wide/16 v3, 0x81

    cmp-long v3, v1, v3

    if-lez v3, :cond_2b

    .line 2734
    const/high16 v3, 0x7f80

    mul-float/2addr v0, v3

    goto :goto_20

    .line 2736
    :cond_2b
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v3

    double-to-float v0, v3

    goto :goto_20
.end method

.method public hashCode()I
    .registers 7

    .prologue
    const-wide/16 v4, -0x1

    .line 2369
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    if-eqz v0, :cond_9

    .line 2370
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2379
    :goto_8
    return v0

    .line 2372
    :cond_9
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_2f

    .line 2373
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    and-long/2addr v0, v4

    long-to-int v0, v0

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2374
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x21

    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    const/16 v3, 0x20

    shr-long/2addr v1, v3

    and-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2375
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2376
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_8

    .line 2378
    :cond_2f
    iget-object v0, p0, Ljava/math/BigDecimal;->intVal:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    add-int/2addr v0, v1

    iput v0, p0, Ljava/math/BigDecimal;->hashCode:I

    .line 2379
    iget v0, p0, Ljava/math/BigDecimal;->hashCode:I

    goto :goto_8
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 2656
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x20

    if-le v0, v1, :cond_e

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v1

    if-le v0, v1, :cond_10

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0

    :cond_10
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    goto :goto_f
.end method

.method public intValueExact()I
    .registers 3

    .prologue
    .line 2672
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 2623
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    const/16 v1, -0x40

    if-le v0, v1, :cond_e

    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v1

    if-le v0, v1, :cond_11

    :cond_e
    const-wide/16 v0, 0x0

    :goto_10
    return-wide v0

    :cond_11
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    goto :goto_10
.end method

.method public longValueExact()J
    .registers 3

    .prologue
    .line 2638
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public max(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "val"

    .prologue
    .line 2358
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-ltz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    move-object v0, p1

    goto :goto_7
.end method

.method public min(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "val"

    .prologue
    .line 2344
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v0

    if-gtz v0, :cond_8

    move-object v0, p0

    :goto_7
    return-object v0

    :cond_8
    move-object v0, p1

    goto :goto_7
.end method

.method public movePointLeft(I)Ljava/math/BigDecimal;
    .registers 6
    .parameter "n"

    .prologue
    .line 2138
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public movePointRight(I)Ljava/math/BigDecimal;
    .registers 6
    .parameter "n"

    .prologue
    .line 2180
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v0, v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Ljava/math/BigDecimal;->movePoint(J)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 8
    .parameter "multiplicand"

    .prologue
    .line 1064
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    iget v4, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v4, v4

    add-long v0, v2, v4

    .line 1066
    .local v0, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-nez v2, :cond_14

    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 1067
    :cond_14
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 1074
    :goto_18
    return-object v2

    .line 1071
    :cond_19
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v3, p1, Ljava/math/BigDecimal;->bitLength:I

    add-int/2addr v2, v3

    const/16 v3, 0x40

    if-ge v2, v3, :cond_30

    .line 1072
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v4, p1, Ljava/math/BigDecimal;->smallValue:J

    mul-long/2addr v2, v4

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_18

    .line 1074
    :cond_30
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_18
.end method

.method public multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "multiplicand"
    .parameter "mc"

    .prologue
    .line 1093
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1095
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1096
    return-object v0
.end method

.method public negate()Ljava/math/BigDecimal;
    .registers 5

    .prologue
    const/16 v1, 0x3f

    .line 1867
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-lt v0, v1, :cond_12

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ne v0, v1, :cond_1c

    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/high16 v2, -0x8000

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 1868
    :cond_12
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    neg-long v0, v0

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1870
    :goto_1b
    return-object v0

    :cond_1c
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_1b
.end method

.method public negate(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "mc"

    .prologue
    .line 1884
    invoke-virtual {p0}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v0

    .line 1885
    .local v0, result:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 1886
    return-object v0
.end method

.method public plus()Ljava/math/BigDecimal;
    .registers 1

    .prologue
    .line 1898
    return-object p0
.end method

.method public plus(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 3
    .parameter "mc"

    .prologue
    .line 1911
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public pow(I)Ljava/math/BigDecimal;
    .registers 8
    .parameter "n"

    .prologue
    .line 1758
    if-nez p1, :cond_5

    .line 1759
    sget-object v2, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    .line 1767
    :goto_4
    return-object v2

    .line 1761
    :cond_5
    if-ltz p1, :cond_c

    const v2, 0x3b9ac9ff

    if-le p1, v2, :cond_18

    .line 1763
    :cond_c
    new-instance v2, Ljava/lang/ArithmeticException;

    const-string v3, "math.07"

    invoke-static {v3}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1765
    :cond_18
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    mul-long v0, v2, v4

    .line 1767
    .local v0, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_4

    :cond_29
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_4
.end method

.method public pow(ILjava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 11
    .parameter "n"
    .parameter "mc"

    .prologue
    .line 1790
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    .line 1791
    .local v2, m:I
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v3

    .line 1792
    .local v3, mcPrecision:I
    int-to-double v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    double-to-int v6, v6

    add-int/lit8 v1, v6, 0x1

    .line 1795
    .local v1, elength:I
    move-object v4, p2

    .line 1798
    .local v4, newPrecision:Ljava/math/MathContext;
    if-eqz p1, :cond_1b

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_20

    if-lez p1, :cond_20

    .line 1799
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->pow(I)Ljava/math/BigDecimal;

    move-result-object v6

    .line 1827
    :goto_1f
    return-object v6

    .line 1801
    :cond_20
    const v6, 0x3b9ac9ff

    if-gt v2, v6, :cond_2d

    if-nez v3, :cond_29

    if-ltz p1, :cond_2d

    :cond_29
    if-lez v3, :cond_39

    if-le v1, v3, :cond_39

    .line 1804
    :cond_2d
    new-instance v6, Ljava/lang/ArithmeticException;

    const-string v7, "math.07"

    invoke-static {v7}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1806
    :cond_39
    if-lez v3, :cond_48

    .line 1807
    new-instance v4, Ljava/math/MathContext;

    .end local v4           #newPrecision:Ljava/math/MathContext;
    add-int v6, v3, v1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p2}, Ljava/math/MathContext;->getRoundingMode()Ljava/math/RoundingMode;

    move-result-object v7

    invoke-direct {v4, v6, v7}, Ljava/math/MathContext;-><init>(ILjava/math/RoundingMode;)V

    .line 1811
    .restart local v4       #newPrecision:Ljava/math/MathContext;
    :cond_48
    invoke-virtual {p0, v4}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1812
    .local v0, accum:Ljava/math/BigDecimal;
    invoke-static {v2}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v6

    shr-int/lit8 v5, v6, 0x1

    .line 1814
    .local v5, oneBitMask:I
    :goto_52
    if-lez v5, :cond_63

    .line 1815
    invoke-virtual {v0, v0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1816
    and-int v6, v2, v5

    if-ne v6, v5, :cond_60

    .line 1817
    invoke-virtual {v0, p0, v4}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1819
    :cond_60
    shr-int/lit8 v5, v5, 0x1

    goto :goto_52

    .line 1822
    :cond_63
    if-gez p1, :cond_6b

    .line 1823
    sget-object v6, Ljava/math/BigDecimal;->ONE:Ljava/math/BigDecimal;

    invoke-virtual {v6, v0, v4}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v0

    .line 1826
    :cond_6b
    invoke-direct {v0, p2}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    move-object v6, v0

    .line 1827
    goto :goto_1f
.end method

.method public precision()I
    .registers 11

    .prologue
    const/4 v6, 0x1

    .line 1958
    iget v4, p0, Ljava/math/BigDecimal;->precision:I

    if-lez v4, :cond_8

    .line 1959
    iget v4, p0, Ljava/math/BigDecimal;->precision:I

    .line 1983
    :goto_7
    return v4

    .line 1961
    :cond_8
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    .line 1962
    .local v0, bitLength:I
    const/4 v1, 0x1

    .line 1963
    .local v1, decimalDigits:I
    const-wide/high16 v2, 0x3ff0

    .line 1965
    .local v2, doubleUnsc:D
    const/16 v4, 0x400

    if-ge v0, v4, :cond_33

    .line 1967
    const/16 v4, 0x40

    if-lt v0, v4, :cond_2d

    .line 1968
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    .line 1972
    :cond_1d
    :goto_1d
    int-to-double v4, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->log10(D)D

    move-result-wide v6

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 1982
    :cond_28
    :goto_28
    iput v1, p0, Ljava/math/BigDecimal;->precision:I

    .line 1983
    iget v4, p0, Ljava/math/BigDecimal;->precision:I

    goto :goto_7

    .line 1969
    :cond_2d
    if-lt v0, v6, :cond_1d

    .line 1970
    iget-wide v4, p0, Ljava/math/BigDecimal;->smallValue:J

    long-to-double v2, v4

    goto :goto_1d

    .line 1976
    :cond_33
    int-to-double v4, v1

    sub-int v6, v0, v6

    int-to-double v6, v6

    const-wide v8, 0x3fd34413509f79ffL

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v1, v4

    .line 1978
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->signum()I

    move-result v4

    if-eqz v4, :cond_28

    .line 1979
    add-int/lit8 v1, v1, 0x1

    goto :goto_28
.end method

.method public remainder(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 4
    .parameter "divisor"

    .prologue
    .line 1654
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public remainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .parameter "divisor"
    .parameter "mc"

    .prologue
    .line 1681
    invoke-virtual {p0, p1, p2}, Ljava/math/BigDecimal;->divideAndRemainder(Ljava/math/BigDecimal;Ljava/math/MathContext;)[Ljava/math/BigDecimal;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public round(Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 5
    .parameter "mc"

    .prologue
    .line 2018
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 2020
    .local v0, thisBD:Ljava/math/BigDecimal;
    invoke-direct {v0, p1}, Ljava/math/BigDecimal;->inplaceRound(Ljava/math/MathContext;)V

    .line 2021
    return-object v0
.end method

.method public scale()I
    .registers 2

    .prologue
    .line 1944
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    return v0
.end method

.method public scaleByPowerOfTen(I)Ljava/math/BigDecimal;
    .registers 8
    .parameter "n"

    .prologue
    .line 2197
    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    int-to-long v4, p1

    sub-long v0, v2, v4

    .line 2198
    .local v0, newScale:J
    iget v2, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v3, 0x40

    if-ge v2, v3, :cond_24

    .line 2200
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_19

    .line 2201
    invoke-static {v0, v1}, Ljava/math/BigDecimal;->zeroScaledBy(J)Ljava/math/BigDecimal;

    move-result-object v2

    .line 2205
    :goto_18
    return-object v2

    .line 2203
    :cond_19
    iget-wide v2, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v4

    invoke-static {v2, v3, v4}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v2

    goto :goto_18

    .line 2205
    :cond_24
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_18
.end method

.method public setScale(I)Ljava/math/BigDecimal;
    .registers 3
    .parameter "newScale"

    .prologue
    .line 2117
    sget-object v0, Ljava/math/RoundingMode;->UNNECESSARY:Ljava/math/RoundingMode;

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(II)Ljava/math/BigDecimal;
    .registers 4
    .parameter "newScale"
    .parameter "roundingMode"

    .prologue
    .line 2096
    invoke-static {p2}, Ljava/math/RoundingMode;->valueOf(I)Ljava/math/RoundingMode;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;
    .registers 13
    .parameter "newScale"
    .parameter "roundingMode"

    .prologue
    const-wide/16 v8, 0x0

    const/16 v4, 0x40

    .line 2048
    if-nez p2, :cond_c

    .line 2049
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2051
    :cond_c
    int-to-long v0, p1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    sub-long v6, v0, v2

    .line 2053
    .local v6, diffScale:J
    cmp-long v0, v6, v8

    if-nez v0, :cond_18

    move-object v0, p0

    .line 2069
    :goto_17
    return-object v0

    .line 2056
    :cond_18
    cmp-long v0, v6, v8

    if-lez v0, :cond_4b

    .line 2058
    sget-object v0, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v6, v0

    if-gez v0, :cond_3b

    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    long-to-int v2, v6

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-ge v0, v4, :cond_3b

    .line 2060
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    long-to-int v3, v6

    aget-wide v2, v2, v3

    mul-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_17

    .line 2062
    :cond_3b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    long-to-int v2, v6

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_17

    .line 2066
    :cond_4b
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    if-ge v0, v4, :cond_67

    neg-long v0, v6

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v2, v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_67

    .line 2067
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    neg-long v3, v6

    long-to-int v3, v3

    aget-wide v2, v2, v3

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Ljava/math/BigDecimal;->dividePrimitiveLongs(JJILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_17

    .line 2069
    :cond_67
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    neg-long v1, v6

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v0, v1, p1, p2}, Ljava/math/BigDecimal;->divideBigIntegers(Ljava/math/BigInteger;Ljava/math/BigInteger;ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v0

    goto :goto_17
.end method

.method public shortValueExact()S
    .registers 3

    .prologue
    .line 2687
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Ljava/math/BigDecimal;->valueExact(I)J

    move-result-wide v0

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public signum()I
    .registers 3

    .prologue
    .line 1923
    iget v0, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v1, 0x40

    if-ge v0, v1, :cond_d

    .line 1924
    iget-wide v0, p0, Ljava/math/BigDecimal;->smallValue:J

    invoke-static {v0, v1}, Ljava/lang/Long;->signum(J)I

    move-result v0

    .line 1926
    :goto_c
    return v0

    :cond_d
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    goto :goto_c
.end method

.method public stripTrailingZeros()Ljava/math/BigDecimal;
    .registers 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2219
    const/4 v0, 0x1

    .line 2220
    .local v0, i:I
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    array-length v6, v6

    sub-int v1, v6, v8

    .line 2221
    .local v1, lastPow:I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v6

    .line 2223
    .local v2, newScale:J
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 2225
    new-instance v6, Ljava/math/BigDecimal;

    const-string v7, "0"

    invoke-direct {v6, v7}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 2253
    :goto_18
    return-object v6

    .line 2228
    :cond_19
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    .line 2232
    .local v5, strippedBI:Ljava/math/BigInteger;
    :goto_1d
    invoke-virtual {v5, v9}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 2234
    sget-object v6, Ljava/math/BigDecimal;->TEN_POW:[Ljava/math/BigInteger;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v4

    .line 2236
    .local v4, quotAndRem:[Ljava/math/BigInteger;
    aget-object v6, v4, v8

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-nez v6, :cond_3c

    .line 2238
    int-to-long v6, v0

    sub-long/2addr v2, v6

    .line 2239
    if-ge v0, v1, :cond_39

    .line 2241
    add-int/lit8 v0, v0, 0x1

    .line 2243
    :cond_39
    aget-object v5, v4, v9

    goto :goto_1d

    .line 2245
    :cond_3c
    if-ne v0, v8, :cond_48

    .line 2253
    .end local v4           #quotAndRem:[Ljava/math/BigInteger;
    :cond_3e
    new-instance v6, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->toIntScale(J)I

    move-result v7

    invoke-direct {v6, v5, v7}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_18

    .line 2250
    .restart local v4       #quotAndRem:[Ljava/math/BigInteger;
    :cond_48
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method public subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;
    .registers 9
    .parameter "subtrahend"

    .prologue
    const/16 v4, 0x40

    .line 966
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    iget v2, p1, Ljava/math/BigDecimal;->scale:I

    sub-int v0, v1, v2

    .line 968
    .local v0, diffScale:I
    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 969
    if-gtz v0, :cond_15

    .line 970
    invoke-virtual {p1}, Ljava/math/BigDecimal;->negate()Ljava/math/BigDecimal;

    move-result-object v1

    .line 1001
    :goto_14
    return-object v1

    .line 972
    :cond_15
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_27

    move-object v1, p0

    .line 973
    goto :goto_14

    .line 975
    :cond_1d
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 976
    if-ltz v0, :cond_27

    move-object v1, p0

    .line 977
    goto :goto_14

    .line 981
    :cond_27
    if-nez v0, :cond_55

    .line 983
    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_41

    .line 984
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_14

    .line 986
    :cond_41
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto :goto_14

    .line 987
    :cond_55
    if-lez v0, :cond_98

    .line 989
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v1, v1

    if-ge v0, v1, :cond_7e

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    aget v3, v3, v0

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_7e

    .line 991
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sget-object v5, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    aget-wide v5, v5, v0

    mul-long/2addr v3, v5

    sub-long/2addr v1, v3

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto :goto_14

    .line 993
    :cond_7e
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    int-to-long v4, v0

    invoke-static {v3, v4, v5}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_14

    .line 996
    :cond_98
    neg-int v0, v0

    .line 997
    sget-object v1, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    array-length v1, v1

    if-ge v0, v1, :cond_c1

    iget v1, p0, Ljava/math/BigDecimal;->bitLength:I

    sget-object v2, Ljava/math/BigDecimal;->LONG_TEN_POW_BIT_LENGTH:[I

    aget v2, v2, v0

    add-int/2addr v1, v2

    iget v2, p1, Ljava/math/BigDecimal;->bitLength:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_c1

    .line 999
    iget-wide v1, p0, Ljava/math/BigDecimal;->smallValue:J

    sget-object v3, Ljava/math/BigDecimal;->LONG_TEN_POW:[J

    aget-wide v3, v3, v0

    mul-long/2addr v1, v3

    iget-wide v3, p1, Ljava/math/BigDecimal;->smallValue:J

    sub-long/2addr v1, v3

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-static {v1, v2, v3}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v1

    goto/16 :goto_14

    .line 1001
    :cond_c1
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    int-to-long v3, v0

    invoke-static {v2, v3, v4}, Ljava/math/Multiplication;->multiplyByTenPow(Ljava/math/BigInteger;J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p1}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget v3, p1, Ljava/math/BigDecimal;->scale:I

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    goto/16 :goto_14
.end method

.method public subtract(Ljava/math/BigDecimal;Ljava/math/MathContext;)Ljava/math/BigDecimal;
    .registers 13
    .parameter "subtrahend"
    .parameter "mc"

    .prologue
    const/16 v9, 0xa

    .line 1020
    iget v5, p1, Ljava/math/BigDecimal;->scale:I

    int-to-long v5, v5

    iget v7, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v7, v7

    sub-long v0, v5, v7

    .line 1025
    .local v0, diffScale:J
    invoke-direct {p1}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v5

    if-nez v5, :cond_1c

    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    if-nez v5, :cond_25

    .line 1027
    :cond_1c
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    .line 1048
    :goto_24
    return-object v5

    .line 1030
    :cond_25
    invoke-direct {p1}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x1

    sub-long v7, v0, v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_82

    .line 1032
    invoke-virtual {p2}, Ljava/math/MathContext;->getPrecision()I

    move-result v5

    invoke-direct {p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v6

    if-ge v5, v6, :cond_82

    .line 1033
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    .line 1034
    .local v4, thisSignum:I
    invoke-virtual {p1}, Ljava/math/BigDecimal;->signum()I

    move-result v5

    if-eq v4, v5, :cond_65

    .line 1035
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v5, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1043
    .local v3, tempBI:Ljava/math/BigInteger;
    :goto_57
    new-instance v2, Ljava/math/BigDecimal;

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {v2, v3, v5}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 1044
    .local v2, leftOperand:Ljava/math/BigDecimal;
    invoke-virtual {v2, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_24

    .line 1038
    .end local v2           #leftOperand:Ljava/math/BigDecimal;
    .end local v3           #tempBI:Ljava/math/BigInteger;
    :cond_65
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v5

    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 1039
    .restart local v3       #tempBI:Ljava/math/BigInteger;
    invoke-static {v3, v9}, Ljava/math/Multiplication;->multiplyByPositiveInt(Ljava/math/BigInteger;I)Ljava/math/BigInteger;

    move-result-object v5

    mul-int/lit8 v6, v4, 0x9

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    goto :goto_57

    .line 1048
    .end local v3           #tempBI:Ljava/math/BigInteger;
    .end local v4           #thisSignum:I
    :cond_82
    invoke-virtual {p0, p1}, Ljava/math/BigDecimal;->subtract(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/math/BigDecimal;->round(Ljava/math/MathContext;)Ljava/math/BigDecimal;

    move-result-object v5

    goto :goto_24
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 2567
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v0, :cond_a

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2568
    :cond_a
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    .line 2572
    :goto_e
    return-object v0

    .line 2569
    :cond_f
    iget v0, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v0, :cond_24

    .line 2570
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    neg-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_e

    .line 2572
    :cond_24
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    goto :goto_e
.end method

.method public toBigIntegerExact()Ljava/math/BigInteger;
    .registers 6

    .prologue
    const-string v4, "math.08"

    .line 2587
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v1, :cond_c

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 2588
    :cond_c
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    .line 2604
    :goto_10
    return-object v1

    .line 2589
    :cond_11
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v1, :cond_26

    .line 2590
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    neg-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    goto :goto_10

    .line 2594
    :cond_26
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->aproxPrecision()I

    move-result v2

    if-gt v1, v2, :cond_3a

    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->getLowestSetBit()I

    move-result v2

    if-le v1, v2, :cond_46

    .line 2596
    :cond_3a
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "math.08"

    invoke-static {v4}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2598
    :cond_46
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/Multiplication;->powerOf10(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->divideAndRemainder(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v0

    .line 2599
    .local v0, integerAndFraction:[Ljava/math/BigInteger;
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-eqz v1, :cond_6a

    .line 2602
    new-instance v1, Ljava/lang/ArithmeticException;

    const-string v2, "math.08"

    invoke-static {v4}, Lorg/apache/harmony/math/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2604
    :cond_6a
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_10
.end method

.method public toEngineeringString()Ljava/lang/String;
    .registers 16

    .prologue
    .line 2449
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2450
    .local v7, intString:Ljava/lang/String;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v10, :cond_e

    move-object v10, v7

    .line 2499
    :goto_d
    return-object v10

    .line 2453
    :cond_e
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-gez v10, :cond_4a

    const/4 v10, 0x2

    move v0, v10

    .line 2454
    .local v0, begin:I
    :goto_1a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v2

    .line 2455
    .local v2, end:I
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v10, v10

    neg-long v10, v10

    int-to-long v12, v2

    add-long/2addr v10, v12

    int-to-long v12, v0

    sub-long v4, v10, v12

    .line 2456
    .local v4, exponent:J
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 2458
    .local v9, result:Ljava/lang/StringBuffer;
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v10, :cond_62

    const-wide/16 v10, -0x6

    cmp-long v10, v4, v10

    if-ltz v10, :cond_62

    .line 2459
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_4d

    .line 2460
    iget v10, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v10, v2, v10

    const/16 v11, 0x2e

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2499
    :cond_45
    :goto_45
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_d

    .line 2453
    .end local v0           #begin:I
    .end local v2           #end:I
    .end local v4           #exponent:J
    .end local v9           #result:Ljava/lang/StringBuffer;
    :cond_4a
    const/4 v10, 0x1

    move v0, v10

    goto :goto_1a

    .line 2462
    .restart local v0       #begin:I
    .restart local v2       #end:I
    .restart local v4       #exponent:J
    .restart local v9       #result:Ljava/lang/StringBuffer;
    :cond_4d
    const/4 v10, 0x1

    sub-int v10, v0, v10

    const-string v11, "0."

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2463
    add-int/lit8 v10, v0, 0x1

    sget-object v11, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v12, 0x0

    long-to-int v13, v4

    neg-int v13, v13

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    invoke-virtual {v9, v10, v11, v12, v13}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    goto :goto_45

    .line 2466
    :cond_62
    sub-int v1, v2, v0

    .line 2467
    .local v1, delta:I
    const-wide/16 v10, 0x3

    rem-long v10, v4, v10

    long-to-int v8, v10

    .line 2469
    .local v8, rem:I
    if-eqz v8, :cond_9c

    .line 2471
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v10

    if-nez v10, :cond_92

    .line 2473
    if-gez v8, :cond_8e

    neg-int v10, v8

    move v8, v10

    .line 2474
    :goto_79
    int-to-long v10, v8

    add-long/2addr v4, v10

    .line 2481
    :goto_7b
    const/4 v10, 0x3

    if-ge v1, v10, :cond_9c

    .line 2482
    sub-int v6, v8, v1

    .local v6, i:I
    move v3, v2

    .end local v2           #end:I
    .local v3, end:I
    :goto_81
    if-lez v6, :cond_9b

    .line 2483
    add-int/lit8 v2, v3, 0x1

    .end local v3           #end:I
    .restart local v2       #end:I
    const/16 v10, 0x30

    invoke-virtual {v9, v3, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2482
    add-int/lit8 v6, v6, -0x1

    move v3, v2

    .end local v2           #end:I
    .restart local v3       #end:I
    goto :goto_81

    .line 2473
    .end local v3           #end:I
    .end local v6           #i:I
    .restart local v2       #end:I
    :cond_8e
    const/4 v10, 0x3

    sub-int/2addr v10, v8

    move v8, v10

    goto :goto_79

    .line 2477
    :cond_92
    if-gez v8, :cond_97

    add-int/lit8 v10, v8, 0x3

    move v8, v10

    .line 2478
    :cond_97
    int-to-long v10, v8

    sub-long/2addr v4, v10

    .line 2479
    add-int/2addr v0, v8

    goto :goto_7b

    .end local v2           #end:I
    .restart local v3       #end:I
    .restart local v6       #i:I
    :cond_9b
    move v2, v3

    .line 2487
    .end local v3           #end:I
    .end local v6           #i:I
    .restart local v2       #end:I
    :cond_9c
    sub-int v10, v2, v0

    const/4 v11, 0x1

    if-lt v10, v11, :cond_a8

    .line 2488
    const/16 v10, 0x2e

    invoke-virtual {v9, v0, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2489
    add-int/lit8 v2, v2, 0x1

    .line 2491
    :cond_a8
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-eqz v10, :cond_45

    .line 2492
    const/16 v10, 0x45

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2493
    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-lez v10, :cond_c0

    .line 2494
    add-int/lit8 v2, v2, 0x1

    const/16 v10, 0x2b

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2496
    :cond_c0
    add-int/lit8 v2, v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v2, v10}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_45
.end method

.method public toPlainString()Ljava/lang/String;
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2519
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2520
    .local v2, intStr:Ljava/lang/String;
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-eqz v4, :cond_18

    invoke-direct {p0}, Ljava/math/BigDecimal;->isZero()Z

    move-result v4

    if-eqz v4, :cond_1a

    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-gez v4, :cond_1a

    :cond_18
    move-object v4, v2

    .line 2556
    :goto_19
    return-object v4

    .line 2523
    :cond_1a
    invoke-virtual {p0}, Ljava/math/BigDecimal;->signum()I

    move-result v4

    if-gez v4, :cond_5c

    move v0, v7

    .line 2524
    .local v0, begin:I
    :goto_21
    iget v1, p0, Ljava/math/BigDecimal;->scale:I

    .line 2526
    .local v1, delta:I
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 2528
    .local v3, result:Ljava/lang/StringBuffer;
    if-ne v0, v7, :cond_3c

    .line 2530
    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2532
    :cond_3c
    iget v4, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v4, :cond_85

    .line 2533
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v0

    sub-int/2addr v1, v4

    .line 2534
    if-ltz v1, :cond_6f

    .line 2535
    const-string v4, "0."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2537
    :goto_4d
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    if-le v1, v4, :cond_5e

    .line 2538
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2537
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    sub-int/2addr v1, v4

    goto :goto_4d

    .end local v0           #begin:I
    .end local v1           #delta:I
    .end local v3           #result:Ljava/lang/StringBuffer;
    :cond_5c
    move v0, v6

    .line 2523
    goto :goto_21

    .line 2540
    .restart local v0       #begin:I
    .restart local v1       #delta:I
    .restart local v3       #result:Ljava/lang/StringBuffer;
    :cond_5e
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4, v6, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    .line 2541
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2556
    :goto_6a
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_19

    .line 2543
    :cond_6f
    sub-int v1, v0, v1

    .line 2544
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2545
    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 2546
    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6a

    .line 2549
    :cond_85
    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2551
    :goto_8c
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    neg-int v4, v4

    if-ge v1, v4, :cond_9c

    .line 2552
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    .line 2551
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    array-length v4, v4

    add-int/2addr v1, v4

    goto :goto_8c

    .line 2554
    :cond_9c
    sget-object v4, Ljava/math/BigDecimal;->CH_ZEROS:[C

    neg-int v5, v1

    invoke-virtual {v3, v4, v6, v5}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_6a
.end method

.method public toString()Ljava/lang/String;
    .registers 15

    .prologue
    const-wide/16 v12, 0x0

    const/16 v11, 0x2e

    const/4 v10, 0x1

    .line 2396
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    if-eqz v6, :cond_c

    .line 2397
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2432
    :goto_b
    return-object v6

    .line 2399
    :cond_c
    iget v6, p0, Ljava/math/BigDecimal;->bitLength:I

    const/16 v7, 0x20

    if-ge v6, v7, :cond_1f

    .line 2400
    iget-wide v6, p0, Ljava/math/BigDecimal;->smallValue:J

    iget v8, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v6, v7, v8}, Ljava/math/Conversion;->toDecimalScaledString(JI)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2401
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_b

    .line 2403
    :cond_1f
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2404
    .local v4, intString:Ljava/lang/String;
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-nez v6, :cond_2d

    move-object v6, v4

    .line 2405
    goto :goto_b

    .line 2407
    :cond_2d
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->signum()I

    move-result v6

    if-gez v6, :cond_6c

    const/4 v6, 0x2

    move v0, v6

    .line 2408
    .local v0, begin:I
    :goto_39
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    .line 2409
    .local v1, end:I
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    int-to-long v6, v6

    neg-long v6, v6

    int-to-long v8, v1

    add-long/2addr v6, v8

    int-to-long v8, v0

    sub-long v2, v6, v8

    .line 2410
    .local v2, exponent:J
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 2412
    .local v5, result:Ljava/lang/StringBuffer;
    invoke-virtual {v5, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2413
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    if-lez v6, :cond_81

    const-wide/16 v6, -0x6

    cmp-long v6, v2, v6

    if-ltz v6, :cond_81

    .line 2414
    cmp-long v6, v2, v12

    if-ltz v6, :cond_6e

    .line 2415
    iget v6, p0, Ljava/math/BigDecimal;->scale:I

    sub-int v6, v1, v6

    invoke-virtual {v5, v6, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2431
    :goto_63
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    .line 2432
    iget-object v6, p0, Ljava/math/BigDecimal;->toStringImage:Ljava/lang/String;

    goto :goto_b

    .end local v0           #begin:I
    .end local v1           #end:I
    .end local v2           #exponent:J
    .end local v5           #result:Ljava/lang/StringBuffer;
    :cond_6c
    move v0, v10

    .line 2407
    goto :goto_39

    .line 2417
    .restart local v0       #begin:I
    .restart local v1       #end:I
    .restart local v2       #exponent:J
    .restart local v5       #result:Ljava/lang/StringBuffer;
    :cond_6e
    sub-int v6, v0, v10

    const-string v7, "0."

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 2418
    add-int/lit8 v6, v0, 0x1

    sget-object v7, Ljava/math/BigDecimal;->CH_ZEROS:[C

    const/4 v8, 0x0

    long-to-int v9, v2

    neg-int v9, v9

    sub-int/2addr v9, v10

    invoke-virtual {v5, v6, v7, v8, v9}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    goto :goto_63

    .line 2421
    :cond_81
    sub-int v6, v1, v0

    if-lt v6, v10, :cond_8a

    .line 2422
    invoke-virtual {v5, v0, v11}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2423
    add-int/lit8 v1, v1, 0x1

    .line 2425
    :cond_8a
    const/16 v6, 0x45

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2426
    cmp-long v6, v2, v12

    if-lez v6, :cond_9a

    .line 2427
    add-int/lit8 v1, v1, 0x1

    const/16 v6, 0x2b

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    .line 2429
    :cond_9a
    add-int/lit8 v1, v1, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_63
.end method

.method public ulp()Ljava/math/BigDecimal;
    .registers 4

    .prologue
    .line 2879
    const-wide/16 v0, 0x1

    iget v2, p0, Ljava/math/BigDecimal;->scale:I

    invoke-static {v0, v1, v2}, Ljava/math/BigDecimal;->valueOf(JI)Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public unscaledValue()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 1995
    invoke-direct {p0}, Ljava/math/BigDecimal;->getUnscaledValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method
