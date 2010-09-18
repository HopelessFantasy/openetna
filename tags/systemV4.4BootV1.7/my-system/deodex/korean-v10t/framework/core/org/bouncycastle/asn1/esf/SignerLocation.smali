.class public Lorg/bouncycastle/asn1/esf/SignerLocation;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "SignerLocation.java"


# instance fields
.field private countryName:Lorg/bouncycastle/asn1/DERUTF8String;

.field private localityName:Lorg/bouncycastle/asn1/DERUTF8String;

.field private postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v4, 0x1

    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 31
    .local v0, e:Ljava/util/Enumeration;
    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_4c

    .line 33
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 35
    .local v1, o:Lorg/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_4e

    .line 51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "illegal tag"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 38
    :pswitch_23
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    goto :goto_8

    .line 41
    :pswitch_2a
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    goto :goto_8

    .line 44
    :pswitch_31
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 45
    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    const/4 v3, 0x6

    if-le v2, v3, :cond_8

    .line 47
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "postal address must contain less than 6 strings"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 54
    .end local v1           #o:Lorg/bouncycastle/asn1/DERTaggedObject;
    :cond_4c
    return-void

    .line 35
    nop

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_23
        :pswitch_2a
        :pswitch_31
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/DERUTF8String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "countryName"
    .parameter "localityName"
    .parameter "postalAddress"

    .prologue
    .line 60
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 61
    if-eqz p3, :cond_14

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_14

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "postal address must contain less than 6 strings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_14
    if-eqz p1, :cond_20

    .line 68
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERUTF8String;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    .line 71
    :cond_20
    if-eqz p2, :cond_2c

    .line 73
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERUTF8String;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/DERUTF8String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERUTF8String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    .line 76
    :cond_2c
    if-eqz p3, :cond_38

    .line 78
    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Sequence;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 80
    :cond_38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignerLocation;
    .registers 3
    .parameter "obj"

    .prologue
    .line 85
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    if-eqz v0, :cond_a

    .line 87
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    .end local p0
    move-object v0, p0

    .line 90
    :goto_9
    return-object v0

    .restart local p0
    :cond_a
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9
.end method


# virtual methods
.method public getCountryName()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getLocalityName()Lorg/bouncycastle/asn1/DERUTF8String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    return-object v0
.end method

.method public getPostalAddress()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 127
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 129
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_15

    .line 131
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 134
    :cond_15
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    if-eqz v1, :cond_23

    .line 136
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 139
    :cond_23
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_32

    .line 141
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 144
    :cond_32
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
