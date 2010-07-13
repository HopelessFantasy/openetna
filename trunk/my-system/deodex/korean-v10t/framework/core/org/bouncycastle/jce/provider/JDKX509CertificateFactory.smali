.class public Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;
.super Ljava/security/cert/CertificateFactorySpi;
.source "JDKX509CertificateFactory.java"


# static fields
.field private static final MAX_MEMORY:J


# instance fields
.field private currentCrlStream:Ljava/io/InputStream;

.field private currentStream:Ljava/io/InputStream;

.field private sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

.field private sCrlDataObjectCount:I

.field private sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

.field private sDataObjectCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 39
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->MAX_MEMORY:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    .line 41
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 42
    iput v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    .line 43
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 45
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 46
    iput v1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    .line 47
    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    return-void
.end method

.method private getLimit(Ljava/io/InputStream;)I
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_9

    .line 54
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 62
    :goto_8
    return v0

    .line 57
    :cond_9
    sget-wide v0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->MAX_MEMORY:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_16

    .line 59
    const v0, 0x7fffffff

    goto :goto_8

    .line 62
    :cond_16
    sget-wide v0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->MAX_MEMORY:J

    long-to-int v0, v0

    goto :goto_8
.end method

.method private readDERCRL(Lorg/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    .registers 4
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CRLObject;

    new-instance v1, Lorg/bouncycastle/asn1/x509/CertificateList;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, p0}, Lorg/bouncycastle/asn1/x509/CertificateList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    return-object v0
.end method

