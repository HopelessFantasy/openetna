.class public Lorg/bouncycastle/asn1/DERVisibleString;
.super Lorg/bouncycastle/asn1/DERObject;
.source "DERVisibleString.java"

# interfaces
.implements Lorg/bouncycastle/asn1/DERString;


# instance fields
.field string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "string"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 78
    iput-object p1, p0, Lorg/bouncycastle/asn1/DERVisibleString;->string:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public constructor <init>([B)V
    .registers 5
    .parameter "string"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERObject;-><init>()V

    .line 62
    array-length v2, p1

    new-array v0, v2, [C

    .line 64
    .local v0, cs:[C
    const/4 v1, 0x0

    .local v1, i:I
    :goto_7
    array-length v2, v0

    if-eq v1, v2, :cond_14

    .line 66
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    aput-char v2, v0, v1

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 69
    :cond_14
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([C)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/DERVisibleString;->string:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERVisibleString;
    .registers 4
    .parameter "obj"

    .prologue
    .line 22
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/DERVisibleString;

    if-eqz v0, :cond_a

    .line 24
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/DERVisibleString;

    .end local p0
    move-object v0, p0

    .line 34
    :goto_9
    return-object v0

    .line 27
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1a

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/DERVisibleString;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERVisibleString;-><init>([B)V

    goto :goto_9

    .line 32
    .restart local p0
    :cond_1a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_29

    .line 34
    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERVisibleString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERVisibleString;

    move-result-object v0

    goto :goto_9

    .line 37
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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERVisibleString;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERVisibleString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERVisibleString;

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
    .line 103
    const/16 v0, 0x1a

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERVisibleString;->getOctets()[B

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeEncoded(I[B)V

    .line 104
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4
    .parameter "o"

    .prologue
    .line 109
    if-eqz p1, :cond_6

    instance-of v0, p1, Lorg/bouncycastle/asn1/DERVisibleString;

    if-nez v0, :cond_8

    .line 111
    :cond_6
    const/4 v0, 0x0

    .line 114
    .end local p1
    :goto_7
    return v0

    .restart local p1
    :cond_8
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/bouncycastle/asn1/DERVisibleString;

    .end local p1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_7
.end method

.method public getOctets()[B
    .registers 5

    .prologue
    .line 88
    iget-object v3, p0, Lorg/bouncycastle/asn1/DERVisibleString;->string:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 89
    .local v1, cs:[C
    array-length v3, v1

    new-array v0, v3, [B

    .line 91
    .local v0, bs:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_a
    array-length v3, v1

    if-eq v2, v3, :cond_15

    .line 93
    aget-char v3, v1, v2

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 91
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 96
    :cond_15
    return-object v0
.end method

.method public getString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/bouncycastle/asn1/DERVisibleString;->string:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERVisibleString;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
