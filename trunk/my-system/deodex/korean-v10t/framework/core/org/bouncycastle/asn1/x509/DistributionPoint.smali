.class public Lorg/bouncycastle/asn1/x509/DistributionPoint;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "DistributionPoint.java"


# instance fields
.field cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

.field distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

.field reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 54
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 55
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_38

    .line 57
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 58
    .local v1, t:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_3a

    .line 55
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 61
    :pswitch_1d
    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    goto :goto_1a

    .line 64
    :pswitch_25
    new-instance v2, Lorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/x509/ReasonFlags;-><init>(Lorg/bouncycastle/asn1/DERBitString;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    goto :goto_1a

    .line 67
    :pswitch_31
    invoke-static {v1, v4}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    goto :goto_1a

    .line 70
    .end local v1           #t:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_38
    return-void

    .line 58
    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_25
        :pswitch_31
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/DistributionPointName;Lorg/bouncycastle/asn1/x509/ReasonFlags;Lorg/bouncycastle/asn1/x509/GeneralNames;)V
    .registers 4
    .parameter "distributionPoint"
    .parameter "reasons"
    .parameter "cRLIssuer"

    .prologue
    .line 76
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    .line 78
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    .line 79
    iput-object p3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    .line 80
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .registers 4
    .parameter "obj"

    .prologue
    .line 39
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    if-eqz v0, :cond_a

    .line 41
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    .end local p0
    move-object v0, p0

    .line 46
    :goto_9
    return-object v0

    .line 44
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 46
    new-instance v0, Lorg/bouncycastle/asn1/x509/DistributionPoint;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 49
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid DistributionPoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 33
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCRLIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    return-object v0
.end method

.method public getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    return-object v0
.end method

.method public getReasons()Lorg/bouncycastle/asn1/x509/ReasonFlags;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 101
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    if-eqz v1, :cond_14

    .line 106
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->distributionPoint:Lorg/bouncycastle/asn1/x509/DistributionPointName;

    invoke-direct {v1, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 109
    :cond_14
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    if-eqz v1, :cond_23

    .line 111
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->reasons:Lorg/bouncycastle/asn1/x509/ReasonFlags;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 114
    :cond_23
    iget-object v1, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    if-eqz v1, :cond_32

    .line 116
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/DistributionPoint;->cRLIssuer:Lorg/bouncycastle/asn1/x509/GeneralNames;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 119
    :cond_32
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
