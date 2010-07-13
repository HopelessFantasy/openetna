.class public Lorg/bouncycastle/asn1/icao/DataGroupHash;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "DataGroupHash.java"


# instance fields
.field dataGroupHashValue:Lorg/bouncycastle/asn1/ASN1OctetString;

.field dataGroupNumber:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .parameter "dataGroupNumber"
    .parameter "dataGroupHashValue"

    .prologue
    .line 77
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 78
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 79
    iput-object p2, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 80
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "seq"

    .prologue
    .line 65
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 66
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 69
    .local v0, e:Ljava/util/Enumeration;
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 71
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 72
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/icao/DataGroupHash;
    .registers 3
    .parameter "obj"

    .prologue
    .line 49
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;

    if-eqz v0, :cond_a

    .line 51
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;

    .end local p0
    move-object v0, p0

    .line 56
    :goto_9
    return-object v0

    .line 54
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_18

    .line 56
    new-instance v0, Lorg/bouncycastle/asn1/icao/DataGroupHash;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/icao/DataGroupHash;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 60
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getDataGroupHashValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getDataGroupNumber()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 94
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 95
    .local v0, seq:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupNumber:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 96
    iget-object v1, p0, Lorg/bouncycastle/asn1/icao/DataGroupHash;->dataGroupHashValue:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 98
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
