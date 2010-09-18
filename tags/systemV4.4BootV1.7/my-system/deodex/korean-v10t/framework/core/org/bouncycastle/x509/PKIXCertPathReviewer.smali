.class public Lorg/bouncycastle/x509/PKIXCertPathReviewer;
.super Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;
.source "PKIXCertPathReviewer.java"


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String; = null

.field private static final CRL_DIST_POINTS:Ljava/lang/String; = null

.field private static final QC_STATEMENT:Ljava/lang/String; = null

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.bouncycastle.x509.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected errors:[Ljava/util/List;

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->QCStatements:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    .line 81
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLDistributionPoints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    .line 82
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->AuthorityInfoAccess:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .registers 7
    .parameter "certPath"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 117
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;-><init>()V

    .line 119
    if-nez p1, :cond_e

    .line 121
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certPath was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 123
    :cond_e
    iput-object p1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    .line 125
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    .line 126
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    .line 127
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 129
    new-instance v0, Lorg/bouncycastle/x509/CertPathReviewerException;

    new-instance v1, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v2, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v3, "CertPathReviewer.emptyCertPath"

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v0

    .line 133
    :cond_35
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    .line 141
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-static {v0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    .line 151
    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 152
    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 153
    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 154
    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 155
    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    .line 157
    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .registers 7
    .parameter "ip"

    .prologue
    .line 1917
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v3

    .line 1932
    .local v3, result:Ljava/lang/String;
    :goto_8
    return-object v3

    .line 1919
    .end local v3           #result:Ljava/lang/String;
    :catch_9
    move-exception v4

    move-object v1, v4

    .line 1921
    .local v1, e:Ljava/lang/Exception;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1923
    .local v0, b:Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    array-length v4, p1

    if-eq v2, v4, :cond_27

    .line 1925
    aget-byte v4, p1, v2

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1926
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 1923
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 1929
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3       #result:Ljava/lang/String;
    goto :goto_8
.end method

.method private checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .registers 45
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "validDate"
    .parameter "sign"
    .parameter "workingPublicKey"
    .parameter "crlDistPointUrls"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    .line 1946
    new-instance v14, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v14}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1950
    .local v14, crlselect:Ljava/security/cert/X509CRLSelector;
    :try_start_5
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_1a2

    .line 1958
    move-object v0, v14

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1963
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v31

    move-object v0, v14

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->findCRLs(Ljava/security/cert/X509CRLSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v11

    .line 1964
    .local v11, crl_coll:Ljava/util/Collection;
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1966
    .local v13, crl_iter:Ljava/util/Iterator;
    invoke-interface {v11}, Ljava/util/Collection;->isEmpty()Z

    move-result v31

    if-eqz v31, :cond_9e

    .line 1969
    new-instance v31, Ljava/security/cert/X509CRLSelector;

    invoke-direct/range {v31 .. v31}, Ljava/security/cert/X509CRLSelector;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->findCRLs(Ljava/security/cert/X509CRLSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v11

    .line 1970
    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1971
    .local v19, it:Ljava/util/Iterator;
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 1972
    .local v23, nonMatchingCrlNames:Ljava/util/List;
    :goto_44
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1c0

    .line 1974
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v31

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_19 .. :try_end_5b} :catch_5c

    goto :goto_44

    .line 1986
    .end local v11           #crl_coll:Ljava/util/Collection;
    .end local v13           #crl_iter:Ljava/util/Iterator;
    .end local v19           #it:Ljava/util/Iterator;
    .end local v23           #nonMatchingCrlNames:Ljava/util/List;
    :catch_5c
    move-exception v31

    move-object/from16 v4, v31

    .line 1988
    .local v4, ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlExtractionError"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1990
    .local v22, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1991
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 1993
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v13       #crl_iter:Ljava/util/Iterator;
    :cond_9e
    :goto_9e
    const/16 v30, 0x0

    .line 1994
    .local v30, validCrlFound:Z
    const/4 v10, 0x0

    .line 1995
    .local v10, crl:Ljava/security/cert/X509CRL;
    :goto_a1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_f6

    .line 1997
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    .end local v10           #crl:Ljava/security/cert/X509CRL;
    check-cast v10, Ljava/security/cert/X509CRL;

    .line 1999
    .restart local v10       #crl:Ljava/security/cert/X509CRL;
    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v31

    if-eqz v31, :cond_c2

    new-instance v31, Ljava/util/Date;

    invoke-direct/range {v31 .. v31}, Ljava/util/Date;-><init>()V

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v31

    if-eqz v31, :cond_20f

    .line 2002
    :cond_c2
    const/16 v30, 0x1

    .line 2003
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.localValidCRL"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2006
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2020
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_f6
    if-nez v30, :cond_16c

    .line 2022
    const/16 v25, 0x0

    .line 2023
    .local v25, onlineCRL:Ljava/security/cert/X509CRL;
    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 2024
    .local v29, urlIt:Ljava/util/Iterator;
    :cond_fe
    :goto_fe
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_16c

    .line 2028
    :try_start_104
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/String;

    .line 2029
    .local v21, location:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v25

    .line 2030
    if-eqz v25, :cond_fe

    .line 2032
    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v31

    if-eqz v31, :cond_129

    new-instance v31, Ljava/util/Date;

    invoke-direct/range {v31 .. v31}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v31

    if-eqz v31, :cond_243

    .line 2035
    :cond_129
    const/16 v30, 0x1

    .line 2036
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.onlineValidCRL"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    new-instance v35, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v35, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2041
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_16a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_104 .. :try_end_16a} :catch_284

    .line 2042
    move-object/from16 v10, v25

    .line 2065
    .end local v21           #location:Ljava/lang/String;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v25           #onlineCRL:Ljava/security/cert/X509CRL;
    .end local v29           #urlIt:Ljava/util/Iterator;
    :cond_16c
    if-eqz v10, :cond_5e0

    .line 2067
    if-eqz p4, :cond_296

    .line 2069
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v20

    .line 2071
    .local v20, keyusage:[Z
    if-eqz v20, :cond_296

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v31, v0

    const/16 v32, 0x7

    move/from16 v0, v31

    move/from16 v1, v32

    if-lt v0, v1, :cond_189

    const/16 v31, 0x6

    aget-boolean v31, v20, v31

    if-nez v31, :cond_296

    .line 2074
    :cond_189
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.noCrlSigningPermited"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2075
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 1952
    .end local v10           #crl:Ljava/security/cert/X509CRL;
    .end local v13           #crl_iter:Ljava/util/Iterator;
    .end local v20           #keyusage:[Z
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v30           #validCrlFound:Z
    :catch_1a2
    move-exception v31

    move-object/from16 v16, v31

    .line 1954
    .local v16, e:Ljava/io/IOException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlIssuerException"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1955
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 1976
    .end local v16           #e:Ljava/io/IOException;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v11       #crl_coll:Ljava/util/Collection;
    .restart local v13       #crl_iter:Ljava/util/Iterator;
    .restart local v19       #it:Ljava/util/Iterator;
    .restart local v23       #nonMatchingCrlNames:Ljava/util/List;
    :cond_1c0
    :try_start_1c0
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v24

    .line 1977
    .local v24, numbOfCrls:I
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.noCrlInCertstore"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    new-instance v35, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v14}, Ljava/security/cert/X509CRLSelector;->getIssuers()Ljava/util/Collection;

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v35, v33, v34

    const/16 v34, 0x1

    new-instance v35, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v35

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v35, v33, v34

    const/16 v34, 0x2

    new-instance v35, Ljava/lang/Integer;

    move-object/from16 v0, v35

    move/from16 v1, v24

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v35, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1982
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_20d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1c0 .. :try_end_20d} :catch_5c

    goto/16 :goto_9e

    .line 2011
    .end local v11           #crl_coll:Ljava/util/Collection;
    .end local v19           #it:Ljava/util/Iterator;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v23           #nonMatchingCrlNames:Ljava/util/List;
    .end local v24           #numbOfCrls:I
    .restart local v10       #crl:Ljava/security/cert/X509CRL;
    .restart local v30       #validCrlFound:Z
    :cond_20f
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.localInvalidCRL"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2014
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_a1

    .line 2047
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v21       #location:Ljava/lang/String;
    .restart local v25       #onlineCRL:Ljava/security/cert/X509CRL;
    .restart local v29       #urlIt:Ljava/util/Iterator;
    :cond_243
    :try_start_243
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.onlineInvalidCRL"

    const/16 v33, 0x3

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    invoke-virtual/range {v25 .. v25}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x2

    new-instance v35, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v35

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v35, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2052
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_282
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_243 .. :try_end_282} :catch_284

    goto/16 :goto_fe

    .line 2056
    .end local v21           #location:Ljava/lang/String;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_284
    move-exception v31

    move-object/from16 v9, v31

    .line 2058
    .local v9, cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    invoke-virtual {v9}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_fe

    .line 2079
    .end local v9           #cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    .end local v25           #onlineCRL:Ljava/security/cert/X509CRL;
    .end local v29           #urlIt:Ljava/util/Iterator;
    :cond_296
    if-eqz p5, :cond_331

    .line 2083
    :try_start_298
    const-string v31, "BC"

    move-object v0, v10

    move-object/from16 v1, p5

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_2a2
    .catch Ljava/lang/Exception; {:try_start_298 .. :try_end_2a2} :catch_313

    .line 2097
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v31

    move-object v0, v10

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v12

    .line 2098
    .local v12, crl_entry:Ljava/security/cert/X509CRLEntry;
    if-eqz v12, :cond_46d

    .line 2100
    const/16 v27, 0x0

    .line 2102
    .local v27, reason:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v31

    if-eqz v31, :cond_2d6

    .line 2107
    :try_start_2b7
    sget-object v31, Lorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v31

    move-object v0, v12

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DEREnumerated;
    :try_end_2c7
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2b7 .. :try_end_2c7} :catch_34a

    move-result-object v28

    .line 2114
    .local v28, reasonCode:Lorg/bouncycastle/asn1/DEREnumerated;
    if-eqz v28, :cond_2d6

    .line 2116
    sget-object v31, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/math/BigInteger;->intValue()I

    move-result v32

    aget-object v27, v31, v32

    .line 2122
    .end local v28           #reasonCode:Lorg/bouncycastle/asn1/DEREnumerated;
    :cond_2d6
    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v31

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v31

    if-nez v31, :cond_367

    .line 2124
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.certRevoked"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    aput-object v27, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2126
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2085
    .end local v12           #crl_entry:Ljava/security/cert/X509CRLEntry;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v27           #reason:Ljava/lang/String;
    :catch_313
    move-exception v31

    move-object/from16 v16, v31

    .line 2087
    .local v16, e:Ljava/lang/Exception;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlVerifyFailed"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2088
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 2093
    .end local v16           #e:Ljava/lang/Exception;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_331
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlNoIssuerPublicKey"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2094
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2109
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v12       #crl_entry:Ljava/security/cert/X509CRLEntry;
    .restart local v27       #reason:Ljava/lang/String;
    :catch_34a
    move-exception v31

    move-object/from16 v4, v31

    .line 2111
    .restart local v4       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlReasonExtError"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2112
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 2130
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_367
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.revokedAfterValidation"

    const/16 v33, 0x2

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v12}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    const/16 v34, 0x1

    aput-object v27, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2132
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2144
    .end local v27           #reason:Ljava/lang/String;
    :goto_395
    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v31

    if-eqz v31, :cond_3d4

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    invoke-direct/range {v32 .. v32}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v31 .. v32}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v31

    if-eqz v31, :cond_3d4

    .line 2146
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlUpdateAvailable"

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    invoke-virtual {v10}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v35

    aput-object v35, v33, v34

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2148
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 2157
    :cond_3d4
    :try_start_3d4
    sget-object v31, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
    :try_end_3dc
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3d4 .. :try_end_3dc} :catch_487

    move-result-object v18

    .line 2167
    .local v18, idp:Lorg/bouncycastle/asn1/DERObject;
    :try_start_3dd
    sget-object v31, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
    :try_end_3e5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_3dd .. :try_end_3e5} :catch_4a3

    move-result-object v15

    .line 2175
    .local v15, dci:Lorg/bouncycastle/asn1/DERObject;
    if-eqz v15, :cond_541

    .line 2177
    new-instance v7, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v7}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 2181
    .local v7, baseSelect:Ljava/security/cert/X509CRLSelector;
    :try_start_3ed
    invoke-static {v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v31

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_3fb
    .catch Ljava/io/IOException; {:try_start_3ed .. :try_end_3fb} :catch_4bf

    .line 2189
    check-cast v15, Lorg/bouncycastle/asn1/DERInteger;

    .end local v15           #dci:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v15}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v31

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 2192
    :try_start_407
    sget-object v31, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    move-object v0, v10

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v31

    const-wide/16 v32, 0x1

    invoke-static/range {v32 .. v33}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v31

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_426
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_407 .. :try_end_426} :catch_4dd

    .line 2200
    const/16 v17, 0x0

    .line 2204
    .local v17, foundBase:Z
    :try_start_428
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v31

    move-object v0, v7

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->findCRLs(Ljava/security/cert/X509CRLSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_436
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_428 .. :try_end_436} :catch_4fa

    move-result-object v19

    .line 2211
    .restart local v19       #it:Ljava/util/Iterator;
    :cond_437
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_452

    .line 2213
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509CRL;

    .line 2218
    .local v5, base:Ljava/security/cert/X509CRL;
    :try_start_443
    sget-object v31, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
    :try_end_44b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_443 .. :try_end_44b} :catch_517

    move-result-object v6

    .line 2226
    .local v6, baseIdp:Lorg/bouncycastle/asn1/DERObject;
    if-nez v18, :cond_534

    .line 2228
    if-nez v6, :cond_437

    .line 2230
    const/16 v17, 0x1

    .line 2244
    .end local v5           #base:Ljava/security/cert/X509CRL;
    .end local v6           #baseIdp:Lorg/bouncycastle/asn1/DERObject;
    :cond_452
    :goto_452
    if-nez v17, :cond_541

    .line 2246
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.noBaseCRL"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2247
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2137
    .end local v7           #baseSelect:Ljava/security/cert/X509CRLSelector;
    .end local v17           #foundBase:Z
    .end local v18           #idp:Lorg/bouncycastle/asn1/DERObject;
    .end local v19           #it:Ljava/util/Iterator;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local p0
    :cond_46d
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.notRevoked"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2138
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_395

    .line 2159
    :catch_487
    move-exception v31

    move-object/from16 v4, v31

    .line 2161
    .restart local v4       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.distrPtExtError"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2162
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2169
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v18       #idp:Lorg/bouncycastle/asn1/DERObject;
    :catch_4a3
    move-exception v31

    move-object/from16 v4, v31

    .line 2171
    .restart local v4       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.deltaCrlExtError"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2172
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2183
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v7       #baseSelect:Ljava/security/cert/X509CRLSelector;
    .restart local v15       #dci:Lorg/bouncycastle/asn1/DERObject;
    :catch_4bf
    move-exception v31

    move-object/from16 v16, v31

    .line 2185
    .local v16, e:Ljava/io/IOException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlIssuerException"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2186
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 2194
    .end local v15           #dci:Lorg/bouncycastle/asn1/DERObject;
    .end local v16           #e:Ljava/io/IOException;
    .end local p0
    :catch_4dd
    move-exception v31

    move-object/from16 v4, v31

    .line 2196
    .restart local v4       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlNbrExtError"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2197
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 2206
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v17       #foundBase:Z
    :catch_4fa
    move-exception v31

    move-object/from16 v4, v31

    .line 2208
    .restart local v4       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlExtractionError"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 2220
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v5       #base:Ljava/security/cert/X509CRL;
    .restart local v19       #it:Ljava/util/Iterator;
    :catch_517
    move-exception v31

    move-object/from16 v4, v31

    .line 2222
    .restart local v4       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.distrPtExtError"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2223
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 2236
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v6       #baseIdp:Lorg/bouncycastle/asn1/DERObject;
    :cond_534
    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_437

    .line 2238
    const/16 v17, 0x1

    .line 2239
    goto/16 :goto_452

    .line 2251
    .end local v5           #base:Ljava/security/cert/X509CRL;
    .end local v6           #baseIdp:Lorg/bouncycastle/asn1/DERObject;
    .end local v7           #baseSelect:Ljava/security/cert/X509CRLSelector;
    .end local v17           #foundBase:Z
    .end local v19           #it:Ljava/util/Iterator;
    :cond_541
    if-eqz v18, :cond_5e0

    .line 2253
    invoke-static/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v26

    .line 2254
    .local v26, p:Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    const/4 v8, 0x0

    .line 2257
    .local v8, bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_start_548
    sget-object v31, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v31

    invoke-static/range {v31 .. v31}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_555
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_548 .. :try_end_555} :catch_57d

    move-result-object v8

    .line 2265
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v31

    if-eqz v31, :cond_59a

    if-eqz v8, :cond_59a

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v31

    if-eqz v31, :cond_59a

    .line 2267
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlOnlyUserCert"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2268
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2259
    :catch_57d
    move-exception v31

    move-object/from16 v4, v31

    .line 2261
    .restart local v4       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlBCExtError"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v31

    .line 2271
    .end local v4           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    :cond_59a
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v31

    if-eqz v31, :cond_5c1

    if-eqz v8, :cond_5a8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v31

    if-nez v31, :cond_5c1

    .line 2273
    :cond_5a8
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlOnlyCaCert"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2274
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2277
    :cond_5c1
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v31

    if-eqz v31, :cond_5e0

    .line 2279
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.crlOnlyAttrCert"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2285
    .end local v8           #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v12           #crl_entry:Ljava/security/cert/X509CRLEntry;
    .end local v18           #idp:Lorg/bouncycastle/asn1/DERObject;
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v26           #p:Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :cond_5e0
    if-nez v30, :cond_5fb

    .line 2287
    new-instance v22, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v31, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v32, "CertPathReviewer.noValidCrlFound"

    move-object/from16 v0, v22

    move-object/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    .restart local v22       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v31, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v31

    .line 2291
    .end local v22           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_5fb
    return-void
