.class public Lorg/bouncycastle/asn1/x509/X509Extension;
.super Ljava/lang/Object;
.source "X509Extension.java"


# instance fields
.field critical:Z

.field value:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/DERBoolean;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 4
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBoolean;->isTrue()Z

    move-result v0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    .line 19
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 20
    return-void
.end method

.method public constructor <init>(ZLorg/bouncycastle/asn1/ASN1OctetString;)V
    .registers 3
    .parameter "critical"
    .parameter "value"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-boolean p1, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    .line 27
    iput-object p2, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 28
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 54
    instance-of v2, p1, Lorg/bouncycastle/asn1/x509/X509Extension;

    if-nez v2, :cond_7

    move v2, v4

    .line 61
    :goto_6
    return v2

    .line 59
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/asn1/x509/X509Extension;

    move-object v1, v0

    .line 61
    .local v1, other:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v3

    if-ne v2, v3, :cond_25

    const/4 v2, 0x1

    goto :goto_6

    :cond_25
    move v2, v4

    goto :goto_6
.end method

.method public getValue()Lorg/bouncycastle/asn1/ASN1OctetString;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->value:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .prologue
    .line 42
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 44
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    .line 48
    :goto_e
    return v0

    :cond_f
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->hashCode()I

    move-result v0

    xor-int/lit8 v0, v0, -0x1

    goto :goto_e
.end method

.method public isCritical()Z
    .registers 2

    .prologue
    .line 32
    iget-boolean v0, p0, Lorg/bouncycastle/asn1/x509/X509Extension;->critical:Z

    return v0
.end method
