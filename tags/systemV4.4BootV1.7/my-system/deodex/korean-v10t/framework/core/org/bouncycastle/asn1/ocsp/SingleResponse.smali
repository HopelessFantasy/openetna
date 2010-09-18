.class public Lorg/bouncycastle/asn1/ocsp/SingleResponse;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "SingleResponse.java"


# instance fields
.field private certID:Lorg/bouncycastle/asn1/ocsp/CertID;

.field private certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

.field private nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field private singleExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field private thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ocsp/CertID;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertID;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    .line 40
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ocsp/CertStatus;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/CertStatus;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    .line 41
    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 43
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v4, :cond_43

    .line 45
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 47
    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 63
    :cond_42
    :goto_42
    return-void

    .line 50
    :cond_43
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_42

    .line 52
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 54
    .local v0, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_5c

    .line 56
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    goto :goto_42

    .line 60
    :cond_5c
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_42
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/CertID;Lorg/bouncycastle/asn1/ocsp/CertStatus;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 6
    .parameter "certID"
    .parameter "certStatus"
    .parameter "thisUpdate"
    .parameter "nextUpdate"
    .parameter "singleExtensions"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    .line 30
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    .line 31
    iput-object p3, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 32
    iput-object p4, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 33
    iput-object p5, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 34
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .registers 3
    .parameter "obj"

    .prologue
    .line 75
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    if-eqz v0, :cond_a

    .line 77
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    .end local p0
    move-object v0, p0

    .line 81
    :goto_9
    return-object v0

    .line 79
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 84
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/SingleResponse;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 69
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/SingleResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertID()Lorg/bouncycastle/asn1/ocsp/CertID;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    return-object v0
.end method

.method public getCertStatus()Lorg/bouncycastle/asn1/ocsp/CertStatus;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    return-object v0
.end method

.method public getNextUpdate()Lorg/bouncycastle/asn1/DERGeneralizedTime;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getSingleExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/DERGeneralizedTime;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 125
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 127
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certID:Lorg/bouncycastle/asn1/ocsp/CertID;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 128
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->certStatus:Lorg/bouncycastle/asn1/ocsp/CertStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->thisUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 131
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_24

    .line 133
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->nextUpdate:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 136
    :cond_24
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_32

    .line 138
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ocsp/SingleResponse;->singleExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 141
    :cond_32
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