.method private readDERCertificate(Lorg/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    .registers 7
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 94
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 96
    .local v0, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-le v1, v3, :cond_4d

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v1, :cond_4d

    .line 99
    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 101
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v0, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 104
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    .line 110
    :goto_4c
    return-object v1

    :cond_4d
    new-instance v1, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    goto :goto_4c
.end method

.method private readLine(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 72
    .local v1, l:Ljava/lang/StringBuffer;
    :cond_5
    :goto_5
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, c:I
    const/16 v2, 0xa

    if-eq v0, v2, :cond_18

    if-ltz v0, :cond_18

    .line 74
    const/16 v2, 0xd

    if-eq v0, v2, :cond_5

    .line 79
    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 82
    :cond_18
    if-gez v0, :cond_1c

    .line 84
    const/4 v2, 0x0

    .line 87
    :goto_1b
    return-object v2

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1b
.end method

.method private readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 189
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 191
    .local v1, pemBuf:Ljava/lang/StringBuffer;
    :cond_5
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 193
    const-string v2, "-----BEGIN CRL-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "-----BEGIN X509 CRL-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 200
    :cond_1b
    :goto_1b
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 202
    const-string v2, "-----END CRL-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "-----END X509 CRL-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 211
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 213
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCRL(Lorg/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    .line 216
    :goto_48
    return-object v2

    .line 208
    :cond_49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 216
    :cond_4d
    const/4 v2, 0x0

    goto :goto_48
.end method

.method private readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 149
    .local v1, pemBuf:Ljava/lang/StringBuffer;
    :cond_5
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    if-eqz v0, :cond_1b

    .line 151
    const-string v2, "-----BEGIN CERTIFICATE-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    const-string v2, "-----BEGIN X509 CERTIFICATE-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 158
    :cond_1b
    :goto_1b
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readLine(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 160
    const-string v2, "-----END CERTIFICATE-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, "-----END X509 CERTIFICATE-----"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 169
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-eqz v2, :cond_4d

    .line 171
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/util/encoders/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCertificate(Lorg/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 174
    :goto_48
    return-object v2

    .line 166
    :cond_49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1b

    .line 174
    :cond_4d
    const/4 v2, 0x0

    goto :goto_48
.end method

.method private readPKCS7CRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 223
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->getLimit(Ljava/io/InputStream;)I

    move-result v2

    invoke-direct {v0, p1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 224
    .local v0, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 226
    .local v1, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v4, :cond_56

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_56

    .line 229
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 231
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 234
    new-instance v2, Lorg/bouncycastle/jce/provider/X509CRLObject;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    .line 240
    :goto_55
    return-object v2

    :cond_56
    new-instance v2, Lorg/bouncycastle/jce/provider/X509CRLObject;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V

    goto :goto_55
.end method

.method private readPKCS7Certificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 8
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 121
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->getLimit(Ljava/io/InputStream;)I

    move-result v2

    invoke-direct {v0, p1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    .line 122
    .local v0, dIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 124
    .local v1, seq:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v2, v4, :cond_56

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    if-eqz v2, :cond_56

    .line 127
    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_56

    .line 129
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 132
    new-instance v2, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    .line 138
    :goto_55
    return-object v2

    :cond_56
    new-instance v2, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V

    goto :goto_55
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 8
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 347
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-nez v2, :cond_38

    .line 349
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 350
    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 351
    iput v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    .line 362
    :cond_c
    :goto_c
    :try_start_c
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v2, :cond_4b

    .line 364
    iget v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_43

    .line 366
    new-instance v2, Lorg/bouncycastle/jce/provider/X509CRLObject;

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCRLs()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/CertificateList;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CertificateList;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/jce/provider/X509CRLObject;-><init>(Lorg/bouncycastle/asn1/x509/CertificateList;)V
    :try_end_37
    .catch Ljava/security/cert/CRLException; {:try_start_c .. :try_end_37} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_92

    .line 399
    :goto_37
    return-object v2

    .line 353
    :cond_38
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    if-eq v2, p1, :cond_c

    .line 355
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentCrlStream:Ljava/io/InputStream;

    .line 356
    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 357
    iput v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    goto :goto_c

    .line 372
    :cond_43
    const/4 v2, 0x0

    :try_start_44
    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 373
    const/4 v2, 0x0

    iput v2, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sCrlDataObjectCount:I

    move-object v2, v4

    .line 374
    goto :goto_37

    .line 378
    :cond_4b
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_59

    .line 381
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x2000

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 385
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_59
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 386
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_6e

    .line 388
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 389
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    goto :goto_37

    .line 391
    :cond_6e
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7e

    .line 393
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 394
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPKCS7CRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    goto :goto_37

    .line 398
    :cond_7e
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 399
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->getLimit(Ljava/io/InputStream;)I

    move-result v3

    invoke-direct {v2, p1, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCRL(Lorg/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/CRL;
    :try_end_8d
    .catch Ljava/security/cert/CRLException; {:try_start_44 .. :try_end_8d} :catch_8f
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_8d} :catch_92

    move-result-object v2

    goto :goto_37

    .line 402
    :catch_8f
    move-exception v2

    move-object v0, v2

    .line 404
    .local v0, e:Ljava/security/cert/CRLException;
    throw v0

    .line 406
    .end local v0           #e:Ljava/security/cert/CRLException;
    :catch_92
    move-exception v2

    move-object v0, v2

    .line 408
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/CRLException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 426
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v1, crls:Ljava/util/List;
    :goto_5
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    .local v0, crl:Ljava/security/cert/CRL;
    if-eqz v0, :cond_f

    .line 430
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 433
    :cond_f
    return-object v1
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 3
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 445
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 4
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 453
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 7
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 460
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 462
    .local v0, iter:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 464
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 465
    .local v1, obj:Ljava/lang/Object;
    if-eqz v1, :cond_4

    .line 467
    instance-of v2, v1, Ljava/security/cert/X509Certificate;

    if-nez v2, :cond_4

    .line 469
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "list contains none X509Certificate object while creating CertPath\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 473
    .end local v1           #obj:Ljava/lang/Object;
    :cond_31
    new-instance v2, Lorg/bouncycastle/jce/provider/PKIXCertPath;

    invoke-direct {v2, p1}, Lorg/bouncycastle/jce/provider/PKIXCertPath;-><init>(Ljava/util/List;)V

    return-object v2
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 9
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 252
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-nez v3, :cond_38

    .line 254
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 255
    iput-object v5, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 256
    iput v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    .line 267
    :cond_c
    :goto_c
    :try_start_c
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    if-eqz v3, :cond_4b

    .line 269
    iget v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v4

    if-eq v3, v4, :cond_43

    .line 271
    new-instance v3, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/pkcs/SignedData;->getCertificates()Lorg/bouncycastle/asn1/ASN1Set;

    move-result-object v4

    iget v5, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    add-int/lit8 v6, v5, 0x1

    iput v6, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/ASN1Set;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/X509CertificateStructure;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/X509CertificateStructure;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/X509CertificateStructure;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_37} :catch_9d

    .line 311
    :goto_37
    return-object v3

    .line 258
    :cond_38
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    if-eq v3, p1, :cond_c

    .line 260
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->currentStream:Ljava/io/InputStream;

    .line 261
    iput-object v5, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 262
    iput v4, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    goto :goto_c

    .line 277
    :cond_43
    const/4 v3, 0x0

    :try_start_44
    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sData:Lorg/bouncycastle/asn1/pkcs/SignedData;

    .line 278
    const/4 v3, 0x0

    iput v3, p0, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->sDataObjectCount:I

    move-object v3, v5

    .line 279
    goto :goto_37

    .line 283
    :cond_4b
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_59

    .line 286
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v3, 0x2000

    invoke-direct {v1, p1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .end local p1
    .local v1, in:Ljava/io/InputStream;
    move-object p1, v1

    .line 290
    .end local v1           #in:Ljava/io/InputStream;
    .restart local p1
    :cond_59
    const/16 v3, 0xa

    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 291
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 293
    .local v2, tag:I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_67

    move-object v3, v5

    .line 295
    goto :goto_37

    .line 298
    :cond_67
    const/16 v3, 0x30

    if-eq v2, v3, :cond_73

    .line 300
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 301
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPEMCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    goto :goto_37

    .line 303
    :cond_73
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_8c

    .line 305
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 306
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->getLimit(Ljava/io/InputStream;)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v3}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readPKCS7Certificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v3

    goto :goto_37

    .line 310
    :cond_8c
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 311
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->getLimit(Ljava/io/InputStream;)I

    move-result v4

    invoke-direct {v3, p1, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-direct {p0, v3}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->readDERCertificate(Lorg/bouncycastle/asn1/ASN1InputStream;)Ljava/security/cert/Certificate;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_9b} :catch_9d

    move-result-object v3

    goto :goto_37

    .line 314
    .end local v2           #tag:I
    :catch_9d
    move-exception v3

    move-object v0, v3

    .line 316
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 329
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v1, certs:Ljava/util/List;
    :goto_5
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKX509CertificateFactory;->engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, cert:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_f

    .line 333
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 336
    :cond_f
    return-object v1
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 438
    sget-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
