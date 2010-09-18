.class public Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "PrivateKeyInfo.java"


# instance fields
.field private algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private attributes:Lorg/bouncycastle/asn1/ASN1Set;

.field private privKey:Lorg/bouncycastle/asn1/DERObject;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "seq"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 63
    .local v1, e:Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    .line 64
    .local v3, version:Ljava/math/BigInteger;
    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    if-eqz v4, :cond_1f

    .line 66
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "wrong version for private key info"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 69
    :cond_1f
    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v5, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 73
    :try_start_2c
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v4

    invoke-direct {v0, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 75
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lorg/bouncycastle/asn1/DERObject;
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_41} :catch_55

    .line 82
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_54

    .line 84
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    .line 86
    :cond_54
    return-void

    .line 77
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_55
    move-exception v4

    move-object v2, v4

    .line 79
    .local v2, ex:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Error recoverying private key from sequence"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERObject;)V
    .registers 3
    .parameter "algId"
    .parameter "privateKey"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lorg/bouncycastle/asn1/DERObject;

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 3
    .parameter "obj"

    .prologue
    .line 38
    instance-of v0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    if-eqz v0, :cond_8

    .line 40
    check-cast p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    .end local p0
    move-object v0, p0

    .line 44
    :goto_7
    return-object v0

    .line 42
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 47
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getAttributes()Lorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getPrivateKey()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lorg/bouncycastle/asn1/DERObject;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 124
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 125
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 126
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->privKey:Lorg/bouncycastle/asn1/DERObject;

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 128
    iget-object v1, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_2b

    .line 130
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->attributes:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 133
    :cond_2b
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
