.class public Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "TypeOfBiometricData.java"

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1Choice;


# static fields
.field public static final HANDWRITTEN_SIGNATURE:I = 0x1

.field public static final PICTURE:I


# instance fields
.field obj:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>(I)V
    .registers 5
    .parameter "predefinedBiometricType"

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 56
    if-eqz p1, :cond_8

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    .line 58
    :cond_8
    new-instance v0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 64
    return-void

    .line 62
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknow PredefinedBiometricType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V
    .registers 2
    .parameter "BiometricDataID"

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .line 69
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;
    .registers 6
    .parameter "obj"

    .prologue
    .line 33
    if-eqz p0, :cond_6

    instance-of v3, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    if-eqz v3, :cond_a

    .line 35
    :cond_6
    check-cast p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    .end local p0
    move-object v3, p0

    .line 48
    :goto_9
    return-object v3

    .line 38
    .restart local p0
    :cond_a
    instance-of v3, p0, Lorg/bouncycastle/asn1/DERInteger;

    if-eqz v3, :cond_20

    .line 40
    invoke-static {p0}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v2

    .line 41
    .local v2, predefinedBiometricTypeObj:Lorg/bouncycastle/asn1/DERInteger;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 43
    .local v1, predefinedBiometricType:I
    new-instance v3, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-direct {v3, v1}, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;-><init>(I)V

    goto :goto_9

    .line 45
    .end local v1           #predefinedBiometricType:I
    .end local v2           #predefinedBiometricTypeObj:Lorg/bouncycastle/asn1/DERInteger;
    :cond_20
    instance-of v3, p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v3, :cond_2e

    .line 47
    invoke-static {p0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v0

    .line 48
    .local v0, BiometricDataID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;)V

    goto :goto_9

    .line 51
    .end local v0           #BiometricDataID:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_2e
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unknown object in getInstance"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getBiometricDataOid()Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .registers 1

    .prologue
    .line 83
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    return-object p0
.end method

.method public getPredefinedBiometricType()I
    .registers 2

    .prologue
    .line 78
    iget-object p0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public isPredefined()Z
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERInteger;

    return v0
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/qualified/TypeOfBiometricData;->obj:Lorg/bouncycastle/asn1/DEREncodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    return-object v0
.end method
