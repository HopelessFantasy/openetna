.class public Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "ResponseBytes.java"


# instance fields
.field response:Lorg/bouncycastle/asn1/ASN1OctetString;

.field responseType:Lorg/bouncycastle/asn1/DERObjectIdentifier;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 31
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .parameter "responseType"
    .parameter "response"

    .prologue
    .line 21
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 22
    iput-object p1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 23
    iput-object p2, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 24
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .registers 3
    .parameter "obj"

    .prologue
    .line 43
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    if-eqz v0, :cond_a

    .line 45
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    .end local p0
    move-object v0, p0

    .line 49
    :goto_9
    return-object v0

    .line 47
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 52
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 37
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getResponse()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getResponseType()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 77
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->responseType:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 78
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;->response:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 80
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
