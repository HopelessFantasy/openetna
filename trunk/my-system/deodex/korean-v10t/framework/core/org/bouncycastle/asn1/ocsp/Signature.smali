.class public Lorg/bouncycastle/asn1/ocsp/Signature;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "Signature.java"


# instance fields
.field certs:Lorg/bouncycastle/asn1/ASN1Sequence;

.field signature:Lorg/bouncycastle/asn1/DERBitString;

.field signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    .line 40
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 41
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 42
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERBitString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signature:Lorg/bouncycastle/asn1/DERBitString;

    .line 44
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2b

    .line 46
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 49
    :cond_2b
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;)V
    .registers 3
    .parameter "signatureAlgorithm"
    .parameter "signature"

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signature:Lorg/bouncycastle/asn1/DERBitString;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERBitString;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "signatureAlgorithm"
    .parameter "signature"
    .parameter "certs"

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 34
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signature:Lorg/bouncycastle/asn1/DERBitString;

    .line 35
    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 36
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Signature;
    .registers 3
    .parameter "obj"

    .prologue
    .line 61
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/Signature;

    if-eqz v0, :cond_a

    .line 63
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/Signature;

    .end local p0
    move-object v0, p0

    .line 67
    :goto_9
    return-object v0

    .line 65
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 67
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Signature;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/Signature;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 70
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/Signature;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 55
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/Signature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Signature;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCerts()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signature:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signatureAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 102
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->signature:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 104
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_1f

    .line 106
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/Signature;->certs:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 109
    :cond_1f
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
