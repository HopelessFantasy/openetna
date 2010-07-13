.class public Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;
.super Ljava/lang/Object;
.source "CertPathValidatorUtilities.java"


# static fields
.field protected static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field protected static final BASIC_CONSTRAINTS:Ljava/lang/String; = null

.field protected static final CERTIFICATE_POLICIES:Ljava/lang/String; = null

.field protected static final CRL_NUMBER:Ljava/lang/String; = null

.field protected static final CRL_SIGN:I = 0x6

.field protected static final DELTA_CRL_INDICATOR:Ljava/lang/String; = null

.field protected static final INHIBIT_ANY_POLICY:Ljava/lang/String; = null

.field protected static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String; = null

.field protected static final KEY_CERT_SIGN:I = 0x5

.field protected static final KEY_USAGE:Ljava/lang/String;

.field protected static final NAME_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field protected static final POLICY_MAPPINGS:Ljava/lang/String;

.field protected static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field protected static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 46
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 47
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 48
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 49
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 50
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 51
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->KEY_USAGE:Ljava/lang/String;

    .line 52
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 53
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 54
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 55
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 60
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CRL_NUMBER:Ljava/lang/String;

    .line 68
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "unspecified"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "keyCompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "cACompromise"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "affiliationChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "superseded"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cessationOfOperation"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "certificateHold"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unknown"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "removeFromCRL"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "privilegeWithdrawn"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "aACompromise"

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static checkExcludedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "excluded"
    .parameter "dns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 365
    :cond_6
    return-void

    .line 353
    :cond_7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 355
    .local v0, it:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 357
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 359
    .local v1, subtree:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p1, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->withinDNSubtree(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 361
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Subject distinguished name is from an excluded subtree"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .parameter "excluded"
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 544
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 561
    :cond_6
    return-void

    .line 549
    :cond_7
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 550
    .local v2, sub:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 552
    .local v0, it:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 554
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 555
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 557
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Subject email address is from an excluded subtree"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static checkExcludedIP(Ljava/util/Set;[B)V
    .registers 3
    .parameter "excluded"
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 577
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 583
    :cond_6
    return-void
.end method

.method protected static checkPermittedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 6
    .parameter "permitted"
    .parameter "dns"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 324
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 337
    :goto_6
    return-void

    .line 329
    :cond_7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 331
    .local v0, it:Ljava/util/Iterator;
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 333
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 335
    .local v1, subtree:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p1, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->withinDNSubtree(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_6

    .line 341
    .end local v1           #subtree:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_1e
    new-instance v2, Ljava/security/cert/CertPathValidatorException;

    const-string v3, "Subject distinguished name is not from a permitted subtree"

    invoke-direct {v2, v3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected static checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V
    .registers 7
    .parameter "permitted"
    .parameter "email"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 519
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 533
    :goto_6
    return-void

    .line 524
    :cond_7
    const/16 v3, 0x40

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, sub:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 527
    .local v0, it:Ljava/util/Iterator;
    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 529
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 531
    .local v1, str:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    goto :goto_6

    .line 537
    .end local v1           #str:Ljava/lang/String;
    :cond_2a
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Subject email address is not from a permitted subtree"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static checkPermittedIP(Ljava/util/Set;[B)V
    .registers 3
    .parameter "permitted"
    .parameter "ip"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 566
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 572
    :cond_6
    return-void
.end method

.method protected static final findCRLs(Ljava/security/cert/X509CRLSelector;Ljava/util/List;)Ljava/util/Collection;
    .registers 9
    .parameter "crlSelect"
    .parameter "crlStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 606
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 607
    .local v1, crls:Ljava/util/Set;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 609
    .local v3, iter:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 611
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    .line 615
    .local v0, certStore:Ljava/security/cert/CertStore;
    :try_start_15
    invoke-virtual {v0, p0}, Ljava/security/cert/CertStore;->getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z
    :try_end_1c
    .catch Ljava/security/cert/CertStoreException; {:try_start_15 .. :try_end_1c} :catch_1d

    goto :goto_9

    .line 617
    :catch_1d
    move-exception v4

    move-object v2, v4

    .line 619
    .local v2, e:Ljava/security/cert/CertStoreException;
    new-instance v4, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cannot extract crl: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 623
    .end local v0           #certStore:Ljava/security/cert/CertStore;
    .end local v2           #e:Ljava/security/cert/CertStoreException;
    :cond_38
    return-object v1
.end method

.method static final findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;ILjava/security/cert/PKIXParameters;)Ljava/security/cert/TrustAnchor;
    .registers 13
    .parameter "cert"
    .parameter "certPath"
    .parameter "index"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 104
    instance-of v0, p3, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;

    if-eqz v0, :cond_b

    .line 105
    check-cast p3, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;

    .line 106
    .local p3, indexed:Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;
    invoke-virtual {p3, p0, p1, p2}, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;I)Ljava/security/cert/TrustAnchor;

    move-result-object p0

    .line 203
    .end local p0
    .end local p3           #indexed:Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;
    :goto_a
    return-object p0

    .line 109
    .restart local p0
    .local p3, params:Ljava/security/cert/PKIXParameters;
    :cond_b
    invoke-virtual {p3}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object p3

    .end local p3           #params:Ljava/security/cert/PKIXParameters;
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 110
    .local v5, iter:Ljava/util/Iterator;
    const/4 v0, 0x0

    .line 111
    .local v0, found:Ljava/security/cert/TrustAnchor;
    const/4 v3, 0x0

    .line 112
    .local v3, trustPublicKey:Ljava/security/PublicKey;
    const/4 v1, 0x0

    .line 114
    .local v1, invalidKeyEx:Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 118
    .local v2, certSelectX509:Ljava/security/cert/X509CertSelector;
    :try_start_1b
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object p3

    invoke-virtual {p3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_26} :catch_52

    .line 125
    const/4 p3, 0x0

    .line 127
    .local p3, certBytes:[B
    :try_start_27
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_59

    move-result-object p3

    move-object v4, v1

    .end local v1           #invalidKeyEx:Ljava/lang/Exception;
    .local v4, invalidKeyEx:Ljava/lang/Exception;
    move-object v6, v3

    .end local v3           #trustPublicKey:Ljava/security/PublicKey;
    .local v6, trustPublicKey:Ljava/security/PublicKey;
    move-object v8, p3

    .end local p3           #certBytes:[B
    .local v8, certBytes:[B
    move-object p3, v0

    .end local v0           #found:Ljava/security/cert/TrustAnchor;
    .local p3, found:Ljava/security/cert/TrustAnchor;
    move-object v0, v8

    .line 131
    .end local v8           #certBytes:[B
    .local v0, certBytes:[B
    :goto_30
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_af

    if-nez p3, :cond_af

    .line 133
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 134
    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    .local v3, found:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 135
    .local v1, foundCert:Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_7a

    .line 141
    :try_start_44
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object p3

    .line 142
    .local p3, foundBytes:[B
    if-eqz v0, :cond_61

    invoke-static {p3, v0}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4d} :catch_60

    move-result p3

    .end local p3           #foundBytes:[B
    if-eqz p3, :cond_61

    move-object p0, v3

    .line 144
    goto :goto_a

    .line 120
    .end local v4           #invalidKeyEx:Ljava/lang/Exception;
    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .local v0, found:Ljava/security/cert/TrustAnchor;
    .local v1, invalidKeyEx:Ljava/lang/Exception;
    .local v3, trustPublicKey:Ljava/security/PublicKey;
    :catch_52
    move-exception p0

    .line 122
    .local p0, ex:Ljava/io/IOException;
    new-instance p1, Ljava/security/cert/CertPathValidatorException;

    .end local p1
    invoke-direct {p1, p0}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 128
    .local p0, cert:Ljava/security/cert/X509Certificate;
    .restart local p1
    .local p3, certBytes:[B
    :catch_59
    move-exception v4

    move-object v4, v1

    .end local v1           #invalidKeyEx:Ljava/lang/Exception;
    .restart local v4       #invalidKeyEx:Ljava/lang/Exception;
    move-object v6, v3

    .end local v3           #trustPublicKey:Ljava/security/PublicKey;
    .restart local v6       #trustPublicKey:Ljava/security/PublicKey;
    move-object v8, p3

    .end local p3           #certBytes:[B
    .restart local v8       #certBytes:[B
    move-object p3, v0

    .end local v0           #found:Ljava/security/cert/TrustAnchor;
    .local p3, found:Ljava/security/cert/TrustAnchor;
    move-object v0, v8

    .end local v8           #certBytes:[B
    .local v0, certBytes:[B
    goto :goto_30

    .line 146
    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    .local v1, foundCert:Ljava/security/cert/X509Certificate;
    .local v3, found:Ljava/security/cert/TrustAnchor;
    :catch_60
    move-exception p3

    .line 149
    :cond_61
    invoke-virtual {v2, v1}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result p3

    if-eqz p3, :cond_77

    .line 151
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .local p3, trustPublicKey:Ljava/security/PublicKey;
    move-object v8, p3

    .end local p3           #trustPublicKey:Ljava/security/PublicKey;
    .local v8, trustPublicKey:Ljava/security/PublicKey;
    move-object p3, v3

    .end local v3           #found:Ljava/security/cert/TrustAnchor;
    .local p3, found:Ljava/security/cert/TrustAnchor;
    move-object v3, v8

    .line 184
    .end local v1           #foundCert:Ljava/security/cert/X509Certificate;
    .end local v8           #trustPublicKey:Ljava/security/PublicKey;
    .local v3, trustPublicKey:Ljava/security/PublicKey;
    :goto_6e
    if-eqz v3, :cond_be

    .line 188
    :try_start_70
    invoke-virtual {p0, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_73} :catch_ab

    move-object v1, v4

    .end local v4           #invalidKeyEx:Ljava/lang/Exception;
    .local v1, invalidKeyEx:Ljava/lang/Exception;
    :goto_74
    move-object v4, v1

    .end local v1           #invalidKeyEx:Ljava/lang/Exception;
    .restart local v4       #invalidKeyEx:Ljava/lang/Exception;
    move-object v6, v3

    .line 196
    .end local v3           #trustPublicKey:Ljava/security/PublicKey;
    .restart local v6       #trustPublicKey:Ljava/security/PublicKey;
    goto :goto_30

    .line 155
    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    .local v1, foundCert:Ljava/security/cert/X509Certificate;
    .local v3, found:Ljava/security/cert/TrustAnchor;
    :cond_77
    const/4 p3, 0x0

    .end local v3           #found:Ljava/security/cert/TrustAnchor;
    .restart local p3       #found:Ljava/security/cert/TrustAnchor;
    move-object v3, v6

    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .local v3, trustPublicKey:Ljava/security/PublicKey;
    goto :goto_6e

    .line 158
    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    .local v3, found:Ljava/security/cert/TrustAnchor;
    .restart local v6       #trustPublicKey:Ljava/security/PublicKey;
    :cond_7a
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_a8

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object p3

    if-eqz p3, :cond_a8

    .line 163
    :try_start_86
    invoke-static {p0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 164
    .local v1, certIssuer:Ljavax/security/auth/x500/X500Principal;
    new-instance p3, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p3, v7}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 165
    .local p3, caName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, p3}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result p3

    .end local p3           #caName:Ljavax/security/auth/x500/X500Principal;
    if-eqz p3, :cond_a1

    .line 167
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_9c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_86 .. :try_end_9c} :catch_a4

    move-result-object p3

    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .local p3, trustPublicKey:Ljava/security/PublicKey;
    move-object v1, p3

    .end local p3           #trustPublicKey:Ljava/security/PublicKey;
    .local v1, trustPublicKey:Ljava/security/PublicKey;
    move-object p3, v3

    .end local v3           #found:Ljava/security/cert/TrustAnchor;
    .local p3, found:Ljava/security/cert/TrustAnchor;
    :goto_9f
    move-object v3, v1

    .line 177
    .end local v1           #trustPublicKey:Ljava/security/PublicKey;
    .local v3, trustPublicKey:Ljava/security/PublicKey;
    goto :goto_6e

    .line 171
    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    .local v1, certIssuer:Ljavax/security/auth/x500/X500Principal;
    .local v3, found:Ljava/security/cert/TrustAnchor;
    .restart local v6       #trustPublicKey:Ljava/security/PublicKey;
    :cond_a1
    const/4 p3, 0x0

    .end local v3           #found:Ljava/security/cert/TrustAnchor;
    .restart local p3       #found:Ljava/security/cert/TrustAnchor;
    move-object v1, v6

    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .local v1, trustPublicKey:Ljava/security/PublicKey;
    goto :goto_9f

    .line 174
    .end local v1           #trustPublicKey:Ljava/security/PublicKey;
    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    .restart local v3       #found:Ljava/security/cert/TrustAnchor;
    .restart local v6       #trustPublicKey:Ljava/security/PublicKey;
    :catch_a4
    move-exception p3

    .line 176
    .local p3, ex:Ljava/lang/IllegalArgumentException;
    const/4 p3, 0x0

    .end local v3           #found:Ljava/security/cert/TrustAnchor;
    .local p3, found:Ljava/security/cert/TrustAnchor;
    move-object v3, v6

    .line 177
    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .local v3, trustPublicKey:Ljava/security/PublicKey;
    goto :goto_6e

    .line 181
    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    .local v1, foundCert:Ljava/security/cert/X509Certificate;
    .local v3, found:Ljava/security/cert/TrustAnchor;
    .restart local v6       #trustPublicKey:Ljava/security/PublicKey;
    :cond_a8
    const/4 p3, 0x0

    .end local v3           #found:Ljava/security/cert/TrustAnchor;
    .restart local p3       #found:Ljava/security/cert/TrustAnchor;
    move-object v3, v6

    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .local v3, trustPublicKey:Ljava/security/PublicKey;
    goto :goto_6e

    .line 190
    .end local v1           #foundCert:Ljava/security/cert/X509Certificate;
    :catch_ab
    move-exception p3

    .line 192
    .local p3, ex:Ljava/lang/Exception;
    move-object v1, p3

    .line 193
    .end local v4           #invalidKeyEx:Ljava/lang/Exception;
    .local v1, invalidKeyEx:Ljava/lang/Exception;
    const/4 p3, 0x0

    .local p3, found:Ljava/security/cert/TrustAnchor;
    goto :goto_74

    .line 198
    .end local v1           #invalidKeyEx:Ljava/lang/Exception;
    .end local v3           #trustPublicKey:Ljava/security/PublicKey;
    .restart local v4       #invalidKeyEx:Ljava/lang/Exception;
    .restart local v6       #trustPublicKey:Ljava/security/PublicKey;
    :cond_af
    if-nez p3, :cond_bb

    if-eqz v4, :cond_bb

    .line 200
    new-instance p0, Ljava/security/cert/CertPathValidatorException;

    .end local p0           #cert:Ljava/security/cert/X509Certificate;
    const-string p3, "TrustAnchor found but certificate validation failed."

    .end local p3           #found:Ljava/security/cert/TrustAnchor;
    invoke-direct {p0, p3, v4, p1, p2}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw p0

    .restart local p0       #cert:Ljava/security/cert/X509Certificate;
    .restart local p3       #found:Ljava/security/cert/TrustAnchor;
    :cond_bb
    move-object p0, p3

    .line 203
    goto/16 :goto_a

    .end local v6           #trustPublicKey:Ljava/security/PublicKey;
    .restart local v3       #trustPublicKey:Ljava/security/PublicKey;
    :cond_be
    move-object v1, v4

    .end local v4           #invalidKeyEx:Ljava/lang/Exception;
    .restart local v1       #invalidKeyEx:Ljava/lang/Exception;
    goto :goto_74
.end method

.method protected static getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 6
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 282
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 284
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v2

    .line 286
    .local v2, info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v3

    return-object v3

    .line 288
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #info:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    :catch_16
    move-exception v3

    move-object v1, v3

    .line 290
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "exception processing public key"

    invoke-direct {v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected static getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .registers 2
    .parameter "cert"

    .prologue
    .line 209
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;
    .registers 4
    .parameter "ext"
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 243
    invoke-interface {p0, p1}, Ljava/security/cert/X509Extension;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 244
    .local v0, bytes:[B
    if-nez v0, :cond_8

    .line 246
    const/4 v1, 0x0

    .line 249
    :goto_7
    return-object v1

    :cond_8
    invoke-static {p1, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getObject(Ljava/lang/String;[B)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    goto :goto_7
.end method

.method protected static getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;
    .registers 2
    .parameter "crl"

    .prologue
    .line 273
    invoke-virtual {p0}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method private static getObject(Ljava/lang/String;[B)Lorg/bouncycastle/asn1/DERObject;
    .registers 8
    .parameter "oid"
    .parameter "ext"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 259
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 260
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 262
    .local v2, octs:Lorg/bouncycastle/asn1/ASN1OctetString;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 263
    .restart local v0       #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v3

    return-object v3

    .line 265
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v2           #octs:Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_19
    move-exception v3

    move-object v1, v3

    .line 267
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception processing extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
.end method

.method protected static final getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 9
    .parameter "qualifiers"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 633
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 635
    .local v4, pq:Ljava/util/Set;
    if-nez p0, :cond_8

    .line 661
    :cond_7
    return-object v4

    .line 640
    :cond_8
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 641
    .local v1, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 643
    .local v0, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    .line 645
    .local v2, e:Ljava/util/Enumeration;
    :goto_16
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 649
    :try_start_1c
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 651
    new-instance v5, Ljava/security/cert/PolicyQualifierInfo;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/PolicyQualifierInfo;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_2f} :catch_33

    .line 658
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    goto :goto_16

    .line 653
    :catch_33
    move-exception v5

    move-object v3, v5

    .line 655
    .local v3, ex:Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertPathValidatorException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception building qualifier set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected static getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    .registers 2
    .parameter "cert"

    .prologue
    .line 226
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method protected static getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;
    .registers 2
    .parameter "paramsPKIX"

    .prologue
    .line 214
    invoke-virtual {p0}, Ljava/security/cert/PKIXParameters;->getDate()Ljava/util/Date;

    move-result-object v0

    .line 216
    .local v0, validDate:Ljava/util/Date;
    if-nez v0, :cond_b

    .line 218
    new-instance v0, Ljava/util/Date;

    .end local v0           #validDate:Ljava/util/Date;
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 221
    .restart local v0       #validDate:Ljava/util/Date;
    :cond_b
    return-object v0
.end method

.method protected static intersectDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 6
    .parameter "permitted"
    .parameter "dn"

    .prologue
    .line 369
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 371
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    .line 394
    :goto_a
    return-object v3

    .line 377
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 379
    .local v1, intersect:Ljava/util/Set;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 380
    .local v0, _iter:Ljava/util/Iterator;
    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 382
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 384
    .local v2, subtree:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->withinDNSubtree(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 386
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 388
    :cond_2a
    invoke-static {v2, p1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->withinDNSubtree(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 390
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .end local v2           #subtree:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_34
    move-object v3, v1

    .line 394
    goto :goto_a
.end method

.method protected static intersectEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .parameter "permitted"
    .parameter "email"

    .prologue
    .line 436
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 438
    .local v2, _sub:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 440
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, p0

    .line 463
    :goto_16
    return-object v4

    .line 446
    :cond_17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 448
    .local v3, intersect:Ljava/util/Set;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 449
    .local v0, _iter:Ljava/util/Iterator;
    :cond_20
    :goto_20
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 451
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    .local v1, _permitted:Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 455
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 457
    :cond_36
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 459
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .end local v1           #_permitted:Ljava/lang/String;
    :cond_40
    move-object v4, v3

    .line 463
    goto :goto_16
.end method

.method protected static intersectIP(Ljava/util/Set;[B)Ljava/util/Set;
    .registers 2
    .parameter "permitted"
    .parameter "ip"

    .prologue
    .line 507
    return-object p0
.end method

.method protected static isAnyPolicy(Ljava/util/Set;)Z
    .registers 2
    .parameter "policySet"

    .prologue
    .line 881
    if-eqz p0, :cond_10

    const-string v0, "2.5.29.32.0"

    invoke-interface {p0, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method protected static isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    .registers 3
    .parameter "cert"

    .prologue
    .line 231
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    .registers 14
    .parameter "i"
    .parameter "policyNodes"
    .parameter "id_p"
    .parameter "m_idp"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;,
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 787
    const/4 v0, 0x0

    .line 788
    .local v0, idp_found:Z
    aget-object v1, p1, p0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 789
    .local v2, nodes_i:Ljava/util/Iterator;
    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 791
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 792
    .local v1, node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 794
    const/4 v0, 0x1

    .line 795
    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iput-object v3, v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 800
    .end local v1           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_26
    if-nez v0, :cond_ba

    .line 802
    aget-object v0, p1, p0

    .end local v0           #idp_found:Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 803
    .end local v2           #nodes_i:Ljava/util/Iterator;
    .local v8, nodes_i:Ljava/util/Iterator;
    :cond_2e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b8

    .line 805
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 806
    .restart local v1       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v0, "2.5.29.32.0"

    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 808
    const/4 v5, 0x0

    .line 809
    .local v5, pq:Ljava/util/Set;
    sget-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {p4, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 810
    .local v0, policies:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    .line 811
    .local v0, e:Ljava/util/Enumeration;
    :cond_53
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_79

    .line 813
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v2

    .line 814
    .local v2, pinfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    const-string v3, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    .line 816
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    .end local v0           #e:Ljava/util/Enumeration;
    invoke-static {v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v5

    .line 820
    .end local v2           #pinfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_79
    const/4 v7, 0x0

    .line 821
    .local v7, ci:Z
    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_8a

    .line 823
    invoke-virtual {p4}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object p4

    .end local p4
    sget-object v0, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {p4, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    .line 826
    :cond_8a
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 827
    .local v4, p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string p4, "2.5.29.32.0"

    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_b8

    .line 829
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    move v2, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 833
    .local v0, c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 834
    aget-object p0, p1, p0

    .end local p0
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p0, v8

    .line 840
    .end local v0           #c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v4           #p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v5           #pq:Ljava/util/Set;
    .end local v7           #ci:Z
    .end local v8           #nodes_i:Ljava/util/Iterator;
    .local p0, nodes_i:Ljava/util/Iterator;
    :goto_b7
    return-void

    .restart local v8       #nodes_i:Ljava/util/Iterator;
    .local p0, i:I
    :cond_b8
    move-object p0, v8

    .end local v8           #nodes_i:Ljava/util/Iterator;
    .local p0, nodes_i:Ljava/util/Iterator;
    goto :goto_b7

    .local v0, idp_found:Z
    .local v2, nodes_i:Ljava/util/Iterator;
    .local p0, i:I
    .restart local p4
    :cond_ba
    move-object p0, v2

    .end local v2           #nodes_i:Ljava/util/Iterator;
    .local p0, nodes_i:Ljava/util/Iterator;
    goto :goto_b7
.end method

.method protected static prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 12
    .parameter "i"
    .parameter "policyNodes"
    .parameter "id_p"
    .parameter "validPolicyTree"

    .prologue
    .line 848
    aget-object v7, p1, p0

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 849
    .local v5, nodes_i:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4e

    .line 851
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 852
    .local v2, node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 854
    invoke-virtual {v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 855
    .local v6, p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v6, v2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 856
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    .line 857
    const/4 v7, 0x1

    sub-int v0, p0, v7

    .local v0, k:I
    :goto_2b
    if-ltz v0, :cond_6

    .line 859
    aget-object v4, p1, v0

    .line 860
    .local v4, nodes:Ljava/util/List;
    const/4 v1, 0x0

    .local v1, l:I
    :goto_30
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-ge v1, v7, :cond_48

    .line 862
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 863
    .local v3, node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v7

    if-nez v7, :cond_4b

    .line 865
    invoke-static {p3, p1, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object p3

    .line 866
    if-nez p3, :cond_4b

    .line 857
    .end local v3           #node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_48
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    .line 860
    .restart local v3       #node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4b
    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 875
    .end local v0           #k:I
    .end local v1           #l:I
    .end local v2           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v4           #nodes:Ljava/util/List;
    .end local v6           #p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4e
    return-object p3
.end method

.method protected static processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z
    .registers 16
    .parameter "index"
    .parameter "policyNodes"
    .parameter "pOid"
    .parameter "pq"

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 718
    sub-int v1, p0, v11

    aget-object v10, p1, v1

    .line 720
    .local v10, policyNodeVec:Ljava/util/List;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_7
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_4a

    .line 722
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 723
    .local v4, node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    .line 725
    .local v8, expectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v8, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    .line 727
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 728
    .local v3, childExpectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 730
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 737
    .local v0, child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 738
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v11

    .line 744
    .end local v0           #child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #childExpectedPolicies:Ljava/util/Set;
    .end local v4           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #expectedPolicies:Ljava/util/Set;
    :goto_46
    return v1

    .line 720
    .restart local v4       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8       #expectedPolicies:Ljava/util/Set;
    :cond_47
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .end local v4           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #expectedPolicies:Ljava/util/Set;
    :cond_4a
    move v1, v7

    .line 744
    goto :goto_46
.end method

.method protected static processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V
    .registers 15
    .parameter "index"
    .parameter "policyNodes"
    .parameter "_poid"
    .parameter "_pq"

    .prologue
    .line 753
    const/4 v1, 0x1

    sub-int v1, p0, v1

    aget-object v10, p1, v1

    .line 755
    .local v10, policyNodeVec:Ljava/util/List;
    const/4 v9, 0x0

    .local v9, j:I
    :goto_6
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ge v9, v1, :cond_47

    .line 757
    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 758
    .local v4, _node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v8

    .line 760
    .local v8, _expectedPolicies:Ljava/util/Set;
    const-string v1, "2.5.29.32.0"

    invoke-virtual {v4}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 762
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 763
    .local v3, _childExpectedPolicies:Ljava/util/Set;
    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    new-instance v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move v2, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 772
    .local v0, _child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual {v4, v0}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 773
    aget-object v1, p1, p0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 777
    .end local v0           #_child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v3           #_childExpectedPolicies:Ljava/util/Set;
    .end local v4           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v8           #_expectedPolicies:Ljava/util/Set;
    :cond_47
    return-void

    .line 755
    .restart local v4       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v8       #_expectedPolicies:Ljava/util/Set;
    :cond_48
    add-int/lit8 v9, v9, 0x1

    goto :goto_6
.end method

.method protected static removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .registers 7
    .parameter "validPolicyTree"
    .parameter "policyNodes"
    .parameter "_node"

    .prologue
    const/4 v3, 0x0

    .line 669
    invoke-virtual {p2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 671
    .local v0, _parent:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    if-nez p0, :cond_b

    move-object v2, v3

    .line 690
    :goto_a
    return-object v2

    .line 676
    :cond_b
    if-nez v0, :cond_1d

    .line 678
    const/4 v1, 0x0

    .local v1, j:I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_1b

    .line 680
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, p1, v1

    .line 678
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_1b
    move-object v2, v3

    .line 683
    goto :goto_a

    .line 687
    .end local v1           #j:I
    :cond_1d
    invoke-virtual {v0, p2}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 688
    invoke-static {p1, p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    move-object v2, p0

    .line 690
    goto :goto_a
.end method

.method private static removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V
    .registers 5
    .parameter "policyNodes"
    .parameter "_node"

    .prologue
    .line 698
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getDepth()I

    move-result v2

    aget-object v2, p0, v2

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 700
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 702
    invoke-virtual {p1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v1

    .line 703
    .local v1, _iter:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 705
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 706
    .local v0, _child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-static {p0, v0}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNodeRecurse([Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    goto :goto_13

    .line 709
    .end local v0           #_child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v1           #_iter:Ljava/util/Iterator;
    :cond_23
    return-void
.end method

.method protected static unionDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    .registers 6
    .parameter "excluded"
    .parameter "dn"

    .prologue
    .line 400
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 402
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v3, p0

    .line 430
    :goto_a
    return-object v3

    .line 408
    :cond_b
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 410
    .local v1, intersect:Ljava/util/Set;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 411
    .local v0, _iter:Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 415
    .local v2, subtree:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-static {p1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->withinDNSubtree(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 417
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 419
    :cond_2a
    invoke-static {v2, p1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->withinDNSubtree(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1Sequence;)Z

    move-result v3

    if-eqz v3, :cond_34

    .line 421
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .line 425
    :cond_34
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    .end local v2           #subtree:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_3b
    move-object v3, v1

    .line 430
    goto :goto_a
.end method

.method protected static unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;
    .registers 7
    .parameter "excluded"
    .parameter "email"

    .prologue
    .line 469
    const/16 v4, 0x40

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 471
    .local v2, _sub:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_17

    .line 473
    invoke-interface {p0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, p0

    .line 500
    :goto_16
    return-object v4

    .line 478
    :cond_17
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 480
    .local v3, intersect:Ljava/util/Set;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 481
    .local v1, _iter:Ljava/util/Iterator;
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 485
    .local v0, _excluded:Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 487
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 489
    :cond_36
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 491
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 495
    :cond_40
    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 496
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .end local v0           #_excluded:Ljava/lang/String;
    :cond_47
    move-object v4, v3

    .line 500
    goto :goto_16
.end method

.method protected static unionIP(Ljava/util/Set;[B)Ljava/util/Set;
    .registers 2
    .parameter "excluded"
    .parameter "ip"

    .prologue
    .line 513
    return-object p0
.end method

.method private static withinDNSubtree(Lorg/bouncycastle/asn1/ASN1Sequence;Lorg/bouncycastle/asn1/ASN1Sequence;)Z
    .registers 7
    .parameter "dns"
    .parameter "subtree"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-ge v1, v4, :cond_a

    move v1, v3

    .line 318
    :goto_9
    return v1

    .line 305
    :cond_a
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-le v1, v2, :cond_16

    move v1, v3

    .line 307
    goto :goto_9

    .line 310
    :cond_16
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    sub-int v0, v1, v4

    .local v0, j:I
    :goto_1c
    if-ltz v0, :cond_31

    .line 312
    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    move v1, v3

    .line 314
    goto :goto_9

    .line 310
    :cond_2e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1c

    :cond_31
    move v1, v4

    .line 318
    goto :goto_9
.end method
