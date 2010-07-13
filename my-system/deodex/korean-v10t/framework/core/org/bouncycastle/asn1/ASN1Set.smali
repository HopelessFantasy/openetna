.class public abstract Lorg/bouncycastle/asn1/ASN1Set;
.super Lorg/bouncycastle/asn1/ASN1Collection;
.source "ASN1Set.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 115
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Collection;-><init>()V

    .line 116
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;
    .registers 3
    .parameter "obj"

    .prologue
    .line 32
    if-eqz p0, :cond_6

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_9

    .line 34
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Set;

    .end local p0
    return-object p0

    .line 37
    .restart local p0
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown object in getInstance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;
    .registers 8
    .parameter "obj"
    .parameter "explicit"

    .prologue
    .line 60
    if-eqz p1, :cond_18

    .line 62
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-nez v4, :cond_10

    .line 64
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "object implicit - explicit expected."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 67
    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Set;

    move-object v4, p0

    .line 105
    :goto_17
    return-object v4

    .line 76
    .restart local p0
    :cond_18
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v4

    if-eqz v4, :cond_29

    .line 78
    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    .local v2, set:Lorg/bouncycastle/asn1/ASN1Set;
    move-object v4, v2

    .line 80
    goto :goto_17

    .line 84
    .end local v2           #set:Lorg/bouncycastle/asn1/ASN1Set;
    :cond_29
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v4, :cond_39

    .line 86
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Set;

    move-object v4, p0

    goto :goto_17

    .line 93
    .restart local p0
    :cond_39
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 95
    .local v3, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    instance-of v4, v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v4, :cond_67

    .line 97
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 98
    .local v1, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 100
    .end local p0
    .local v0, e:Ljava/util/Enumeration;
    :goto_50
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_60

    .line 102
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DEREncodable;

    invoke-virtual {v3, p0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_50

    .line 105
    :cond_60
    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;Z)V

    goto :goto_17

    .line 110
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v1           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local p0
    :cond_67
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "unknown object in getInstanceFromTagged"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 11
    .parameter "o"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 163
    if-ne p1, p0, :cond_6

    move v5, v8

    .line 198
    .end local p1
    :goto_5
    return v5

    .line 168
    .restart local p1
    :cond_6
    instance-of v5, p1, Lorg/bouncycastle/asn1/DEREncodable;

    if-nez v5, :cond_c

    move v5, v7

    .line 170
    goto :goto_5

    .line 173
    :cond_c
    check-cast p1, Lorg/bouncycastle/asn1/DEREncodable;

    .end local p1
    invoke-interface {p1}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    .line 175
    .local v1, dObj:Lorg/bouncycastle/asn1/DERObject;
    instance-of v5, v1, Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v5, :cond_18

    move v5, v7

    .line 177
    goto :goto_5

    .line 180
    :cond_18
    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    move-object v2, v0

    .line 182
    .local v2, other:Lorg/bouncycastle/asn1/ASN1Set;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v5

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_28

    move v5, v7

    .line 184
    goto :goto_5

    .line 187
    :cond_28
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    .line 188
    .local v3, s1:Ljava/util/Enumeration;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Set;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    .line 190
    .local v4, s2:Ljava/util/Enumeration;
    :cond_30
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_46

    .line 192
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_30

    move v5, v7

    .line 194
    goto :goto_5

    :cond_46
    move v5, v8

    .line 198
    goto :goto_5
.end method
