.class public Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "CommitmentTypeQualifier.java"


# instance fields
.field private commitmentTypeIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field private qualifier:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 4
    .parameter "as"

    .prologue
    const/4 v1, 0x1

    .line 59
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 62
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-le v0, v1, :cond_19

    .line 64
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    .line 66
    :cond_19
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 3
    .parameter "commitmentTypeIdentifier"

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V
    .registers 3
    .parameter "commitmentTypeIdentifier"
    .parameter "qualifier"

    .prologue
    .line 46
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 47
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 48
    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    .line 49
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;
    .registers 3
    .parameter "as"

    .prologue
    .line 70
    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;

    if-nez v0, :cond_6

    if-nez p0, :cond_a

    .line 72
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;

    .end local p0
    move-object v0, p0

    .line 76
    :goto_9
    return-object v0

    .line 74
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 76
    new-instance v0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 79
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCommitmentTypeIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getQualifier()Lorg/bouncycastle/asn1/DEREncodable;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 100
    .local v0, dev:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->commitmentTypeIdentifier:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 101
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    if-eqz v1, :cond_13

    .line 103
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/CommitmentTypeQualifier;->qualifier:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 106
    :cond_13
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
