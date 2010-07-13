.class public Lorg/bouncycastle/jce/PrincipalUtil;
.super Ljava/lang/Object;
.source "PrincipalUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIssuerX509Principal(Ljava/security/cert/X509CRL;)Lorg/bouncycastle/jce/X509Principal;
    .registers 7
    .parameter "crl"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getTBSCertList()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    .local v1, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 76
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v3, Lorg/bouncycastle/asn1/x509/TBSCertList;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, p0}, Lorg/bouncycastle/asn1/x509/TBSCertList;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 79
    .local v3, tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;
    new-instance v4, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TBSCertList;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/jce/X509Principal;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23

    return-object v4

    .line 81
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #tbsCertList:Lorg/bouncycastle/asn1/x509/TBSCertList;
    :catch_23
    move-exception v4

    move-object v2, v4

    .line 83
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CRLException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getIssuerX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;
    .registers 7
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 27
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 29
    .local v1, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 30
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v3, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, p0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 33
    .local v3, tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    new-instance v4, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getIssuer()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/jce/X509Principal;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23

    return-object v4

    .line 35
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_23
    move-exception v4

    move-object v2, v4

    .line 37
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getSubjectX509Principal(Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/jce/X509Principal;
    .registers 7
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 50
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    .local v1, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v3, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v3, p0}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 56
    .local v3, tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    new-instance v4, Lorg/bouncycastle/jce/X509Principal;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;->getSubject()Lorg/bouncycastle/asn1/x509/X509Name;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/jce/X509Principal;-><init>(Lorg/bouncycastle/asn1/x509/X509Name;)V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_22} :catch_23

    return-object v4

    .line 58
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v3           #tbsCert:Lorg/bouncycastle/asn1/x509/TBSCertificateStructure;
    :catch_23
    move-exception v4

    move-object v2, v4

    .line 60
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/security/cert/CertificateEncodingException;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
