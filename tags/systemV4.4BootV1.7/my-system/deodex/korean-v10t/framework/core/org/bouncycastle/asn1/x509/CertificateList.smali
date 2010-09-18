.class public Lorg/bouncycastle/asn1/x509/CertificateList;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CertificateList.java"


# instance fields
.field sig:Lorg/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 57
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2c

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 61
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->sig:Lorg/bouncycastle/asn1/DERBitString;

    .line 67
    return-void

    .line 65
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for CertificateList"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;
    .registers 3
    .parameter "obj"

    .prologue
    .line 42
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;

    if-eqz v0, :cond_8

    .line 44
    check-cast p0, Lorg/bouncycastle/asn1/x509/CertificateList;

    .end local p0
    move-object v0, p0

    .line 48
    :goto_7
    return-object v0

    .line 46
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 48
    new-instance v0, Lorg/bouncycastle/asn1/x509/CertificateList;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/CertificateList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 51
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/CertificateList;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 36
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getNextUpdate()Lorg/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getNextUpdate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->sig:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    return-object v0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getThisUpdate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getVersion()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 111
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 113
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 114
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 115
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/CertificateList;->sig:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 117
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