.end method

.method private checkCriticalExtensions()V
    .registers 16

    .prologue
    const/4 v12, 0x1

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    .line 1751
    iget-object v10, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v10}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v8

    .line 1752
    .local v8, pathCheckers:Ljava/util/List;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1758
    .local v1, certIter:Ljava/util/Iterator;
    :goto_d
    :try_start_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4a

    .line 1760
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_1d
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_d .. :try_end_1d} :catch_1e
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_d .. :try_end_1d} :catch_3c

    goto :goto_d

    .line 1763
    :catch_1e
    move-exception v10

    move-object v3, v10

    .line 1765
    .local v3, cpve:Ljava/security/cert/CertPathValidatorException;
    :try_start_20
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.certPathCheckerError"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v3, v12, v13

    invoke-direct {v7, v10, v11, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1767
    .local v7, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v10, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v10, v7, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;)V

    throw v10
    :try_end_3c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_20 .. :try_end_3c} :catch_3c

    .line 1835
    .end local v3           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_3c
    move-exception v10

    move-object v2, v10

    .line 1837
    .local v2, cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    invoke-virtual {v2}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v10

    invoke-virtual {v2}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1839
    .end local v2           #cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    :cond_49
    return-void

    .line 1774
    :cond_4a
    const/4 v0, 0x0

    .line 1778
    .local v0, cert:Ljava/security/cert/X509Certificate;
    :try_start_4b
    iget-object v10, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v6, v10, v12

    .local v6, index:I
    :goto_53
    if-ltz v6, :cond_49

    .line 1780
    iget-object v10, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cert:Ljava/security/cert/X509Certificate;
    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 1782
    .restart local v0       #cert:Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1784
    .local v4, criticalExtensions:Ljava/util/Set;
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1785
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1786
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1787
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1788
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1789
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1790
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1791
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1792
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1793
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1796
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 1798
    invoke-direct {p0, v0, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v10

    if-eqz v10, :cond_ab

    .line 1800
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1804
    :cond_ab
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1805
    .local v9, tmpIter:Ljava/util/Iterator;
    :goto_af
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
    :try_end_b2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4b .. :try_end_b2} :catch_3c

    move-result v10

    if-eqz v10, :cond_e3

    .line 1809
    :try_start_b5
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v10, v0, v4}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_be
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_b5 .. :try_end_be} :catch_bf
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_b5 .. :try_end_be} :catch_3c

    goto :goto_af

    .line 1811
    :catch_bf
    move-exception v10

    move-object v5, v10

    .line 1813
    .local v5, e:Ljava/security/cert/CertPathValidatorException;
    :try_start_c1
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.criticalExtensionError"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v5}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v5, v12, v13

    invoke-direct {v7, v10, v11, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1815
    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v10, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-virtual {v5}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v11

    iget-object v12, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v10, v7, v11, v12, v6}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1818
    .end local v5           #e:Ljava/security/cert/CertPathValidatorException;
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_e3
    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_123

    .line 1821
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v10

    if-ne v10, v12, :cond_10e

    .line 1823
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.unknownCriticalExt"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-direct {v7, v10, v11, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1831
    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_106
    new-instance v10, Lorg/bouncycastle/x509/CertPathReviewerException;

    iget-object v11, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v10, v7, v11, v6}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v10

    .line 1828
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_10e
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v11, "CertPathReviewer.unknownCriticalExts"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v14, v4}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v14, v12, v13

    invoke-direct {v7, v10, v11, v12}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_122
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_c1 .. :try_end_122} :catch_3c

    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_106

    .line 1778
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_123
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_53
.end method

