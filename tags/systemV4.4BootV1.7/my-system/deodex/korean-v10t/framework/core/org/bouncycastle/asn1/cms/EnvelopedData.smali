.class public Lorg/bouncycastle/asn1/cms/EnvelopedData;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "EnvelopedData.java"


# instance fields
.field private encryptedContentInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

.field private originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

.field private recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

.field private unprotectedAttrs:Lorg/bouncycastle/asn1/ASN1Set;

.field private version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    const/4 v4, 0x0

    .line 60
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 61
    const/4 v0, 0x0

    .line 63
    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 65
    add-int/lit8 v0, v1, 0x1

    .end local v1           #index:I
    .restart local v0       #index:I
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    .line 67
    .local v2, tmp:Lorg/bouncycastle/asn1/DEREncodable;
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_28

    .line 69
    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local v2           #tmp:Lorg/bouncycastle/asn1/DEREncodable;
    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/cms/OriginatorInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 70
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    .restart local v2       #tmp:Lorg/bouncycastle/asn1/DEREncodable;
    move v0, v1

    .line 73
    .end local v1           #index:I
    .restart local v0       #index:I
    :cond_28
    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    .line 75
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .restart local v1       #index:I
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    .line 77
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-le v3, v1, :cond_4c

    .line 79
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    .line 81
    :cond_4c
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OriginatorInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;Lorg/bouncycastle/asn1/ASN1Set;)V
    .registers 10
    .parameter "originatorInfo"
    .parameter "recipientInfos"
    .parameter "encryptedContentInfo"
    .parameter "unprotectedAttrs"

    .prologue
    const/4 v4, 0x2

    .line 29
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 30
    if-nez p1, :cond_8

    if-eqz p4, :cond_18

    .line 32
    :cond_8
    new-instance v2, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 52
    :cond_f
    :goto_f
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    .line 53
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    .line 54
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    .line 55
    iput-object p4, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    .line 56
    return-void

    .line 36
    :cond_18
    new-instance v2, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 38
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 40
    .local v0, e:Ljava/util/Enumeration;
    :cond_24
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_f

    .line 42
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientInfo;

    move-result-object v1

    .line 44
    .local v1, ri:Lorg/bouncycastle/asn1/cms/RecipientInfo;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/RecipientInfo;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/DERInteger;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    .line 46
    new-instance v2, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_f
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;
    .registers 4
    .parameter "obj"

    .prologue
    .line 108
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    if-eqz v0, :cond_a

    .line 110
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    .end local p0
    move-object v0, p0

    .line 115
    :goto_9
    return-object v0

    .line 113
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 115
    new-instance v0, Lorg/bouncycastle/asn1/cms/EnvelopedData;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/EnvelopedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 118
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid EnvelopedData: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/EnvelopedData;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 96
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/EnvelopedData;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/EnvelopedData;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEncryptedContentInfo()Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    return-object v0
.end method

.method public getOriginatorInfo()Lorg/bouncycastle/asn1/cms/OriginatorInfo;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    return-object v0
.end method

.method public getRecipientInfos()Lorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getUnprotectedAttrs()Lorg/bouncycastle/asn1/ASN1Set;
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 160
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 162
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 164
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    if-eqz v1, :cond_19

    .line 166
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->originatorInfo:Lorg/bouncycastle/asn1/cms/OriginatorInfo;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 169
    :cond_19
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->recipientInfos:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 170
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->encryptedContentInfo:Lorg/bouncycastle/asn1/cms/EncryptedContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 172
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_32

    .line 174
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/cms/EnvelopedData;->unprotectedAttrs:Lorg/bouncycastle/asn1/ASN1Set;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 177
    :cond_32
    new-instance v1, Lorg/bouncycastle/asn1/BERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
