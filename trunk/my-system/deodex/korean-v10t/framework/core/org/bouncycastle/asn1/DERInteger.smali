.class public Lorg/bouncycastle/asn1/DERInteger;
.super Lorg/bouncycastle/asn1/DERObject;
.source "DERInteger.java"


# instance fields
.field bytes:[B


# direct methods
.method public constructor <init>(I)V
    .registers 4
    .parameter "value"

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 56
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 3
    .parameter "value"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 62
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    .line 63
    return-void
.end method

.method public constructor <init>([B)V
    .registers 2
    .parameter "bytes"

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    .line 69
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;
    .registers 4
    .parameter "obj"

    .prologue
    .line 19
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v0, :cond_a

    .line 21
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/DERInteger;

    .end local p0
    move-object v0, p0

    .line 31
    :goto_9
    return-object v0

    .line 24
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 26
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>([B)V

    goto :goto_9

    .line 29
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 31
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    goto :goto_9

    .line 34
    .restart local p0
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERInteger;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 50
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .registers 4
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x2

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 90
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .parameter "o"

    .prologue
    const/4 v5, 0x0

    .line 107
    instance-of v3, p1, Lorg/bouncycastle/asn1/DERInteger;

    if-nez v3, :cond_7

    move v3, v5

    .line 127
    :goto_6
    return v3

    .line 112
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    move-object v2, v0

    .line 114
    .local v2, other:Lorg/bouncycastle/asn1/DERInteger;
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    array-length v3, v3

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    array-length v4, v4

    if-eq v3, v4, :cond_15

    move v3, v5

    .line 116
    goto :goto_6

    .line 119
    :cond_15
    const/4 v1, 0x0

    .local v1, i:I
    :goto_16
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    array-length v3, v3

    if-eq v1, v3, :cond_2a

    .line 121
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    aget-byte v3, v3, v1

    iget-object v4, v2, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    aget-byte v4, v4, v1

    if-eq v3, v4, :cond_27

    move v3, v5

    .line 123
    goto :goto_6

    .line 119
    :cond_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 127
    :cond_2a
    const/4 v3, 0x1

    goto :goto_6
.end method

.method public getPositiveValue()Ljava/math/BigInteger;
    .registers 4

    .prologue
    .line 82
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method public getValue()Ljava/math/BigInteger;
    .registers 3

    .prologue
    .line 73
    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, value:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    array-length v2, v2

    if-eq v0, v2, :cond_14

    .line 98
    iget-object v2, p0, Lorg/bouncycastle/asn1/DERInteger;->bytes:[B

    aget-byte v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    rem-int/lit8 v3, v0, 0x4

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 101
    :cond_14
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
