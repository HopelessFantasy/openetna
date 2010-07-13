.class public Lorg/bouncycastle/asn1/x509/TBSCertList;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    }
.end annotation


# instance fields
.field crlExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lorg/bouncycastle/asn1/x509/X509Name;

.field nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field revokedCertificates:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

.field seq:Lorg/bouncycastle/asn1/ASN1Sequence;

.field signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .parameter "seq"

    .prologue
    .line 118
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 119
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_11

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x7

    if-le v4, v5, :cond_2e

    .line 121
    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bad sequence size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 124
    :cond_2e
    const/4 v2, 0x0

    .line 126
    .local v2, seqPos:I
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 128
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v4, :cond_ce

    .line 130
    add-int/lit8 v3, v2, 0x1

    .end local v2           #seqPos:I
    .local v3, seqPos:I
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/DERInteger;

    move v2, v3

    .line 137
    .end local v3           #seqPos:I
    .restart local v2       #seqPos:I
    :goto_46
    add-int/lit8 v3, v2, 0x1

    .end local v2           #seqPos:I
    .restart local v3       #seqPos:I
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 138
    add-int/lit8 v2, v3, 0x1

    .end local v3           #seqPos:I
    .restart local v2       #seqPos:I
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/X509Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    .line 139
    add-int/lit8 v3, v2, 0x1

    .end local v2           #seqPos:I
    .restart local v3       #seqPos:I
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 141
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v3, v4, :cond_f5

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERUTCTime;

    if-nez v4, :cond_88

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-nez v4, :cond_88

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v4, :cond_f5

    .line 146
    :cond_88
    add-int/lit8 v2, v3, 0x1

    .end local v3           #seqPos:I
    .restart local v2       #seqPos:I
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/Time;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Time;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 149
    :goto_94
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v2, v4, :cond_d9

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    if-nez v4, :cond_d9

    .line 152
    add-int/lit8 v3, v2, 0x1

    .end local v2           #seqPos:I
    .restart local v3       #seqPos:I
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .line 153
    .local v0, certs:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    new-array v4, v4, [Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    .line 155
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b5
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    array-length v4, v4

    if-ge v1, v4, :cond_d8

    .line 157
    iget-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    new-instance v5, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;-><init>(Lorg/bouncycastle/asn1/x509/TBSCertList;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    aput-object v5, v4, v1

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_b5

    .line 134
    .end local v0           #certs:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v1           #i:I
    .end local v3           #seqPos:I
    .restart local v2       #seqPos:I
    :cond_ce
    new-instance v4, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/DERInteger;

    goto/16 :goto_46

    .end local v2           #seqPos:I
    .restart local v0       #certs:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v1       #i:I
    .restart local v3       #seqPos:I
    :cond_d8
    move v2, v3

    .line 161
    .end local v0           #certs:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v1           #i:I
    .end local v3           #seqPos:I
    .restart local v2       #seqPos:I
    :cond_d9
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v2, v4, :cond_f4

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v4, :cond_f4

    .line 164
    add-int/lit8 v3, v2, 0x1

    .end local v2           #seqPos:I
    .restart local v3       #seqPos:I
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    move v2, v3

    .line 166
    .end local v3           #seqPos:I
    .restart local v2       #seqPos:I
    :cond_f4
    return-void

    .end local v2           #seqPos:I
    .restart local v3       #seqPos:I
    :cond_f5
    move v2, v3

    .end local v3           #seqPos:I
    .restart local v2       #seqPos:I
    goto :goto_94
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertList;
    .registers 3
    .parameter "obj"

    .prologue
    .line 104
    instance-of v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;

    if-eqz v0, :cond_8

    .line 106
    check-cast p0, Lorg/bouncycastle/asn1/x509/TBSCertList;

    .end local p0
    move-object v0, p0

    .line 110
    :goto_7
    return-object v0

    .line 108
    .restart local p0
    :cond_8
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_14

    .line 110
    new-instance v0, Lorg/bouncycastle/asn1/x509/TBSCertList;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_7

    .line 113
    .restart local p0
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in factory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/TBSCertList;
    .registers 3
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 98
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/TBSCertList;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->crlExtensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    return-object v0
.end method

.method public getNextUpdate()Lorg/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getRevokedCertificates()[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->revokedCertificates:[Lorg/bouncycastle/asn1/x509/TBSCertList$CRLEntry;

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 180
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getThisUpdate()Lorg/bouncycastle/asn1/x509/Time;
    .registers 2

    .prologue
    .line 190
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getVersionNumber()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->version:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/TBSCertList;->seq:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method
