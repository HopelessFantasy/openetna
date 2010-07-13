.class public Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;
.super Ljava/security/cert/CertPathBuilderSpi;
.source "PKIXCertPathBuilderSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/security/cert/CertPathBuilderSpi;-><init>()V

    return-void
.end method

.method private final findCertificates(Ljava/security/cert/CertSelector;Ljava/util/List;)Ljava/util/Collection;
    .registers 7
    .parameter "certSelect"
    .parameter "certStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 271
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 272
    .local v1, certs:Ljava/util/Set;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 274
    .local v2, iter:Ljava/util/Iterator;
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 276
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertStore;

    .line 278
    .local v0, certStore:Ljava/security/cert/CertStore;
    invoke-virtual {v0, p1}, Ljava/security/cert/CertStore;->getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 281
    .end local v0           #certStore:Ljava/security/cert/CertStore;
    :cond_1d
    return-object v1
.end method

.method private final findIssuer(Ljava/security/cert/X509Certificate;Ljava/util/List;)Ljava/security/cert/X509Certificate;
    .registers 14
    .parameter "cert"
    .parameter "certStores"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const-string v10, "Issuer not found"

    .line 305
    const/4 v3, 0x0

    .line 306
    .local v3, invalidKeyEx:Ljava/lang/Exception;
    new-instance v0, Ljava/security/cert/X509CertSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 309
    .local v0, certSelect:Ljava/security/cert/X509CertSelector;
    :try_start_a
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_15} :catch_39

    .line 319
    :try_start_15
    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->findCertificates(Ljava/security/cert/CertSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_1c
    .catch Ljava/security/cert/CertStoreException; {:try_start_15 .. :try_end_1c} :catch_43

    move-result-object v5

    .line 326
    .local v5, iter:Ljava/util/Iterator;
    const/4 v4, 0x0

    .line 327
    .local v4, issuer:Ljava/security/cert/X509Certificate;
    :goto_1e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    if-nez v4, :cond_4b

    .line 329
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #issuer:Ljava/security/cert/X509Certificate;
    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 332
    .restart local v4       #issuer:Ljava/security/cert/X509Certificate;
    :try_start_2c
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_33} :catch_34

    goto :goto_1e

    .line 334
    :catch_34
    move-exception v6

    move-object v2, v6

    .line 336
    .local v2, ex:Ljava/lang/Exception;
    move-object v3, v2

    .line 337
    const/4 v4, 0x0

    .line 338
    goto :goto_1e

    .line 311
    .end local v2           #ex:Ljava/lang/Exception;
    .end local v4           #issuer:Ljava/security/cert/X509Certificate;
    .end local v5           #iter:Ljava/util/Iterator;
    :catch_39
    move-exception v6

    move-object v2, v6

    .line 313
    .local v2, ex:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Issuer not found"

    invoke-direct {v6, v10, v8, v8, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 321
    .end local v2           #ex:Ljava/io/IOException;
    :catch_43
    move-exception v6

    move-object v1, v6

    .line 323
    .local v1, e:Ljava/security/cert/CertStoreException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-direct {v6, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 341
    .end local v1           #e:Ljava/security/cert/CertStoreException;
    .restart local v4       #issuer:Ljava/security/cert/X509Certificate;
    .restart local v5       #iter:Ljava/util/Iterator;
    :cond_4b
    if-nez v4, :cond_57

    if-nez v3, :cond_57

    .line 343
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Issuer not found"

    invoke-direct {v6, v10, v8, v8, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 346
    :cond_57
    if-nez v4, :cond_63

    if-eqz v3, :cond_63

    .line 348
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "issuer found but certificate validation failed"

    invoke-direct {v6, v7, v3, v8, v9}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 351
    :cond_63
    return-object v4
.end method


# virtual methods
.method public engineBuild(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;
    .registers 25
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 36
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/PKIXBuilderParameters;

    move/from16 v19, v0

    if-nez v19, :cond_10

    .line 38
    new-instance v19, Ljava/security/InvalidAlgorithmParameterException;

    const-string v20, "params must be a PKIXBuilderParameters instance"

    invoke-direct/range {v19 .. v20}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 41
    :cond_10
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/PKIXBuilderParameters;

    move-object v14, v0

    .line 45
    .local v14, pkixParams:Ljava/security/cert/PKIXBuilderParameters;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v9, certPathList:Ljava/util/List;
    const/4 v7, 0x0

    .line 49
    .local v7, certPath:Ljava/security/cert/CertPath;
    const/4 v8, 0x0

    .line 52
    .local v8, certPathException:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/security/cert/PKIXBuilderParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v10

    .line 53
    .local v10, certSelect:Ljava/security/cert/CertSelector;
    if-nez v10, :cond_2a

    .line 55
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    const-string v20, "targetCertConstraints must be non-null for CertPath building"

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 60
    :cond_2a
    :try_start_2a
    invoke-virtual {v14}, Ljava/security/cert/PKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->findCertificates(Ljava/security/cert/CertSelector;Ljava/util/List;)Ljava/util/Collection;
    :try_end_36
    .catch Ljava/security/cert/CertStoreException; {:try_start_2a .. :try_end_36} :catch_45

    move-result-object v17

    .line 67
    .local v17, targets:Ljava/util/Collection;
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_51

    .line 69
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    const-string v20, "no certificate found matching targetCertContraints"

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 62
    .end local v17           #targets:Ljava/util/Collection;
    :catch_45
    move-exception v19

    move-object/from16 v11, v19

    .line 64
    .local v11, e:Ljava/security/cert/CertStoreException;
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    move-object/from16 v0, v19

    move-object v1, v11

    invoke-direct {v0, v1}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/Throwable;)V

    throw v19

    .line 77
    .end local v11           #e:Ljava/security/cert/CertStoreException;
    .restart local v17       #targets:Ljava/util/Collection;
    :cond_51
    :try_start_51
    const-string v19, "X.509"

    const-string v20, "BC"

    invoke-static/range {v19 .. v20}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v5

    .line 78
    .local v5, cFact:Ljava/security/cert/CertificateFactory;
    const-string v19, "PKIX"

    const-string v20, "BC"

    invoke-static/range {v19 .. v20}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_60} :catch_b1

    move-result-object v18

    .line 87
    .local v18, validator:Ljava/security/cert/CertPathValidator;
    invoke-interface/range {v17 .. v17}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 88
    .local v16, targetIter:Ljava/util/Iterator;
    :cond_65
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_f9

    .line 90
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 91
    .local v6, cert:Ljava/security/cert/X509Certificate;
    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 92
    :goto_74
    if-eqz v6, :cond_65

    .line 95
    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {v14}, Ljava/security/cert/PKIXBuilderParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;

    move-result-object v19

    if-eqz v19, :cond_db

    .line 102
    :try_start_88
    invoke-virtual {v5, v9}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v7

    .line 104
    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v15

    check-cast v15, Ljava/security/cert/PKIXCertPathValidatorResult;

    .line 106
    .local v15, result:Ljava/security/cert/PKIXCertPathValidatorResult;
    new-instance v19, Ljava/security/cert/PKIXCertPathBuilderResult;

    invoke-virtual {v15}, Ljava/security/cert/PKIXCertPathValidatorResult;->getTrustAnchor()Ljava/security/cert/TrustAnchor;

    move-result-object v20

    invoke-virtual {v15}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPolicyTree()Ljava/security/cert/PolicyNode;

    move-result-object v21

    invoke-virtual {v15}, Ljava/security/cert/PKIXCertPathValidatorResult;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v22

    move-object/from16 v0, v19

    move-object v1, v7

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/PKIXCertPathBuilderResult;-><init>(Ljava/security/cert/CertPath;Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V
    :try_end_b0
    .catch Ljava/security/cert/CertificateException; {:try_start_88 .. :try_end_b0} :catch_d0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_88 .. :try_end_b0} :catch_d6

    return-object v19

    .line 80
    .end local v5           #cFact:Ljava/security/cert/CertificateFactory;
    .end local v6           #cert:Ljava/security/cert/X509Certificate;
    .end local v15           #result:Ljava/security/cert/PKIXCertPathValidatorResult;
    .end local v16           #targetIter:Ljava/util/Iterator;
    .end local v18           #validator:Ljava/security/cert/CertPathValidator;
    :catch_b1
    move-exception v19

    move-object/from16 v11, v19

    .line 82
    .local v11, e:Ljava/lang/Exception;
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "exception creating support classes: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 111
    .end local v11           #e:Ljava/lang/Exception;
    .restart local v5       #cFact:Ljava/security/cert/CertificateFactory;
    .restart local v6       #cert:Ljava/security/cert/X509Certificate;
    .restart local v16       #targetIter:Ljava/util/Iterator;
    .restart local v18       #validator:Ljava/security/cert/CertPathValidator;
    :catch_d0
    move-exception v19

    move-object/from16 v12, v19

    .line 113
    .local v12, ex:Ljava/security/cert/CertificateException;
    move-object v8, v12

    .line 120
    .end local v12           #ex:Ljava/security/cert/CertificateException;
    :goto_d4
    const/4 v6, 0x0

    goto :goto_74

    .line 115
    :catch_d6
    move-exception v19

    move-object/from16 v12, v19

    .line 117
    .local v12, ex:Ljava/security/cert/CertPathValidatorException;
    move-object v8, v12

    goto :goto_d4

    .line 128
    .end local v12           #ex:Ljava/security/cert/CertPathValidatorException;
    :cond_db
    :try_start_db
    invoke-virtual {v14}, Ljava/security/cert/PKIXBuilderParameters;->getCertStores()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/provider/PKIXCertPathBuilderSpi;->findIssuer(Ljava/security/cert/X509Certificate;Ljava/util/List;)Ljava/security/cert/X509Certificate;

    move-result-object v13

    .line 129
    .local v13, issuer:Ljava/security/cert/X509Certificate;
    invoke-virtual {v13, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z
    :try_end_eb
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_db .. :try_end_eb} :catch_f2

    move-result v19

    if-eqz v19, :cond_f0

    .line 131
    const/4 v6, 0x0

    goto :goto_74

    .line 135
    :cond_f0
    move-object v6, v13

    goto :goto_74

    .line 138
    .end local v13           #issuer:Ljava/security/cert/X509Certificate;
    :catch_f2
    move-exception v19

    move-object/from16 v12, v19

    .line 140
    .restart local v12       #ex:Ljava/security/cert/CertPathValidatorException;
    move-object v8, v12

    .line 141
    const/4 v6, 0x0

    .line 142
    goto/16 :goto_74

    .line 147
    .end local v6           #cert:Ljava/security/cert/X509Certificate;
    .end local v12           #ex:Ljava/security/cert/CertPathValidatorException;
    :cond_f9
    if-eqz v7, :cond_108

    .line 149
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    const-string v20, "found certificate chain, but could not be validated"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 152
    :cond_108
    new-instance v19, Ljava/security/cert/CertPathBuilderException;

    const-string v20, "unable to find certificate chain"

    invoke-direct/range {v19 .. v20}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;)V

    throw v19
.end method

.method final findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/security/cert/TrustAnchor;
    .registers 14
    .parameter "cert"
    .parameter "trustAnchors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathBuilderException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 176
    .local v5, iter:Ljava/util/Iterator;
    const/4 v6, 0x0

    .line 177
    .local v6, trust:Ljava/security/cert/TrustAnchor;
    const/4 v7, 0x0

    .line 178
    .local v7, trustPublicKey:Ljava/security/PublicKey;
    const/4 v4, 0x0

    .line 180
    .local v4, invalidKeyEx:Ljava/lang/Exception;
    new-instance v2, Ljava/security/cert/X509CertSelector;

    invoke-direct {v2}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 184
    .local v2, certSelectX509:Ljava/security/cert/X509CertSelector;
    :try_start_c
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->setSubject([B)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_17} :catch_47

    .line 191
    :cond_17
    :goto_17
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_80

    if-nez v6, :cond_80

    .line 193
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #trust:Ljava/security/cert/TrustAnchor;
    check-cast v6, Ljava/security/cert/TrustAnchor;

    .line 194
    .restart local v6       #trust:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    if-eqz v8, :cond_54

    .line 196
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v8

    if-eqz v8, :cond_52

    .line 198
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v8

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 231
    :goto_3d
    if-eqz v7, :cond_17

    .line 235
    :try_start_3f
    invoke-virtual {p1, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_43

    goto :goto_17

    .line 237
    :catch_43
    move-exception v3

    .line 239
    .local v3, ex:Ljava/lang/Exception;
    move-object v4, v3

    .line 240
    const/4 v6, 0x0

    .line 241
    goto :goto_17

    .line 186
    .end local v3           #ex:Ljava/lang/Exception;
    :catch_47
    move-exception v8

    move-object v3, v8

    .line 188
    .local v3, ex:Ljava/io/IOException;
    new-instance v8, Ljava/security/cert/CertPathBuilderException;

    const-string v9, "can\'t get trust anchor principal"

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 202
    .end local v3           #ex:Ljava/io/IOException;
    :cond_52
    const/4 v6, 0x0

    goto :goto_3d

    .line 205
    :cond_54
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_7e

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v8

    if-eqz v8, :cond_7e

    .line 210
    :try_start_60
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 211
    .local v1, certIssuer:Ljavax/security/auth/x500/X500Principal;
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, caName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v1, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_78

    .line 214
    invoke-virtual {v6}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_76
    .catch Ljava/lang/IllegalArgumentException; {:try_start_60 .. :try_end_76} :catch_7a

    move-result-object v7

    goto :goto_3d

    .line 218
    :cond_78
    const/4 v6, 0x0

    goto :goto_3d

    .line 221
    .end local v0           #caName:Ljavax/security/auth/x500/X500Principal;
    .end local v1           #certIssuer:Ljavax/security/auth/x500/X500Principal;
    :catch_7a
    move-exception v8

    move-object v3, v8

    .line 223
    .local v3, ex:Ljava/lang/IllegalArgumentException;
    const/4 v6, 0x0

    .line 224
    goto :goto_3d

    .line 228
    .end local v3           #ex:Ljava/lang/IllegalArgumentException;
    :cond_7e
    const/4 v6, 0x0

    goto :goto_3d

    .line 245
    :cond_80
    if-nez v6, :cond_8c

    if-eqz v4, :cond_8c

    .line 247
    new-instance v8, Ljava/security/cert/CertPathBuilderException;

    const-string v9, "TrustAnchor found put certificate validation failed"

    invoke-direct {v8, v9, v4}, Ljava/security/cert/CertPathBuilderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8

    .line 250
    :cond_8c
    return-object v6
.end method
