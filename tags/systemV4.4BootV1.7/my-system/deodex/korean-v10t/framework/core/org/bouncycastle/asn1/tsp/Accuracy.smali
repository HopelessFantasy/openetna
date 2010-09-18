.class public Lorg/bouncycastle/asn1/tsp/Accuracy;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "Accuracy.java"


# static fields
.field protected static final MAX_MICROS:I = 0x3e7

.field protected static final MAX_MILLIS:I = 0x3e7

.field protected static final MIN_MICROS:I = 0x1

.field protected static final MIN_MILLIS:I = 0x1


# instance fields
.field micros:Lorg/bouncycastle/asn1/DERInteger;

.field millis:Lorg/bouncycastle/asn1/DERInteger;

.field seconds:Lorg/bouncycastle/asn1/DERInteger;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 32
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 8
    .parameter "seq"

    .prologue
    const/16 v5, 0x3e7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 69
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 70
    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/DERInteger;

    .line 71
    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    .line 72
    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    .line 74
    const/4 v1, 0x0

    .local v1, i:I
    :goto_f
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v1, v2, :cond_91

    .line 77
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v2, :cond_28

    .line 79
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/DERInteger;

    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/DERInteger;

    .line 74
    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 81
    :cond_28
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/DERTaggedObject;

    if-eqz v2, :cond_25

    .line 83
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    .line 85
    .local v0, extra:Lorg/bouncycastle/asn1/DERTaggedObject;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERTaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_92

    .line 106
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalig tag number"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :pswitch_45
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    .line 89
    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-lt v2, v4, :cond_63

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-le v2, v5, :cond_25

    .line 92
    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid millis field : not in (1..999)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :pswitch_6b
    invoke-static {v0, v3}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    .line 98
    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-lt v2, v4, :cond_89

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    if-le v2, v5, :cond_25

    .line 101
    :cond_89
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid micros field : not in (1..999)."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 110
    .end local v0           #extra:Lorg/bouncycastle/asn1/DERTaggedObject;
    :cond_91
    return-void

    .line 85
    :pswitch_data_92
    .packed-switch 0x0
        :pswitch_45
        :pswitch_6b
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERInteger;)V
    .registers 7
    .parameter "seconds"
    .parameter "millis"
    .parameter "micros"

    .prologue
    const/16 v2, 0x3e7

    const/4 v1, 0x1

    .line 38
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 39
    iput-object p1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/DERInteger;

    .line 42
    if-eqz p2, :cond_26

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_1e

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-le v0, v2, :cond_26

    .line 46
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid millis field : not in (1..999)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_26
    iput-object p2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    .line 54
    if-eqz p3, :cond_46

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_3e

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    if-le v0, v2, :cond_46

    .line 58
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid micros field : not in (1..999)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_46
    iput-object p3, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    .line 66
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/Accuracy;
    .registers 4
    .parameter "o"

    .prologue
    .line 114
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;

    if-eqz v0, :cond_a

    .line 116
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/tsp/Accuracy;

    .end local p0
    move-object v0, p0

    .line 120
    :goto_9
    return-object v0

    .line 118
    .restart local p0
    :cond_a
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_16

    .line 120
    new-instance v0, Lorg/bouncycastle/asn1/tsp/Accuracy;

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/tsp/Accuracy;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_9

    .line 123
    .restart local p0
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown object in \'Accuracy\' factory : "

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
.method public getMicros()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getMillis()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public getSeconds()Lorg/bouncycastle/asn1/DERInteger;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/DERInteger;

    return-object v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 155
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    .local v0, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_f

    .line 159
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->seconds:Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 162
    :cond_f
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_1d

    .line 164
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->millis:Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 167
    :cond_1d
    iget-object v1, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v1, :cond_2c

    .line 169
    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/tsp/Accuracy;->micros:Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 172
    :cond_2c
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v1
.end method
