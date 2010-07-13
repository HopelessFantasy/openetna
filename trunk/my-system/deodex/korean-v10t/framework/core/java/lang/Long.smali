.class public final Ljava/lang/Long;
.super Ljava/lang/Number;
.source "Long.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/Long$valueOfCache;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Number;",
        "Ljava/lang/Comparable",
        "<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final MAX_VALUE:J = 0x7fffffffffffffffL

.field public static final MIN_VALUE:J = -0x8000000000000000L

.field public static final SIZE:I = 0x40

.field public static final TYPE:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x3b8be490cc8f23dfL


# instance fields
.field private final value:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(J)V
    .registers 3
    .parameter "value"

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    .line 84
    iput-wide p1, p0, Ljava/lang/Long;->value:J

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 98
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/lang/Long;-><init>(J)V

    .line 99
    return-void
.end method

.method public static bitCount(J)I
    .registers 14
    .parameter "lng"

    .prologue
    const-wide v10, 0x5555555555555555L

    const-wide v8, 0x3333333333333333L

    const v7, 0xf0f0f0f

    const v6, 0xff00ff

    const v5, 0xffff

    .line 674
    and-long v1, p0, v10

    const/4 v3, 0x1

    shr-long v3, p0, v3

    and-long/2addr v3, v10

    add-long p0, v1, v3

    .line 675
    and-long v1, p0, v8

    const/4 v3, 0x2

    shr-long v3, p0, v3

    and-long/2addr v3, v8

    add-long p0, v1, v3

    .line 677
    const/16 v1, 0x20

    ushr-long v1, p0, v1

    add-long/2addr v1, p0

    long-to-int v0, v1

    .line 678
    .local v0, i:I
    and-int v1, v0, v7

    shr-int/lit8 v2, v0, 0x4

    and-int/2addr v2, v7

    add-int v0, v1, v2

    .line 679
    and-int v1, v0, v6

    shr-int/lit8 v2, v0, 0x8

    and-int/2addr v2, v6

    add-int v0, v1, v2

    .line 680
    and-int v1, v0, v5

    shr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v5

    add-int v0, v1, v2

    .line 681
    return v0
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/Long;
    .registers 10
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .line 138
    .local v2, i:I
    if-nez v3, :cond_e

    .line 139
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    .line 141
    :cond_e
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 142
    .local v1, firstDigit:C
    const/16 v7, 0x2d

    if-ne v1, v7, :cond_21

    move v4, v8

    .line 143
    .local v4, negative:Z
    :goto_17
    if-eqz v4, :cond_2a

    .line 144
    if-ne v3, v8, :cond_24

    .line 145
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 142
    .end local v4           #negative:Z
    :cond_21
    const/4 v7, 0x0

    move v4, v7

    goto :goto_17

    .line 147
    .restart local v4       #negative:Z
    :cond_24
    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 150
    :cond_2a
    const/16 v0, 0xa

    .line 151
    .local v0, base:I
    const/16 v7, 0x30

    if-ne v1, v7, :cond_5f

    .line 152
    add-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_3b

    .line 153
    const-wide/16 v7, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    .line 173
    :goto_3a
    return-object v7

    .line 155
    :cond_3b
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v7, 0x78

    if-eq v1, v7, :cond_47

    const/16 v7, 0x58

    if-ne v1, v7, :cond_5c

    .line 156
    :cond_47
    if-ne v2, v3, :cond_4f

    .line 157
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 159
    :cond_4f
    add-int/lit8 v2, v2, 0x1

    .line 160
    const/16 v0, 0x10

    .line 172
    :cond_53
    :goto_53
    invoke-static {p0, v2, v0, v4}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v5

    .line 173
    .local v5, result:J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    goto :goto_3a

    .line 162
    .end local v5           #result:J
    :cond_5c
    const/16 v0, 0x8

    goto :goto_53

    .line 164
    :cond_5f
    const/16 v7, 0x23

    if-ne v1, v7, :cond_53

    .line 165
    if-ne v2, v3, :cond_6b

    .line 166
    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 168
    :cond_6b
    add-int/lit8 v2, v2, 0x1

    .line 169
    const/16 v0, 0x10

    goto :goto_53
