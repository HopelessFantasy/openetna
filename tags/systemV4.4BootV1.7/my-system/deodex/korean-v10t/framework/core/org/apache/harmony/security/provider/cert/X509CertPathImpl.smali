.class public Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.super Ljava/security/cert/CertPath;
.source "X509CertPathImpl.java"


# static fields
.field public static ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf; = null

.field private static final ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKCS7:I = 0x1

.field private static final PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final PKI_PATH:I = 0x0

.field static final encodings:Ljava/util/List; = null

.field private static final encodingsArr:[Ljava/lang/String; = null

.field private static final serialVersionUID:J = 0x6ee14ff003fb47acL


# instance fields
.field private final certificates:Ljava/util/List;

.field private pkcs7Encoding:[B

.field private pkiPathEncoding:[B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "PkiPath"

    aput-object v1, v0, v4

    const-string v1, "PKCS7"

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    .line 90
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    .line 316
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    .line 378
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 412
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;

    new-array v1, v6, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v2

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1_SIGNED_DATA:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$3;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 7
    .parameter "certs"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 106
    const-string v3, "X.509"

    invoke-direct {p0, v3}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 108
    .local v2, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 109
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_2f

    .line 110
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, cert:Ljava/lang/Object;
    instance-of v3, v0, Ljava/security/cert/X509Certificate;

    if-nez v3, :cond_27

    .line 112
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "security.15D"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 115
    :cond_27
    iget-object v3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 117
    .end local v0           #cert:Ljava/lang/Object;
    :cond_2f
    return-void
.end method

.method private constructor <init>(Ljava/util/List;I[B)V
    .registers 5
    .parameter "certs"
    .parameter "type"
    .parameter "encoding"

    .prologue
    .line 129
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 130
    if-nez p2, :cond_c

    .line 131
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 137
    :goto_9
    iput-object p1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    .line 138
    return-void

    .line 133
    :cond_c
    iput-object p3, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    goto :goto_9
.end method

.method synthetic constructor <init>(Ljava/util/List;I[BLorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 76
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance(Ljava/io/InputStream;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 149
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 150
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 151
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "security.15E"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 11
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 165
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 166
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.15F"

    invoke-static {v7, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 170
    :cond_14
    :try_start_14
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 172
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-object v6, p0

    .line 190
    :goto_28
    return-object v6

    .line 175
    .restart local p0
    :cond_29
    sget-object v6, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 176
    .local v1, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v5

    .line 177
    .local v5, sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v5, :cond_55

    .line 178
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.160"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_43} :catch_43

    .line 192
    .end local v1           #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v5           #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local p0
    :catch_43
    move-exception v6

    move-object v2, v6

    .line 193
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.15E"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 181
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v5       #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p0
    :cond_55
    :try_start_55
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 182
    .local v0, certs:Ljava/util/List;
    if-nez v0, :cond_60

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #certs:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .restart local v0       #certs:Ljava/util/List;
    :cond_60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v4, result:Ljava/util/List;
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_7d

    .line 188
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v6, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 190
    :cond_7d
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_87} :catch_43

    goto :goto_28
.end method

.method public static getInstance([B)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 207
    :try_start_0
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 208
    :catch_9
    move-exception v1

    move-object v0, v1

    .line 209
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "security.15E"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    .registers 11
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 223
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_14

    .line 224
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.15F"

    invoke-static {v7, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 228
    :cond_14
    :try_start_14
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    .line 230
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-object v6, p0

    .line 247
    :goto_28
    return-object v6

    .line 233
    .restart local p0
    :cond_29
    sget-object v6, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v6, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 234
    .local v1, ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v5

    .line 235
    .local v5, sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v5, :cond_55

    .line 236
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.160"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_43} :catch_43

    .line 249
    .end local v1           #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .end local v5           #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local p0
    :catch_43
    move-exception v6

    move-object v2, v6

    .line 250
    .local v2, e:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.15E"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 239
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #ci:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local v5       #sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local p0
    :cond_55
    :try_start_55
    invoke-virtual {v5}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 240
    .local v0, certs:Ljava/util/List;
    if-nez v0, :cond_60

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #certs:Ljava/util/List;
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    .restart local v0       #certs:Ljava/util/List;
    :cond_60
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 244
    .local v4, result:Ljava/util/List;
    const/4 v3, 0x0

    .end local p0
    .local v3, i:I
    :goto_66
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_7d

    .line 245
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v6, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    add-int/lit8 v3, v3, 0x1

    goto :goto_66

    .line 247
    :cond_7d
    new-instance v6, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v7, 0x1

    invoke-virtual {v1}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getEncoded()[B

    move-result-object v8

    invoke-direct {v6, v4, v7, v8}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[B)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_87} :catch_43

    goto :goto_28
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .registers 2

    .prologue
    .line 264
    iget-object v0, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->certificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 272
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    if-nez v1, :cond_d

    .line 273
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    .line 275
    :cond_d
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 276
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkiPathEncoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 277
    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .registers 6
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 286
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    .line 287
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    const-string v2, "security.15F"

    invoke-static {v2, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 290
    :cond_15
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodingsArr:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 292
    invoke-virtual {p0}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getEncoded()[B

    move-result-object v1

    .line 301
    :goto_23
    return-object v1

    .line 295
    :cond_24
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    if-nez v1, :cond_30

    .line 296
    sget-object v1, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->PKCS7_SIGNED_DATA_OBJECT:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    .line 298
    :cond_30
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 299
    .local v0, result:[B
    iget-object v1, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    iget-object v2, p0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->pkcs7Encoding:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 301
    goto :goto_23
.end method

.method public getEncodings()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 310
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
