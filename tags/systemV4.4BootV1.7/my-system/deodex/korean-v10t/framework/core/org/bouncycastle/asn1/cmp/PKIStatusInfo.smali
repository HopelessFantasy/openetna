.class public Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "PKIStatusInfo.java"


# instance fields
.field failInfo:Lorg/bouncycastle/asn1/DERBitString;

.field status:Lorg/bouncycastle/asn1/DERInteger;

.field statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# direct methods
.method public constructor <init>(I)V
    .registers 3
    .parameter "status"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/DERInteger;

    .line 76
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/cmp/PKIFreeText;)V
    .registers 4
    .parameter "status"
    .parameter "statusString"

    .prologue
    .line 85
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 86
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/DERInteger;

    .line 87
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 88
    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/cmp/PKIFreeText;Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;)V
    .registers 5
    .parameter "status"
    .parameter "statusString"
    .parameter "failInfo"

    .prologue
    .line 94
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 95
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/DERInteger;

    .line 96
    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 97
    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/DERBitString;

    .line 98
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 45
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 46
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/DERInteger;

    .line 48
    iput-object v4, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 49
    iput-object v4, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/DERBitString;

    .line 51
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_30

    .line 53
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    .line 54
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/DERBitString;

    .line 68
    :cond_2f
    :goto_2f
    return-void

    .line 56
    :cond_30
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v2, :cond_2f

    .line 58
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    .line 59
    .local v0, obj:Lorg/bouncycastle/asn1/DEREncodable;
    instance-of v1, v0, Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_45

    .line 61
    invoke-static {v0}, Lorg/bouncycastle/asn1/DERBitString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/DERBitString;

    goto :goto_2f

    .line 65
    :cond_45
    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    goto :goto_2f
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .registers 4
    .parameter "obj"

    .prologue
    .line 31
    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    if-eqz v0, :cond_8

    .line 33
    check-cast p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    .end local p0
    move-object v0, p0

    .line 37
    :goto_7
    return-object v0

    .line 35
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 40
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 25
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getFailInfo()Lorg/bouncycastle/asn1/DERBitString;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/DERBitString;

    return-object v0
.end method

.method public getStatus()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getStatusString()Lorg/bouncycastle/asn1/cmp/PKIFreeText;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 148
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 150
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->status:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 152
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    if-eqz v1, :cond_13

    .line 154
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->statusString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 157
    :cond_13
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/DERBitString;

    if-eqz v1, :cond_1c

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/PKIStatusInfo;->failInfo:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 162
    :cond_1c
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