.end method

.method public static getLong(Ljava/lang/String;)Ljava/lang/Long;
    .registers 5
    .parameter "string"

    .prologue
    const/4 v3, 0x0

    .line 215
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move-object v2, v3

    .line 225
    :goto_a
    return-object v2

    .line 218
    :cond_b
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 219
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_13

    move-object v2, v3

    .line 220
    goto :goto_a

    .line 223
    :cond_13
    :try_start_13
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_16} :catch_18

    move-result-object v2

    goto :goto_a

    .line 224
    :catch_18
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move-object v2, v3

    .line 225
    goto :goto_a
.end method

.method public static getLong(Ljava/lang/String;J)Ljava/lang/Long;
    .registers 6
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 245
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_d

    .line 246
    :cond_8
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 255
    :goto_c
    return-object v2

    .line 248
    :cond_d
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 249
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_18

    .line 250
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c

    .line 253
    :cond_18
    :try_start_18
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_1b} :catch_1d

    move-result-object v2

    goto :goto_c

    .line 254
    :catch_1d
    move-exception v0

    .line 255
    .local v0, ex:Ljava/lang/NumberFormatException;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_c
.end method

.method public static getLong(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;
    .registers 5
    .parameter "string"
    .parameter "defaultValue"

    .prologue
    .line 275
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move-object v2, p1

    .line 285
    :goto_9
    return-object v2

    .line 278
    :cond_a
    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, prop:Ljava/lang/String;
    if-nez v1, :cond_12

    move-object v2, p1

    .line 280
    goto :goto_9

    .line 283
    :cond_12
    :try_start_12
    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_15} :catch_17

    move-result-object v2

    goto :goto_9

    .line 284
    :catch_17
    move-exception v0

    .local v0, ex:Ljava/lang/NumberFormatException;
    move-object v2, p1

    .line 285
    goto :goto_9
.end method

.method public static highestOneBit(J)J
    .registers 6
    .parameter "lng"

    .prologue
    const/4 v2, 0x1

    .line 608
    shr-long v0, p0, v2

    or-long/2addr p0, v0

    .line 609
    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 610
    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 611
    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 612
    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 613
    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 614
    ushr-long v0, p0, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static lowestOneBit(J)J
    .registers 4
    .parameter "lng"

    .prologue
    .line 629
    neg-long v0, p0

    and-long/2addr v0, p0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .registers 4
    .parameter "lng"

    .prologue
    .line 642
    const/4 v0, 0x1

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 643
    const/4 v0, 0x2

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 644
    const/4 v0, 0x4

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 645
    const/16 v0, 0x8

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 646
    const/16 v0, 0x10

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 647
    const/16 v0, 0x20

    shr-long v0, p0, v0

    or-long/2addr p0, v0

    .line 648
    const-wide/16 v0, -0x1

    xor-long/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method

.method public static numberOfTrailingZeros(J)I
    .registers 6
    .parameter "lng"

    .prologue
    .line 661
    neg-long v0, p0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->bitCount(J)I

    move-result v0

    return v0
.end method

