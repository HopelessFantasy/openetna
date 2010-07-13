.class public Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "BasicOCSPResponse.java"


# instance fields
.field private certs:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private signature:Lorg/bouncycastle/asn1/DERBitString;

.field private signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private tbsResponseData:Lorg/bouncycastle/asn1/ocsp/ResponseData;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseData;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    .line 37
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/bouncycastle/asn1/DERBitString;

    .line 40
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_35

    .line 42
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 44
    :cond_35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/ResponseData;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "tbsResponseData"
    .parameter "signatureAlgorithm"
    .parameter "signature"
    .parameter "certs"

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 29
    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/bouncycastle/asn1/DERBitString;

    .line 30
    iput-object p4, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 31
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .registers 3
    .parameter "obj"

    .prologue
    .line 56
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    if-eqz v0, :cond_a

    .line 58
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    .end local p0
    move-object v0, p0

    .line 62
    :goto_9
    return-object v0

    .line 60
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 62
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 65
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 50
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getTbsResponseData()Lorg/bouncycastle/asn1/ocsp/ResponseData;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    .line 100
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 102
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->tbsResponseData:Lorg/bouncycastle/asn1/ocsp/ResponseData;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 103
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->signature:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 105
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_24

    .line 107
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/BasicOCSPResponse;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 110
    :cond_24
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
