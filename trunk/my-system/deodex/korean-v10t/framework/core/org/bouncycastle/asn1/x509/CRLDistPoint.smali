.class public Lorg/bouncycastle/asn1/x509/CRLDistPoint;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CRLDistPoint.java"


# instance fields
.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 39
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 40
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 41
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/x509/DistributionPoint;)V
    .registers 5
    .parameter "points"

    .prologue
    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 13
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 46
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 48
    .local v1, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_c
    array-length v2, p1

    if-eq v0, v2, :cond_17

    .line 50
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 53
    :cond_17
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 54
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .registers 3
    .parameter "obj"

    .prologue
    .line 25
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    if-eqz v0, :cond_8

    .line 27
    check-cast p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    .end local p0
    move-object v0, p0

    .line 31
    :goto_7
    return-object v0

    .line 29
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 31
    new-instance v0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 34
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 19
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .registers 4

    .prologue
    .line 63
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    new-array v0, v2, [Lorg/bouncycastle/asn1/x509/DistributionPoint;

    .line 65
    .local v0, dp:[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-eq v1, v2, :cond_20

    .line 67
    iget-object v2, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v2

    aput-object v2, v0, v1

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 70
    :cond_20
    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
