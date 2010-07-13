.class public abstract Lorg/bouncycastle/asn1/ASN1Sequence;
.super Lorg/bouncycastle/asn1/ASN1Collection;
.source "ASN1Sequence.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Collection;-><init>()V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_9

    .line 33
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local p0
    return-object p0

    .line 36
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 4
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 59
    if-eqz p1, :cond_18

    .line 61
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-nez v0, :cond_10

    .line 63
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "object implicit - explicit expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, p0

    .line 90
    :goto_17
    return-object v0

    .line 75
    .restart local p0
    :cond_18
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 77
    instance-of v0, p0, Lorg/bouncycastle/asn1/BERTaggedObject;

    if-eqz v0, :cond_2c

    .line 79
    new-instance v0, Lorg/bouncycastle/asn1/BERSequence;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/BERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_17

    .line 83
    :cond_2c
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_17

    .line 88
    :cond_36
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v0, :cond_46

    .line 90
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v0, p0

    goto :goto_17

    .line 95
    .restart local p0
    :cond_46
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstanceFromTagged"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 13
    .parameter "o"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 149
    if-ne p1, p0, :cond_6

    move v7, v10

    .line 198
    .end local p1
    :goto_5
    return v7

    .line 154
    .restart local p1
    :cond_6
    instance-of v7, p1, Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v7, :cond_c

    move v7, v9

    .line 156
    goto :goto_5

    .line 159
    :cond_c
    check-cast p1, Lorg/bouncycastle/asn1/DEREncodable;

    .end local p1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 161
    .local v1, dObj:Lorg/bouncycastle/asn1/DERObject;
    instance-of v7, v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v7, :cond_18

    move v7, v9

    .line 163
    goto :goto_5

    .line 166
    :cond_18
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v4, v0

    .line 168
    .local v4, other:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v8

    if-eq v7, v8, :cond_28

    move v7, v9

    .line 170
    goto :goto_5

    .line 173
    :cond_28
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v5

    .line 174
    .local v5, s1:Ljava/util/Enumeration;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 176
    .local v6, s2:Ljava/util/Enumeration;
    :cond_30
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_50

    .line 178
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 179
    .local v2, o1:Ljava/lang/Object;
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    .line 181
    .local v3, o2:Ljava/lang/Object;
    if-eqz v2, :cond_4a

    if-eqz v3, :cond_4a

    .line 183
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_30

    move v7, v9

    .line 185
    goto :goto_5

    .line 188
    :cond_4a
    if-nez v2, :cond_4e

    if-eqz v3, :cond_30

    :cond_4e
    move v7, v9

    .line 194
    goto :goto_5

    .end local v2           #o1:Ljava/lang/Object;
    .end local v3           #o2:Ljava/lang/Object;
    :cond_50
    move v7, v10

    .line 198
    goto :goto_5
.end method
