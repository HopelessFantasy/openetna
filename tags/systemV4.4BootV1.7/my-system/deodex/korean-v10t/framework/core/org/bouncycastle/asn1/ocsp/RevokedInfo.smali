.class public Lorg/bouncycastle/asn1/ocsp/RevokedInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "RevokedInfo.java"


# instance fields
.field private revocationReason:Lorg/bouncycastle/asn1/x509/CRLReason;

.field private revocationTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 31
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 33
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v2, :cond_24

    .line 35
    new-instance v1, Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/DEREnumerated;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DEREnumerated;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/x509/CRLReason;-><init>(Lorg/bouncycastle/asn1/DEREnumerated;)V

    iput-object v1, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lorg/bouncycastle/asn1/x509/CRLReason;

    .line 38
    :cond_24
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/x509/CRLReason;)V
    .registers 3
    .parameter "revocationTime"
    .parameter "revocationReason"

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lorg/bouncycastle/asn1/x509/CRLReason;

    .line 26
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/RevokedInfo;
    .registers 3
    .parameter "obj"

    .prologue
    .line 50
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    if-eqz v0, :cond_a

    .line 52
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    .end local p0
    move-object v0, p0

    .line 56
    :goto_9
    return-object v0

    .line 54
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 59
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/RevokedInfo;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 44
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/RevokedInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getRevocationReason()Lorg/bouncycastle/asn1/x509/CRLReason;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lorg/bouncycastle/asn1/x509/CRLReason;

    return-object v0
.end method

.method public getRevocationTime()Lorg/bouncycastle/asn1/DERGeneralizedTime;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    .line 82
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 84
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lorg/bouncycastle/asn1/x509/CRLReason;

    if-eqz v1, :cond_1a

    .line 87
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/RevokedInfo;->revocationReason:Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 90
    :cond_1a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