.method private checkNameConstraints()V
    .registers 42

    .prologue
    .line 338
    const/4 v11, 0x0

    .line 345
    .local v11, cert:Ljava/security/cert/X509Certificate;
    new-instance v30, Ljava/util/HashSet;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V

    .line 346
    .local v30, permittedSubtreesDN:Ljava/util/Set;
    new-instance v31, Ljava/util/HashSet;

    invoke-direct/range {v31 .. v31}, Ljava/util/HashSet;-><init>()V

    .line 347
    .local v31, permittedSubtreesEmail:Ljava/util/Set;
    new-instance v32, Ljava/util/HashSet;

    invoke-direct/range {v32 .. v32}, Ljava/util/HashSet;-><init>()V

    .line 350
    .local v32, permittedSubtreesIP:Ljava/util/Set;
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 351
    .local v18, excludedSubtreesDN:Ljava/util/Set;
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 352
    .local v19, excludedSubtreesEmail:Ljava/util/Set;
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 362
    .local v20, excludedSubtreesIP:Ljava/util/Set;
    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object/from16 v35, v0

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v35

    const/16 v36, 0x1

    sub-int v22, v35, v36

    .local v22, index:I
    :goto_2d
    if-lez v22, :cond_f4

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move/from16 v35, v0

    sub-int v21, v35, v22

    .line 370
    .local v21, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v11, v0

    .line 374
    invoke-static {v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v35

    if-nez v35, :cond_356

    .line 376
    invoke-static {v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v33

    .line 377
    .local v33, principal:Ljavax/security/auth/x500/X500Principal;
    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v35, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v33 .. v33}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v36

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object v0, v5

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_64
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1f .. :try_end_64} :catch_e0

    .line 382
    .local v5, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_64
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v14

    check-cast v14, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_6a
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_6a} :catch_a2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_64 .. :try_end_6a} :catch_e0

    .line 393
    .local v14, dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_6a
    move-object/from16 v0, v30

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPermittedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_70
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6a .. :try_end_70} :catch_f5
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_6a .. :try_end_70} :catch_e0

    .line 404
    :try_start_70
    move-object/from16 v0, v18

    move-object v1, v14

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkExcludedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_76
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_70 .. :try_end_76} :catch_131
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_70 .. :try_end_76} :catch_e0

    .line 416
    :try_start_76
    sget-object v35, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v9

    check-cast v9, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_81
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_76 .. :try_end_81} :catch_16d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_76 .. :try_end_81} :catch_e0

    .line 424
    .local v9, altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v9, :cond_356

    .line 426
    const/16 v24, 0x0

    .local v24, j:I
    :goto_85
    :try_start_85
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v35

    move/from16 v0, v24

    move/from16 v1, v35

    if-ge v0, v1, :cond_356

    .line 428
    move-object v0, v9

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v28

    check-cast v28, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 430
    .local v28, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v35

    sparse-switch v35, :sswitch_data_44c

    .line 426
    :goto_9f
    add-int/lit8 v24, v24, 0x1

    goto :goto_85

    .line 384
    .end local v9           #altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v14           #dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v24           #j:I
    .end local v28           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :catch_a2
    move-exception v35

    move-object/from16 v15, v35

    .line 386
    .local v15, e:Ljava/io/IOException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.ncSubjectNameError"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v39

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 388
    .local v25, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v15

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35
    :try_end_e0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_85 .. :try_end_e0} :catch_e0

    .line 594
    .end local v5           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v15           #e:Ljava/io/IOException;
    .end local v21           #i:I
    .end local v22           #index:I
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v33           #principal:Ljavax/security/auth/x500/X500Principal;
    :catch_e0
    move-exception v35

    move-object/from16 v12, v35

    .line 596
    .local v12, cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    invoke-virtual {v12}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v35

    invoke-virtual {v12}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v36

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 599
    .end local v12           #cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    :cond_f4
    return-void

    .line 395
    .restart local v5       #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .restart local v14       #dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v21       #i:I
    .restart local v22       #index:I
    .restart local v33       #principal:Ljavax/security/auth/x500/X500Principal;
    :catch_f5
    move-exception v13

    .line 397
    .local v13, cpve:Ljava/security/cert/CertPathValidatorException;
    :try_start_f6
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.notPermittedDN"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual/range {v33 .. v33}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 399
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 406
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_131
    move-exception v13

    .line 408
    .restart local v13       #cpve:Ljava/security/cert/CertPathValidatorException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.excludedDN"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual/range {v33 .. v33}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v40

    invoke-direct/range {v39 .. v40}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 410
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 418
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_16d
    move-exception v35

    move-object/from16 v6, v35

    .line 420
    .local v6, ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.subjAltNameExtError"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v6

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 433
    .end local v6           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v9       #altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v24       #j:I
    .restart local v28       #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :sswitch_194
    const/16 v35, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;
    :try_end_1a1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_f6 .. :try_end_1a1} :catch_e0

    move-result-object v16

    .line 437
    .local v16, email:Ljava/lang/String;
    :try_start_1a2
    move-object/from16 v0, v31

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V
    :try_end_1a9
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1a2 .. :try_end_1a9} :catch_1ee
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1a2 .. :try_end_1a9} :catch_e0

    .line 448
    :try_start_1a9
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V
    :try_end_1b0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1a9 .. :try_end_1b0} :catch_1b2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1a9 .. :try_end_1b0} :catch_e0

    goto/16 :goto_9f

    .line 450
    :catch_1b2
    move-exception v13

    .line 452
    .restart local v13       #cpve:Ljava/security/cert/CertPathValidatorException;
    :try_start_1b3
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.excludedEmail"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 454
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 439
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_1ee
    move-exception v13

    .line 441
    .restart local v13       #cpve:Ljava/security/cert/CertPathValidatorException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.notPermittedEmail"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 443
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 459
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v16           #email:Ljava/lang/String;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :sswitch_22a
    const/16 v35, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_233
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1b3 .. :try_end_233} :catch_e0

    move-result-object v7

    .line 463
    .local v7, altDN:Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_234
    move-object/from16 v0, v30

    move-object v1, v7

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPermittedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_23a
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_234 .. :try_end_23a} :catch_282
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_234 .. :try_end_23a} :catch_e0

    .line 475
    :try_start_23a
    move-object/from16 v0, v18

    move-object v1, v7

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkExcludedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_240
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_23a .. :try_end_240} :catch_242
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_23a .. :try_end_240} :catch_e0

    goto/16 :goto_9f

    .line 477
    :catch_242
    move-exception v13

    .line 479
    .restart local v13       #cpve:Ljava/security/cert/CertPathValidatorException;
    :try_start_243
    new-instance v8, Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 480
    .local v8, altDNName:Lorg/bouncycastle/asn1/x509/X509Name;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.excludedDN"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v39

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 465
    .end local v8           #altDNName:Lorg/bouncycastle/asn1/x509/X509Name;
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_282
    move-exception v13

    .line 467
    .restart local v13       #cpve:Ljava/security/cert/CertPathValidatorException;
    new-instance v8, Lorg/bouncycastle/asn1/x509/X509Name;

    invoke-direct {v8, v7}, Lorg/bouncycastle/asn1/x509/X509Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 468
    .restart local v8       #altDNName:Lorg/bouncycastle/asn1/x509/X509Name;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.notPermittedDN"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    new-instance v39, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v39

    move-object v1, v8

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 487
    .end local v7           #altDN:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v8           #altDNName:Lorg/bouncycastle/asn1/x509/X509Name;
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :sswitch_2c2
    const/16 v35, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B
    :try_end_2cf
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_243 .. :try_end_2cf} :catch_e0

    move-result-object v23

    .line 491
    .local v23, ip:[B
    :try_start_2d0
    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPermittedIP(Ljava/util/Set;[B)V
    :try_end_2d7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2d0 .. :try_end_2d7} :catch_31b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2d0 .. :try_end_2d7} :catch_e0

    .line 502
    :try_start_2d7
    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkExcludedIP(Ljava/util/Set;[B)V
    :try_end_2de
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2d7 .. :try_end_2de} :catch_2e0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2d7 .. :try_end_2de} :catch_e0

    goto/16 :goto_9f

    .line 504
    :catch_2e0
    move-exception v13

    .line 506
    .restart local v13       #cpve:Ljava/security/cert/CertPathValidatorException;
    :try_start_2e1
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.excludedIP"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->IPtoString([B)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 493
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_31b
    move-exception v13

    .line 495
    .restart local v13       #cpve:Ljava/security/cert/CertPathValidatorException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.notPermittedIP"

    const/16 v37, 0x1

    move/from16 v0, v37

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->IPtoString([B)Ljava/lang/String;

    move-result-object v39

    aput-object v39, v37, v38

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v13

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35
    :try_end_356
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2e1 .. :try_end_356} :catch_e0

    .line 525
    .end local v5           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v9           #altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v13           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v14           #dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v23           #ip:[B
    .end local v24           #j:I
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v28           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v33           #principal:Ljavax/security/auth/x500/X500Principal;
    :cond_356
    :try_start_356
    sget-object v35, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object v0, v11

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v27

    check-cast v27, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_361
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_356 .. :try_end_361} :catch_3a1
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_356 .. :try_end_361} :catch_e0

    .line 533
    .local v27, ncSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v27, :cond_447

    .line 535
    :try_start_363
    new-instance v26, Lorg/bouncycastle/asn1/x509/NameConstraints;

    invoke-direct/range {v26 .. v27}, Lorg/bouncycastle/asn1/x509/NameConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 540
    .local v26, nc:Lorg/bouncycastle/asn1/x509/NameConstraints;
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v29

    .line 541
    .local v29, permitted:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v29, :cond_3eb

    .line 543
    invoke-virtual/range {v29 .. v29}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v15

    .line 544
    .local v15, e:Ljava/util/Enumeration;
    :goto_372
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v35

    if-eqz v35, :cond_3eb

    .line 546
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v34

    .line 547
    .local v34, subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual/range {v34 .. v34}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v10

    .line 549
    .local v10, base:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v35

    sparse-switch v35, :sswitch_data_45a

    goto :goto_372

    .line 552
    :sswitch_38c
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->intersectEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v31

    .line 553
    goto :goto_372

    .line 527
    .end local v10           #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v15           #e:Ljava/util/Enumeration;
    .end local v26           #nc:Lorg/bouncycastle/asn1/x509/NameConstraints;
    .end local v27           #ncSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v29           #permitted:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v34           #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    :catch_3a1
    move-exception v35

    move-object/from16 v6, v35

    .line 529
    .restart local v6       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v35, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v36, "CertPathReviewer.ncExtError"

    move-object/from16 v0, v25

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v35, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object/from16 v36, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    move-object v2, v6

    move-object/from16 v3, v36

    move/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v35

    .line 555
    .end local v6           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v10       #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    .restart local v15       #e:Ljava/util/Enumeration;
    .restart local v26       #nc:Lorg/bouncycastle/asn1/x509/NameConstraints;
    .restart local v27       #ncSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v29       #permitted:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v34       #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    :sswitch_3c8
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v30

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->intersectDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v30

    .line 556
    goto :goto_372

    .line 558
    :sswitch_3d6
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->intersectIP(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object v32

    goto :goto_372

    .line 567
    .end local v10           #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v15           #e:Ljava/util/Enumeration;
    .end local v34           #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_3eb
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v17

    .line 568
    .local v17, excluded:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v17, :cond_447

    .line 570
    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v15

    .line 571
    .restart local v15       #e:Ljava/util/Enumeration;
    :goto_3f5
    invoke-interface {v15}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v35

    if-eqz v35, :cond_447

    .line 573
    invoke-interface {v15}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v34

    .line 574
    .restart local v34       #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual/range {v34 .. v34}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v10

    .line 576
    .restart local v10       #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v35

    sparse-switch v35, :sswitch_data_468

    goto :goto_3f5

    .line 579
    :sswitch_40f
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v19

    .line 580
    goto :goto_3f5

    .line 582
    :sswitch_424
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->unionDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v18

    .line 583
    goto :goto_3f5

    .line 585
    :sswitch_432
    invoke-virtual {v10}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v35

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->unionIP(Ljava/util/Set;[B)Ljava/util/Set;
    :try_end_445
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_363 .. :try_end_445} :catch_e0

    move-result-object v20

    goto :goto_3f5

    .line 362
    .end local v10           #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v15           #e:Ljava/util/Enumeration;
    .end local v17           #excluded:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v26           #nc:Lorg/bouncycastle/asn1/x509/NameConstraints;
    .end local v29           #permitted:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v34           #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_447
    add-int/lit8 v22, v22, -0x1

    goto/16 :goto_2d

    .line 430
    nop

    :sswitch_data_44c
    .sparse-switch
        0x1 -> :sswitch_194
        0x4 -> :sswitch_22a
        0x7 -> :sswitch_2c2
    .end sparse-switch

    .line 549
    :sswitch_data_45a
    .sparse-switch
        0x1 -> :sswitch_38c
        0x4 -> :sswitch_3c8
        0x7 -> :sswitch_3d6
    .end sparse-switch

    .line 576
    :sswitch_data_468
    .sparse-switch
        0x1 -> :sswitch_40f
        0x4 -> :sswitch_424
        0x7 -> :sswitch_432
    .end sparse-switch
.end method

.method private checkPathLength()V
    .registers 16

    .prologue
    const/4 v11, 0x1

    const-string v14, "org.bouncycastle.x509.CertPathReviewerMessages"

    .line 607
    iget v7, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    .line 608
    .local v7, maxPathLength:I
    const/4 v9, 0x0

    .line 610
    .local v9, totalPathLength:I
    const/4 v4, 0x0

    .line 613
    .local v4, cert:Ljava/security/cert/X509Certificate;
    iget-object v10, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    sub-int v6, v10, v11

    .local v6, index:I
    :goto_f
    if-lez v6, :cond_61

    .line 615
    iget v10, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    sub-int v5, v10, v6

    .line 617
    .local v5, i:I
    iget-object v10, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v10, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #cert:Ljava/security/cert/X509Certificate;
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 621
    .restart local v4       #cert:Ljava/security/cert/X509Certificate;
    invoke-static {v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v10

    if-nez v10, :cond_35

    .line 623
    if-gtz v7, :cond_31

    .line 625
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v10, "CertPathReviewer.pathLenghtExtended"

    invoke-direct {v8, v14, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    .local v8, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v8}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 628
    .end local v8           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_31
    add-int/lit8 v7, v7, -0x1

    .line 629
    add-int/lit8 v9, v9, 0x1

    .line 637
    :cond_35
    :try_start_35
    sget-object v10, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v4, v10}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v10

    invoke-static {v10}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_3e
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_35 .. :try_end_3e} :catch_51

    move-result-object v3

    .line 647
    .local v3, bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :goto_3f
    if-eqz v3, :cond_4e

    .line 649
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v0

    .line 651
    .local v0, _pathLengthConstraint:Ljava/math/BigInteger;
    if-eqz v0, :cond_4e

    .line 653
    invoke-virtual {v0}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    .line 655
    .local v1, _plc:I
    if-ge v1, v7, :cond_4e

    .line 657
    move v7, v1

    .line 613
    .end local v0           #_pathLengthConstraint:Ljava/math/BigInteger;
    .end local v1           #_plc:I
    :cond_4e
    add-int/lit8 v6, v6, -0x1

    goto :goto_f

    .line 640
    .end local v3           #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :catch_51
    move-exception v10

    move-object v2, v10

    .line 642
    .local v2, ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v10, "CertPathReviewer.processLengthConstError"

    invoke-direct {v8, v14, v10}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    .restart local v8       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v8, v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 644
    const/4 v3, 0x0

    .restart local v3       #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    goto :goto_3f

    .line 664
    .end local v2           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v3           #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v5           #i:I
    .end local v8           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_61
    new-instance v8, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v10, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v10, "CertPathReviewer.totalPathLength"

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v13, v11, v12

    invoke-direct {v8, v14, v10, v11}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 667
    .restart local v8       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    invoke-virtual {p0, v8}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 668
    return-void
.end method

