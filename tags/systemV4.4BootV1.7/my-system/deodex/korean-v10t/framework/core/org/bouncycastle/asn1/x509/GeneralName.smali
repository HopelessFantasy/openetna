.class public Lorg/bouncycastle/asn1/x509/GeneralName;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "GeneralName.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final dNSName:I = 0x2

.field public static final directoryName:I = 0x4

.field public static final ediPartyName:I = 0x5

.field public static final iPAddress:I = 0x7

.field public static final otherName:I = 0x0

.field public static final registeredID:I = 0x8

.field public static final rfc822Name:I = 0x1

.field public static final uniformResourceIdentifier:I = 0x6

.field public static final x400Address:I = 0x3


# instance fields
.field obj:Lorg/bouncycastle/asn1/DEREncodable;

.field tag:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 6
    .parameter "tag"
    .parameter "name"

    .prologue
    .line 117
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 118
    const/4 v0, 0x1

    if-eq p1, v0, :cond_c

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    const/4 v0, 0x6

    if-ne p1, v0, :cond_16

    .line 120
    :cond_c
    iput p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 121
    new-instance v0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 132
    :goto_15
    return-void

    .line 123
    :cond_16
    const/16 v0, 0x8

    if-ne p1, v0, :cond_24

    .line 125
    iput p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 126
    new-instance v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    goto :goto_15

    .line 130
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t process String for tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .registers 3
    .parameter "tag"
    .parameter "name"

    .prologue
    .line 103
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 104
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 105
    iput p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 106
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObject;I)V
    .registers 3
    .parameter "name"
    .parameter "tag"

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 69
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 70
    iput p2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/X509Name;)V
    .registers 3
    .parameter "dirName"

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 60
    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    .line 61
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 7
    .parameter "obj"

    .prologue
    const/4 v4, 0x0

    .line 137
    if-eqz p0, :cond_7

    instance-of v3, p0, Lorg/bouncycastle/asn1/x509/GeneralName;

    if-eqz v3, :cond_b

    .line 139
    :cond_7
    check-cast p0, Lorg/bouncycastle/asn1/x509/GeneralName;

    .end local p0
    move-object v3, p0

    .line 166
    :goto_a
    return-object v3

    .line 142
    .restart local p0
    :cond_b
    instance-of v3, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v3, :cond_1a

    .line 144
    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-object v2, v0

    .line 145
    .local v2, tagObj:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    .line 147
    .local v1, tag:I
    packed-switch v1, :pswitch_data_8e

    .line 170
    .end local v1           #tag:I
    .end local v2           #tagObj:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_1a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unknown object in getInstance"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 150
    .restart local v1       #tag:I
    .restart local v2       #tagObj:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_22
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto :goto_a

    .line 152
    :pswitch_2c
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto :goto_a

    .line 154
    :pswitch_36
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto :goto_a

    .line 156
    :pswitch_40
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown tag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 158
    :pswitch_59
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto :goto_a

    .line 160
    :pswitch_64
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto :goto_a

    .line 162
    :pswitch_6e
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto :goto_a

    .line 164
    :pswitch_78
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto :goto_a

    .line 166
    :pswitch_82
    new-instance v3, Lorg/bouncycastle/asn1/x509/GeneralName;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/asn1/x509/GeneralName;-><init>(Lorg/bouncycastle/asn1/DERObject;I)V

    goto/16 :goto_a

    .line 147
    nop

    :pswitch_data_8e
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2c
        :pswitch_36
        :pswitch_40
        :pswitch_59
        :pswitch_64
        :pswitch_6e
        :pswitch_78
        :pswitch_82
    .end packed-switch
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x509/GeneralName;
    .registers 3
    .parameter "tagObj"
    .parameter "explicit"

    .prologue
    .line 177
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getName()Lorg/bouncycastle/asn1/DEREncodable;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    return-object v0
.end method

.method public getTagNo()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 192
    iget v0, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_10

    .line 194
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    .line 198
    :goto_f
    return-object v0

    :cond_10
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->tag:I

    iget-object v3, p0, Lorg/bouncycastle/asn1/x509/GeneralName;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_f
.end method
