.class public Lorg/bouncycastle/x509/X509V2AttributeCertificate;
.super Ljava/lang/Object;
.source "X509V2AttributeCertificate.java"

# interfaces
.implements Lorg/bouncycastle/x509/X509AttributeCertificate;


# instance fields
.field private cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

.field private notAfter:Ljava/util/Date;

.field private notBefore:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .parameter "encIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V

    .line 50
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/AttributeCertificate;)V
    .registers 5
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    .line 67
    :try_start_5
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotAfterTime()Lorg/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    .line 68
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttrCertValidityPeriod()Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttCertValidityPeriod;->getNotBeforeTime()Lorg/bouncycastle/asn1/DERGeneralizedTime;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERGeneralizedTime;->getDate()Ljava/util/Date;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;
    :try_end_29
    .catch Ljava/text/ParseException; {:try_start_5 .. :try_end_29} :catch_2a

    .line 74
    return-void

    .line 70
    :catch_2a
    move-exception v1

    move-object v0, v1

    .line 72
    .local v0, e:Ljava/text/ParseException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid data structure in certificate!"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;-><init>(Ljava/io/InputStream;)V

    .line 57
    return-void
.end method

.method private getExtensionOIDs(Z)Ljava/util/Set;
    .registers 8
    .parameter "critical"

    .prologue
    .line 222
    iget-object v5, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v2

    .line 224
    .local v2, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v2, :cond_35

    .line 226
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 227
    .local v4, set:Ljava/util/Set;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/X509Extensions;->oids()Ljava/util/Enumeration;

    move-result-object v0

    .line 229
    .local v0, e:Ljava/util/Enumeration;
    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 231
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 232
    .local v3, oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v1

    .line 234
    .local v1, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/X509Extension;->isCritical()Z

    move-result v5

    if-ne v5, p1, :cond_15

    .line 236
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .end local v1           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    .end local v3           #oid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_33
    move-object v5, v4

    .line 243
    .end local v0           #e:Ljava/util/Enumeration;
    .end local v4           #set:Ljava/util/Set;
    :goto_34
    return-object v5

    :cond_35
    const/4 v5, 0x0

    goto :goto_34
.end method


# virtual methods
.method public checkValidity()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 129
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->checkValidity(Ljava/util/Date;)V

    .line 130
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .registers 5
    .parameter "date"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 138
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate expired on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_27
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 143
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "certificate not valid till "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_4e
    return-void
.end method