.method private checkPolicy()V
    .registers 76

    .prologue
    .line 1033
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v74

    .line 1043
    .local v74, userInitialPolicySet:Ljava/util/Set;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    add-int/lit8 v6, v6, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v65, v0

    .line 1044
    .local v65, policyNodes:[Ljava/util/List;
    const/16 v49, 0x0

    .local v49, j:I
    :goto_17
    move-object/from16 v0, v65

    array-length v0, v0

    move v6, v0

    move/from16 v0, v49

    move v1, v6

    if-ge v0, v1, :cond_2a

    .line 1046
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v65, v49

    .line 1044
    add-int/lit8 v49, v49, 0x1

    goto :goto_17

    .line 1049
    :cond_2a
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 1051
    .local v8, policySet:Ljava/util/Set;
    const-string v6, "2.5.29.32.0"

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1053
    new-instance v5, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    const-string v11, "2.5.29.32.0"

    const/4 v12, 0x0

    invoke-direct/range {v5 .. v12}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1056
    .local v5, validPolicyTree:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v6, 0x0

    aget-object v6, v65, v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1061
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_114

    .line 1063
    const/16 v40, 0x0

    .line 1073
    .local v40, explicitPolicy:I
    :goto_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v6

    if-eqz v6, :cond_11d

    .line 1075
    const/16 v44, 0x0

    .line 1085
    .local v44, inhibitAnyPolicy:I
    :goto_68
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v6

    if-eqz v6, :cond_126

    .line 1087
    const/16 v64, 0x0

    .line 1094
    .local v64, policyMapping:I
    :goto_75
    const/16 v30, 0x0

    .line 1100
    .local v30, acceptablePolicies:Ljava/util/Set;
    const/16 v32, 0x0

    .line 1106
    .local v32, cert:Ljava/security/cert/X509Certificate;
    :try_start_79
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v43, v6, v7

    .local v43, index:I
    :goto_85
    if-ltz v43, :cond_57e

    .line 1109
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    sub-int v11, v6, v43

    .line 1112
    .local v11, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object/from16 v32, v0
    :try_end_a0
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_79 .. :try_end_a0} :catch_100

    .line 1119
    :try_start_a0
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v33

    check-cast v33, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_ab
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a0 .. :try_end_ab} :catch_12f
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_a0 .. :try_end_ab} :catch_100

    .line 1127
    .local v33, certPolicies:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v33, :cond_2f5

    if-eqz v5, :cond_2f5

    .line 1132
    :try_start_af
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v39

    .line 1133
    .local v39, e:Ljava/util/Enumeration;
    new-instance v66, Ljava/util/HashSet;

    invoke-direct/range {v66 .. v66}, Ljava/util/HashSet;-><init>()V

    .line 1135
    .local v66, pols:Ljava/util/Set;
    :cond_b8
    :goto_b8
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_175

    .line 1137
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v59

    .line 1138
    .local v59, pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v59 .. v59}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v60

    .line 1140
    .local v60, pOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v60 .. v60}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v66

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1142
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v60 .. v60}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_dd
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_af .. :try_end_dd} :catch_100

    move-result v6

    if-nez v6, :cond_b8

    .line 1147
    :try_start_e0
    invoke-virtual/range {v59 .. v59}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_e7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_e0 .. :try_end_e7} :catch_152
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_e0 .. :try_end_e7} :catch_100

    move-result-object v67

    .line 1155
    .local v67, pq:Ljava/util/Set;
    :try_start_e8
    move v0, v11

    move-object/from16 v1, v65

    move-object/from16 v2, v60

    move-object/from16 v3, v67

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v54

    .line 1157
    .local v54, match:Z
    if-nez v54, :cond_b8

    .line 1159
    move v0, v11

    move-object/from16 v1, v65

    move-object/from16 v2, v60

    move-object/from16 v3, v67

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V
    :try_end_ff
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_e8 .. :try_end_ff} :catch_100

    goto :goto_b8

    .line 1739
    .end local v11           #i:I
    .end local v33           #certPolicies:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v39           #e:Ljava/util/Enumeration;
    .end local v43           #index:I
    .end local v54           #match:Z
    .end local v59           #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v60           #pOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v66           #pols:Ljava/util/Set;
    .end local v67           #pq:Ljava/util/Set;
    :catch_100
    move-exception v6

    move-object/from16 v35, v6

    .line 1741
    .local v35, cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v6

    invoke-virtual/range {v35 .. v35}, Lorg/bouncycastle/x509/CertPathReviewerException;->getIndex()I

    move-result v7

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1742
    const/4 v5, 0x0

    .line 1744
    .end local v35           #cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    :goto_113
    return-void

    .line 1067
    .end local v30           #acceptablePolicies:Ljava/util/Set;
    .end local v32           #cert:Ljava/security/cert/X509Certificate;
    .end local v40           #explicitPolicy:I
    .end local v44           #inhibitAnyPolicy:I
    .end local v64           #policyMapping:I
    :cond_114
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    add-int/lit8 v40, v6, 0x1

    .restart local v40       #explicitPolicy:I
    goto/16 :goto_5b

    .line 1079
    :cond_11d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    add-int/lit8 v44, v6, 0x1

    .restart local v44       #inhibitAnyPolicy:I
    goto/16 :goto_68

    .line 1091
    :cond_126
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    add-int/lit8 v64, v6, 0x1

    .restart local v64       #policyMapping:I
    goto/16 :goto_75

    .line 1122
    .restart local v11       #i:I
    .restart local v30       #acceptablePolicies:Ljava/util/Set;
    .restart local v32       #cert:Ljava/security/cert/X509Certificate;
    .restart local v43       #index:I
    :catch_12f
    move-exception v6

    move-object/from16 v31, v6

    .line 1124
    .local v31, ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    :try_start_132
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyExtError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    .local v55, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object/from16 v2, v31

    move-object v3, v7

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1149
    .end local v31           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v33       #certPolicies:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v39       #e:Ljava/util/Enumeration;
    .restart local v59       #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .restart local v60       #pOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v66       #pols:Ljava/util/Set;
    :catch_152
    move-exception v6

    move-object/from16 v36, v6

    .line 1151
    .local v36, cpve:Ljava/security/cert/CertPathValidatorException;
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyQualifierError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1152
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object/from16 v2, v36

    move-object v3, v7

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1164
    .end local v36           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v59           #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v60           #pOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_175
    if-eqz v30, :cond_182

    const-string v6, "2.5.29.32.0"

    move-object/from16 v0, v30

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_214

    .line 1166
    :cond_182
    move-object/from16 v30, v66

    .line 1188
    :goto_184
    if-gtz v44, :cond_193

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    if-ge v11, v6, :cond_292

    invoke-static/range {v32 .. v32}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_292

    .line 1190
    :cond_193
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v39

    .line 1192
    :cond_197
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_292

    .line 1194
    invoke-interface/range {v39 .. v39}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v59

    .line 1196
    .restart local v59       #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v59 .. v59}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1b2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_132 .. :try_end_1b2} :catch_100

    move-result v6

    if-eqz v6, :cond_197

    .line 1201
    :try_start_1b5
    invoke-virtual/range {v59 .. v59}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_1bc
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_1b5 .. :try_end_1bc} :catch_23d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1b5 .. :try_end_1bc} :catch_100

    move-result-object v14

    .line 1208
    .local v14, _apq:Ljava/util/Set;
    const/4 v6, 0x1

    sub-int v6, v11, v6

    :try_start_1c0
    aget-object v24, v65, v6

    .line 1210
    .local v24, _nodes:Ljava/util/List;
    const/16 v50, 0x0

    .local v50, k:I
    :goto_1c4
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v50

    move v1, v6

    if-ge v0, v1, :cond_292

    .line 1212
    move-object/from16 v0, v24

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1214
    .local v13, _node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 1215
    .local v25, _policySetIter:Ljava/util/Iterator;
    :cond_1df
    :goto_1df
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_28e

    .line 1217
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 1220
    .local v26, _tmp:Ljava/lang/Object;
    move-object/from16 v0, v26

    instance-of v0, v0, Ljava/lang/String;

    move v6, v0

    if-eqz v6, :cond_260

    .line 1222
    move-object/from16 v0, v26

    check-cast v0, Ljava/lang/String;

    move-object v15, v0

    .line 1233
    .end local v26           #_tmp:Ljava/lang/Object;
    .local v15, _policy:Ljava/lang/String;
    :goto_1f5
    const/16 v20, 0x0

    .line 1234
    .local v20, _found:Z
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v19

    .line 1237
    .local v19, _childrenIter:Ljava/util/Iterator;
    :cond_1fb
    :goto_1fb
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_26e

    .line 1239
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1241
    .local v18, _child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1fb

    .line 1243
    const/16 v20, 0x1

    goto :goto_1fb

    .line 1170
    .end local v13           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v14           #_apq:Ljava/util/Set;
    .end local v15           #_policy:Ljava/lang/String;
    .end local v18           #_child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v19           #_childrenIter:Ljava/util/Iterator;
    .end local v20           #_found:Z
    .end local v24           #_nodes:Ljava/util/List;
    .end local v25           #_policySetIter:Ljava/util/Iterator;
    .end local v50           #k:I
    .end local v59           #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_214
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v47

    .line 1171
    .local v47, it:Ljava/util/Iterator;
    new-instance v71, Ljava/util/HashSet;

    invoke-direct/range {v71 .. v71}, Ljava/util/HashSet;-><init>()V

    .line 1173
    .local v71, t1:Ljava/util/Set;
    :cond_21d
    :goto_21d
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_239

    .line 1175
    invoke-interface/range {v47 .. v47}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v58

    .line 1177
    .local v58, o:Ljava/lang/Object;
    move-object/from16 v0, v66

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21d

    .line 1179
    move-object/from16 v0, v71

    move-object/from16 v1, v58

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_21d

    .line 1183
    .end local v58           #o:Ljava/lang/Object;
    :cond_239
    move-object/from16 v30, v71

    goto/16 :goto_184

    .line 1203
    .end local v47           #it:Ljava/util/Iterator;
    .end local v71           #t1:Ljava/util/Set;
    .restart local v59       #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :catch_23d
    move-exception v6

    move-object/from16 v36, v6

    .line 1205
    .restart local v36       #cpve:Ljava/security/cert/CertPathValidatorException;
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyQualifierError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1206
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object/from16 v2, v36

    move-object v3, v7

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1224
    .end local v36           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v13       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v14       #_apq:Ljava/util/Set;
    .restart local v24       #_nodes:Ljava/util/List;
    .restart local v25       #_policySetIter:Ljava/util/Iterator;
    .restart local v26       #_tmp:Ljava/lang/Object;
    .restart local v50       #k:I
    :cond_260
    move-object/from16 v0, v26

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move v6, v0

    if-eqz v6, :cond_1df

    .line 1226
    check-cast v26, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .end local v26           #_tmp:Ljava/lang/Object;
    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    .restart local v15       #_policy:Ljava/lang/String;
    goto :goto_1f5

    .line 1247
    .restart local v19       #_childrenIter:Ljava/util/Iterator;
    .restart local v20       #_found:Z
    :cond_26e
    if-nez v20, :cond_1df

    .line 1249
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1250
    .local v12, _newChildExpectedPolicies:Ljava/util/Set;
    invoke-interface {v12, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1252
    new-instance v9, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    const/16 v16, 0x0

    invoke-direct/range {v9 .. v16}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 1256
    .local v9, _newChild:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13, v9}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 1257
    aget-object v6, v65, v11

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1df

    .line 1210
    .end local v9           #_newChild:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v12           #_newChildExpectedPolicies:Ljava/util/Set;
    .end local v15           #_policy:Ljava/lang/String;
    .end local v19           #_childrenIter:Ljava/util/Iterator;
    .end local v20           #_found:Z
    :cond_28e
    add-int/lit8 v50, v50, 0x1

    goto/16 :goto_1c4

    .line 1269
    .end local v13           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v14           #_apq:Ljava/util/Set;
    .end local v24           #_nodes:Ljava/util/List;
    .end local v25           #_policySetIter:Ljava/util/Iterator;
    .end local v50           #k:I
    .end local v59           #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_292
    const/4 v6, 0x1

    sub-int v49, v11, v6

    :goto_295
    if-ltz v49, :cond_2c5

    .line 1271
    aget-object v57, v65, v49

    .line 1273
    .local v57, nodes:Ljava/util/List;
    const/16 v50, 0x0

    .restart local v50       #k:I
    :goto_29b
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v50

    move v1, v6

    if-ge v0, v1, :cond_2bf

    .line 1275
    move-object/from16 v0, v57

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1276
    .local v56, node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_2c2

    .line 1278
    move-object v0, v5

    move-object/from16 v1, v65

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 1280
    if-nez v5, :cond_2c2

    .line 1269
    .end local v56           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2bf
    add-int/lit8 v49, v49, -0x1

    goto :goto_295

    .line 1273
    .restart local v56       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_2c2
    add-int/lit8 v50, v50, 0x1

    goto :goto_29b

    .line 1291
    .end local v50           #k:I
    .end local v56           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v57           #nodes:Ljava/util/List;
    :cond_2c5
    invoke-virtual/range {v32 .. v32}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v38

    .line 1293
    .local v38, criticalExtensionOids:Ljava/util/Set;
    if-eqz v38, :cond_2f5

    .line 1295
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v38

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v37

    .line 1297
    .local v37, critical:Z
    aget-object v57, v65, v11

    .line 1298
    .restart local v57       #nodes:Ljava/util/List;
    const/16 v49, 0x0

    :goto_2d8
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v49

    move v1, v6

    if-ge v0, v1, :cond_2f5

    .line 1300
    move-object/from16 v0, v57

    move/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1301
    .restart local v56       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v56

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 1298
    add-int/lit8 v49, v49, 0x1

    goto :goto_2d8

    .line 1309
    .end local v37           #critical:Z
    .end local v38           #criticalExtensionOids:Ljava/util/Set;
    .end local v39           #e:Ljava/util/Enumeration;
    .end local v56           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v57           #nodes:Ljava/util/List;
    .end local v66           #pols:Ljava/util/Set;
    :cond_2f5
    if-nez v33, :cond_2f8

    .line 1311
    const/4 v5, 0x0

    .line 1316
    :cond_2f8
    if-gtz v40, :cond_312

    if-nez v5, :cond_312

    .line 1318
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.noValidPolicyTree"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object v0, v6

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v6

    .line 1326
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_312
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0
    :try_end_317
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1c0 .. :try_end_317} :catch_100

    if-eq v11, v6, :cond_559

    .line 1334
    :try_start_319
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
    :try_end_321
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_319 .. :try_end_321} :catch_37d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_319 .. :try_end_321} :catch_100

    move-result-object v62

    .line 1342
    .local v62, pm:Lorg/bouncycastle/asn1/DERObject;
    if-eqz v62, :cond_3ce

    .line 1344
    :try_start_324
    move-object/from16 v0, v62

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v53, v0

    .line 1345
    .local v53, mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v49, 0x0

    :goto_32c
    invoke-virtual/range {v53 .. v53}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    move/from16 v0, v49

    move v1, v6

    if-ge v0, v1, :cond_3ce

    .line 1347
    move-object/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v52

    check-cast v52, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1348
    .local v52, mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    move-object/from16 v0, v52

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v46

    check-cast v46, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1349
    .local v46, ip_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v6, 0x1

    move-object/from16 v0, v52

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v70

    check-cast v70, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 1350
    .local v70, sp_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v46 .. v46}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a0

    .line 1352
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.invalidPolicyMapping"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1353
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object v2, v7

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1336
    .end local v46           #ip_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v52           #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v53           #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v62           #pm:Lorg/bouncycastle/asn1/DERObject;
    .end local v70           #sp_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :catch_37d
    move-exception v6

    move-object/from16 v31, v6

    .line 1338
    .restart local v31       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyMapExtError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object/from16 v2, v31

    move-object v3, v7

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1355
    .end local v31           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v46       #ip_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v52       #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v53       #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v62       #pm:Lorg/bouncycastle/asn1/DERObject;
    .restart local v70       #sp_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3a0
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v70 .. v70}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3ca

    .line 1357
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.invalidPolicyMapping"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object v2, v7

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1345
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_3ca
    add-int/lit8 v49, v49, 0x1

    goto/16 :goto_32c

    .line 1365
    .end local v46           #ip_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v52           #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v53           #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v70           #sp_id:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3ce
    if-eqz v62, :cond_4ba

    .line 1367
    move-object/from16 v0, v62

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v53, v0

    .line 1368
    .restart local v53       #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v51, Ljava/util/HashMap;

    invoke-direct/range {v51 .. v51}, Ljava/util/HashMap;-><init>()V

    .line 1369
    .local v51, m_idp:Ljava/util/Map;
    new-instance v68, Ljava/util/HashSet;

    invoke-direct/range {v68 .. v68}, Ljava/util/HashSet;-><init>()V

    .line 1371
    .local v68, s_idp:Ljava/util/Set;
    const/16 v49, 0x0

    :goto_3e2
    invoke-virtual/range {v53 .. v53}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    move/from16 v0, v49

    move v1, v6

    if-ge v0, v1, :cond_44c

    .line 1373
    move-object/from16 v0, v53

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v52

    check-cast v52, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1374
    .restart local v52       #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    move-object/from16 v0, v52

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v42

    .line 1375
    .local v42, id_p:Ljava/lang/String;
    const/4 v6, 0x1

    move-object/from16 v0, v52

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v69

    .line 1378
    .local v69, sd_p:Ljava/lang/String;
    move-object/from16 v0, v51

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_43a

    .line 1380
    new-instance v72, Ljava/util/HashSet;

    invoke-direct/range {v72 .. v72}, Ljava/util/HashSet;-><init>()V

    .line 1381
    .local v72, tmp:Ljava/util/Set;
    move-object/from16 v0, v72

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1382
    move-object/from16 v0, v51

    move-object/from16 v1, v42

    move-object/from16 v2, v72

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    move-object/from16 v0, v68

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1371
    :goto_437
    add-int/lit8 v49, v49, 0x1

    goto :goto_3e2

    .line 1387
    .end local v72           #tmp:Ljava/util/Set;
    :cond_43a
    move-object/from16 v0, v51

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v72

    check-cast v72, Ljava/util/Set;

    .line 1388
    .restart local v72       #tmp:Ljava/util/Set;
    move-object/from16 v0, v72

    move-object/from16 v1, v69

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_437

    .line 1392
    .end local v42           #id_p:Ljava/lang/String;
    .end local v52           #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v69           #sd_p:Ljava/lang/String;
    .end local v72           #tmp:Ljava/util/Set;
    :cond_44c
    invoke-interface/range {v68 .. v68}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v48

    .line 1393
    .local v48, it_idp:Ljava/util/Iterator;
    :cond_450
    :goto_450
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4ba

    .line 1395
    invoke-interface/range {v48 .. v48}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Ljava/lang/String;
    :try_end_45c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_324 .. :try_end_45c} :catch_100

    .line 1400
    .restart local v42       #id_p:Ljava/lang/String;
    if-lez v64, :cond_4ad

    .line 1404
    :try_start_45e
    move v0, v11

    move-object/from16 v1, v65

    move-object/from16 v2, v42

    move-object/from16 v3, v51

    move-object/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_46a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_45e .. :try_end_46a} :catch_46b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_45e .. :try_end_46a} :catch_48c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_45e .. :try_end_46a} :catch_100

    goto :goto_450

    .line 1406
    :catch_46b
    move-exception v31

    .line 1409
    .restart local v31       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    :try_start_46c
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyExtError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1410
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object/from16 v2, v31

    move-object v3, v7

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1412
    .end local v31           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_48c
    move-exception v36

    .line 1415
    .restart local v36       #cpve:Ljava/security/cert/CertPathValidatorException;
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyQualifierError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1416
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object/from16 v2, v36

    move-object v3, v7

    move/from16 v4, v43

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1423
    .end local v36           #cpve:Ljava/security/cert/CertPathValidatorException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_4ad
    if-gtz v64, :cond_450

    .line 1425
    move v0, v11

    move-object/from16 v1, v65

    move-object/from16 v2, v42

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    goto :goto_450

    .line 1435
    .end local v42           #id_p:Ljava/lang/String;
    .end local v48           #it_idp:Ljava/util/Iterator;
    .end local v51           #m_idp:Ljava/util/Map;
    .end local v53           #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v68           #s_idp:Ljava/util/Set;
    :cond_4ba
    invoke-static/range {v32 .. v32}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_4bd
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_46c .. :try_end_4bd} :catch_100

    move-result v6

    if-nez v6, :cond_4cc

    .line 1439
    if-eqz v40, :cond_4c4

    .line 1441
    add-int/lit8 v40, v40, -0x1

    .line 1445
    :cond_4c4
    if-eqz v64, :cond_4c8

    .line 1447
    add-int/lit8 v64, v64, -0x1

    .line 1451
    :cond_4c8
    if-eqz v44, :cond_4cc

    .line 1453
    add-int/lit8 v44, v44, -0x1

    .line 1464
    :cond_4cc
    :try_start_4cc
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v61

    check-cast v61, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1465
    .local v61, pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v61, :cond_53c

    .line 1467
    invoke-virtual/range {v61 .. v61}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v63

    .line 1469
    .local v63, policyConstraints:Ljava/util/Enumeration;
    :cond_4dd
    :goto_4dd
    invoke-interface/range {v63 .. v63}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_53c

    .line 1471
    invoke-interface/range {v63 .. v63}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1474
    .local v34, constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v34 .. v34}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_7c8

    goto :goto_4dd

    .line 1477
    :pswitch_4f1
    invoke-static/range {v34 .. v34}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v73

    .line 1478
    .local v73, tmpInt:I
    move/from16 v0, v73

    move/from16 v1, v40

    if-ge v0, v1, :cond_4dd

    .line 1480
    move/from16 v40, v73

    goto :goto_4dd

    .line 1484
    .end local v73           #tmpInt:I
    :pswitch_506
    invoke-static/range {v34 .. v34}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I
    :try_end_511
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_4cc .. :try_end_511} :catch_51b
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_4cc .. :try_end_511} :catch_100

    move-result v73

    .line 1485
    .restart local v73       #tmpInt:I
    move/from16 v0, v73

    move/from16 v1, v64

    if-ge v0, v1, :cond_4dd

    .line 1487
    move/from16 v64, v73

    goto :goto_4dd

    .line 1494
    .end local v34           #constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v61           #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v63           #policyConstraints:Ljava/util/Enumeration;
    .end local v73           #tmpInt:I
    :catch_51b
    move-exception v6

    move-object/from16 v31, v6

    .line 1496
    .restart local v31       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    :try_start_51e
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyConstExtError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1497
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object v2, v7

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v6
    :try_end_53c
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_51e .. :try_end_53c} :catch_100

    .line 1506
    .end local v31           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v61       #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_53c
    :try_start_53c
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v41

    check-cast v41, Lorg/bouncycastle/asn1/DERInteger;

    .line 1508
    .local v41, iap:Lorg/bouncycastle/asn1/DERInteger;
    if-eqz v41, :cond_559

    .line 1510
    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I
    :try_end_550
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_53c .. :try_end_550} :catch_55d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_53c .. :try_end_550} :catch_100

    move-result v21

    .line 1512
    .local v21, _inhibitAnyPolicy:I
    move/from16 v0, v21

    move/from16 v1, v44

    if-ge v0, v1, :cond_559

    .line 1514
    move/from16 v44, v21

    .line 1106
    .end local v21           #_inhibitAnyPolicy:I
    .end local v41           #iap:Lorg/bouncycastle/asn1/DERInteger;
    .end local v61           #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v62           #pm:Lorg/bouncycastle/asn1/DERObject;
    :cond_559
    add-int/lit8 v43, v43, -0x1

    goto/16 :goto_85

    .line 1518
    .restart local v61       #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v62       #pm:Lorg/bouncycastle/asn1/DERObject;
    :catch_55d
    move-exception v6

    move-object/from16 v31, v6

    .line 1520
    .restart local v31       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    :try_start_560
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyInhibitExtError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1521
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object v2, v7

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1535
    .end local v11           #i:I
    .end local v31           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v33           #certPolicies:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v61           #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v62           #pm:Lorg/bouncycastle/asn1/DERObject;
    :cond_57e
    invoke-static/range {v32 .. v32}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_581
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_560 .. :try_end_581} :catch_100

    move-result v6

    if-nez v6, :cond_588

    if-lez v40, :cond_588

    .line 1537
    add-int/lit8 v40, v40, -0x1

    .line 1546
    :cond_588
    :try_start_588
    sget-object v6, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v32

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v61

    check-cast v61, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1547
    .restart local v61       #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v61, :cond_5df

    .line 1549
    invoke-virtual/range {v61 .. v61}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v63

    .line 1551
    .restart local v63       #policyConstraints:Ljava/util/Enumeration;
    :cond_599
    :goto_599
    invoke-interface/range {v63 .. v63}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_5df

    .line 1553
    invoke-interface/range {v63 .. v63}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1554
    .restart local v34       #constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v34 .. v34}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_7d0

    goto :goto_599

    .line 1557
    :pswitch_5ad
    invoke-static/range {v34 .. v34}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I
    :try_end_5b8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_588 .. :try_end_5b8} :catch_5be
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_588 .. :try_end_5b8} :catch_100

    move-result v73

    .line 1558
    .restart local v73       #tmpInt:I
    if-nez v73, :cond_599

    .line 1560
    const/16 v40, 0x0

    goto :goto_599

    .line 1567
    .end local v34           #constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v61           #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v63           #policyConstraints:Ljava/util/Enumeration;
    .end local v73           #tmpInt:I
    :catch_5be
    move-exception v6

    move-object/from16 v39, v6

    .line 1569
    .local v39, e:Lorg/bouncycastle/jce/provider/AnnotatedException;
    :try_start_5c1
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.policyConstExtError"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object v2, v7

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1583
    .end local v39           #e:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v61       #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_5df
    if-nez v5, :cond_626

    .line 1585
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_60a

    .line 1587
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.explicitPolicy"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1588
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object v2, v7

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1590
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_60a
    const/16 v45, 0x0

    .line 1731
    .local v45, intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_60c
    if-gtz v40, :cond_7c4

    if-nez v45, :cond_7c4

    .line 1733
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.invalidPolicy"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object v0, v6

    move-object/from16 v1, v55

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v6

    .line 1592
    .end local v45           #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_626
    invoke-static/range {v74 .. v74}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_704

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_700

    .line 1596
    invoke-interface/range {v30 .. v30}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_65b

    .line 1598
    new-instance v55, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.explicitPolicy"

    move-object/from16 v0, v55

    move-object v1, v6

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1599
    .restart local v55       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move-object v7, v0

    move-object v0, v6

    move-object/from16 v1, v55

    move-object v2, v7

    move/from16 v3, v43

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1603
    .end local v55           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_65b
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 1605
    .local v28, _validPolicyNodeSet:Ljava/util/Set;
    const/16 v49, 0x0

    :goto_662
    move-object/from16 v0, v65

    array-length v0, v0

    move v6, v0

    move/from16 v0, v49

    move v1, v6

    if-ge v0, v1, :cond_6a9

    .line 1607
    aget-object v23, v65, v49

    .line 1609
    .local v23, _nodeDepth:Ljava/util/List;
    const/16 v50, 0x0

    .restart local v50       #k:I
    :goto_66f
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v50

    move v1, v6

    if-ge v0, v1, :cond_6a6

    .line 1611
    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1613
    .restart local v13       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6a3

    .line 1615
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v22

    .line 1616
    .local v22, _iter:Ljava/util/Iterator;
    :goto_692
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6a3

    .line 1618
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v28

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_692

    .line 1609
    .end local v22           #_iter:Ljava/util/Iterator;
    :cond_6a3
    add-int/lit8 v50, v50, 0x1

    goto :goto_66f

    .line 1605
    .end local v13           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_6a6
    add-int/lit8 v49, v49, 0x1

    goto :goto_662

    .line 1624
    .end local v23           #_nodeDepth:Ljava/util/List;
    .end local v50           #k:I
    :cond_6a9
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 1625
    .local v29, _vpnsIter:Ljava/util/Iterator;
    :cond_6ad
    :goto_6ad
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6c8

    .line 1627
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1628
    .restart local v13       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v27

    .line 1630
    .local v27, _validPolicy:Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6ad

    goto :goto_6ad

    .line 1635
    .end local v13           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v27           #_validPolicy:Ljava/lang/String;
    :cond_6c8
    if-eqz v5, :cond_700

    .line 1637
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    const/4 v7, 0x1

    sub-int v49, v6, v7

    :goto_6d2
    if-ltz v49, :cond_700

    .line 1639
    aget-object v57, v65, v49

    .line 1641
    .restart local v57       #nodes:Ljava/util/List;
    const/16 v50, 0x0

    .restart local v50       #k:I
    :goto_6d8
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v50

    move v1, v6

    if-ge v0, v1, :cond_6fd

    .line 1643
    move-object/from16 v0, v57

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1644
    .restart local v56       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_6fa

    .line 1646
    move-object v0, v5

    move-object/from16 v1, v65

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 1641
    :cond_6fa
    add-int/lit8 v50, v50, 0x1

    goto :goto_6d8

    .line 1637
    .end local v56           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_6fd
    add-int/lit8 v49, v49, -0x1

    goto :goto_6d2

    .line 1654
    .end local v28           #_validPolicyNodeSet:Ljava/util/Set;
    .end local v29           #_vpnsIter:Ljava/util/Iterator;
    .end local v50           #k:I
    .end local v57           #nodes:Ljava/util/List;
    :cond_700
    move-object/from16 v45, v5

    .restart local v45       #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_60c

    .line 1668
    .end local v45           #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_704
    new-instance v28, Ljava/util/HashSet;

    invoke-direct/range {v28 .. v28}, Ljava/util/HashSet;-><init>()V

    .line 1670
    .restart local v28       #_validPolicyNodeSet:Ljava/util/Set;
    const/16 v49, 0x0

    :goto_70b
    move-object/from16 v0, v65

    array-length v0, v0

    move v6, v0

    move/from16 v0, v49

    move v1, v6

    if-ge v0, v1, :cond_761

    .line 1672
    aget-object v23, v65, v49

    .line 1674
    .restart local v23       #_nodeDepth:Ljava/util/List;
    const/16 v50, 0x0

    .restart local v50       #k:I
    :goto_718
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v50

    move v1, v6

    if-ge v0, v1, :cond_75e

    .line 1676
    move-object/from16 v0, v23

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1678
    .restart local v13       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_75b

    .line 1680
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v22

    .line 1681
    .restart local v22       #_iter:Ljava/util/Iterator;
    :cond_73b
    :goto_73b
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_75b

    .line 1683
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1684
    .local v17, _c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_73b

    .line 1686
    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_73b

    .line 1674
    .end local v17           #_c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v22           #_iter:Ljava/util/Iterator;
    :cond_75b
    add-int/lit8 v50, v50, 0x1

    goto :goto_718

    .line 1670
    .end local v13           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_75e
    add-int/lit8 v49, v49, 0x1

    goto :goto_70b

    .line 1696
    .end local v23           #_nodeDepth:Ljava/util/List;
    .end local v50           #k:I
    :cond_761
    invoke-interface/range {v28 .. v28}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 1697
    .restart local v29       #_vpnsIter:Ljava/util/Iterator;
    :cond_765
    :goto_765
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_788

    .line 1699
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1700
    .restart local v13       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v13}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v27

    .line 1702
    .restart local v27       #_validPolicy:Ljava/lang/String;
    move-object/from16 v0, v74

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_765

    .line 1704
    move-object v0, v5

    move-object/from16 v1, v65

    move-object v2, v13

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    goto :goto_765

    .line 1711
    .end local v13           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v27           #_validPolicy:Ljava/lang/String;
    :cond_788
    if-eqz v5, :cond_7c0

    .line 1713
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v6, v0

    const/4 v7, 0x1

    sub-int v49, v6, v7

    :goto_792
    if-ltz v49, :cond_7c0

    .line 1715
    aget-object v57, v65, v49

    .line 1717
    .restart local v57       #nodes:Ljava/util/List;
    const/16 v50, 0x0

    .restart local v50       #k:I
    :goto_798
    invoke-interface/range {v57 .. v57}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v50

    move v1, v6

    if-ge v0, v1, :cond_7bd

    .line 1719
    move-object/from16 v0, v57

    move/from16 v1, v50

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1720
    .restart local v56       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_7ba

    .line 1722
    move-object v0, v5

    move-object/from16 v1, v65

    move-object/from16 v2, v56

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :try_end_7b9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_5c1 .. :try_end_7b9} :catch_100

    move-result-object v5

    .line 1717
    :cond_7ba
    add-int/lit8 v50, v50, 0x1

    goto :goto_798

    .line 1713
    .end local v56           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_7bd
    add-int/lit8 v49, v49, -0x1

    goto :goto_792

    .line 1728
    .end local v50           #k:I
    .end local v57           #nodes:Ljava/util/List;
    :cond_7c0
    move-object/from16 v45, v5

    .restart local v45       #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_60c

    .line 1737
    .end local v28           #_validPolicyNodeSet:Ljava/util/Set;
    .end local v29           #_vpnsIter:Ljava/util/Iterator;
    :cond_7c4
    move-object/from16 v5, v45

    goto/16 :goto_113

    .line 1474
    :pswitch_data_7c8
    .packed-switch 0x0
        :pswitch_4f1
        :pswitch_506
    .end packed-switch

    .line 1554
    :pswitch_data_7d0
    .packed-switch 0x0
        :pswitch_5ad
    .end packed-switch
