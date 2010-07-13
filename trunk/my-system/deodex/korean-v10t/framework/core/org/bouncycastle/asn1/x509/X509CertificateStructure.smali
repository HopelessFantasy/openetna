.class public Lorg/bouncycastle/asn1/x509/X509CertificateStructure;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "X509CertificateStructure.java"

# interfaces
.implements Lorg/bouncycastle/asn1/x509/X509ObjectIdentifiers;
.implements Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;


# instance fields
.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field sig:Lorg/bouncycastle/asn1/DERBitString;

.field sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 60
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2e

    .line 62
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 65
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lorg/bouncycastle/asn1/DERBitString;

    .line 71
    return-void

    .line 69
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence wrong size for a certificate"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;
    .registers 3
    .parameter "obj"

    .prologue
    .line 40
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    if-eqz v0, :cond_8

    .line 42
    check-cast p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    .end local p0
    move-object v0, p0

    .line 46
    :goto_7
    return-object v0

    .line 44
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 49
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 34
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEndDate()Lorg/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getEndDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->sig:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->sigAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getStartDate()Lorg/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getStartDate()Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v0

    return-object v0
.end method

.method public getSubject()Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubjectPublicKeyInfo()Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTBSCertificate()Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getVersion()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
