.class public Lorg/bouncycastle/asn1/ocsp/CrlID;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CrlID.java"


# instance fields
.field crlNum:Lorg/bouncycastle/asn1/DERInteger;

.field crlTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field crlUrl:Lorg/bouncycastle/asn1/DERIA5String;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v3, 0x1

    .line 16
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 17
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 19
    .local v0, e:Ljava/util/Enumeration;
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4d

    .line 21
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 23
    .local v1, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    .line 35
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown tag number: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 26
    :pswitch_38
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/DERIA5String;

    goto :goto_8

    .line 29
    :pswitch_3f
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_8

    .line 32
    :pswitch_46
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    goto :goto_8

    .line 39
    .end local v1           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_4d
    return-void

    .line 23
    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_38
        :pswitch_3f
        :pswitch_46
    .end packed-switch
.end method


# virtual methods
.method public getCrlNum()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getCrlTime()Lorg/bouncycastle/asn1/DERGeneralizedTime;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getCrlUrl()Lorg/bouncycastle/asn1/DERIA5String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/DERIA5String;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 67
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 69
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/DERIA5String;

    if-eqz v1, :cond_15

    .line 71
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlUrl:Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 74
    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_23

    .line 76
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlNum:Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 79
    :cond_23
    iget-object v1, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_32

    .line 81
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/ocsp/CrlID;->crlTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 84
    :cond_32
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
