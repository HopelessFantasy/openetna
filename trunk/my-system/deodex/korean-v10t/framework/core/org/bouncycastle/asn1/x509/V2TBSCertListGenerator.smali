.class public Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;
.super Ljava/lang/Object;
.source "V2TBSCertListGenerator.java"


# instance fields
.field private crlentries:Ljava/util/Vector;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field issuer:Lorg/bouncycastle/asn1/x509/X509Name;

.field nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 45
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 46
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 47
    iput-object v2, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    .line 51
    return-void
.end method


# virtual methods
.method public addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 3
    .parameter "crlEntry"

    .prologue
    .line 93
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    if-nez v0, :cond_b

    .line 95
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    .line 98
    :cond_b
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERUTCTime;I)V
    .registers 5
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "reason"

    .prologue
    .line 103
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;I)V

    .line 104
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;I)V
    .registers 5
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "reason"

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/DERGeneralizedTime;)V

    .line 109
    return-void
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;ILorg/bouncycastle/asn1/DERGeneralizedTime;)V
    .registers 13
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "reason"
    .parameter "invalidityDate"

    .prologue
    .line 113
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 114
    .local v2, extOids:Ljava/util/Vector;
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 116
    .local v3, extValues:Ljava/util/Vector;
    if-eqz p3, :cond_28

    .line 118
    new-instance v0, Lorg/bouncycastle/asn1/x509/CRLReason;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/x509/CRLReason;-><init>(I)V

    .line 122
    .local v0, crlReason:Lorg/bouncycastle/asn1/x509/CRLReason;
    :try_start_11
    sget-object v4, Lorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 123
    new-instance v4, Lorg/bouncycastle/asn1/x509/X509Extension;

    const/4 v5, 0x0

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/CRLReason;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_28} :catch_50

    .line 131
    .end local v0           #crlReason:Lorg/bouncycastle/asn1/x509/CRLReason;
    :cond_28
    if-eqz p4, :cond_41

    .line 135
    :try_start_2a
    sget-object v4, Lorg/bouncycastle/asn1/x509/X509Extensions;->InvalidityDate:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 136
    new-instance v4, Lorg/bouncycastle/asn1/x509/X509Extension;

    const/4 v5, 0x0

    new-instance v6, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getEncoded()[B

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v4, v5, v6}, Lorg/bouncycastle/asn1/x509/X509Extension;-><init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_41} :catch_6b

    .line 144
    :cond_41
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    if-eqz v4, :cond_86

    .line 146
    new-instance v4, Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v4, v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;-><init>(Ljava/util/Vector;Ljava/util/Vector;)V

    invoke-virtual {p0, p1, p2, v4}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    .line 152
    :goto_4f
    return-void

    .line 125
    .restart local v0       #crlReason:Lorg/bouncycastle/asn1/x509/CRLReason;
    :catch_50
    move-exception v4

    move-object v1, v4

    .line 127
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error encoding reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 138
    .end local v0           #crlReason:Lorg/bouncycastle/asn1/x509/CRLReason;
    .end local v1           #e:Ljava/io/IOException;
    :catch_6b
    move-exception v4

    move-object v1, v4

    .line 140
    .restart local v1       #e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error encoding invalidityDate: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 150
    .end local v1           #e:Ljava/io/IOException;
    :cond_86
    const/4 v4, 0x0

    invoke-virtual {p0, p1, p2, v4}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/X509Extensions;)V

    goto :goto_4f
.end method

.method public addCRLEntry(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/Time;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 6
    .parameter "userCertificate"
    .parameter "revocationDate"
    .parameter "extensions"

    .prologue
    .line 156
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 158
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 159
    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 161
    if-eqz p3, :cond_10

    .line 163
    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 166
    :cond_10
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->addCRLEntry(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 167
    return-void
.end method

.method public generateTBSCertList()Lorg/bouncycastle/asn1/x509/TBSCertList;
    .registers 7

    .prologue
    .line 177
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-nez v3, :cond_14

    .line 179
    :cond_c
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Not all mandatory fields set in V2 TBSCertList generator."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_14
    new-instance v2, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 184
    .local v2, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 185
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 186
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 188
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 189
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    if-eqz v3, :cond_36

    .line 191
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 195
    :cond_36
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    if-eqz v3, :cond_5d

    .line 197
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 198
    .local v0, certs:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->crlentries:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 199
    .local v1, it:Ljava/util/Enumeration;
    :goto_45
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 201
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_45

    .line 203
    :cond_55
    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 206
    .end local v0           #certs:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v1           #it:Ljava/util/Enumeration;
    :cond_5d
    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v3, :cond_6c

    .line 208
    new-instance v3, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 211
    :cond_6c
    new-instance v3, Lorg/bouncycastle/asn1/x509/TBSCertList;

    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v3
.end method

.method public setExtensions(Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 2
    .parameter "extensions"

    .prologue
    .line 172
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 173
    return-void
.end method

.method public setIssuer(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 2
    .parameter "issuer"

    .prologue
    .line 63
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->issuer:Lorg/bouncycastle/asn1/x509/X509Name;

    .line 64
    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/DERUTCTime;)V
    .registers 3
    .parameter "nextUpdate"

    .prologue
    .line 75
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 76
    return-void
.end method

.method public setNextUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .parameter "nextUpdate"

    .prologue
    .line 87
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->nextUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 88
    return-void
.end method

.method public setSignature(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .parameter "signature"

    .prologue
    .line 57
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->signature:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 58
    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/DERUTCTime;)V
    .registers 3
    .parameter "thisUpdate"

    .prologue
    .line 69
    new-instance v0, Lorg/bouncycastle/asn1/x509/Time;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/x509/Time;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 70
    return-void
.end method

.method public setThisUpdate(Lorg/bouncycastle/asn1/x509/Time;)V
    .registers 2
    .parameter "thisUpdate"

    .prologue
    .line 81
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/V2TBSCertListGenerator;->thisUpdate:Lorg/bouncycastle/asn1/x509/Time;

    .line 82
    return-void
.end method
