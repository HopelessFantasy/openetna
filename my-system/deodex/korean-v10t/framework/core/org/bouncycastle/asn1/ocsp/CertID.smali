.class public Lorg/bouncycastle/asn1/ocsp/CertID;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CertID.java"


# instance fields
.field hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

.field serialNumber:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 35
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 36
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 38
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 39
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 40
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/DERInteger;)V
    .registers 5
    .parameter "hashAlgorithm"
    .parameter "issuerNameHash"
    .parameter "issuerKeyHash"
    .parameter "serialNumber"

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 28
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 29
    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 30
    iput-object p4, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 31
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;
    .registers 3
    .parameter "obj"

    .prologue
    .line 52
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;

    if-eqz v0, :cond_a

    .line 54
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/CertID;

    .end local p0
    move-object v0, p0

    .line 58
    :goto_9
    return-object v0

    .line 56
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 58
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/CertID;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/CertID;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 61
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/CertID;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 46
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getIssuerKeyHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getIssuerNameHash()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 96
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 98
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 99
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerNameHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 100
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->issuerKeyHash:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CertID;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 103
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
