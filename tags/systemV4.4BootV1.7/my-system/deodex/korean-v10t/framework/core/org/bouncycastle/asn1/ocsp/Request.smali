.class public Lorg/bouncycastle/asn1/ocsp/Request;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "Request.java"


# instance fields
.field reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

.field singleRequestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    .line 31
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 33
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 36
    :cond_22
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 3
    .parameter "reqCert"
    .parameter "singleRequestExtensions"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 24
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Request;
    .registers 3
    .parameter "obj"

    .prologue
    .line 48
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;

    if-eqz v0, :cond_a

    .line 50
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/Request;

    .end local p0
    move-object v0, p0

    .line 54
    :goto_9
    return-object v0

    .line 52
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 54
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/Request;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/Request;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 57
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/Request;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 42
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/Request;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/Request;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getReqCert()Lorg/bouncycastle/asn1/ocsp/CertID;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method

.method public getSingleRequestExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    .line 80
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 82
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/Request;->reqCert:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 84
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_1a

    .line 86
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/Request;->singleRequestExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 89
    :cond_1a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
