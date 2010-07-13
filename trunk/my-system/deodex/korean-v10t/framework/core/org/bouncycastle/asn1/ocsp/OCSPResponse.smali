.class public Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "OCSPResponse.java"


# instance fields
.field responseBytes:Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

.field responseStatus:Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x1

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DEREnumerated;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(Lorg/bouncycastle/asn1/DEREnumerated;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    .line 32
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_27

    .line 34
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 37
    :cond_27
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lorg/bouncycastle/asn1/ocsp/ResponseBytes;)V
    .registers 3
    .parameter "responseStatus"
    .parameter "responseBytes"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    .line 24
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .registers 3
    .parameter "obj"

    .prologue
    .line 49
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    if-eqz v0, :cond_a

    .line 51
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    .end local p0
    move-object v0, p0

    .line 55
    :goto_9
    return-object v0

    .line 53
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 55
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 58
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getResponseBytes()Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    return-object v0
.end method

.method public getResponseStatus()Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    .line 81
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 83
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseStatus:Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 85
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    if-eqz v1, :cond_1a

    .line 87
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;->responseBytes:Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 90
    :cond_1a
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
