.class public Lorg/bouncycastle/asn1/tsp/TimeStampReq;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "TimeStampReq.java"


# instance fields
.field certReq:Lorg/bouncycastle/asn1/DERBoolean;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

.field nonce:Lorg/bouncycastle/asn1/DERInteger;

.field tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 7
    .parameter "seq"

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 48
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    .line 50
    .local v0, nbObjects:I
    const/4 v2, 0x0

    .line 53
    .local v2, seqStart:I
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 55
    add-int/lit8 v2, v2, 0x1

    .line 58
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 60
    add-int/lit8 v2, v2, 0x1

    .line 62
    move v1, v2

    .local v1, opt:I
    :goto_21
    if-ge v1, v0, :cond_7a

    .line 65
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v4, :cond_38

    .line 67
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 62
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    .line 70
    :cond_38
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v4, :cond_4b

    .line 72
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_35

    .line 75
    :cond_4b
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v4, :cond_5e

    .line 77
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    goto :goto_35

    .line 80
    :cond_5e
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_35

    .line 82
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 83
    .local v3, tagged:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    if-nez v4, :cond_35

    .line 85
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_35

    .line 89
    .end local v3           #tagged:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_7a
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERBoolean;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 8
    .parameter "messageImprint"
    .parameter "tsaPolicy"
    .parameter "nonce"
    .parameter "certReq"
    .parameter "extensions"

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 99
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 101
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 102
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 103
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    .line 104
    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    .line 105
    iput-object p5, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 106
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TimeStampReq;
    .registers 4
    .parameter "o"

    .prologue
    .line 32
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    if-eqz v0, :cond_a

    .line 34
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    .end local p0
    move-object v0, p0

    .line 38
    :goto_9
    return-object v0

    .line 36
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 38
    new-instance v0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsp/TimeStampReq;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 41
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object in \'TimeStampReq\' factory : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getCertReq()Lorg/bouncycastle/asn1/DERBoolean;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getReqPolicy()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 154
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 156
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 157
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_19

    .line 161
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->tsaPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 164
    :cond_19
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_22

    .line 166
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 169
    :cond_22
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 171
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->certReq:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 174
    :cond_33
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_41

    .line 176
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/TimeStampReq;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 179
    :cond_41
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
