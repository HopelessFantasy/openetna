.class public abstract Lorg/bouncycastle/asn1/ASN1OctetString;
.super Lorg/bouncycastle/asn1/DERObject;
.source "ASN1OctetString.java"


# instance fields
.field string:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DEREncodable;)V
    .registers 8
    .parameter "obj"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 79
    :try_start_3
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 80
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 82
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 83
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_19} :catch_1a

    .line 91
    return-void

    .line 87
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :catch_1a
    move-exception v3

    move-object v2, v3

    .line 89
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
    .registers 2
    .parameter "string"

    .prologue
    .line 70
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    .line 72
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 6
    .parameter "obj"

    .prologue
    .line 39
    if-eqz p0, :cond_6

    instance-of v2, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v2, :cond_a

    .line 41
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    move-object v2, p0

    .line 59
    :goto_9
    return-object v2

    .line 44
    .restart local p0
    :cond_a
    instance-of v2, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_19

    .line 46
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    goto :goto_9

    .line 49
    .restart local p0
    :cond_19
    instance-of v2, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_3c

    .line 51
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 52
    .local v1, v:Ljava/util/Vector;
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 54
    .local v0, e:Ljava/util/Enumeration;
    :goto_28
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 56
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_28

    .line 59
    :cond_36
    new-instance v2, Lorg/bouncycastle/asn1/BERConstructedOctetString;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/BERConstructedOctetString;-><init>(Ljava/util/Vector;)V

    goto :goto_9

    .line 62
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #v:Ljava/util/Vector;
    .restart local p0
    :cond_3c
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal object in getInstance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 27
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract encode(Lorg/bouncycastle/asn1/DEROutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 10
    .parameter "o"

    .prologue
    const/4 v7, 0x0

    .line 114
    instance-of v5, p1, Lorg/bouncycastle/asn1/DEROctetString;

    if-nez v5, :cond_7

    move v5, v7

    .line 137
    :goto_6
    return v5

    .line 119
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/DEROctetString;

    move-object v4, v0

    .line 121
    .local v4, other:Lorg/bouncycastle/asn1/DEROctetString;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DEROctetString;->getOctets()[B

    move-result-object v1

    .line 122
    .local v1, b1:[B
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    .line 124
    .local v2, b2:[B
    array-length v5, v1

    array-length v6, v2

    if-eq v5, v6, :cond_19

    move v5, v7

    .line 126
    goto :goto_6

    .line 129
    :cond_19
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    array-length v5, v1

    if-eq v3, v5, :cond_28

    .line 131
    aget-byte v5, v1, v3

    aget-byte v6, v2, v3

    if-eq v5, v6, :cond_25

    move v5, v7

    .line 133
    goto :goto_6

    .line 129
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 137
    :cond_28
    const/4 v5, 0x1

    goto :goto_6
.end method

.method public getOctets()[B
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    .prologue
    .line 100
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    .line 101
    .local v0, b:[B
    const/4 v2, 0x0

    .line 103
    .local v2, value:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_6
    array-length v3, v0

    if-eq v1, v3, :cond_14

    .line 105
    aget-byte v3, v0, v1

    and-int/lit16 v3, v3, 0xff

    rem-int/lit8 v4, v1, 0x4

    shl-int/2addr v3, v4

    xor-int/2addr v2, v3

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 108
    :cond_14
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
