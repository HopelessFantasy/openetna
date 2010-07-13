.class public Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;
.super Ljava/lang/Object;
.source "V2AttributeCertificateInfoGenerator.java"


# instance fields
.field private attrCertValidityPeriod:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

.field private attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

.field private endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field private extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field private holder:Lorg/bouncycastle/asn1/x509/Holder;

.field private issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

.field private issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

.field private serialNumber:Lorg/bouncycastle/asn1/DERInteger;

.field private signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field private version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 45
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    .line 46
    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 7
    .parameter "oid"
    .parameter "value"

    .prologue
    .line 55
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    new-instance v1, Lorg/bouncycastle/asn1/x509/Attribute;

    new-instance v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v2, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    new-instance v3, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v3, p2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/Attribute;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Set;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 56
    return-void
.end method

.method public addAttribute(Lorg/bouncycastle/asn1/x509/Attribute;)V
    .registers 3
    .parameter "attribute"

    .prologue
    .line 63
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 64
    return-void
.end method

.method public generateAttributeCertificateInfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;
    .registers 5

    .prologue
    .line 110
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    if-nez v2, :cond_24

    .line 114
    :cond_1c
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "not all mandatory fields set in V2 AttributeCertificateInfo generator"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 117
    :cond_24
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 119
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 120
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 121
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 122
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 123
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 128
    new-instance v1, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;-><init>(Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/DERGeneralizedTime;)V

    .line 129
    .local v1, validity:Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;
    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 132
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->attributes:Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 134
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v2, :cond_61

    .line 136
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 139
    :cond_61
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v2, :cond_6a

    .line 141
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 144
    :cond_6a
    new-instance v2, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v2
.end method

.method public setEndDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V
    .registers 2
    .parameter "endDate"

    .prologue
    .line 93
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->endDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 94
    return-void
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 2
    .parameter "extensions"

    .prologue
    .line 105
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 106
    return-void
.end method

.method public setHolder(Lorg/bouncycastle/asn1/x509/Holder;)V
    .registers 2
    .parameter "holder"

    .prologue
    .line 50
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->holder:Lorg/bouncycastle/asn1/x509/Holder;

    .line 51
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V
    .registers 2
    .parameter "issuer"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuer:Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    .line 82
    return-void
.end method

.method public setIssuerUniqueID(Lorg/bouncycastle/asn1/DERBitString;)V
    .registers 2
    .parameter "issuerUniqueID"

    .prologue
    .line 99
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->issuerUniqueID:Lorg/bouncycastle/asn1/DERBitString;

    .line 100
    return-void
.end method

.method public setSerialNumber(Lorg/bouncycastle/asn1/DERInteger;)V
    .registers 2
    .parameter "serialNumber"

    .prologue
    .line 69
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 70
    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .parameter "signature"

    .prologue
    .line 75
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 76
    return-void
.end method

.method public setStartDate(Lorg/bouncycastle/asn1/DERGeneralizedTime;)V
    .registers 2
    .parameter "startDate"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2AttributeCertificateInfoGenerator;->startDate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 88
    return-void
.end method
