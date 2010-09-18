.class public Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "IssuingDistributionPoint.java"


# instance fields
.field private indirectCRL:Z

.field private onlyContainsAttributeCerts:Z

.field private onlyContainsCACerts:Z

.field private onlyContainsUserCerts:Z

.field private seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    const/4 v3, 0x0

    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 58
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v0, v2, :cond_52

    .line 60
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    .line 62
    .local v1, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_54

    .line 81
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "unknown tag in IssuingDistributionPoint"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :pswitch_24
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    .line 58
    :goto_2e
    :pswitch_2e
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 70
    :pswitch_31
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    goto :goto_2e

    .line 75
    :pswitch_3c
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    goto :goto_2e

    .line 78
    :pswitch_47
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v2

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    goto :goto_2e

    .line 84
    .end local v1           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_52
    return-void

    .line 62
    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_24
        :pswitch_31
        :pswitch_2e
        :pswitch_3c
        :pswitch_47
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .registers 3
    .parameter "obj"

    .prologue
    .line 38
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    if-eqz v0, :cond_a

    .line 40
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    .end local p0
    move-object v0, p0

    .line 44
    :goto_9
    return-object v0

    .line 42
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 44
    new-instance v0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 47
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 32
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public isIndirectCRL()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->indirectCRL:Z

    return v0
.end method

.method public onlyContainsAttributeCerts()Z
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts:Z

    return v0
.end method

.method public onlyContainsCACerts()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts:Z

    return v0
.end method

.method public onlyContainsUserCerts()Z
    .registers 2

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts:Z

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
