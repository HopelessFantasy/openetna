.class public Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "KeyTransRecipientInfo.java"


# instance fields
.field private encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

.field private version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "seq"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 43
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 45
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 46
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 6
    .parameter "rid"
    .parameter "keyEncryptionAlgorithm"
    .parameter "encryptedKey"

    .prologue
    .line 25
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 26
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_1a

    .line 28
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 35
    :goto_13
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    .line 36
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 37
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 38
    return-void

    .line 32
    :cond_1a
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_13
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;
    .registers 4
    .parameter "obj"

    .prologue
    .line 58
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    if-eqz v0, :cond_a

    .line 60
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    .end local p0
    move-object v0, p0

    .line 65
    :goto_9
    return-object v0

    .line 63
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 68
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in KeyTransRecipientInfo: "

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


# virtual methods
.method public getEncryptedKey()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getRecipientIdentifier()Lorg/bouncycastle/asn1/cms/RecipientIdentifier;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 74
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 107
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 108
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->rid:Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 109
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 110
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->encryptedKey:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 112
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
