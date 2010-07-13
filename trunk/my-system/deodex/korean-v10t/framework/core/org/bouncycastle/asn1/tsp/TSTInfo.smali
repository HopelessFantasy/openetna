.class public Lorg/bouncycastle/asn1/tsp/TSTInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "TSTInfo.java"


# instance fields
.field accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

.field extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

.field genTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

.field nonce:Lorg/bouncycastle/asn1/DERInteger;

.field ordering:Lorg/bouncycastle/asn1/DERBoolean;

.field serialNumber:Lorg/bouncycastle/asn1/DERInteger;

.field tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

.field tsaPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

.field version:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .parameter "seq"

    .prologue
    .line 74
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 75
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v1

    .line 78
    .local v1, e:Ljava/util/Enumeration;
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 81
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 84
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 87
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 90
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 94
    sget-object v4, Lorg/bouncycastle/asn1/DERBoolean;->FALSE:Lorg/bouncycastle/asn1/DERBoolean;

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/DERBoolean;

    .line 97
    :cond_3d
    :goto_3d
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 99
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERObject;

    .line 101
    .local v2, o:Lorg/bouncycastle/asn1/DERObject;
    instance-of v4, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v4, :cond_85

    .line 103
    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    move-object v3, v0

    .line 105
    .local v3, tagged:Lorg/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_a8

    .line 114
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown tag value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 108
    :pswitch_75
    const/4 v4, 0x1

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    goto :goto_3d

    .line 111
    :pswitch_7d
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    goto :goto_3d

    .line 117
    .end local v3           #tagged:Lorg/bouncycastle/asn1/DERTaggedObject;
    :cond_85
    instance-of v4, v2, Lorg/bouncycastle/asn1/DERSequence;

    if-eqz v4, :cond_90

    .line 119
    invoke-static {v2}, Lorg/bouncycastle/asn1/tsp/Accuracy;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/Accuracy;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    goto :goto_3d

    .line 121
    :cond_90
    instance-of v4, v2, Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v4, :cond_9b

    .line 123
    invoke-static {v2}, Lorg/bouncycastle/asn1/DERBoolean;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERBoolean;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/DERBoolean;

    goto :goto_3d

    .line 125
    :cond_9b
    instance-of v4, v2, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v4, :cond_3d

    .line 127
    invoke-static {v2}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    goto :goto_3d

    .line 131
    .end local v2           #o:Lorg/bouncycastle/asn1/DERObject;
    :cond_a6
    return-void

    .line 105
    nop

    :pswitch_data_a8
    .packed-switch 0x0
        :pswitch_75
        :pswitch_7d
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/tsp/MessageImprint;Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/tsp/Accuracy;Lorg/bouncycastle/asn1/DERBoolean;Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/X509Extensions;)V
    .registers 12
    .parameter "tsaPolicyId"
    .parameter "messageImprint"
    .parameter "serialNumber"
    .parameter "genTime"
    .parameter "accuracy"
    .parameter "ordering"
    .parameter "nonce"
    .parameter "tsa"
    .parameter "extensions"

    .prologue
    .line 137
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 138
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    .line 139
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 140
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    .line 141
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    .line 142
    iput-object p4, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 144
    iput-object p5, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    .line 145
    iput-object p6, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/DERBoolean;

    .line 146
    iput-object p7, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    .line 147
    iput-object p8, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    .line 148
    iput-object p9, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    .line 149
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TSTInfo;
    .registers 5
    .parameter "o"

    .prologue
    .line 47
    if-eqz p0, :cond_6

    instance-of v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    if-eqz v1, :cond_a

    .line 49
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    .end local p0
    move-object v1, p0

    .line 59
    :goto_9
    return-object v1

    .line 51
    .restart local p0
    :cond_a
    instance-of v1, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_16

    .line 53
    new-instance v1, Lorg/bouncycastle/asn1/tsp/TSTInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/tsp/TSTInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 55
    .restart local p0
    :cond_16
    instance-of v1, p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_38

    .line 59
    :try_start_1a
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1OctetString;

    .end local p0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/TSTInfo;
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_2c} :catch_2e

    move-result-object v1

    goto :goto_9

    .line 61
    :catch_2e
    move-exception v1

    move-object v0, v1

    .line 63
    .local v0, ioEx:Ljava/io/IOException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Bad object format in \'TSTInfo\' factory."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 68
    .end local v0           #ioEx:Ljava/io/IOException;
    .restart local p0
    :cond_38
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown object in \'TSTInfo\' factory : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public getAccuracy()Lorg/bouncycastle/asn1/tsp/Accuracy;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    return-object v0
.end method

.method public getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    return-object v0
.end method

.method public getGenTime()Lorg/bouncycastle/asn1/DERGeneralizedTime;
    .registers 2

    .prologue
    .line 173
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    return-object v0
.end method

.method public getNonce()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getOrdering()Lorg/bouncycastle/asn1/DERBoolean;
    .registers 2

    .prologue
    .line 178
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/DERBoolean;

    return-object v0
.end method

.method public getPolicy()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 2

    .prologue
    .line 158
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object v0
.end method

.method public getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getTsa()Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 221
    new-instance v0, Lorg/bouncycastle/asn1/DEREncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DEREncodableVector;-><init>()V

    .line 222
    .local v0, seq:Lorg/bouncycastle/asn1/DEREncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->version:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 224
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsaPolicyId:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 225
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->messageImprint:Lorg/bouncycastle/asn1/tsp/MessageImprint;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 226
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->serialNumber:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 227
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->genTime:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 229
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    if-eqz v1, :cond_29

    .line 231
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->accuracy:Lorg/bouncycastle/asn1/tsp/Accuracy;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 234
    :cond_29
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/DERBoolean;

    if-eqz v1, :cond_3a

    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 236
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->ordering:Lorg/bouncycastle/asn1/DERBoolean;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 239
    :cond_3a
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_43

    .line 241
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->nonce:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 244
    :cond_43
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v1, :cond_51

    .line 246
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->tsa:Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-direct {v1, v4, v3, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 249
    :cond_51
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    if-eqz v1, :cond_5f

    .line 251
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/TSTInfo;->extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;

    invoke-direct {v1, v3, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DEREncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 254
    :cond_5f
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