.end method

.method private checkSignatures()V
    .registers 38

    .prologue
    .line 680
    const/16 v27, 0x0

    .line 681
    .local v27, trust:Ljava/security/cert/TrustAnchor;
    const/16 v29, 0x0

    .line 685
    .local v29, trustPrincipal:Ljavax/security/auth/x500/X500Principal;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.certPathValidDate"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    move-object v8, v0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    aput-object v8, v6, v7

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    .local v25, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 693
    :try_start_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 694
    .local v6, cert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v28

    .line 695
    .local v28, trustColl:Ljava/util/Collection;
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_14e

    .line 698
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.conflictingTrustAnchors"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Integer;

    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .end local v6           #cert:Ljava/security/cert/X509Certificate;
    invoke-direct {v9, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 702
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    :try_end_8a
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_2c .. :try_end_8a} :catch_18f

    .line 741
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v28           #trustColl:Ljava/util/Collection;
    :goto_8a
    if-eqz v27, :cond_96

    .line 744
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 747
    .local v8, sign:Ljava/security/cert/X509Certificate;
    if-eqz v8, :cond_1e0

    .line 749
    :try_start_92
    invoke-static {v8}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    :try_end_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_92 .. :try_end_95} :catch_1f0

    move-result-object v29

    .line 766
    .end local v8           #sign:Ljava/security/cert/X509Certificate;
    :cond_96
    :goto_96
    const/4 v9, 0x0

    .line 767
    .local v9, workingPublicKey:Ljava/security/PublicKey;
    move-object/from16 v34, v29

    .line 769
    .local v34, workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    const/4 v8, 0x0

    .line 771
    .restart local v8       #sign:Ljava/security/cert/X509Certificate;
    const/16 v33, 0x0

    .line 772
    .local v33, workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    const/16 v35, 0x0

    .line 773
    .local v35, workingPublicKeyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/16 v36, 0x0

    .line 775
    .local v36, workingPublicKeyParameters:Lorg/bouncycastle/asn1/DEREncodable;
    if-eqz v27, :cond_b8

    .line 777
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    .line 779
    if-eqz v8, :cond_219

    .line 781
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 790
    :goto_ac
    :try_start_ac
    invoke-static {v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v33

    .line 791
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v35

    .line 792
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;
    :try_end_b7
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_ac .. :try_end_b7} :catch_21f

    move-result-object v36

    .line 805
    :cond_b8
    :goto_b8
    const/4 v6, 0x0

    .line 808
    .restart local v6       #cert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    sub-int v11, v4, v5

    .local v11, index:I
    :goto_c5
    if-ltz v11, :cond_453

    .line 813
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v4, v0

    sub-int v24, v4, v11

    .line 821
    .local v24, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move-object v4, v0

    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #cert:Ljava/security/cert/X509Certificate;
    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 824
    .restart local v6       #cert:Ljava/security/cert/X509Certificate;
    if-eqz v9, :cond_262

    .line 828
    :try_start_db
    const-string v4, "BC"

    invoke-virtual {v6, v9, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_e0
    .catch Ljava/security/GeneralSecurityException; {:try_start_db .. :try_end_e0} :catch_23a

    .line 846
    :goto_e0
    :try_start_e0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    move-object v4, v0

    invoke-virtual {v6, v4}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_e8
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_e0 .. :try_end_e8} :catch_279
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_e0 .. :try_end_e8} :catch_29e

    .line 862
    :goto_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v4

    if-eqz v4, :cond_334

    .line 865
    const/16 v20, 0x0

    .line 868
    .local v20, crlDistPoints:Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_start_f5
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v6, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v21

    .line 869
    .local v21, crl_dp:Lorg/bouncycastle/asn1/DERObject;
    if-eqz v21, :cond_101

    .line 871
    invoke-static/range {v21 .. v21}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_100
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_f5 .. :try_end_100} :catch_2c3

    move-result-object v20

    .line 881
    .end local v21           #crl_dp:Lorg/bouncycastle/asn1/DERObject;
    :cond_101
    :goto_101
    const/4 v14, 0x0

    .line 884
    .local v14, authInfoAcc:Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :try_start_102
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v6, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v15

    .line 885
    .local v15, auth_info_acc:Lorg/bouncycastle/asn1/DERObject;
    if-eqz v15, :cond_10e

    .line 887
    invoke-static {v15}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :try_end_10d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_102 .. :try_end_10d} :catch_2dc

    move-result-object v14

    .line 896
    .end local v15           #auth_info_acc:Lorg/bouncycastle/asn1/DERObject;
    :cond_10e
    :goto_10e
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v10

    .line 897
    .local v10, crlDistPointUrls:Ljava/util/Vector;
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v26

    .line 902
    .local v26, ocspUrls:Ljava/util/Vector;
    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 903
    .end local v14           #authInfoAcc:Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .local v32, urlIt:Ljava/util/Iterator;
    :goto_122
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2f5

    .line 905
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.crlDistPoint"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v7, v12

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 907
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_122

    .line 704
    .end local v8           #sign:Ljava/security/cert/X509Certificate;
    .end local v9           #workingPublicKey:Ljava/security/PublicKey;
    .end local v10           #crlDistPointUrls:Ljava/util/Vector;
    .end local v11           #index:I
    .end local v20           #crlDistPoints:Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v24           #i:I
    .end local v26           #ocspUrls:Ljava/util/Vector;
    .end local v32           #urlIt:Ljava/util/Iterator;
    .end local v33           #workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v34           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .end local v35           #workingPublicKeyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v36           #workingPublicKeyParameters:Lorg/bouncycastle/asn1/DEREncodable;
    .restart local v28       #trustColl:Ljava/util/Collection;
    :cond_14e
    :try_start_14e
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_19e

    .line 706
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.noTrustAnchorFound"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .end local v6           #cert:Ljava/security/cert/X509Certificate;
    invoke-direct {v9, v6}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v6, 0x1

    new-instance v8, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v9, v0

    invoke-virtual {v9}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v6

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 710
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    :try_end_18d
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_14e .. :try_end_18d} :catch_18f

    goto/16 :goto_8a

    .line 736
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v28           #trustColl:Ljava/util/Collection;
    :catch_18f
    move-exception v4

    move-object/from16 v19, v4

    .line 738
    .local v19, cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto/16 :goto_8a

    .line 715
    .end local v19           #cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    .restart local v6       #cert:Ljava/security/cert/X509Certificate;
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v28       #trustColl:Ljava/util/Collection;
    :cond_19e
    :try_start_19e
    invoke-interface/range {v28 .. v28}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    .end local v28           #trustColl:Ljava/util/Collection;
    move-object/from16 v0, v28

    check-cast v0, Ljava/security/cert/TrustAnchor;

    move-object/from16 v27, v0

    .line 716
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_1db

    .line 718
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1b9
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_19e .. :try_end_1b9} :catch_18f

    move-result-object v31

    .line 726
    .local v31, trustPublicKey:Ljava/security/PublicKey;
    :goto_1ba
    :try_start_1ba
    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1c0
    .catch Ljava/lang/Exception; {:try_start_1ba .. :try_end_1c0} :catch_1c2
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1ba .. :try_end_1c0} :catch_18f

    goto/16 :goto_8a

    .line 728
    :catch_1c2
    move-exception v22

    .line 730
    .local v22, e:Ljava/lang/Exception;
    :try_start_1c3
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.trustButInvalidCert"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 732
    const/16 v27, 0x0

    goto/16 :goto_8a

    .line 722
    .end local v22           #e:Ljava/lang/Exception;
    .end local v31           #trustPublicKey:Ljava/security/PublicKey;
    :cond_1db
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_1de
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_1c3 .. :try_end_1de} :catch_18f

    move-result-object v31

    .restart local v31       #trustPublicKey:Ljava/security/PublicKey;
    goto :goto_1ba

    .line 753
    .end local v6           #cert:Ljava/security/cert/X509Certificate;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v31           #trustPublicKey:Ljava/security/PublicKey;
    .restart local v8       #sign:Ljava/security/cert/X509Certificate;
    :cond_1e0
    :try_start_1e0
    new-instance v30, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    move-object v1, v4

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_1ec
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e0 .. :try_end_1ec} :catch_1f0

    .end local v29           #trustPrincipal:Ljavax/security/auth/x500/X500Principal;
    .local v30, trustPrincipal:Ljavax/security/auth/x500/X500Principal;
    move-object/from16 v29, v30

    .end local v30           #trustPrincipal:Ljavax/security/auth/x500/X500Principal;
    .restart local v29       #trustPrincipal:Ljavax/security/auth/x500/X500Principal;
    goto/16 :goto_96

    .line 756
    :catch_1f0
    move-exception v4

    move-object/from16 v23, v4

    .line 758
    .local v23, ex:Ljava/lang/IllegalArgumentException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.trustDNInvalid"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    .end local v8           #sign:Ljava/security/cert/X509Certificate;
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 760
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    goto/16 :goto_96

    .line 785
    .end local v23           #ex:Ljava/lang/IllegalArgumentException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v8       #sign:Ljava/security/cert/X509Certificate;
    .restart local v9       #workingPublicKey:Ljava/security/PublicKey;
    .restart local v33       #workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v34       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .restart local v35       #workingPublicKeyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v36       #workingPublicKeyParameters:Lorg/bouncycastle/asn1/DEREncodable;
    :cond_219
    invoke-virtual/range {v27 .. v27}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    goto/16 :goto_ac

    .line 794
    :catch_21f
    move-exception v4

    move-object/from16 v23, v4

    .line 796
    .local v23, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.trustPubKeyError"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 797
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;)V

    .line 798
    const/16 v33, 0x0

    goto/16 :goto_b8

    .line 830
    .end local v23           #ex:Ljava/security/cert/CertPathValidatorException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v6       #cert:Ljava/security/cert/X509Certificate;
    .restart local v11       #index:I
    .restart local v24       #i:I
    :catch_23a
    move-exception v4

    move-object/from16 v23, v4

    .line 832
    .local v23, ex:Ljava/security/GeneralSecurityException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.signatureNotVerified"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v7, v10

    const/4 v10, 0x1

    aput-object v23, v7, v10

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 834
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_e0

    .line 839
    .end local v23           #ex:Ljava/security/GeneralSecurityException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_262
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.NoIssuerPublicKey"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_e0

    .line 848
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_279
    move-exception v4

    move-object/from16 v18, v4

    .line 850
    .local v18, cnve:Ljava/security/cert/CertificateNotYetValidException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.certificateNotYetValid"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v12

    aput-object v12, v7, v10

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 852
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_e8

    .line 854
    .end local v18           #cnve:Ljava/security/cert/CertificateNotYetValidException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_29e
    move-exception v4

    move-object/from16 v17, v4

    .line 856
    .local v17, cee:Ljava/security/cert/CertificateExpiredException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.certificateExpired"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v12

    aput-object v12, v7, v10

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_e8

    .line 874
    .end local v17           #cee:Ljava/security/cert/CertificateExpiredException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v20       #crlDistPoints:Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :catch_2c3
    move-exception v4

    move-object v13, v4

    .line 876
    .local v13, ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.crlDistPtExtError"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_101

    .line 890
    .end local v13           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v14       #authInfoAcc:Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :catch_2dc
    move-exception v4

    move-object v13, v4

    .line 892
    .restart local v13       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.crlAuthInfoAccError"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_10e

    .line 911
    .end local v13           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v14           #authInfoAcc:Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v10       #crlDistPointUrls:Ljava/util/Vector;
    .restart local v26       #ocspUrls:Ljava/util/Vector;
    .restart local v32       #urlIt:Ljava/util/Iterator;
    :cond_2f5
    invoke-virtual/range {v26 .. v26}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 912
    :goto_2f9
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_325

    .line 914
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.ocspLocation"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v7, v12

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_2f9

    .line 923
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_325
    :try_start_325
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    move-object v7, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    :try_end_334
    .catch Lorg/bouncycastle/x509/CertPathReviewerException; {:try_start_325 .. :try_end_334} :catch_3f6

    .line 932
    .end local v10           #crlDistPointUrls:Ljava/util/Vector;
    .end local v20           #crlDistPoints:Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v26           #ocspUrls:Ljava/util/Vector;
    .end local v32           #urlIt:Ljava/util/Iterator;
    :cond_334
    :goto_334
    if-eqz v34, :cond_36e

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36e

    .line 934
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.certWrongIssuer"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v34 .. v34}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    .end local v8           #sign:Ljava/security/cert/X509Certificate;
    move-result-object v9

    .end local v9           #workingPublicKey:Ljava/security/PublicKey;
    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v9

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 937
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 943
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_36e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    move v4, v0

    move/from16 v0, v24

    move v1, v4

    if-eq v0, v1, :cond_3dd

    .line 946
    if-eqz v6, :cond_396

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_396

    .line 948
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.noCACert"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 957
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_396
    :try_start_396
    sget-object v4, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v6, v4}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v16

    .line 959
    .local v16, bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v16, :cond_406

    .line 961
    invoke-virtual/range {v16 .. v16}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-nez v4, :cond_3bd

    .line 963
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.noCACert"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_3bd
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_396 .. :try_end_3bd} :catch_41c

    .line 981
    .end local v16           #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_3bd
    :goto_3bd
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v12

    .line 983
    .local v12, _usage:[Z
    if-eqz v12, :cond_3dd

    const/4 v4, 0x5

    aget-boolean v4, v12, v4

    if-nez v4, :cond_3dd

    .line 985
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.noCertSign"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 992
    .end local v12           #_usage:[Z
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_3dd
    move-object v8, v6

    .line 996
    .restart local v8       #sign:Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v34

    .line 1000
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    .line 1006
    .restart local v9       #workingPublicKey:Ljava/security/PublicKey;
    :try_start_3e6
    invoke-static {v9}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v33

    .line 1007
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v35

    .line 1008
    invoke-virtual/range {v33 .. v33}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;
    :try_end_3f1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3e6 .. :try_end_3f1} :catch_434

    move-result-object v36

    .line 808
    :goto_3f2
    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_c5

    .line 925
    .restart local v10       #crlDistPointUrls:Ljava/util/Vector;
    .restart local v20       #crlDistPoints:Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .restart local v26       #ocspUrls:Ljava/util/Vector;
    .restart local v32       #urlIt:Ljava/util/Iterator;
    :catch_3f6
    move-exception v4

    move-object/from16 v19, v4

    .line 927
    .restart local v19       #cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/x509/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/i18n/ErrorBundle;

    move-result-object v4

    move-object/from16 v0, p0

    move-object v1, v4

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_334

    .line 969
    .end local v8           #sign:Ljava/security/cert/X509Certificate;
    .end local v9           #workingPublicKey:Ljava/security/PublicKey;
    .end local v10           #crlDistPointUrls:Ljava/util/Vector;
    .end local v19           #cpre:Lorg/bouncycastle/x509/CertPathReviewerException;
    .end local v20           #crlDistPoints:Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    .end local v26           #ocspUrls:Ljava/util/Vector;
    .end local v32           #urlIt:Ljava/util/Iterator;
    .restart local v16       #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :cond_406
    :try_start_406
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.noBasicConstraints"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_41b
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_406 .. :try_end_41b} :catch_41c

    goto :goto_3bd

    .line 973
    .end local v16           #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :catch_41c
    move-exception v4

    move-object v13, v4

    .line 975
    .restart local v13       #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.errorProcesingBC"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto :goto_3bd

    .line 1010
    .end local v13           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v8       #sign:Ljava/security/cert/X509Certificate;
    .restart local v9       #workingPublicKey:Ljava/security/PublicKey;
    :catch_434
    move-exception v4

    move-object/from16 v23, v4

    .line 1012
    .local v23, ex:Ljava/security/cert/CertPathValidatorException;
    new-instance v25, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v4, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v5, "CertPathReviewer.pubKeyError"

    move-object/from16 v0, v25

    move-object v1, v4

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    .restart local v25       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move v2, v11

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1014
    const/16 v33, 0x0

    .line 1015
    const/16 v35, 0x0

    .line 1016
    const/16 v36, 0x0

    goto :goto_3f2

    .line 1021
    .end local v23           #ex:Ljava/security/cert/CertPathValidatorException;
    .end local v24           #i:I
    .end local v25           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_453
    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    .line 1022
    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    .line 1023
    return-void
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .registers 14
    .parameter "location"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 2364
    const/4 v4, 0x0

    .line 2367
    .local v4, result:Ljava/security/cert/X509CRL;
    :try_start_3
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 2369
    .local v5, url:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_20

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 2371
    :cond_20
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 2372
    .local v1, conn:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 2373
    const/16 v6, 0x7d0

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 2374
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 2375
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 2376
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_51

    .line 2378
    const-string v6, "X.509"

    const-string v7, "BC"

    invoke-static {v6, v7}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 2379
    .local v0, cf:Ljava/security/cert/CertificateFactory;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v4

    .end local v4           #result:Ljava/security/cert/X509CRL;
    check-cast v4, Ljava/security/cert/X509CRL;

    .line 2395
    .end local v0           #cf:Ljava/security/cert/CertificateFactory;
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .restart local v4       #result:Ljava/security/cert/X509CRL;
    :cond_50
    return-object v4

    .line 2383
    .restart local v1       #conn:Ljava/net/HttpURLConnection;
    :cond_51
    new-instance v6, Ljava/lang/Exception;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_5b} :catch_5b

    .line 2387
    .end local v1           #conn:Ljava/net/HttpURLConnection;
    .end local v4           #result:Ljava/security/cert/X509CRL;
    .end local v5           #url:Ljava/net/URL;
    :catch_5b
    move-exception v6

    move-object v2, v6

    .line 2389
    .local v2, e:Ljava/lang/Exception;
    new-instance v3, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v6, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v7, "CertPathReviewer.loadCrlDistPointError"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    invoke-direct {v9, p1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v8, v10

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    const/4 v9, 0x2

    aput-object v2, v8, v9

    invoke-direct {v3, v6, v7, v8}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2393
    .local v3, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v6, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v6, v3}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v6
