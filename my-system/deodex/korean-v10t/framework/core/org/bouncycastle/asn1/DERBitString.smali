.class public Lorg/bouncycastle/asn1/DERBitString;
.super Lorg/bouncycastle/asn1/DERObject;
.source "DERBitString.java"

# interfaces
.implements Lorg/bouncycastle/asn1/DERString;


# static fields
.field private static final table:[C


# instance fields
.field protected data:[B

.field protected padBits:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_a

    sput-object v0, Lorg/bouncycastle/asn1/DERBitString;->table:[C

    return-void

    :array_a
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method protected constructor <init>(BI)V
    .registers 5
    .parameter "data"
    .parameter "padBits"

    .prologue
    .line 139
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 140
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 142
    iput p2, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    .line 143
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DEREncodable;)V
    .registers 8
    .parameter "obj"

    .prologue
    .line 165
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 168
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 169
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 171
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 172
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 174
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    .line 175
    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1c} :catch_1d

    .line 181
    return-void

    .line 177
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :catch_1d
    move-exception v3

    move-object v2, v3

    .line 179
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error processing object : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "data"

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    .line 161
    return-void
.end method

.method public constructor <init>([BI)V
    .registers 3
    .parameter "data"
    .parameter "padBits"

    .prologue
    .line 152
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 153
    iput-object p1, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    .line 154
    iput p2, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    .line 155
    return-void
.end method

.method protected static getBytes(I)[B
    .registers 6
    .parameter "bitString"

    .prologue
    .line 69
    const/4 v0, 0x4

    .line 70
    .local v0, bytes:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_2
    const/4 v3, 0x1

    if-lt v1, v3, :cond_d

    .line 72
    const/16 v3, 0xff

    mul-int/lit8 v4, v1, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v3, p0

    if-eqz v3, :cond_1e

    .line 79
    :cond_d
    new-array v2, v0, [B

    .line 80
    .local v2, result:[B
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_23

    .line 82
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 76
    .end local v2           #result:[B
    :cond_1e
    add-int/lit8 v0, v0, -0x1

    .line 70
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 85
    .restart local v2       #result:[B
    :cond_23
    return-object v2
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 96
    if-eqz p0, :cond_8

    instance-of v3, p0, Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v3, :cond_c

    .line 98
    :cond_8
    check-cast p0, Lorg/bouncycastle/asn1/DERBitString;

    .end local p0
    move-object v3, p0

    .line 114
    :goto_b
    return-object v3

    .line 101
    .restart local p0
    :cond_c
    instance-of v3, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v3, :cond_27

    .line 103
    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 104
    .local v0, bytes:[B
    aget-byte v2, v0, v5

    .line 105
    .local v2, padBits:I
    array-length v3, v0

    sub-int/2addr v3, v4

    new-array v1, v3, [B

    .line 107
    .local v1, data:[B
    array-length v3, v0

    sub-int/2addr v3, v4

    invoke-static {v0, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    new-instance v3, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    goto :goto_b

    .line 112
    .end local v0           #bytes:[B
    .end local v1           #data:[B
    .end local v2           #padBits:I
    .restart local p0
    :cond_27
    instance-of v3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_36

    .line 114
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    goto :goto_b

    .line 117
    .restart local p0
    :cond_36
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal object in getInstance: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 133
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    return-object v0
.end method

.method protected static getPadBits(I)I
    .registers 5
    .parameter "bitString"

    .prologue
    .line 22
    const/4 v2, 0x0

    .line 23
    .local v2, val:I
    const/4 v1, 0x3

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_12

    .line 29
    if-eqz v1, :cond_16

    .line 31
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    if-eqz v3, :cond_1b

    .line 33
    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v2, v3, 0xff

    .line 47
    :cond_12
    :goto_12
    if-nez v2, :cond_1e

    .line 49
    const/4 v3, 0x7

    .line 60
    :goto_15
    return v3

    .line 39
    :cond_16
    if-eqz p0, :cond_1b

    .line 41
    and-int/lit16 v2, p0, 0xff

    .line 42
    goto :goto_12

    .line 23
    :cond_1b
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 53
    :cond_1e
    const/4 v0, 0x1

    .line 55
    .local v0, bits:I
    :goto_1f
    shl-int/lit8 v2, v2, 0x1

    and-int/lit16 v3, v2, 0xff

    if-eqz v3, :cond_28

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 60
    :cond_28
    const/16 v3, 0x8

    sub-int/2addr v3, v0

    goto :goto_15
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 7
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 213
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x1

    new-array v0, v1, [B

    .line 215
    .local v0, bytes:[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    .line 216
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    array-length v2, v0

    sub-int/2addr v2, v4

    invoke-static {v1, v3, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 218
    const/4 v1, 0x3

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 219
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 236
    instance-of v3, p1, Lorg/bouncycastle/asn1/DERBitString;

    if-nez v3, :cond_7

    move v3, v5

    .line 256
    :goto_6
    return v3

    .line 241
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DERBitString;

    move-object v2, v0

    .line 243
    .local v2, other:Lorg/bouncycastle/asn1/DERBitString;
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v3, v3

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v4, v4

    if-eq v3, v4, :cond_15

    move v3, v5

    .line 245
    goto :goto_6

    .line 248
    :cond_15
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v3, v3

    if-eq v1, v3, :cond_2a

    .line 250
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v3, v3, v1

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_27

    move v3, v5

    .line 252
    goto :goto_6

    .line 248
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 256
    :cond_2a
    iget v3, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    iget v4, v2, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    if-ne v3, v4, :cond_32

    const/4 v3, 0x1

    goto :goto_6

    :cond_32
    move v3, v5

    goto :goto_6
.end method

.method public getBytes()[B
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    return-object v0
.end method

.method public getPadBits()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lorg/bouncycastle/asn1/DERBitString;->padBits:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .registers 9

    .prologue
    .line 261
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v6, "#"

    invoke-direct {v2, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 262
    .local v2, buf:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 263
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 267
    .local v0, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    :try_start_11
    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_37

    .line 274
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 276
    .local v5, string:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    array-length v6, v5

    if-eq v4, v6, :cond_40

    .line 278
    sget-object v6, Lorg/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    ushr-int/lit8 v7, v7, 0x4

    rem-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 279
    sget-object v6, Lorg/bouncycastle/asn1/DERBitString;->table:[C

    aget-byte v7, v5, v4

    and-int/lit8 v7, v7, 0xf

    aget-char v6, v6, v7

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 276
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 269
    .end local v4           #i:I
    .end local v5           #string:[B
    :catch_37
    move-exception v3

    .line 271
    .local v3, e:Ljava/io/IOException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "internal error encoding BitString"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 282
    .end local v3           #e:Ljava/io/IOException;
    .restart local v4       #i:I
    .restart local v5       #string:[B
    :cond_40
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v2, v2

    if-eq v0, v2, :cond_14

    .line 227
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 225
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 230
    :cond_14
    return v1
.end method

.method public intValue()I
    .registers 5

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    array-length v2, v2

    if-eq v0, v2, :cond_17

    const/4 v2, 0x4

    if-eq v0, v2, :cond_17

    .line 203
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERBitString;->data:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x8

    shl-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 201
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 206
    :cond_17
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERBitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
