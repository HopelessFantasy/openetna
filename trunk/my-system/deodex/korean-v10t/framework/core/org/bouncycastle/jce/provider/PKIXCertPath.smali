.class public Lorg/bouncycastle/jce/provider/PKIXCertPath;
.super Ljava/security/cert/CertPath;
.source "PKIXCertPath.java"


# static fields
.field static final certPathEncodings:Ljava/util/List;


# instance fields
.field private certificates:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    .local v0, encodings:Ljava/util/List;
    const-string v1, "PkiPath"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    const-string v1, "PEM"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v1, "PKCS7"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    .line 57
    return-void
.end method

.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 16
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const-string v10, "BC"

    const-string v11, "X.509"

    .line 174
    const-string v10, "X.509"

    invoke-direct {p0, v11}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 177
    :try_start_9
    const-string v10, "PkiPath"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a7

    .line 179
    new-instance v3, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v3, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 180
    .local v3, derInStream:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    .line 181
    .local v4, derObject:Lorg/bouncycastle/asn1/DERObject;
    instance-of v10, v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v10, :cond_45

    .line 183
    new-instance v10, Ljava/security/cert/CertificateException;

    const-string v11, "input stream does not contain a ASN1 SEQUENCE while reading PkiPath encoded data to load CertPath"

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_26} :catch_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_26} :catch_88

    .line 221
    .end local v3           #derInStream:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v4           #derObject:Lorg/bouncycastle/asn1/DERObject;
    :catch_26
    move-exception v10

    move-object v7, v10

    .line 223
    .local v7, ex:Ljava/io/IOException;
    :goto_28
    new-instance v10, Ljava/security/cert/CertificateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException throw while decoding CertPath:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 185
    .end local v7           #ex:Ljava/io/IOException;
    .restart local v3       #derInStream:Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v4       #derObject:Lorg/bouncycastle/asn1/DERObject;
    :cond_45
    :try_start_45
    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    .end local v4           #derObject:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v6

    .line 189
    .local v6, e:Ljava/util/Enumeration;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 190
    const-string v10, "X.509"

    const-string v11, "BC"

    invoke-static {v10, v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 191
    .local v1, certFactory:Ljava/security/cert/CertificateFactory;
    :goto_5a
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_df

    .line 193
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 194
    .local v9, outStream:Ljava/io/ByteArrayOutputStream;
    new-instance v5, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v5, v9}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 196
    .local v5, derOutStream:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v5, v10}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 197
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 199
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 200
    .local v2, certInStream:Ljava/io/InputStream;
    iget-object v10, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    const/4 v11, 0x0

    invoke-virtual {v1, v2}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v12

    invoke-interface {v10, v11, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V
    :try_end_87
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_87} :catch_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_45 .. :try_end_87} :catch_88

    goto :goto_5a

    .line 225
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    .end local v2           #certInStream:Ljava/io/InputStream;
    .end local v3           #derInStream:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v5           #derOutStream:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v6           #e:Ljava/util/Enumeration;
    .end local v9           #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_88
    move-exception v10

    move-object v7, v10

    .line 227
    .local v7, ex:Ljava/security/NoSuchProviderException;
    :goto_8a
    new-instance v10, Ljava/security/cert/CertificateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "BouncyCastle provider not found while trying to get a CertificateFactory:\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v7}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 203
    .end local v7           #ex:Ljava/security/NoSuchProviderException;
    :cond_a7
    :try_start_a7
    const-string v10, "PKCS7"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b7

    const-string v10, "PEM"

    invoke-virtual {p2, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_e8

    .line 206
    :cond_b7
    new-instance v8, Ljava/io/BufferedInputStream;

    const/16 v10, 0x2000

    invoke-direct {v8, p1, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
    :try_end_be
    .catch Ljava/io/IOException; {:try_start_a7 .. :try_end_be} :catch_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_a7 .. :try_end_be} :catch_88

    .line 208
    .end local p1
    .local v8, inStream:Ljava/io/InputStream;
    :try_start_be
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 209
    const-string v10, "X.509"

    const-string v11, "BC"

    invoke-static {v10, v11}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 211
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    :goto_cd
    invoke-virtual {v1, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    .local v0, cert:Ljava/security/cert/Certificate;
    if-eqz v0, :cond_de

    .line 213
    iget-object v10, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d8
    .catch Ljava/io/IOException; {:try_start_be .. :try_end_d8} :catch_d9
    .catch Ljava/security/NoSuchProviderException; {:try_start_be .. :try_end_d8} :catch_101

    goto :goto_cd

    .line 221
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :catch_d9
    move-exception v10

    move-object v7, v10

    move-object p1, v8

    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    goto/16 :goto_28

    .end local p1
    .restart local v0       #cert:Ljava/security/cert/Certificate;
    .restart local v1       #certFactory:Ljava/security/cert/CertificateFactory;
    .restart local v8       #inStream:Ljava/io/InputStream;
    :cond_de
    move-object p1, v8

    .line 230
    .end local v0           #cert:Ljava/security/cert/Certificate;
    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_df
    iget-object v10, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {p0, v10}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    iput-object v10, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 231
    return-void

    .line 218
    .end local v1           #certFactory:Ljava/security/cert/CertificateFactory;
    :cond_e8
    :try_start_e8
    new-instance v10, Ljava/security/cert/CertificateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unsupported encoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_101} :catch_26
    .catch Ljava/security/NoSuchProviderException; {:try_start_e8 .. :try_end_101} :catch_88

    .line 225
    .end local p1
    .restart local v8       #inStream:Ljava/io/InputStream;
    :catch_101
    move-exception v10

    move-object v7, v10

    move-object p1, v8

    .end local v8           #inStream:Ljava/io/InputStream;
    .restart local p1
    goto :goto_8a
.end method

.method constructor <init>(Ljava/util/List;)V
    .registers 3
    .parameter "certificates"

    .prologue
    .line 160
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->sortCerts(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    .line 162
    return-void
.end method

.method private sortCerts(Ljava/util/List;)Ljava/util/List;
    .registers 13
    .parameter "certs"

    .prologue
    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ge v9, v10, :cond_9

    move-object v9, p1

    .line 155
    .end local p0
    :goto_8
    return-object v9

    .line 72
    .restart local p0
    :cond_9
    const/4 v9, 0x0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 73
    .local v4, issuer:Ljavax/security/auth/x500/X500Principal;
    const/4 v6, 0x1

    .line 75
    .local v6, okay:Z
    const/4 v3, 0x1

    .local v3, i:I
    :goto_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-eq v3, v9, :cond_3a

    .line 77
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 79
    .local v1, cert:Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    .line 81
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 75
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 85
    :cond_39
    const/4 v6, 0x0

    .line 90
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    :cond_3a
    if-eqz v6, :cond_3e

    move-object v9, p1

    .line 92
    goto :goto_8

    .line 96
    :cond_3e
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 98
    .local v7, retList:Ljava/util/List;
    const/4 v3, 0x0

    :goto_48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v3, v9, :cond_7f

    .line 100
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 101
    .restart local v1       #cert:Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .line 103
    .local v2, found:Z
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    .line 105
    .local v8, subject:Ljavax/security/auth/x500/X500Principal;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_5a
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-eq v5, v9, :cond_71

    .line 107
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 108
    .local v0, c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7c

    .line 110
    const/4 v2, 0x1

    .line 115
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    :cond_71
    if-nez v2, :cond_79

    .line 117
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 98
    :cond_79
    add-int/lit8 v3, v3, 0x1

    goto :goto_48

    .line 105
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    :cond_7c
    add-int/lit8 v5, v5, 0x1

    goto :goto_5a

    .line 123
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v1           #cert:Ljava/security/cert/X509Certificate;
    .end local v2           #found:Z
    .end local v5           #j:I
    .end local v8           #subject:Ljavax/security/auth/x500/X500Principal;
    :cond_7f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x1

    if-le v9, v10, :cond_9a

    .line 125
    const/4 v3, 0x0

    :goto_87
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-eq v3, v9, :cond_97

    .line 127
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v3, v3, 0x1

    goto :goto_87

    :cond_97
    move-object v9, v7

    .line 130
    goto/16 :goto_8

    .line 133
    :cond_9a
    const/4 v3, 0x0

    :goto_9b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-eq v3, v9, :cond_ce

    .line 135
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    .line 137
    const/4 v5, 0x0

    .restart local v5       #j:I
    :goto_ac
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_c8

    .line 139
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 140
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_cb

    .line 142
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 133
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    :cond_c8
    add-int/lit8 v3, v3, 0x1

    goto :goto_9b

    .line 137
    .restart local v0       #c:Ljava/security/cert/X509Certificate;
    :cond_cb
    add-int/lit8 v5, v5, 0x1

    goto :goto_ac

    .line 150
    .end local v0           #c:Ljava/security/cert/X509Certificate;
    .end local v5           #j:I
    :cond_ce
    const/4 v3, 0x0

    :goto_cf
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v9

    if-eq v3, v9, :cond_df

    .line 152
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v3, v3, 0x1

    goto :goto_cf

    :cond_df
    move-object v9, v7

    .line 155
    goto/16 :goto_8
.end method

.method private toASN1Object(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/DERObject;
    .registers 6
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 367
    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_e

    move-result-object v1

    return-object v1

    .line 369
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 371
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while encoding certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private toDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .registers 8
    .parameter "obj"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 380
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 381
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 383
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    invoke-virtual {v1, p1}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 384
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V

    .line 386
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v3

    return-object v3

    .line 388
    .end local v0           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v1           #dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :catch_15
    move-exception v3

    move-object v2, v3

    .line 390
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateEncodingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exeption thrown: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v3
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .registers 3

    .prologue
    .line 351
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 256
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->getEncodings()Ljava/util/Iterator;

    move-result-object v1

    .line 257
    .local v1, iter:Ljava/util/Iterator;
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 260
    .local v0, enc:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_19

    .line 262
    check-cast v0, Ljava/lang/String;

    .end local v0           #enc:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->getEncoded(Ljava/lang/String;)[B

    move-result-object v2

    .line 265
    :goto_18
    return-object v2

    :cond_19
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .registers 12
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 281
    const-string v1, "PkiPath"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 283
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 285
    .local v9, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v8

    .line 286
    .local v8, iter:Ljava/util/ListIterator;
    :goto_1a
    invoke-interface {v8}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 288
    invoke-interface {v8}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    goto :goto_1a

    .line 291
    :cond_2e
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v9}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    .line 311
    .end local v8           #iter:Ljava/util/ListIterator;
    :goto_37
    return-object v1

    .line 293
    .end local v9           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_38
    const-string v1, "PKCS7"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 295
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v1, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->data:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v3, v1, v5}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 297
    .local v3, encInfo:Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    new-instance v9, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v9}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 298
    .restart local v9       #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4d
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eq v7, v1, :cond_67

    .line 300
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certificates:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->toASN1Object(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v9, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 298
    add-int/lit8 v7, v7, 0x1

    goto :goto_4d

    .line 303
    :cond_67
    new-instance v0, Lorg/bouncycastle/asn1/pkcs/SignedData;

    new-instance v1, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    new-instance v2, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v2}, Lorg/bouncycastle/asn1/DERSet;-><init>()V

    new-instance v4, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v4, v9}, Lorg/bouncycastle/asn1/DERSet;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    new-instance v6, Lorg/bouncycastle/asn1/DERSet;

    invoke-direct {v6}, Lorg/bouncycastle/asn1/DERSet;-><init>()V

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/pkcs/SignedData;-><init>(Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/pkcs/ContentInfo;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;Lorg/bouncycastle/asn1/ASN1Set;)V

    .line 311
    .local v0, sd:Lorg/bouncycastle/asn1/pkcs/SignedData;
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/ContentInfo;

    sget-object v2, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->signedData:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/pkcs/ContentInfo;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {p0, v1}, Lorg/bouncycastle/jce/provider/PKIXCertPath;->toDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    goto :goto_37

    .line 339
    .end local v0           #sd:Lorg/bouncycastle/asn1/pkcs/SignedData;
    .end local v3           #encInfo:Lorg/bouncycastle/asn1/pkcs/ContentInfo;
    .end local v7           #i:I
    .end local v9           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_8d
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unsupported encoding: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .registers 2

    .prologue
    .line 243
    sget-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPath;->certPathEncodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
