.class public Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;
.super Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;
.source "X509DefaultEntryConverter.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Lorg/bouncycastle/asn1/x509/X509NameEntryConverter;-><init>()V

    return-void
.end method


# virtual methods
.method public getConvertedValue(Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
    .registers 7
    .parameter "oid"
    .parameter "value"

    .prologue
    .line 30
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_33

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_33

    .line 34
    const/4 v1, 0x1

    :try_start_10
    invoke-virtual {p0, p2, v1}, Lorg/bouncycastle/asn1/x509/X509DefaultEntryConverter;->convertHexEncoded(Ljava/lang/String;I)Lorg/bouncycastle/asn1/DERObject;
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_13} :catch_15

    move-result-object v1

    .line 50
    :goto_14
    return-object v1

    .line 36
    :catch_15
    move-exception v0

    .line 38
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t recode value for oid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 41
    .end local v0           #e:Ljava/io/IOException;
    :cond_33
    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->EmailAddress:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_43

    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DC:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 43
    :cond_43
    new-instance v1, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    goto :goto_14

    .line 45
    :cond_49
    sget-object v1, Lorg/bouncycastle/asn1/x509/X509Name;->DATE_OF_BIRTH:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 47
    new-instance v1, Lorg/bouncycastle/asn1/DERGeneralizedTime;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DERGeneralizedTime;-><init>(Ljava/lang/String;)V

    goto :goto_14

    .line 50
    :cond_57
    new-instance v1, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-direct {v1, p2}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_14
.end method
