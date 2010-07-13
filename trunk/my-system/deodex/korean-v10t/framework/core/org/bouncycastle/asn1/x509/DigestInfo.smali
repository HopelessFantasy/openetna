.class public Lorg/bouncycastle/asn1/x509/DigestInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "DigestInfo.java"


# instance fields
.field private algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private digest:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "obj"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 61
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 63
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 64
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    .line 65
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)V
    .registers 3
    .parameter "algId"
    .parameter "digest"

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 54
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 56
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DigestInfo;
    .registers 3
    .parameter "obj"

    .prologue
    .line 38
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;

    if-eqz v0, :cond_8

    .line 40
    check-cast p0, Lorg/bouncycastle/asn1/x509/DigestInfo;

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
    new-instance v0, Lorg/bouncycastle/asn1/x509/DigestInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DigestInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 47
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DigestInfo;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DigestInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DigestInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getDigest()[B
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 4

    .prologue
    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 81
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->algId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 82
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DigestInfo;->digest:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 84
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