.end method

.method private getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .registers 15
    .parameter "crlDistPoints"
    .parameter "authInfoAcc"

    .prologue
    const/4 v11, 0x6

    .line 2295
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 2297
    .local v8, urls:Ljava/util/Vector;
    if-eqz p1, :cond_49

    .line 2299
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v1

    .line 2300
    .local v1, distPoints:[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_d
    array-length v9, v1

    if-ge v4, v9, :cond_49

    .line 2302
    aget-object v9, v1, v4

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v2

    .line 2303
    .local v2, dp_name:Lorg/bouncycastle/asn1/x509/DistributionPointName;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v9

    if-nez v9, :cond_46

    .line 2305
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    .line 2306
    .local v3, generalNames:[Lorg/bouncycastle/asn1/x509/GeneralName;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_29
    array-length v9, v3

    if-ge v5, v9, :cond_46

    .line 2308
    aget-object v9, v3, v5

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v9

    if-ne v9, v11, :cond_43

    .line 2310
    aget-object v9, v3, v5

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v7

    .line 2311
    .local v7, url:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2306
    .end local v7           #url:Ljava/lang/String;
    :cond_43
    add-int/lit8 v5, v5, 0x1

    goto :goto_29

    .line 2300
    .end local v3           #generalNames:[Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v5           #j:I
    :cond_46
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 2318
    .end local v1           #distPoints:[Lorg/bouncycastle/asn1/x509/DistributionPoint;
    .end local v2           #dp_name:Lorg/bouncycastle/asn1/x509/DistributionPointName;
    .end local v4           #i:I
    :cond_49
    if-eqz p2, :cond_7d

    .line 2320
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v0

    .line 2321
    .local v0, ads:[Lorg/bouncycastle/asn1/x509/AccessDescription;
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_50
    array-length v9, v0

    if-ge v4, v9, :cond_7d

    .line 2323
    aget-object v9, v0, v4

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_caIssuers:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9, v10}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7a

    .line 2325
    aget-object v9, v0, v4

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    .line 2326
    .local v6, name:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v9

    if-ne v9, v11, :cond_7a

    .line 2328
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v7

    .line 2329
    .restart local v7       #url:Ljava/lang/String;
    invoke-virtual {v8, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2321
    .end local v6           #name:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v7           #url:Ljava/lang/String;
    :cond_7a
    add-int/lit8 v4, v4, 0x1

    goto :goto_50

    .line 2335
    .end local v0           #ads:[Lorg/bouncycastle/asn1/x509/AccessDescription;
    .end local v4           #i:I
    :cond_7d
    return-object v8
.end method

.method private getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .registers 9
    .parameter "authInfoAccess"

    .prologue
    .line 2340
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 2342
    .local v4, urls:Ljava/util/Vector;
    if-eqz p1, :cond_3a

    .line 2344
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v0

    .line 2345
    .local v0, ads:[Lorg/bouncycastle/asn1/x509/AccessDescription;
    const/4 v1, 0x0

    .end local p0
    .local v1, i:I
    :goto_c
    array-length v5, v0

    if-ge v1, v5, :cond_3a

    .line 2347
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    .line 2349
    aget-object v5, v0, v1

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v2

    .line 2350
    .local v2, name:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_37

    .line 2352
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v3

    .line 2353
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 2345
    .end local v2           #name:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v3           #url:Ljava/lang/String;
    :cond_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2359
    .end local v0           #ads:[Lorg/bouncycastle/asn1/x509/AccessDescription;
    .end local v1           #i:I
    :cond_3a
    return-object v4
.end method

.method private getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .registers 13
    .parameter "cert"
    .parameter "trustanchors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/x509/CertPathReviewerException;
        }
    .end annotation

    .prologue
    .line 2400
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2401
    .local v7, trustColl:Ljava/util/Collection;
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 2403
    .local v4, it:Ljava/util/Iterator;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 2407
    .local v2, certSelectX509:Ljava/security/cert/X509CertSelector;
    :try_start_e
    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_19} :catch_39

    .line 2415
    :cond_19
    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6d

    .line 2417
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/TrustAnchor;

    .line 2418
    .local v6, trust:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_4a

    .line 2420
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2422
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 2409
    .end local v6           #trust:Ljava/security/cert/TrustAnchor;
    :catch_39
    move-exception v8

    move-object v3, v8

    .line 2411
    .local v3, ex:Ljava/io/IOException;
    new-instance v5, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v8, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v9, "CertPathReviewer.trustAnchorIssuerError"

    invoke-direct {v5, v8, v9}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2412
    .local v5, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    new-instance v8, Lorg/bouncycastle/x509/CertPathReviewerException;

    invoke-direct {v8, v5}, Lorg/bouncycastle/x509/CertPathReviewerException;-><init>(Lorg/bouncycastle/i18n/ErrorBundle;)V

    throw v8

    .line 2425
    .end local v3           #ex:Ljava/io/IOException;
    .end local v5           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .restart local v6       #trust:Ljava/security/cert/TrustAnchor;
    :cond_4a
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_19

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    if-eqz v8, :cond_19

    .line 2427
    invoke-static {p1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 2428
    .local v1, certIssuer:Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 2429
    .local v0, caName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 2431
    invoke-interface {v7, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_19

    .line 2435
    .end local v0           #caName:Ljavax/security/auth/x500/X500Principal;
    .end local v1           #certIssuer:Ljavax/security/auth/x500/X500Principal;
    .end local v6           #trust:Ljava/security/cert/TrustAnchor;
    :cond_6d
    return-object v7
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .registers 22
    .parameter "cert"
    .parameter "index"

    .prologue
    .line 1847
    const/4 v10, 0x0

    .line 1849
    .local v10, unknownStatement:Z
    :try_start_1
    sget-object v13, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-static {v0, v1}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v8

    check-cast v8, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1850
    .local v8, qcSt:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v5, 0x0

    .local v5, j:I
    :goto_d
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v13

    if-ge v5, v13, :cond_13f

    .line 1852
    invoke-virtual {v8, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v13

    invoke-static {v13}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    move-result-object v9

    .line 1853
    .local v9, stmt:Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    sget-object v13, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3b

    .line 1856
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcEuCompliance"

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    .local v7, msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1850
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_38
    :goto_38
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    .line 1859
    :cond_3b
    sget-object v13, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_38

    .line 1863
    sget-object v13, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7a

    .line 1866
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcSSCD"

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1867
    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_64
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1 .. :try_end_64} :catch_65

    goto :goto_38

    .line 1903
    .end local v5           #j:I
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v8           #qcSt:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v9           #stmt:Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    :catch_65
    move-exception v13

    move-object v3, v13

    .line 1905
    .local v3, ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcStatementExtError"

    invoke-direct {v7, v13, v14}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1906
    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    .line 1909
    const/4 v13, 0x0

    .end local v3           #ae:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_79
    return v13

    .line 1869
    .restart local v5       #j:I
    .restart local v8       #qcSt:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v9       #stmt:Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    :cond_7a
    :try_start_7a
    sget-object v13, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v14

    invoke-virtual {v13, v14}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_114

    .line 1872
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v13

    invoke-static {v13}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v6

    .line 1873
    .local v6, limit:Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v4

    .line 1874
    .local v4, currency:Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v13

    const-wide/high16 v15, 0x4024

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v17

    invoke-static/range {v15 .. v18}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v15

    mul-double v11, v13, v15

    .line 1876
    .local v11, value:D
    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v13

    invoke-virtual {v13}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v13

    if-eqz v13, :cond_e6

    .line 1878
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcLimitValueAlpha"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v6, v15, v16

    invoke-direct {v7, v13, v14, v15}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1890
    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :goto_dc
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V

    goto/16 :goto_38

    .line 1885
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    :cond_e6
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcLimitValueNum"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    new-instance v17, Ljava/lang/Integer;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/Integer;-><init>(I)V

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Ljava/lang/Double;

    move-object/from16 v0, v17

    move-wide v1, v11

    invoke-direct {v0, v1, v2}, Ljava/lang/Double;-><init>(D)V

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v6, v15, v16

    invoke-direct {v7, v13, v14, v15}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    goto :goto_dc

    .line 1894
    .end local v4           #currency:Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;
    .end local v6           #limit:Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v11           #value:D
    :cond_114
    new-instance v7, Lorg/bouncycastle/i18n/ErrorBundle;

    const-string v13, "org.bouncycastle.x509.CertPathReviewerMessages"

    const-string v14, "CertPathReviewer.QcUnknownStatement"

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    new-instance v17, Lorg/bouncycastle/i18n/filter/UntrustedInput;

    move-object/from16 v0, v17

    move-object v1, v9

    invoke-direct {v0, v1}, Lorg/bouncycastle/i18n/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v17, v15, v16

    invoke-direct {v7, v13, v14, v15}, Lorg/bouncycastle/i18n/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1896
    .restart local v7       #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    :try_end_13c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_7a .. :try_end_13c} :catch_65

    .line 1897
    const/4 v10, 0x1

    goto/16 :goto_38

    .line 1901
    .end local v7           #msg:Lorg/bouncycastle/i18n/ErrorBundle;
    .end local v9           #stmt:Lorg/bouncycastle/asn1/x509/qualified/QCStatement;
    :cond_13f
    if-nez v10, :cond_144

    const/4 v13, 0x1

    goto/16 :goto_79

    :cond_144
    const/4 v13, 0x0

    goto/16 :goto_79
.end method


# virtual methods
.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 292
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    return-void
.end method

.method protected addError(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .registers 5
    .parameter "msg"
    .parameter "index"

    .prologue
    .line 297
    const/4 v0, -0x1

    if-lt p2, v0, :cond_7

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-lt p2, v0, :cond_d

    .line 299
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 301
    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;)V
    .registers 4
    .parameter "msg"

    .prologue
    .line 278
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/i18n/ErrorBundle;I)V
    .registers 5
    .parameter "msg"
    .parameter "index"

    .prologue
    .line 283
    const/4 v0, -0x1

    if-lt p2, v0, :cond_7

    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    if-lt p2, v0, :cond_d

    .line 285
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 287
    :cond_d
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    return-void
.end method

.method protected doChecks()V
    .registers 4

    .prologue
    .line 306
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v1, :cond_3e

    .line 309
    iget v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    .line 310
    iget v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    iput-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    .line 312
    const/4 v0, 0x0

    .local v0, i:I
    :goto_15
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v1, v1

    if-ge v0, v1, :cond_2f

    .line 314
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 315
    iget-object v1, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    .line 312
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 319
    :cond_2f
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkSignatures()V

    .line 322
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkNameConstraints()V

    .line 325
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPathLength()V

    .line 328
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkPolicy()V

    .line 331
    invoke-direct {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->checkCriticalExtensions()V

    .line 334
    .end local v0           #i:I
    :cond_3e
    return-void
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .registers 4
    .parameter "index"

    .prologue
    .line 198
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 199
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getErrors()[Ljava/util/List;
    .registers 2

    .prologue
    .line 186
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 187
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .registers 4
    .parameter "index"

    .prologue
    .line 223
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 224
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNotifications()[Ljava/util/List;
    .registers 2

    .prologue
    .line 211
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 212
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .registers 2

    .prologue
    .line 233
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 234
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 244
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .registers 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 254
    iget-object v0, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method public isValidCertPath()Z
    .registers 4

    .prologue
    .line 263
    invoke-virtual {p0}, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->doChecks()V

    .line 264
    const/4 v1, 0x1

    .line 265
    .local v1, valid:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    iget-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v2, v2

    if-ge v0, v2, :cond_15

    .line 267
    iget-object v2, p0, Lorg/bouncycastle/x509/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    aget-object v2, v2, v0

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_16

    .line 269
    const/4 v1, 0x0

    .line 273
    :cond_15
    return v1

    .line 265
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method
