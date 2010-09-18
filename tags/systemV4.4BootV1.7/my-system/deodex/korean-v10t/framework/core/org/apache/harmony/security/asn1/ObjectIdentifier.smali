.class public final Lorg/apache/harmony/security/asn1/ObjectIdentifier;
.super Ljava/lang/Object;
.source "ObjectIdentifier.java"


# instance fields
.field private final oid:[I

.field private soid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "strOid"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 71
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public constructor <init>([I)V
    .registers 2
    .parameter "oid"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->validate([I)V

    .line 60
    iput-object p1, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    .line 61
    return-void
.end method

.method public static isOID(Ljava/lang/String;)Z
    .registers 3
    .parameter "str"

    .prologue
    const/4 v1, 0x0

    .line 282
    invoke-static {p0, v1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    move-result-object v0

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    move v0, v1

    goto :goto_8
.end method

.method public static toIntArray(Ljava/lang/String;)[I
    .registers 2
    .parameter "str"

    .prologue
    .line 269
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method private static toIntArray(Ljava/lang/String;Z)[I
    .registers 16
    .parameter "str"
    .parameter "shouldThrow"

    .prologue
    const/16 v13, 0x2e

    const/4 v12, 0x0

    const/4 v11, 0x2

    const/4 v9, 0x0

    const-string v10, "security.9E"

    .line 299
    if-nez p0, :cond_19

    .line 300
    if-nez p1, :cond_d

    move-object v7, v9

    .line 379
    :goto_c
    return-object v7

    .line 303
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.9D"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 307
    :cond_19
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 308
    .local v4, length:I
    if-nez v4, :cond_2f

    .line 309
    if-nez p1, :cond_23

    move-object v7, v9

    .line 310
    goto :goto_c

    .line 312
    :cond_23
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.9E"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 315
    :cond_2f
    const/4 v1, 0x1

    .line 316
    .local v1, count:I
    const/4 v6, 0x1

    .line 318
    .local v6, wasDot:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_32
    if-ge v2, v4, :cond_6c

    .line 319
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 320
    .local v0, c:C
    if-ne v0, v13, :cond_52

    .line 321
    if-eqz v6, :cond_4c

    .line 322
    if-nez p1, :cond_40

    move-object v7, v9

    .line 323
    goto :goto_c

    .line 325
    :cond_40
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.9E"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 327
    :cond_4c
    const/4 v6, 0x1

    .line 328
    add-int/lit8 v1, v1, 0x1

    .line 318
    :goto_4f
    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    .line 329
    :cond_52
    const/16 v7, 0x30

    if-lt v0, v7, :cond_5c

    const/16 v7, 0x39

    if-gt v0, v7, :cond_5c

    .line 330
    const/4 v6, 0x0

    goto :goto_4f

    .line 332
    :cond_5c
    if-nez p1, :cond_60

    move-object v7, v9

    .line 333
    goto :goto_c

    .line 335
    :cond_60
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.9E"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 339
    .end local v0           #c:C
    :cond_6c
    if-eqz v6, :cond_7e

    .line 341
    if-nez p1, :cond_72

    move-object v7, v9

    .line 342
    goto :goto_c

    .line 344
    :cond_72
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.9E"

    invoke-static {v10}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 347
    :cond_7e
    if-ge v1, v11, :cond_90

    .line 348
    if-nez p1, :cond_84

    move-object v7, v9

    .line 349
    goto :goto_c

    .line 351
    :cond_84
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.99"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 355
    :cond_90
    new-array v5, v1, [I

    .line 356
    .local v5, oid:[I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .local v3, j:I
    :goto_94
    if-ge v2, v4, :cond_ac

    .line 357
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 358
    .restart local v0       #c:C
    if-ne v0, v13, :cond_a1

    .line 359
    add-int/lit8 v3, v3, 0x1

    .line 356
    :goto_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_94

    .line 361
    :cond_a1
    aget v7, v5, v3

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v0

    const/16 v8, 0x30

    sub-int/2addr v7, v8

    aput v7, v5, v3

    goto :goto_9e

    .line 365
    .end local v0           #c:C
    :cond_ac
    aget v7, v5, v12

    if-le v7, v11, :cond_c1

    .line 366
    if-nez p1, :cond_b5

    move-object v7, v9

    .line 367
    goto/16 :goto_c

    .line 369
    :cond_b5
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.9A"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 371
    :cond_c1
    aget v7, v5, v12

    if-eq v7, v11, :cond_dd

    const/4 v7, 0x1

    aget v7, v5, v7

    const/16 v8, 0x27

    if-le v7, v8, :cond_dd

    .line 372
    if-nez p1, :cond_d1

    move-object v7, v9

    .line 373
    goto/16 :goto_c

    .line 375
    :cond_d1
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "security.9B"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_dd
    move-object v7, v5

    .line 379
    goto/16 :goto_c
.end method

.method public static toString([I)Ljava/lang/String;
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v3, 0x1

    .line 246
    new-instance v1, Ljava/lang/StringBuffer;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 248
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_a
    array-length v2, p0

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1b

    .line 249
    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 250
    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 252
    :cond_1b
    array-length v2, p0

    sub-int/2addr v2, v3

    aget v2, p0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 253
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static validate([I)V
    .registers 5
    .parameter "oid"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 129
    if-nez p0, :cond_10

    .line 130
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.98"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_10
    array-length v1, p0

    if-ge v1, v2, :cond_1f

    .line 134
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.99"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_1f
    aget v1, p0, v3

    if-le v1, v2, :cond_2f

    .line 139
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.9A"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 141
    :cond_2f
    aget v1, p0, v3

    if-eq v1, v2, :cond_46

    const/4 v1, 0x1

    aget v1, p0, v1

    const/16 v2, 0x27

    if-le v1, v2, :cond_46

    .line 142
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.9B"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_46
    const/4 v0, 0x0

    .local v0, i:I
    :goto_47
    array-length v1, p0

    if-ge v0, v1, :cond_5d

    .line 147
    aget v1, p0, v0

    if-gez v1, :cond_5a

    .line 148
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.9C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    :cond_5a
    add-int/lit8 v0, v0, 0x1

    goto :goto_47

    .line 152
    :cond_5d
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 90
    if-ne p0, p1, :cond_4

    .line 91
    const/4 v0, 0x1

    .line 96
    .end local p1
    :goto_3
    return v0

    .line 93
    .restart local p1
    :cond_4
    if-eqz p1, :cond_10

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_12

    .line 94
    :cond_10
    const/4 v0, 0x0

    goto :goto_3

    .line 96
    :cond_12
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    check-cast p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;

    .end local p1
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_3
.end method

.method public getOid()[I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, intHash:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    array-length v2, v2

    if-ge v0, v2, :cond_15

    const/4 v2, 0x4

    if-ge v0, v2, :cond_15

    .line 116
    iget-object v2, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    aget v2, v2, v0

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 118
    :cond_15
    const v2, 0x7fffffff

    and-int/2addr v2, v1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 104
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->oid:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    .line 106
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->soid:Ljava/lang/String;

    return-object v0
.end method