.method public getAttributes()[Lorg/bouncycastle/x509/X509Attribute;
    .registers 5

    .prologue
    .line 265
    iget-object v3, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    .line 266
    .local v2, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    new-array v0, v3, [Lorg/bouncycastle/x509/X509Attribute;

    .line 268
    .local v0, attrs:[Lorg/bouncycastle/x509/X509Attribute;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_11
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v3

    if-eq v1, v3, :cond_27

    .line 270
    new-instance v3, Lorg/bouncycastle/x509/X509Attribute;

    invoke-virtual {v2, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v3, p0}, Lorg/bouncycastle/x509/X509Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v0, v1

    .line 268
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 273
    :cond_27
    return-object v0
.end method

.method public getAttributes(Ljava/lang/String;)[Lorg/bouncycastle/x509/X509Attribute;
    .registers 7
    .parameter "oid"

    .prologue
    .line 278
    iget-object v4, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getAttributes()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v3

    .line 279
    .local v3, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 281
    .local v2, list:Ljava/util/List;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_10
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v1, v4, :cond_31

    .line 283
    new-instance v0, Lorg/bouncycastle/x509/X509Attribute;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, p0}, Lorg/bouncycastle/x509/X509Attribute;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    .line 284
    .local v0, attr:Lorg/bouncycastle/x509/X509Attribute;
    invoke-virtual {v0}, Lorg/bouncycastle/x509/X509Attribute;->getOID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 286
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 281
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 290
    .end local v0           #attr:Lorg/bouncycastle/x509/X509Attribute;
    :cond_31
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_39

    .line 292
    const/4 v4, 0x0

    .line 295
    :goto_38
    return-object v4

    :cond_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lorg/bouncycastle/x509/X509Attribute;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/bouncycastle/x509/X509Attribute;

    check-cast p0, [Lorg/bouncycastle/x509/X509Attribute;

    move-object v4, p0

    goto :goto_38
.end method

.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 253
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .registers 10
    .parameter "oid"

    .prologue
    .line 192
    iget-object v5, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getExtensions()Lorg/bouncycastle/asn1/x509/X509Extensions;

    move-result-object v4

    .line 194
    .local v4, extensions:Lorg/bouncycastle/asn1/x509/X509Extensions;
    if-eqz v4, :cond_4c

    .line 196
    new-instance v5, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v5, p1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/X509Extensions;->getExtension(Lorg/bouncycastle/asn1/DERObjectIdentifier;)Lorg/bouncycastle/asn1/x509/X509Extension;

    move-result-object v3

    .line 198
    .local v3, ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    if-eqz v3, :cond_4c

    .line 200
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 201
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 205
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_21
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/X509Extension;->getValue()Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 207
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2b} :catch_2d

    move-result-object v5

    .line 216
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v3           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :goto_2c
    return-object v5

    .line 209
    .restart local v0       #bOut:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .restart local v3       #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :catch_2d
    move-exception v5

    move-object v2, v5

    .line 211
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error encoding "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 216
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v2           #e:Ljava/lang/Exception;
    .end local v3           #ext:Lorg/bouncycastle/asn1/x509/X509Extension;
    :cond_4c
    const/4 v5, 0x0

    goto :goto_2c
.end method

.method public getHolder()Lorg/bouncycastle/x509/AttributeCertificateHolder;
    .registers 3

    .prologue
    .line 88
    new-instance v0, Lorg/bouncycastle/x509/AttributeCertificateHolder;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getHolder()Lorg/bouncycastle/asn1/x509/Holder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/Holder;->toASN1Object()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, p0}, Lorg/bouncycastle/x509/AttributeCertificateHolder;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-object v0
.end method

.method public getIssuer()Lorg/bouncycastle/x509/AttributeCertificateIssuer;
    .registers 3

    .prologue
    .line 93
    new-instance v0, Lorg/bouncycastle/x509/AttributeCertificateIssuer;

    iget-object v1, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuer()Lorg/bouncycastle/asn1/x509/AttCertIssuer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/AttributeCertificateIssuer;-><init>(Lorg/bouncycastle/asn1/x509/AttCertIssuer;)V

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 8

    .prologue
    .line 108
    iget-object v4, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getIssuerUniqueID()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v3

    .line 110
    .local v3, id:Lorg/bouncycastle/asn1/DERBitString;
    if-eqz v3, :cond_34

    .line 112
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    .line 113
    .local v1, bytes:[B
    array-length v4, v1

    mul-int/lit8 v4, v4, 0x8

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v5

    sub-int/2addr v4, v5

    new-array v0, v4, [Z

    .line 115
    .local v0, boolId:[Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1b
    array-length v4, v0

    if-eq v2, v4, :cond_32

    .line 117
    div-int/lit8 v4, v2, 0x8

    aget-byte v4, v1, v4

    const/16 v5, 0x80

    rem-int/lit8 v6, v2, 0x8

    ushr-int/2addr v5, v6

    and-int/2addr v4, v5

    if-eqz v4, :cond_30

    const/4 v4, 0x1

    :goto_2b
    aput-boolean v4, v0, v2

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 117
    :cond_30
    const/4 v4, 0x0

    goto :goto_2b

    :cond_32
    move-object v4, v0

    .line 123
    .end local v0           #boolId:[Z
    .end local v1           #bytes:[B
    .end local v2           #i:I
    :goto_33
    return-object v4

    :cond_34
    const/4 v4, 0x0

    goto :goto_33
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .registers 2

    .prologue
    .line 248
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getExtensionOIDs(Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->notAfter:Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->notBefore:Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSerialNumber()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureValue()Lorg/bouncycastle/asn1/DERBitString;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getVersion()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .registers 3

    .prologue
    .line 258
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    .line 260
    .local v0, extensions:Ljava/util/Set;
    if-eqz v0, :cond_e

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    :goto_d
    return v1

    :cond_e
    const/4 v1, 0x0

    goto :goto_d
.end method

.method public final verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .registers 7
    .parameter "key"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v1, 0x0

    .line 160
    .local v1, signature:Ljava/security/Signature;
    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getSignature()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 162
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "Signature algorithm in certificate info not same as outer certificate"

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 165
    :cond_1f
    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 167
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 171
    :try_start_34
    iget-object v2, p0, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->cert:Lorg/bouncycastle/asn1/x509/AttributeCertificate;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificate;->getAcinfo()Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AttributeCertificateInfo;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_41} :catch_53

    .line 178
    invoke-virtual {p0}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_5d

    .line 180
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Public key presented not for certificate signature"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 173
    :catch_53
    move-exception v2

    move-object v0, v2

    .line 175
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Exception encoding certificate info object"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 182
    .end local v0           #e:Ljava/io/IOException;
    :cond_5d
    return-void
.end method
