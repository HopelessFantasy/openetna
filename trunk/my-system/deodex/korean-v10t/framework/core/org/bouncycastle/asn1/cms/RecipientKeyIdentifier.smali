.class public Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientKeyIdentifier.java"


# instance fields
.field private date:Lorg/bouncycastle/asn1/DERGeneralizedTime;

.field private other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

.field private subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/DERGeneralizedTime;Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;)V
    .registers 4
    .parameter "subjectKeyIdentifier"
    .parameter "date"
    .parameter "other"

    .prologue
    .line 23
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 25
    iput-object p2, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 26
    iput-object p3, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 5
    .parameter "seq"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 32
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 35
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    .line 54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid KEKIdentifier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :pswitch_1f
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v0, :cond_30

    .line 42
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 56
    :goto_2f
    :pswitch_2f
    return-void

    .line 46
    :cond_30
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_2f

    .line 50
    :pswitch_3b
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    .line 51
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    goto :goto_2f

    .line 35
    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_1f
        :pswitch_3b
    .end packed-switch
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .registers 4
    .parameter "_obj"

    .prologue
    .line 80
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    if-eqz v0, :cond_a

    .line 82
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    .end local p0
    move-object v0, p0

    .line 87
    :goto_9
    return-object v0

    .line 85
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 87
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 90
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid RecipientKeyIdentifier: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;
    .registers 3
    .parameter "_ato"
    .parameter "_explicit"

    .prologue
    .line 69
    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDate()Lorg/bouncycastle/asn1/DERGeneralizedTime;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    return-object v0
.end method

.method public getOtherKeyAttribute()Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    return-object v0
.end method

.method public getSubjectKeyIdentifier()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 3

    .prologue
    .line 123
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 125
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->subjectKeyIdentifier:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 127
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    if-eqz v1, :cond_13

    .line 129
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->date:Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 132
    :cond_13
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    if-eqz v1, :cond_1c

    .line 134
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientKeyIdentifier;->other:Lorg/bouncycastle/asn1/cms/OtherKeyAttribute;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 137
    :cond_1c
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
