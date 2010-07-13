.class public Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "RSAPublicKeyStructure.java"


# instance fields
.field private modulus:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3
    .parameter "modulus"
    .parameter "publicExponent"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->modulus:Ljava/math/BigInteger;

    .line 48
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->publicExponent:Ljava/math/BigInteger;

    .line 49
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 54
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_27

    .line 56
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad sequence size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 60
    :cond_27
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 62
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->modulus:Ljava/math/BigInteger;

    .line 63
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->publicExponent:Ljava/math/BigInteger;

    .line 64
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    .registers 4
    .parameter "obj"

    .prologue
    .line 30
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    if-eqz v0, :cond_a

    .line 32
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    .end local p0
    move-object v0, p0

    .line 37
    :goto_9
    return-object v0

    .line 35
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 40
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RSAPublicKeyStructure: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 24
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 88
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 90
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 91
    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/RSAPublicKeyStructure;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 93
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