.method private static parse(Ljava/lang/String;IIZ)J
    .registers 15
    .parameter "string"
    .parameter "offset"
    .parameter "radix"
    .parameter "negative"

    .prologue
    .line 363
    const-wide/high16 v0, -0x8000

    int-to-long v2, p2

    div-long v3, v0, v2

    .line 364
    .local v3, max:J
    const-wide/16 v5, 0x0

    .local v5, result:J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    int-to-long v1, v0

    .local v1, length:J
    move-wide v7, v5

    .end local v5           #result:J
    .local v7, result:J
    move v0, p1

    .line 365
    .end local p1
    .local v0, offset:I
    :goto_e
    int-to-long v5, v0

    cmp-long p1, v5, v1

    if-gez p1, :cond_42

    .line 366
    add-int/lit8 p1, v0, 0x1

    .end local v0           #offset:I
    .restart local p1
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    .line 367
    .local v0, digit:I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_26

    .line 368
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 370
    .restart local p1
    :cond_26
    cmp-long v5, v3, v7

    if-lez v5, :cond_30

    .line 371
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 373
    .restart local p1
    :cond_30
    int-to-long v5, p2

    mul-long/2addr v5, v7

    int-to-long v9, v0

    sub-long/2addr v5, v9

    .line 374
    .local v5, next:J
    cmp-long v0, v5, v7

    if-lez v0, :cond_3e

    .line 375
    .end local v0           #digit:I
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 377
    .restart local p1
    :cond_3e
    move-wide v5, v5

    .end local v7           #result:J
    .local v5, result:J
    move-wide v7, v5

    .end local v5           #result:J
    .restart local v7       #result:J
    move v0, p1

    .line 378
    .end local p1
    .local v0, offset:I
    goto :goto_e

    .line 379
    :cond_42
    if-nez p3, :cond_53

    .line 380
    neg-long p1, v7

    .line 381
    .end local v7           #result:J
    .end local p2
    .local p1, result:J
    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gez p3, :cond_51

    .line 382
    .end local v0           #offset:I
    .end local p3
    new-instance p1, Ljava/lang/NumberFormatException;

    .end local p1           #result:J
    invoke-direct {p1, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .restart local p1       #result:J
    :cond_51
    move-wide p0, p1

    .line 385
    .end local p1           #result:J
    .local p0, result:J
    :goto_52
    return-wide p0

    .restart local v0       #offset:I
    .restart local v7       #result:J
    .local p0, string:Ljava/lang/String;
    .restart local p2
    .restart local p3
    :cond_53
    move-wide p0, v7

    .end local v7           #result:J
    .local p0, result:J
    goto :goto_52
.end method

.method public static parseLong(Ljava/lang/String;)J
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 323
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static parseLong(Ljava/lang/String;I)J
    .registers 7
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 345
    if-eqz p0, :cond_9

    const/4 v3, 0x2

    if-lt p1, v3, :cond_9

    const/16 v3, 0x24

    if-le p1, v3, :cond_f

    .line 347
    :cond_9
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3}, Ljava/lang/NumberFormatException;-><init>()V

    throw v3

    .line 349
    :cond_f
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v0, 0x0

    .line 350
    .local v0, i:I
    if-nez v1, :cond_1c

    .line 351
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_1c
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_32

    const/4 v3, 0x1

    move v2, v3

    .line 354
    .local v2, negative:Z
    :goto_26
    if-eqz v2, :cond_35

    add-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_35

    .line 355
    new-instance v3, Ljava/lang/NumberFormatException;

    invoke-direct {v3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    .end local v2           #negative:Z
    :cond_32
    const/4 v3, 0x0

    move v2, v3

    goto :goto_26

    .line 358
    .restart local v2       #negative:Z
    :cond_35
    invoke-static {p0, v0, p1, v2}, Ljava/lang/Long;->parse(Ljava/lang/String;IIZ)J

    move-result-wide v3

    return-wide v3
.end method

.method public static reverse(J)J
    .registers 14
    .parameter "lng"

    .prologue
    const-wide v10, 0x3333333333333333L

    const-wide v8, 0xf0f0f0f0f0f0f0fL

    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v2, 0x1

    .line 760
    const-wide v0, 0x5555555555555555L

    and-long/2addr v0, p0

    shl-long/2addr v0, v2

    shr-long v2, p0, v2

    const-wide v4, 0x5555555555555555L

    and-long/2addr v2, v4

    or-long p0, v0, v2

    .line 762
    and-long v0, p0, v10

    shl-long/2addr v0, v6

    shr-long v2, p0, v6

    and-long/2addr v2, v10

    or-long p0, v0, v2

    .line 764
    and-long v0, p0, v8

    shl-long/2addr v0, v7

    shr-long v2, p0, v7

    and-long/2addr v2, v8

    or-long p0, v0, v2

    .line 766
    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static reverseBytes(J)J
    .registers 17
    .parameter "lng"

    .prologue
    .line 739
    const/16 v0, 0x38

    ushr-long v12, p0, v0

    .line 740
    .local v12, b7:J
    const/16 v0, 0x28

    ushr-long v0, p0, v0

    const-wide/32 v2, 0xff00

    and-long v10, v0, v2

    .line 741
    .local v10, b6:J
    const/16 v0, 0x18

    ushr-long v0, p0, v0

    const-wide/32 v2, 0xff0000

    and-long v8, v0, v2

    .line 742
    .local v8, b5:J
    const/16 v0, 0x8

    ushr-long v0, p0, v0

    const-wide v2, 0xff000000L

    and-long v6, v0, v2

    .line 743
    .local v6, b4:J
    const-wide v0, 0xff000000L

    and-long/2addr v0, p0

    const/16 v2, 0x8

    shl-long v4, v0, v2

    .line 744
    .local v4, b3:J
    const-wide/32 v0, 0xff0000

    and-long/2addr v0, p0

    const/16 v2, 0x18

    shl-long v2, v0, v2

    .line 745
    .local v2, b2:J
    const-wide/32 v0, 0xff00

    and-long/2addr v0, p0

    const/16 v14, 0x28

    shl-long/2addr v0, v14

    .line 746
    .local v0, b1:J
    const/16 v14, 0x38

    shl-long/2addr p0, v14

    .line 747
    .local p0, b0:J
    or-long/2addr p0, v0

    or-long/2addr p0, v2

    or-long/2addr p0, v4

    or-long/2addr p0, v6

    or-long/2addr p0, v8

    or-long/2addr p0, v10

    or-long/2addr p0, v12

    .end local p0           #b0:J
    return-wide p0
.end method

.method public static rotateLeft(JI)J
    .registers 7
    .parameter "lng"
    .parameter "distance"

    .prologue
    .line 696
    if-nez p2, :cond_4

    move-wide v0, p0

    .line 704
    :goto_3
    return-wide v0

    :cond_4
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    goto :goto_3
.end method

.method public static rotateRight(JI)J
    .registers 7
    .parameter "lng"
    .parameter "distance"

    .prologue
    .line 719
    if-nez p2, :cond_4

    move-wide v0, p0

    .line 727
    :goto_3
    return-wide v0

    :cond_4
    ushr-long v0, p0, p2

    neg-int v2, p2

    shl-long v2, p0, v2

    or-long/2addr v0, v2

    goto :goto_3
.end method

.method public static signum(J)I
    .registers 5
    .parameter "lng"

    .prologue
    const-wide/16 v1, 0x0

    .line 780
    cmp-long v0, p0, v1

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    cmp-long v0, p0, v1

    if-gez v0, :cond_e

    const/4 v0, -0x1

    goto :goto_7

    :cond_e
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public static toBinaryString(J)Ljava/lang/String;
    .registers 11
    .parameter "l"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v8, 0x1

    .line 403
    const/4 v1, 0x1

    .line 404
    .local v1, count:I
    move-wide v2, p0

    .line 406
    .local v2, j:J
    cmp-long v4, p0, v5

    if-gez v4, :cond_24

    .line 407
    const/16 v1, 0x40

    .line 414
    :cond_b
    new-array v0, v1, [C

    .line 416
    .local v0, buffer:[C
    :cond_d
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v4, 0x1

    and-long/2addr v4, p0

    const-wide/16 v6, 0x30

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 417
    shr-long/2addr p0, v8

    .line 418
    if-gtz v1, :cond_d

    .line 419
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v4

    .line 409
    .end local v0           #buffer:[C
    :cond_24
    :goto_24
    shr-long/2addr v2, v8

    cmp-long v4, v2, v5

    if-eqz v4, :cond_b

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method public static toHexString(J)Ljava/lang/String;
    .registers 12
    .parameter "l"

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    .line 433
    const/4 v1, 0x1

    .line 434
    .local v1, count:I
    move-wide v2, p0

    .line 436
    .local v2, j:J
    cmp-long v5, p0, v8

    if-gez v5, :cond_2b

    .line 437
    const/16 v1, 0x10

    .line 444
    :cond_b
    new-array v0, v1, [C

    .line 446
    .local v0, buffer:[C
    :cond_d
    const-wide/16 v5, 0xf

    and-long/2addr v5, p0

    long-to-int v4, v5

    .line 447
    .local v4, t:I
    const/16 v5, 0x9

    if-le v4, v5, :cond_33

    .line 448
    const/16 v5, 0xa

    sub-int v5, v4, v5

    add-int/lit8 v4, v5, 0x61

    .line 452
    :goto_1b
    add-int/lit8 v1, v1, -0x1

    int-to-char v5, v4

    aput-char v5, v0, v1

    .line 453
    shr-long/2addr p0, v7

    .line 454
    if-gtz v1, :cond_d

    .line 455
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    array-length v7, v0

    invoke-direct {v5, v6, v7, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v5

    .line 439
    .end local v0           #buffer:[C
    .end local v4           #t:I
    :cond_2b
    :goto_2b
    shr-long/2addr v2, v7

    cmp-long v5, v2, v8

    if-eqz v5, :cond_b

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 450
    .restart local v0       #buffer:[C
    .restart local v4       #t:I
    :cond_33
    add-int/lit8 v4, v4, 0x30

    goto :goto_1b
.end method

.method public static toOctalString(J)Ljava/lang/String;
    .registers 11
    .parameter "l"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v8, 0x3

    .line 468
    const/4 v1, 0x1

    .line 469
    .local v1, count:I
    move-wide v2, p0

    .line 471
    .local v2, j:J
    cmp-long v4, p0, v5

    if-gez v4, :cond_24

    .line 472
    const/16 v1, 0x16

    .line 479
    :cond_b
    new-array v0, v1, [C

    .line 481
    .local v0, buffer:[C
    :cond_d
    add-int/lit8 v1, v1, -0x1

    const-wide/16 v4, 0x7

    and-long/2addr v4, p0

    const-wide/16 v6, 0x30

    add-long/2addr v4, v6

    long-to-int v4, v4

    int-to-char v4, v4

    aput-char v4, v0, v1

    .line 482
    ushr-long/2addr p0, v8

    .line 483
    if-gtz v1, :cond_d

    .line 484
    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    array-length v6, v0

    invoke-direct {v4, v5, v6, v0}, Ljava/lang/String;-><init>(II[C)V

    return-object v4

    .line 474
    .end local v0           #buffer:[C
    :cond_24
    :goto_24
    ushr-long/2addr v2, v8

    cmp-long v4, v2, v5

    if-eqz v4, :cond_b

    .line 475
    add-int/lit8 v1, v1, 0x1

    goto :goto_24
.end method

.method public static toString(J)Ljava/lang/String;
    .registers 3
    .parameter "l"

    .prologue
    .line 503
    const/16 v0, 0xa

    invoke-static {p0, p1, v0}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toString(JI)Ljava/lang/String;
    .registers 14
    .parameter "l"
    .parameter "radix"

    .prologue
    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    .line 522
    const/4 v6, 0x2

    if-lt p2, v6, :cond_a

    const/16 v6, 0x24

    if-le p2, v6, :cond_c

    .line 523
    :cond_a
    const/16 p2, 0xa

    .line 525
    :cond_c
    cmp-long v6, p0, v9

    if-nez v6, :cond_13

    .line 526
    const-string v6, "0"

    .line 553
    :goto_12
    return-object v6

    .line 529
    :cond_13
    const/4 v2, 0x2

    .line 530
    .local v2, count:I
    move-wide v3, p0

    .line 531
    .local v3, j:J
    cmp-long v6, p0, v9

    if-gez v6, :cond_28

    const/4 v6, 0x1

    move v5, v6

    .line 532
    .local v5, negative:Z
    :goto_1b
    if-nez v5, :cond_1f

    .line 533
    const/4 v2, 0x1

    .line 534
    neg-long v3, p0

    .line 536
    :cond_1f
    :goto_1f
    int-to-long v6, p2

    div-long/2addr p0, v6

    cmp-long v6, p0, v9

    if-eqz v6, :cond_2a

    .line 537
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .end local v5           #negative:Z
    :cond_28
    move v5, v8

    .line 531
    goto :goto_1b

    .line 540
    .restart local v5       #negative:Z
    :cond_2a
    new-array v0, v2, [C

    .line 542
    .local v0, buffer:[C
    :cond_2c
    int-to-long v6, p2

    rem-long v6, v3, v6

    long-to-int v6, v6

    sub-int v1, v8, v6

    .line 543
    .local v1, ch:I
    const/16 v6, 0x9

    if-le v1, v6, :cond_54

    .line 544
    const/16 v6, 0xa

    sub-int v6, v1, v6

    add-int/lit8 v1, v6, 0x61

    .line 548
    :goto_3c
    add-int/lit8 v2, v2, -0x1

    int-to-char v6, v1

    aput-char v6, v0, v2

    .line 549
    int-to-long v6, p2

    div-long/2addr v3, v6

    cmp-long v6, v3, v9

    if-nez v6, :cond_2c

    .line 550
    if-eqz v5, :cond_4d

    .line 551
    const/16 v6, 0x2d

    aput-char v6, v0, v8

    .line 553
    :cond_4d
    new-instance v6, Ljava/lang/String;

    array-length v7, v0

    invoke-direct {v6, v8, v7, v0}, Ljava/lang/String;-><init>(II[C)V

    goto :goto_12

    .line 546
    :cond_54
    add-int/lit8 v1, v1, 0x30

    goto :goto_3c
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .registers 4
    .parameter "lng"

    .prologue
    .line 797
    const-wide/16 v0, -0x80

    cmp-long v0, p0, v0

    if-ltz v0, :cond_c

    const-wide/16 v0, 0x7f

    cmp-long v0, p0, v0

    if-lez v0, :cond_12

    .line 798
    :cond_c
    new-instance v0, Ljava/lang/Long;

    invoke-direct {v0, p0, p1}, Ljava/lang/Long;-><init>(J)V

    .line 800
    :goto_11
    return-object v0

    :cond_12
    sget-object v0, Ljava/lang/Long$valueOfCache;->CACHE:[Ljava/lang/Long;

    long-to-int v1, p0

    add-int/lit16 v1, v1, 0x80

    aget-object v0, v0, v1

    goto :goto_11
.end method

.method public static valueOf(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3
    .parameter "string"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 570
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;I)Ljava/lang/Long;
    .registers 4
    .parameter "string"
    .parameter "radix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 593
    invoke-static {p0, p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public byteValue()B
    .registers 3

    .prologue
    .line 103
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public compareTo(Ljava/lang/Long;)I
    .registers 6
    .parameter "object"

    .prologue
    .line 120
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p1, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_14

    const/4 v0, -0x1

    goto :goto_9

    :cond_14
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 3
    .parameter "x0"

    .prologue
    .line 32
    check-cast p1, Ljava/lang/Long;

    .end local p1
    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public doubleValue()D
    .registers 3

    .prologue
    .line 178
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .parameter "o"

    .prologue
    .line 194
    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_10

    iget-wide v0, p0, Ljava/lang/Long;->value:J

    check-cast p1, Ljava/lang/Long;

    .end local p1
    iget-wide v2, p1, Ljava/lang/Long;->value:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public floatValue()F
    .registers 3

    .prologue
    .line 200
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 291
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    iget-wide v2, p0, Ljava/lang/Long;->value:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public intValue()I
    .registers 3

    .prologue
    .line 296
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public longValue()J
    .registers 3

    .prologue
    .line 307
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    return-wide v0
.end method

.method public shortValue()S
    .registers 3

    .prologue
    .line 390
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 489
    iget-wide v0, p0, Ljava/lang/Long;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
