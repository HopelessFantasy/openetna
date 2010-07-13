.class public Lorg/bouncycastle/asn1/cms/RecipientInfo;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "RecipientInfo.java"


# instance fields
.field info:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DERObject;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 49
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    .line 50
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 31
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;)V
    .registers 4
    .parameter "info"

    .prologue
    const/4 v1, 0x1

    .line 24
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 25
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    invoke-direct {v0, v1, v1, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    .line 26
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;)V
    .registers 2
    .parameter "info"

    .prologue
    .line 18
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 19
    iput-object p1, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    .line 20
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 43
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;)V
    .registers 5
    .parameter "info"

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 37
    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, p1}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    .line 38
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .registers 4
    .parameter "o"

    .prologue
    .line 55
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    if-eqz v0, :cond_a

    .line 57
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    .end local p0
    move-object v0, p0

    .line 65
    :goto_9
    return-object v0

    .line 59
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 61
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    goto :goto_9

    .line 63
    .restart local p0
    :cond_16
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v0, :cond_22

    .line 65
    new-instance v0, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/DERObject;)V

    goto :goto_9

    .line 68
    .restart local p0
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in factory: "

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
.method public getInfo()Lorg/bouncycastle/asn1/DEREncodable;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 103
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_2e

    .line 105
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 107
    .local v0, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_36

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :pswitch_1a
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v1

    .line 122
    .end local v0           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_1e
    return-object v1

    .line 112
    .restart local v0       #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_1f
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 114
    :pswitch_24
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 116
    :pswitch_29
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 122
    .end local v0           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_2e
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v1

    goto :goto_1e

    .line 107
    nop

    :pswitch_data_36
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1f
        :pswitch_24
        :pswitch_29
    .end packed-switch
.end method

.method public getVersion()Lorg/bouncycastle/asn1/DERInteger;
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 74
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v1, v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_3c

    .line 76
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 78
    .local v0, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    packed-switch v1, :pswitch_data_48

    .line 89
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "unknown tag"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 81
    :pswitch_1a
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/KeyAgreeRecipientInfo;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    .line 93
    .end local v0           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :goto_22
    return-object v1

    .line 83
    .restart local v0       #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :pswitch_23
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/KEKRecipientInfo;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    goto :goto_22

    .line 85
    :pswitch_2c
    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/PasswordRecipientInfo;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    goto :goto_22

    .line 87
    :pswitch_35
    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    goto :goto_22

    .line 93
    .end local v0           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :cond_3c
    iget-object v1, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-static {v1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/cms/KeyTransRecipientInfo;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v1

    goto :goto_22

    .line 78
    nop

    :pswitch_data_48
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_23
        :pswitch_2c
        :pswitch_35
    .end packed-switch
.end method

.method public isTagged()Z
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lorg/bouncycastle/asn1/cms/RecipientInfo;->info:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
