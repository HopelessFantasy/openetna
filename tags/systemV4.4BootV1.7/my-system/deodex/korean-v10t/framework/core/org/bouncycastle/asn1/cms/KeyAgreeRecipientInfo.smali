.class public Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "KeyAgreeRecipientInfo.java"


# instance fields
.field private keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

.field private recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

.field private ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "seq"

    .prologue
    const/4 v3, 0x1

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    const/4 v0, 0x0

    .line 41
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 42
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    .line 45
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_34

    .line 47
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    move v0, v1

    .line 51
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_34
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 54
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 55
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "originator"
    .parameter "ukm"
    .parameter "keyEncryptionAlgorithm"
    .parameter "recipientEncryptedKeys"

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 29
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 30
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    .line 31
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 32
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 33
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 34
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .registers 4
    .parameter "obj"

    .prologue
    .line 82
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    if-eqz v0, :cond_a

    .line 84
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    .end local p0
    move-object v0, p0

    .line 89
    :goto_9
    return-object v0

    .line 87
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 89
    new-instance v0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 92
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal object in KeyAgreeRecipientInfo: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 70
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getKeyEncryptionAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOriginator()Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    return-object v0
.end method

.method public getRecipientEncryptedKeys()Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public getUserKeyingMaterial()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 136
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 138
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 139
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->originator:Lorg/bouncycastle/asn1/cms/OriginatorIdentifierOrKey;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 141
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_24

    .line 143
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->ukm:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 146
    :cond_24
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->keyEncryptionAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 147
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->recipientEncryptedKeys:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 149
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
