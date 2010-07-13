.class public Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;
.super Ljava/security/cert/CertPathValidatorSpi;
.source "PKIXCertPathValidatorSpi.java"


# static fields
.field private static final ANY_POLICY:Ljava/lang/String; = "2.5.29.32.0"

.field private static final BASIC_CONSTRAINTS:Ljava/lang/String; = null

.field private static final CERTIFICATE_POLICIES:Ljava/lang/String; = null

.field private static final CRL_NUMBER:Ljava/lang/String; = null

.field private static final CRL_SIGN:I = 0x6

.field private static final DELTA_CRL_INDICATOR:Ljava/lang/String; = null

.field private static final INHIBIT_ANY_POLICY:Ljava/lang/String; = null

.field private static final ISSUING_DISTRIBUTION_POINT:Ljava/lang/String; = null

.field private static final KEY_CERT_SIGN:I = 0x5

.field private static final KEY_USAGE:Ljava/lang/String;

.field private static final NAME_CONSTRAINTS:Ljava/lang/String;

.field private static final POLICY_CONSTRAINTS:Ljava/lang/String;

.field private static final POLICY_MAPPINGS:Ljava/lang/String;

.field private static final SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

.field private static final crlReasons:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 60
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CertificatePolicies:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CERTIFICATE_POLICIES:Ljava/lang/String;

    .line 61
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->PolicyMappings:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_MAPPINGS:Ljava/lang/String;

    .line 62
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->InhibitAnyPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    .line 63
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->IssuingDistributionPoint:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    .line 64
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->DeltaCRLIndicator:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    .line 65
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->PolicyConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_CONSTRAINTS:Ljava/lang/String;

    .line 66
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->BasicConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->BASIC_CONSTRAINTS:Ljava/lang/String;

    .line 67
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->SubjectAlternativeName:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    .line 68
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->NameConstraints:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->NAME_CONSTRAINTS:Ljava/lang/String;

    .line 69
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->KeyUsage:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->KEY_USAGE:Ljava/lang/String;

    .line 71
    sget-object v0, Lorg/bouncycastle/asn1/x509/X509Extensions;->CRLNumber:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CRL_NUMBER:Ljava/lang/String;

    .line 82
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

    sput-object v0, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->crlReasons:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/security/cert/CertPathValidatorSpi;-><init>()V

    return-void
.end method

.method private checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;)V
    .registers 31
    .parameter "paramsPKIX"
    .parameter "cert"
    .parameter "validDate"
    .parameter "sign"
    .parameter "workingPublicKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/jce/provider/AnnotatedException;
        }
    .end annotation

    .prologue
    .line 1312
    new-instance v10, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v10}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1316
    .local v10, crlselect:Ljava/security/cert/X509CRLSelector;
    :try_start_5
    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_13} :catch_92

    .line 1323
    move-object v0, v10

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    .line 1325
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v22

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Ljava/security/cert/X509CRLSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1326
    .local v9, crl_iter:Ljava/util/Iterator;
    const/16 v21, 0x0

    .line 1328
    .end local p0
    .local v21, validCrlFound:Z
    :cond_2a
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_268

    .line 1330
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/X509CRL;

    .line 1332
    .local v7, crl:Ljava/security/cert/X509CRL;
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v22

    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 1334
    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v22

    if-eqz v22, :cond_58

    invoke-virtual {v7}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v22

    if-eqz v22, :cond_5a

    .line 1337
    :cond_58
    const/16 v21, 0x1

    .line 1340
    :cond_5a
    if-eqz p4, :cond_b6

    .line 1342
    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v16

    .line 1344
    .local v16, keyusage:[Z
    if-eqz v16, :cond_b6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x7

    move/from16 v0, v22

    move/from16 v1, v23

    if-lt v0, v1, :cond_75

    const/16 v22, 0x6

    aget-boolean v22, v16, v22

    if-nez v22, :cond_b6

    .line 1347
    :cond_75
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Issuer certificate keyusage extension does not permit crl signing.\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1318
    .end local v7           #crl:Ljava/security/cert/X509CRL;
    .end local v9           #crl_iter:Ljava/util/Iterator;
    .end local v16           #keyusage:[Z
    .end local v21           #validCrlFound:Z
    .restart local p0
    :catch_92
    move-exception v22

    move-object/from16 v12, v22

    .line 1320
    .local v12, e:Ljava/io/IOException;
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot extract issuer from certificate: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v22

    .line 1354
    .end local v12           #e:Ljava/io/IOException;
    .end local p0
    .restart local v7       #crl:Ljava/security/cert/X509CRL;
    .restart local v9       #crl_iter:Ljava/util/Iterator;
    .restart local v21       #validCrlFound:Z
    :cond_b6
    :try_start_b6
    const-string v22, "BC"

    move-object v0, v7

    move-object/from16 v1, p5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_c0} :catch_144

    .line 1361
    invoke-virtual/range {p2 .. p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v22

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v8

    .line 1362
    .local v8, crl_entry:Ljava/security/cert/X509CRLEntry;
    if-eqz v8, :cond_168

    invoke-virtual {v8}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v22

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v22

    if-nez v22, :cond_168

    .line 1365
    const/16 v19, 0x0

    .line 1367
    .local v19, reason:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v22

    if-eqz v22, :cond_102

    .line 1369
    sget-object v22, Lorg/bouncycastle/asn1/x509/X509Extensions;->ReasonCode:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {v22 .. v22}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v22

    move-object v0, v8

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/asn1/DEREnumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DEREnumerated;

    move-result-object v20

    .line 1370
    .local v20, reasonCode:Lorg/bouncycastle/asn1/DEREnumerated;
    if-eqz v20, :cond_102

    .line 1372
    sget-object v22, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->crlReasons:[Ljava/lang/String;

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/asn1/DEREnumerated;->getValue()Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/math/BigInteger;->intValue()I

    move-result v23

    aget-object v19, v22, v23

    .line 1376
    .end local v20           #reasonCode:Lorg/bouncycastle/asn1/DEREnumerated;
    :cond_102
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Certificate revocation after "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual {v8}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1378
    .local v17, message:Ljava/lang/String;
    if-eqz v19, :cond_13a

    .line 1380
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", reason: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1383
    :cond_13a
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1356
    .end local v8           #crl_entry:Ljava/security/cert/X509CRLEntry;
    .end local v17           #message:Ljava/lang/String;
    .end local v19           #reason:Ljava/lang/String;
    :catch_144
    move-exception v22

    move-object/from16 v12, v22

    .line 1358
    .local v12, e:Ljava/lang/Exception;
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "can\'t verify CRL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v22

    .line 1389
    .end local v12           #e:Ljava/lang/Exception;
    .restart local v8       #crl_entry:Ljava/security/cert/X509CRLEntry;
    :cond_168
    sget-object v22, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v14

    .line 1390
    .local v14, idp:Lorg/bouncycastle/asn1/DERObject;
    sget-object v22, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v11

    .line 1392
    .local v11, dci:Lorg/bouncycastle/asn1/DERObject;
    if-eqz v11, :cond_21a

    .line 1394
    new-instance v5, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v5}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 1398
    .local v5, baseSelect:Ljava/security/cert/X509CRLSelector;
    :try_start_181
    invoke-static {v7}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->addIssuerName([B)V
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_181 .. :try_end_18f} :catch_1ee

    .line 1405
    check-cast v11, Lorg/bouncycastle/asn1/DERInteger;

    .end local v11           #dci:Lorg/bouncycastle/asn1/DERObject;
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    .line 1406
    sget-object v22, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CRL_NUMBER:Ljava/lang/String;

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    check-cast p0, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/asn1/DERInteger;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v22

    const-wide/16 v23, 0x1

    invoke-static/range {v23 .. v24}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/cert/X509CRLSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V

    .line 1408
    const/4 v13, 0x0

    .line 1409
    .local v13, foundBase:Z
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/PKIXParameters;->getCertStores()Ljava/util/List;

    move-result-object v22

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findCRLs(Ljava/security/cert/X509CRLSelector;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 1410
    .local v15, it:Ljava/util/Iterator;
    :cond_1ca
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_1e4

    .line 1412
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 1414
    .local v3, base:Ljava/security/cert/X509CRL;
    sget-object v22, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v4

    .line 1416
    .local v4, baseIdp:Lorg/bouncycastle/asn1/DERObject;
    if-nez v14, :cond_212

    .line 1418
    if-nez v4, :cond_1ca

    .line 1420
    const/4 v13, 0x1

    .line 1434
    .end local v3           #base:Ljava/security/cert/X509CRL;
    .end local v4           #baseIdp:Lorg/bouncycastle/asn1/DERObject;
    :cond_1e4
    :goto_1e4
    if-nez v13, :cond_21a

    .line 1436
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v23, "No base CRL for delta CRL"

    invoke-direct/range {v22 .. v23}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1400
    .end local v13           #foundBase:Z
    .end local v15           #it:Ljava/util/Iterator;
    .restart local v11       #dci:Lorg/bouncycastle/asn1/DERObject;
    :catch_1ee
    move-exception v22

    move-object/from16 v12, v22

    .line 1402
    .local v12, e:Ljava/io/IOException;
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "can\'t extract issuer from certificate: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v22

    .line 1426
    .end local v11           #dci:Lorg/bouncycastle/asn1/DERObject;
    .end local v12           #e:Ljava/io/IOException;
    .restart local v3       #base:Ljava/security/cert/X509CRL;
    .restart local v4       #baseIdp:Lorg/bouncycastle/asn1/DERObject;
    .restart local v13       #foundBase:Z
    .restart local v15       #it:Ljava/util/Iterator;
    :cond_212
    invoke-virtual {v14, v4}, Lorg/bouncycastle/asn1/DERObject;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1ca

    .line 1428
    const/4 v13, 0x1

    .line 1429
    goto :goto_1e4

    .line 1440
    .end local v3           #base:Ljava/security/cert/X509CRL;
    .end local v4           #baseIdp:Lorg/bouncycastle/asn1/DERObject;
    .end local v5           #baseSelect:Ljava/security/cert/X509CRLSelector;
    .end local v13           #foundBase:Z
    .end local v15           #it:Ljava/util/Iterator;
    :cond_21a
    if-eqz v14, :cond_2a

    .line 1442
    invoke-static {v14}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v18

    .line 1443
    .local v18, p:Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    sget-object v22, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v6

    .line 1445
    .local v6, bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v22

    if-eqz v22, :cond_244

    if-eqz v6, :cond_244

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v22

    if-eqz v22, :cond_244

    .line 1447
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v23, "CA Cert CRL only contains user certificates"

    invoke-direct/range {v22 .. v23}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1450
    :cond_244
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v22

    if-eqz v22, :cond_25a

    if-eqz v6, :cond_252

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v22

    if-nez v22, :cond_25a

    .line 1452
    :cond_252
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v23, "End CRL only contains CA certificates"

    invoke-direct/range {v22 .. v23}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1455
    :cond_25a
    invoke-virtual/range {v18 .. v18}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v22

    if-eqz v22, :cond_2a

    .line 1457
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v23, "onlyContainsAttributeCerts boolean is asserted"

    invoke-direct/range {v22 .. v23}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1463
    .end local v6           #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v7           #crl:Ljava/security/cert/X509CRL;
    .end local v8           #crl_entry:Ljava/security/cert/X509CRLEntry;
    .end local v14           #idp:Lorg/bouncycastle/asn1/DERObject;
    .end local v18           #p:Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;
    :cond_268
    if-nez v21, :cond_272

    .line 1465
    new-instance v22, Lorg/bouncycastle/jce/provider/AnnotatedException;

    const-string v23, "no valid CRL found"

    invoke-direct/range {v22 .. v23}, Lorg/bouncycastle/jce/provider/AnnotatedException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 1467
    :cond_272
    return-void
.end method


# virtual methods
.method public engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 133
    .parameter "certPath"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/security/cert/PKIXParameters;

    move v6, v0

    if-nez v6, :cond_f

    .line 103
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "params must be a PKIXParameters instance"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 106
    :cond_f
    move-object/from16 v0, p2

    check-cast v0, Ljava/security/cert/PKIXParameters;

    move-object/from16 v98, v0

    .line 107
    .local v98, paramsPKIX:Ljava/security/cert/PKIXParameters;
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v6

    if-nez v6, :cond_23

    .line 109
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "trustAnchors is null, this is not allowed for path validation"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 119
    :cond_23
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v55

    .line 120
    .local v55, certs:Ljava/util/List;
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v88

    .line 122
    .local v88, n:I
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_41

    .line 124
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "CertPath is empty"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 130
    :cond_41
    invoke-static/range {v98 .. v98}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getValidDate(Ljava/security/cert/PKIXParameters;)Ljava/util/Date;

    move-result-object v125

    .line 135
    .local v125, validDate:Ljava/util/Date;
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v124

    .line 140
    .local v124, userInitialPolicySet:Ljava/util/Set;
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v55

    move v1, v6

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v82

    check-cast v82, Ljava/security/cert/X509Certificate;

    .line 143
    .local v82, lastCert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, v82

    move-object/from16 v1, p1

    move v2, v6

    move-object/from16 v3, v98

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;ILjava/security/cert/PKIXParameters;)Ljava/security/cert/TrustAnchor;

    move-result-object v121

    .line 147
    .local v121, trust:Ljava/security/cert/TrustAnchor;
    if-nez v121, :cond_7b

    .line 149
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "TrustAnchor for CertPath not found."

    const/4 v8, 0x0

    const/4 v9, -0x1

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 157
    :cond_7b
    const/16 v72, 0x0

    .line 167
    .local v72, index:I
    add-int/lit8 v6, v88, 0x1

    move v0, v6

    new-array v0, v0, [Ljava/util/ArrayList;

    move-object/from16 v110, v0

    .line 168
    .local v110, policyNodes:[Ljava/util/List;
    const/16 v79, 0x0

    .local v79, j:I
    :goto_86
    move-object/from16 v0, v110

    array-length v0, v0

    move v6, v0

    move/from16 v0, v79

    move v1, v6

    if-ge v0, v1, :cond_99

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    aput-object v6, v110, v79

    .line 168
    add-int/lit8 v79, v79, 0x1

    goto :goto_86

    .line 173
    :cond_99
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 175
    .local v8, policySet:Ljava/util/Set;
    const-string v6, "2.5.29.32.0"

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 177
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

    .line 179
    .local v5, validPolicyTree:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const/4 v6, 0x0

    aget-object v6, v110, v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    new-instance v102, Ljava/util/HashSet;

    invoke-direct/range {v102 .. v102}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v102, permittedSubtreesDN:Ljava/util/Set;
    new-instance v103, Ljava/util/HashSet;

    invoke-direct/range {v103 .. v103}, Ljava/util/HashSet;-><init>()V

    .line 186
    .local v103, permittedSubtreesEmail:Ljava/util/Set;
    new-instance v104, Ljava/util/HashSet;

    invoke-direct/range {v104 .. v104}, Ljava/util/HashSet;-><init>()V

    .line 191
    .local v104, permittedSubtreesIP:Ljava/util/Set;
    new-instance v66, Ljava/util/HashSet;

    invoke-direct/range {v66 .. v66}, Ljava/util/HashSet;-><init>()V

    .line 192
    .local v66, excludedSubtreesDN:Ljava/util/Set;
    new-instance v67, Ljava/util/HashSet;

    invoke-direct/range {v67 .. v67}, Ljava/util/HashSet;-><init>()V

    .line 193
    .local v67, excludedSubtreesEmail:Ljava/util/Set;
    new-instance v68, Ljava/util/HashSet;

    invoke-direct/range {v68 .. v68}, Ljava/util/HashSet;-><init>()V

    .line 199
    .local v68, excludedSubtreesIP:Ljava/util/Set;
    const/16 v47, 0x0

    .line 201
    .local v47, acceptablePolicies:Ljava/util/Set;
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_150

    .line 203
    const/16 v69, 0x0

    .line 215
    .local v69, explicitPolicy:I
    :goto_e5
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v6

    if-eqz v6, :cond_153

    .line 217
    const/16 v73, 0x0

    .line 229
    .local v73, inhibitAnyPolicy:I
    :goto_ed
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v6

    if-eqz v6, :cond_156

    .line 231
    const/16 v109, 0x0

    .line 244
    .local v109, policyMapping:I
    :goto_f5
    invoke-virtual/range {v121 .. v121}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v13

    .line 245
    .local v13, sign:Ljava/security/cert/X509Certificate;
    const/16 v122, 0x0

    .line 248
    .local v122, trustAnchorInChain:Z
    if-eqz v13, :cond_159

    .line 250
    :try_start_fd
    invoke-static {v13}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v127

    .line 251
    .local v127, workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_104
    .catch Ljava/lang/IllegalArgumentException; {:try_start_fd .. :try_end_104} :catch_16a

    move-result-object v14

    .line 255
    .local v14, workingPublicKey:Ljava/security/PublicKey;
    :try_start_105
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v123

    .line 256
    .local v123, trustBytes:[B
    invoke-virtual/range {v82 .. v82}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v52

    .line 257
    .local v52, certBytes:[B
    move-object/from16 v0, v123

    move-object/from16 v1, v52

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_105 .. :try_end_114} :catch_cac
    .catch Ljava/lang/IllegalArgumentException; {:try_start_105 .. :try_end_114} :catch_16a

    move-result v122

    .line 273
    .end local v52           #certBytes:[B
    .end local v123           #trustBytes:[B
    :goto_115
    invoke-static {v14}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v126

    .line 274
    .local v126, workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual/range {v126 .. v126}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v128

    .line 275
    .local v128, workingPublicKeyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v126 .. v126}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v129

    .line 280
    .local v129, workingPublicKeyParameters:Lorg/bouncycastle/asn1/DEREncodable;
    move/from16 v87, v88

    .line 288
    .local v87, maxPathLength:I
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v6

    if-eqz v6, :cond_18a

    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->getTargetCertConstraints()Ljava/security/cert/CertSelector;

    move-result-object v6

    const/4 v7, 0x0

    move-object/from16 v0, v55

    move v1, v7

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/security/cert/X509Certificate;

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/security/cert/CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v6

    if-nez v6, :cond_18a

    .line 291
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "target certificate in certpath does not match targetcertconstraints"

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 207
    .end local v13           #sign:Ljava/security/cert/X509Certificate;
    .end local v14           #workingPublicKey:Ljava/security/PublicKey;
    .end local v69           #explicitPolicy:I
    .end local v73           #inhibitAnyPolicy:I
    .end local v87           #maxPathLength:I
    .end local v109           #policyMapping:I
    .end local v122           #trustAnchorInChain:Z
    .end local v126           #workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v127           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .end local v128           #workingPublicKeyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v129           #workingPublicKeyParameters:Lorg/bouncycastle/asn1/DEREncodable;
    .restart local v8       #policySet:Ljava/util/Set;
    .restart local p2
    :cond_150
    add-int/lit8 v69, v88, 0x1

    .restart local v69       #explicitPolicy:I
    goto :goto_e5

    .line 221
    :cond_153
    add-int/lit8 v73, v88, 0x1

    .restart local v73       #inhibitAnyPolicy:I
    goto :goto_ed

    .line 235
    :cond_156
    add-int/lit8 v109, v88, 0x1

    .restart local v109       #policyMapping:I
    goto :goto_f5

    .line 264
    .restart local v13       #sign:Ljava/security/cert/X509Certificate;
    .restart local v122       #trustAnchorInChain:Z
    :cond_159
    :try_start_159
    new-instance v127, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual/range {v121 .. v121}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v127

    move-object v1, v6

    invoke-direct {v0, v1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v127       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    invoke-virtual/range {v121 .. v121}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_168
    .catch Ljava/lang/IllegalArgumentException; {:try_start_159 .. :try_end_168} :catch_16a

    move-result-object v14

    .restart local v14       #workingPublicKey:Ljava/security/PublicKey;
    goto :goto_115

    .line 268
    .end local v14           #workingPublicKey:Ljava/security/PublicKey;
    .end local v127           #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    :catch_16a
    move-exception v6

    move-object/from16 v64, v6

    .line 270
    .local v64, ex:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "TrustAnchor subjectDN: "

    .end local v8           #policySet:Ljava/util/Set;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v64 .. v64}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 298
    .end local v64           #ex:Ljava/lang/IllegalArgumentException;
    .end local p2
    .restart local v8       #policySet:Ljava/util/Set;
    .restart local v14       #workingPublicKey:Ljava/security/PublicKey;
    .restart local v87       #maxPathLength:I
    .restart local v126       #workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .restart local v127       #workingIssuerName:Ljavax/security/auth/x500/X500Principal;
    .restart local v128       #workingPublicKeyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .restart local v129       #workingPublicKeyParameters:Lorg/bouncycastle/asn1/DEREncodable;
    :cond_18a
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v99

    .line 299
    .local v99, pathCheckers:Ljava/util/List;
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v53

    .line 300
    .local v53, certIter:Ljava/util/Iterator;
    :goto_192
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a6

    .line 302
    invoke-interface/range {v53 .. v53}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V

    goto :goto_192

    .line 305
    :cond_1a6
    const/4 v11, 0x0

    .line 307
    .local v11, cert:Ljava/security/cert/X509Certificate;
    invoke-interface/range {v55 .. v55}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v72, v6, v7

    :goto_1ae
    if-ltz v72, :cond_9fd

    .line 314
    sub-int v17, v88, v72

    .line 322
    .local v17, i:I
    :try_start_1b2
    move-object/from16 v0, v55

    move/from16 v1, v72

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v11, v0
    :try_end_1be
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1b2 .. :try_end_1be} :catch_225

    .line 335
    const/4 v6, 0x1

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_1c6

    if-nez v122, :cond_1cb

    .line 337
    :cond_1c6
    :try_start_1c6
    const-string v6, "BC"

    invoke-virtual {v11, v14, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_1cb
    .catch Ljava/security/GeneralSecurityException; {:try_start_1c6 .. :try_end_1cb} :catch_23d
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1c6 .. :try_end_1cb} :catch_225

    .line 349
    :cond_1cb
    :try_start_1cb
    move-object v0, v11

    move-object/from16 v1, v125

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_1d1
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_1cb .. :try_end_1d1} :catch_250
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_1cb .. :try_end_1d1} :catch_276
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1cb .. :try_end_1d1} :catch_225

    .line 363
    :try_start_1d1
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v6

    if-eqz v6, :cond_1e0

    move-object/from16 v9, p0

    move-object/from16 v10, v98

    move-object/from16 v12, v125

    .line 365
    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;)V

    .line 371
    :cond_1e0
    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29c

    .line 373
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IssuerName("

    .end local v8           #policySet:Ljava/util/Set;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getEncodedIssuerPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") does not match SubjectName("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") of signing certificate"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6
    :try_end_225
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_1d1 .. :try_end_225} :catch_225

    .line 1048
    :catch_225
    move-exception v6

    move-object/from16 v62, v6

    .line 1050
    .local v62, e:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v62 .. v62}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v62 .. v62}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v8

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 340
    .end local v62           #e:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8       #policySet:Ljava/util/Set;
    :catch_23d
    move-exception v6

    move-object/from16 v62, v6

    .line 342
    .local v62, e:Ljava/security/GeneralSecurityException;
    :try_start_240
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Could not validate certificate signature."

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v62

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 351
    .end local v62           #e:Ljava/security/GeneralSecurityException;
    :catch_250
    move-exception v62

    .line 353
    .local v62, e:Ljava/security/cert/CertificateExpiredException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not validate certificate: "

    .end local v8           #policySet:Ljava/util/Set;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v62 .. v62}, Ljava/security/cert/CertificateExpiredException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v62

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 355
    .end local v62           #e:Ljava/security/cert/CertificateExpiredException;
    .restart local v8       #policySet:Ljava/util/Set;
    :catch_276
    move-exception v62

    .line 357
    .local v62, e:Ljava/security/cert/CertificateNotYetValidException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not validate certificate: "

    .end local v8           #policySet:Ljava/util/Set;
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v62 .. v62}, Ljava/security/cert/CertificateNotYetValidException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v62

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 382
    .end local v62           #e:Ljava/security/cert/CertificateNotYetValidException;
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_29c
    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_2a8

    move/from16 v0, v17

    move/from16 v1, v88

    if-lt v0, v1, :cond_34d

    .line 384
    :cond_2a8
    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v112

    .line 385
    .local v112, principal:Ljavax/security/auth/x500/X500Principal;
    new-instance v46, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-virtual/range {v112 .. v112}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v6

    move-object/from16 v0, v46

    move-object v1, v6

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V
    :try_end_2b8
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_240 .. :try_end_2b8} :catch_225

    .line 390
    .local v46, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_2b8
    invoke-virtual/range {v46 .. v46}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v61

    check-cast v61, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_2be
    .catch Ljava/io/IOException; {:try_start_2b8 .. :try_end_2be} :catch_2f5
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2b8 .. :try_end_2be} :catch_225

    .line 397
    .local v61, dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_start_2be
    move-object/from16 v0, v102

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkPermittedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 399
    move-object/from16 v0, v66

    move-object/from16 v1, v61

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkExcludedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 401
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v49

    check-cast v49, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 402
    .local v49, altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v49, :cond_34d

    .line 404
    const/16 v79, 0x0

    :goto_2d8
    invoke-virtual/range {v49 .. v49}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    move/from16 v0, v79

    move v1, v6

    if-ge v0, v1, :cond_34d

    .line 406
    move-object/from16 v0, v49

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v95

    check-cast v95, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 408
    .local v95, o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v95 .. v95}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    sparse-switch v6, :sswitch_data_cb0

    .line 404
    :goto_2f2
    add-int/lit8 v79, v79, 0x1

    goto :goto_2d8

    .line 392
    .end local v49           #altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v61           #dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v95           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :catch_2f5
    move-exception v6

    move-object/from16 v62, v6

    .line 394
    .local v62, e:Ljava/io/IOException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "exception extracting subject name when checking subtrees"

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 411
    .end local v62           #e:Ljava/io/IOException;
    .restart local v49       #altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v61       #dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    .restart local v95       #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    :sswitch_300
    const/4 v6, 0x1

    move-object/from16 v0, v95

    move v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v63

    .line 413
    .local v63, email:Ljava/lang/String;
    move-object/from16 v0, v103

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkPermittedEmail(Ljava/util/Set;Ljava/lang/String;)V

    .line 414
    move-object/from16 v0, v67

    move-object/from16 v1, v63

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkExcludedEmail(Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_2f2

    .line 417
    .end local v63           #email:Ljava/lang/String;
    :sswitch_31b
    const/4 v6, 0x1

    move-object/from16 v0, v95

    move v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v48

    .line 419
    .local v48, altDN:Lorg/bouncycastle/asn1/ASN1Sequence;
    move-object/from16 v0, v102

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkPermittedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 420
    move-object/from16 v0, v66

    move-object/from16 v1, v48

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkExcludedDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    goto :goto_2f2

    .line 423
    .end local v48           #altDN:Lorg/bouncycastle/asn1/ASN1Sequence;
    :sswitch_332
    const/4 v6, 0x1

    move-object/from16 v0, v95

    move v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v75

    .line 425
    .local v75, ip:[B
    move-object/from16 v0, v104

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkPermittedIP(Ljava/util/Set;[B)V

    .line 426
    move-object/from16 v0, v68

    move-object/from16 v1, v75

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->checkExcludedIP(Ljava/util/Set;[B)V

    goto :goto_2f2

    .line 436
    .end local v46           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v49           #altName:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v61           #dns:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v75           #ip:[B
    .end local v95           #o:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v112           #principal:Ljavax/security/auth/x500/X500Principal;
    :cond_34d
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v54

    check-cast v54, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 437
    .local v54, certPolicies:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v54, :cond_513

    if-eqz v5, :cond_513

    .line 442
    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v62

    .line 443
    .local v62, e:Ljava/util/Enumeration;
    new-instance v111, Ljava/util/HashSet;

    invoke-direct/range {v111 .. v111}, Ljava/util/HashSet;-><init>()V

    .line 445
    .local v111, pols:Ljava/util/Set;
    :cond_362
    :goto_362
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_3ac

    .line 447
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v96

    .line 448
    .local v96, pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    invoke-virtual/range {v96 .. v96}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v97

    .line 450
    .local v97, pOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    invoke-virtual/range {v97 .. v97}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v111

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 452
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v97 .. v97}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_362

    .line 454
    invoke-virtual/range {v96 .. v96}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v27

    .line 456
    .local v27, pq:Ljava/util/Set;
    move/from16 v0, v17

    move-object/from16 v1, v110

    move-object/from16 v2, v97

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)Z

    move-result v86

    .line 458
    .local v86, match:Z
    if-nez v86, :cond_362

    .line 460
    move/from16 v0, v17

    move-object/from16 v1, v110

    move-object/from16 v2, v97

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/DERObjectIdentifier;Ljava/util/Set;)V

    goto :goto_362

    .line 465
    .end local v27           #pq:Ljava/util/Set;
    .end local v86           #match:Z
    .end local v96           #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    .end local v97           #pOid:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_3ac
    if-eqz v47, :cond_3b9

    const-string v6, "2.5.29.32.0"

    move-object/from16 v0, v47

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_44e

    .line 467
    :cond_3b9
    move-object/from16 v47, v111

    .line 490
    :goto_3bb
    if-gtz v73, :cond_3c9

    move/from16 v0, v17

    move/from16 v1, v88

    if-ge v0, v1, :cond_4b0

    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-eqz v6, :cond_4b0

    .line 492
    :cond_3c9
    invoke-virtual/range {v54 .. v54}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v62

    .line 494
    :cond_3cd
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_4b0

    .line 496
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v96

    .line 498
    .restart local v96       #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v96 .. v96}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3cd

    .line 500
    invoke-virtual/range {v96 .. v96}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v20

    .line 501
    .local v20, _apq:Ljava/util/Set;
    const/4 v6, 0x1

    sub-int v6, v17, v6

    aget-object v37, v110, v6

    .line 503
    .local v37, _nodes:Ljava/util/List;
    const/16 v80, 0x0

    .local v80, k:I
    :goto_3fa
    invoke-interface/range {v37 .. v37}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v80

    move v1, v6

    if-ge v0, v1, :cond_4b0

    .line 505
    move-object/from16 v0, v37

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 507
    .local v19, _node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v40

    .line 508
    .local v40, _policySetIter:Ljava/util/Iterator;
    :cond_415
    :goto_415
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4ac

    .line 510
    invoke-interface/range {v40 .. v40}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    .line 513
    .local v41, _tmp:Ljava/lang/Object;
    move-object/from16 v0, v41

    instance-of v0, v0, Ljava/lang/String;

    move v6, v0

    if-eqz v6, :cond_477

    .line 515
    move-object/from16 v0, v41

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    .line 526
    .end local v41           #_tmp:Ljava/lang/Object;
    .local v21, _policy:Ljava/lang/String;
    :goto_42c
    const/16 v33, 0x0

    .line 527
    .local v33, _found:Z
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v32

    .line 529
    .local v32, _childrenIter:Ljava/util/Iterator;
    :cond_432
    :goto_432
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_485

    .line 531
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 533
    .local v31, _child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v31 .. v31}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_432

    .line 535
    const/16 v33, 0x1

    goto :goto_432

    .line 471
    .end local v19           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20           #_apq:Ljava/util/Set;
    .end local v21           #_policy:Ljava/lang/String;
    .end local v31           #_child:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v32           #_childrenIter:Ljava/util/Iterator;
    .end local v33           #_found:Z
    .end local v37           #_nodes:Ljava/util/List;
    .end local v40           #_policySetIter:Ljava/util/Iterator;
    .end local v80           #k:I
    .end local v96           #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_44e
    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v77

    .line 472
    .local v77, it:Ljava/util/Iterator;
    new-instance v117, Ljava/util/HashSet;

    invoke-direct/range {v117 .. v117}, Ljava/util/HashSet;-><init>()V

    .line 474
    .local v117, t1:Ljava/util/Set;
    :cond_457
    :goto_457
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_473

    .line 476
    invoke-interface/range {v77 .. v77}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v95

    .line 478
    .local v95, o:Ljava/lang/Object;
    move-object/from16 v0, v111

    move-object/from16 v1, v95

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_457

    .line 480
    move-object/from16 v0, v117

    move-object/from16 v1, v95

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_457

    .line 484
    .end local v95           #o:Ljava/lang/Object;
    :cond_473
    move-object/from16 v47, v117

    goto/16 :goto_3bb

    .line 517
    .end local v77           #it:Ljava/util/Iterator;
    .end local v117           #t1:Ljava/util/Set;
    .restart local v19       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .restart local v20       #_apq:Ljava/util/Set;
    .restart local v37       #_nodes:Ljava/util/List;
    .restart local v40       #_policySetIter:Ljava/util/Iterator;
    .restart local v41       #_tmp:Ljava/lang/Object;
    .restart local v80       #k:I
    .restart local v96       #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_477
    move-object/from16 v0, v41

    instance-of v0, v0, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move v6, v0

    if-eqz v6, :cond_415

    .line 519
    check-cast v41, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .end local v41           #_tmp:Ljava/lang/Object;
    invoke-virtual/range {v41 .. v41}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v21

    .restart local v21       #_policy:Ljava/lang/String;
    goto :goto_42c

    .line 539
    .restart local v32       #_childrenIter:Ljava/util/Iterator;
    .restart local v33       #_found:Z
    :cond_485
    if-nez v33, :cond_415

    .line 541
    new-instance v18, Ljava/util/HashSet;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashSet;-><init>()V

    .line 542
    .local v18, _newChildExpectedPolicies:Ljava/util/Set;
    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 544
    new-instance v15, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    const/16 v22, 0x0

    invoke-direct/range {v15 .. v22}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 551
    .local v15, _newChild:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v19

    move-object v1, v15

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 552
    aget-object v6, v110, v17

    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_415

    .line 503
    .end local v15           #_newChild:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v18           #_newChildExpectedPolicies:Ljava/util/Set;
    .end local v21           #_policy:Ljava/lang/String;
    .end local v32           #_childrenIter:Ljava/util/Iterator;
    .end local v33           #_found:Z
    :cond_4ac
    add-int/lit8 v80, v80, 0x1

    goto/16 :goto_3fa

    .line 564
    .end local v19           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v20           #_apq:Ljava/util/Set;
    .end local v37           #_nodes:Ljava/util/List;
    .end local v40           #_policySetIter:Ljava/util/Iterator;
    .end local v80           #k:I
    .end local v96           #pInfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_4b0
    const/4 v6, 0x1

    sub-int v79, v17, v6

    :goto_4b3
    if-ltz v79, :cond_4e3

    .line 566
    aget-object v93, v110, v79

    .line 568
    .local v93, nodes:Ljava/util/List;
    const/16 v80, 0x0

    .restart local v80       #k:I
    :goto_4b9
    invoke-interface/range {v93 .. v93}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v80

    move v1, v6

    if-ge v0, v1, :cond_4dd

    .line 570
    move-object/from16 v0, v93

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 571
    .local v91, node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_4e0

    .line 573
    move-object v0, v5

    move-object/from16 v1, v110

    move-object/from16 v2, v91

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 574
    if-nez v5, :cond_4e0

    .line 564
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4dd
    add-int/lit8 v79, v79, -0x1

    goto :goto_4b3

    .line 568
    .restart local v91       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_4e0
    add-int/lit8 v80, v80, 0x1

    goto :goto_4b9

    .line 585
    .end local v80           #k:I
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v93           #nodes:Ljava/util/List;
    :cond_4e3
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v58

    .line 587
    .local v58, criticalExtensionOids:Ljava/util/Set;
    if-eqz v58, :cond_513

    .line 589
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v58

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v57

    .line 591
    .local v57, critical:Z
    aget-object v93, v110, v17

    .line 592
    .restart local v93       #nodes:Ljava/util/List;
    const/16 v79, 0x0

    :goto_4f6
    invoke-interface/range {v93 .. v93}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v79

    move v1, v6

    if-ge v0, v1, :cond_513

    .line 594
    move-object/from16 v0, v93

    move/from16 v1, v79

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 595
    .restart local v91       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v91

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->setCritical(Z)V

    .line 592
    add-int/lit8 v79, v79, 0x1

    goto :goto_4f6

    .line 603
    .end local v57           #critical:Z
    .end local v58           #criticalExtensionOids:Ljava/util/Set;
    .end local v62           #e:Ljava/util/Enumeration;
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v93           #nodes:Ljava/util/List;
    .end local v111           #pols:Ljava/util/Set;
    :cond_513
    if-nez v54, :cond_516

    .line 605
    const/4 v5, 0x0

    .line 611
    :cond_516
    if-gtz v69, :cond_522

    if-nez v5, :cond_522

    .line 613
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "No valid policy tree found when one expected."

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 620
    :cond_522
    move/from16 v0, v17

    move/from16 v1, v88

    if-eq v0, v1, :cond_9ba

    .line 622
    if-eqz v11, :cond_541

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_541

    .line 624
    const/4 v6, 0x1

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_539

    if-nez v122, :cond_541

    .line 626
    :cond_539
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Version 1 certs can\'t be used as intermediate certificates"

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 635
    :cond_541
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v106

    .line 636
    .local v106, pm:Lorg/bouncycastle/asn1/DERObject;
    if-eqz v106, :cond_5a3

    .line 638
    move-object/from16 v0, v106

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v85, v0

    .line 640
    .local v85, mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/16 v79, 0x0

    :goto_551
    invoke-virtual/range {v85 .. v85}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    move/from16 v0, v79

    move v1, v6

    if-ge v0, v1, :cond_5a3

    .line 642
    move-object/from16 v0, v85

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v84

    check-cast v84, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 644
    .local v84, mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    move-object/from16 v0, v84

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v76

    check-cast v76, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 645
    .local v76, issuerDomainPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const/4 v6, 0x1

    move-object/from16 v0, v84

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v115

    check-cast v115, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    .line 647
    .local v115, subjectDomainPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v76 .. v76}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58c

    .line 650
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "IssuerDomainPolicy is anyPolicy"

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 653
    :cond_58c
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v115 .. v115}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a0

    .line 656
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "SubjectDomainPolicy is anyPolicy"

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 640
    :cond_5a0
    add-int/lit8 v79, v79, 0x1

    goto :goto_551

    .line 663
    .end local v76           #issuerDomainPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v84           #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v85           #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v115           #subjectDomainPolicy:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    :cond_5a3
    if-eqz v106, :cond_769

    .line 665
    move-object/from16 v0, v106

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v85, v0

    .line 666
    .restart local v85       #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v83, Ljava/util/HashMap;

    invoke-direct/range {v83 .. v83}, Ljava/util/HashMap;-><init>()V

    .line 667
    .local v83, m_idp:Ljava/util/Map;
    new-instance v113, Ljava/util/HashSet;

    invoke-direct/range {v113 .. v113}, Ljava/util/HashSet;-><init>()V

    .line 669
    .local v113, s_idp:Ljava/util/Set;
    const/16 v79, 0x0

    :goto_5b7
    invoke-virtual/range {v85 .. v85}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    move/from16 v0, v79

    move v1, v6

    if-ge v0, v1, :cond_621

    .line 671
    move-object/from16 v0, v85

    move/from16 v1, v79

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v84

    check-cast v84, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 672
    .restart local v84       #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v6, 0x0

    move-object/from16 v0, v84

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v28

    .line 673
    .local v28, id_p:Ljava/lang/String;
    const/4 v6, 0x1

    move-object/from16 v0, v84

    move v1, v6

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/DERObjectIdentifier;

    invoke-virtual/range {p2 .. p2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v114

    .line 676
    .local v114, sd_p:Ljava/lang/String;
    move-object/from16 v0, v83

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_60f

    .line 678
    new-instance v118, Ljava/util/HashSet;

    invoke-direct/range {v118 .. v118}, Ljava/util/HashSet;-><init>()V

    .line 679
    .local v118, tmp:Ljava/util/Set;
    move-object/from16 v0, v118

    move-object/from16 v1, v114

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 680
    move-object/from16 v0, v83

    move-object/from16 v1, v28

    move-object/from16 v2, v118

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 681
    move-object/from16 v0, v113

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 669
    :goto_60c
    add-int/lit8 v79, v79, 0x1

    goto :goto_5b7

    .line 685
    .end local v118           #tmp:Ljava/util/Set;
    :cond_60f
    move-object/from16 v0, v83

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v118

    check-cast v118, Ljava/util/Set;

    .line 686
    .restart local v118       #tmp:Ljava/util/Set;
    move-object/from16 v0, v118

    move-object/from16 v1, v114

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_60c

    .line 690
    .end local v28           #id_p:Ljava/lang/String;
    .end local v84           #mapping:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v114           #sd_p:Ljava/lang/String;
    .end local v118           #tmp:Ljava/util/Set;
    :cond_621
    invoke-interface/range {v113 .. v113}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v78

    .line 691
    .local v78, it_idp:Ljava/util/Iterator;
    :cond_625
    :goto_625
    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_769

    .line 693
    invoke-interface/range {v78 .. v78}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 698
    .restart local v28       #id_p:Ljava/lang/String;
    if-lez v109, :cond_705

    .line 700
    const/16 v71, 0x0

    .line 701
    .local v71, idp_found:Z
    aget-object v6, v110, v17

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v94

    .line 702
    .local v94, nodes_i:Ljava/util/Iterator;
    :cond_63b
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_666

    .line 704
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 705
    .restart local v91       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_63b

    .line 707
    const/16 v71, 0x1

    .line 708
    move-object/from16 v0, v83

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Set;

    move-object/from16 v0, p2

    move-object/from16 v1, v91

    iput-object v0, v1, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->expectedPolicies:Ljava/util/Set;

    .line 713
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_666
    if-nez v71, :cond_625

    .line 715
    aget-object v6, v110, v17

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v94

    .line 716
    :cond_66e
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_625

    .line 718
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 719
    .restart local v91       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_66e

    .line 721
    const/16 v27, 0x0

    .line 722
    .restart local v27       #pq:Ljava/util/Set;
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v107

    check-cast v107, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 724
    .local v107, policies:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual/range {v107 .. v107}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v62

    .line 725
    .restart local v62       #e:Ljava/util/Enumeration;
    :cond_694
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_6ba

    .line 727
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v105

    .line 728
    .local v105, pinfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v105 .. v105}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_694

    .line 730
    invoke-virtual/range {v105 .. v105}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v27

    .line 734
    .end local v105           #pinfo:Lorg/bouncycastle/asn1/x509/PolicyInformation;
    :cond_6ba
    const/16 v29, 0x0

    .line 735
    .local v29, ci:Z
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_6cc

    .line 737
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    sget-object v7, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v29

    .line 740
    :cond_6cc
    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v26

    check-cast v26, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 741
    .local v26, p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v26 .. v26}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_625

    .line 743
    new-instance v22, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v83

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Set;

    move/from16 v24, v17

    invoke-direct/range {v22 .. v29}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    .line 747
    .local v22, c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v26

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->addChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 748
    aget-object v6, v110, v17

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_625

    .line 759
    .end local v22           #c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v26           #p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v27           #pq:Ljava/util/Set;
    .end local v29           #ci:Z
    .end local v62           #e:Ljava/util/Enumeration;
    .end local v71           #idp_found:Z
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v94           #nodes_i:Ljava/util/Iterator;
    .end local v107           #policies:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_705
    if-gtz v109, :cond_625

    .line 761
    aget-object v6, v110, v17

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v94

    .line 762
    .restart local v94       #nodes_i:Ljava/util/Iterator;
    :cond_70d
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_625

    .line 764
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 765
    .restart local v91       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_70d

    .line 767
    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getParent()Ljava/security/cert/PolicyNode;

    move-result-object v26

    check-cast v26, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 768
    .restart local v26       #p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    move-object/from16 v0, v26

    move-object/from16 v1, v91

    invoke-virtual {v0, v1}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->removeChild(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)V

    .line 769
    invoke-interface/range {v94 .. v94}, Ljava/util/Iterator;->remove()V

    .line 770
    const/4 v6, 0x1

    sub-int v80, v17, v6

    .restart local v80       #k:I
    :goto_739
    if-ltz v80, :cond_70d

    .line 772
    aget-object v93, v110, v80

    .line 773
    .restart local v93       #nodes:Ljava/util/List;
    const/16 v81, 0x0

    .local v81, l:I
    :goto_73f
    invoke-interface/range {v93 .. v93}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v81

    move v1, v6

    if-ge v0, v1, :cond_763

    .line 775
    move-object/from16 v0, v93

    move/from16 v1, v81

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v92

    check-cast v92, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 776
    .local v92, node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v92 .. v92}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_766

    .line 778
    move-object v0, v5

    move-object/from16 v1, v110

    move-object/from16 v2, v92

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 779
    if-nez v5, :cond_766

    .line 770
    .end local v92           #node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_763
    add-int/lit8 v80, v80, -0x1

    goto :goto_739

    .line 773
    .restart local v92       #node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_766
    add-int/lit8 v81, v81, 0x1

    goto :goto_73f

    .line 795
    .end local v26           #p_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v28           #id_p:Ljava/lang/String;
    .end local v78           #it_idp:Ljava/util/Iterator;
    .end local v80           #k:I
    .end local v81           #l:I
    .end local v83           #m_idp:Ljava/util/Map;
    .end local v85           #mappings:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v92           #node2:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v93           #nodes:Ljava/util/List;
    .end local v94           #nodes_i:Ljava/util/Iterator;
    .end local v113           #s_idp:Ljava/util/Set;
    :cond_769
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v90

    check-cast v90, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 796
    .local v90, ncSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v90, :cond_82e

    .line 798
    new-instance v89, Lorg/bouncycastle/asn1/x509/NameConstraints;

    invoke-direct/range {v89 .. v90}, Lorg/bouncycastle/asn1/x509/NameConstraints;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 803
    .local v89, nc:Lorg/bouncycastle/asn1/x509/NameConstraints;
    invoke-virtual/range {v89 .. v89}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v101

    .line 804
    .local v101, permitted:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v101, :cond_7d3

    .line 806
    invoke-virtual/range {v101 .. v101}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v62

    .line 807
    .restart local v62       #e:Ljava/util/Enumeration;
    :goto_782
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_7d3

    .line 809
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v116

    .line 810
    .local v116, subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual/range {v116 .. v116}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v50

    .line 812
    .local v50, base:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    sparse-switch v6, :sswitch_data_cbe

    goto :goto_782

    .line 815
    :sswitch_79c
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v103

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->intersectEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v103

    .line 816
    goto :goto_782

    .line 818
    :sswitch_7b0
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v102

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->intersectDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v102

    .line 819
    goto :goto_782

    .line 821
    :sswitch_7bf
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    move-object/from16 v0, v104

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->intersectIP(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object v104

    goto :goto_782

    .line 830
    .end local v50           #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v62           #e:Ljava/util/Enumeration;
    .end local v116           #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_7d3
    invoke-virtual/range {v89 .. v89}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v65

    .line 831
    .local v65, excluded:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v65, :cond_82e

    .line 833
    invoke-virtual/range {v65 .. v65}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v62

    .line 834
    .restart local v62       #e:Ljava/util/Enumeration;
    :goto_7dd
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_82e

    .line 836
    invoke-interface/range {v62 .. v62}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v116

    .line 837
    .restart local v116       #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    invoke-virtual/range {v116 .. v116}, Lorg/bouncycastle/asn1/x509/GeneralSubtree;->getBase()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v50

    .line 839
    .restart local v50       #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v6

    sparse-switch v6, :sswitch_data_ccc

    goto :goto_7dd

    .line 842
    :sswitch_7f7
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/DERIA5String;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERIA5String;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v67

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->unionEmail(Ljava/util/Set;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v67

    .line 843
    goto :goto_7dd

    .line 845
    :sswitch_80b
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object p2

    check-cast p2, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object/from16 v0, v66

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->unionDN(Ljava/util/Set;Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;

    move-result-object v66

    .line 846
    goto :goto_7dd

    .line 848
    :sswitch_81a
    invoke-virtual/range {v50 .. v50}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    move-object/from16 v0, v68

    move-object v1, v6

    invoke-static {v0, v1}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->unionIP(Ljava/util/Set;[B)Ljava/util/Set;

    move-result-object v68

    goto :goto_7dd

    .line 858
    .end local v50           #base:Lorg/bouncycastle/asn1/x509/GeneralName;
    .end local v62           #e:Ljava/util/Enumeration;
    .end local v65           #excluded:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v89           #nc:Lorg/bouncycastle/asn1/x509/NameConstraints;
    .end local v101           #permitted:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v116           #subtree:Lorg/bouncycastle/asn1/x509/GeneralSubtree;
    :cond_82e
    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_840

    .line 863
    if-eqz v69, :cond_838

    .line 865
    add-int/lit8 v69, v69, -0x1

    .line 871
    :cond_838
    if-eqz v109, :cond_83c

    .line 873
    add-int/lit8 v109, v109, -0x1

    .line 879
    :cond_83c
    if-eqz v73, :cond_840

    .line 881
    add-int/lit8 v73, v73, -0x1

    .line 888
    :cond_840
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v100

    check-cast v100, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 890
    .local v100, pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v100, :cond_88c

    .line 892
    invoke-virtual/range {v100 .. v100}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v108

    .line 894
    .local v108, policyConstraints:Ljava/util/Enumeration;
    :cond_84e
    :goto_84e
    invoke-interface/range {v108 .. v108}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_88c

    .line 896
    invoke-interface/range {v108 .. v108}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 897
    .local v56, constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_cda

    goto :goto_84e

    .line 900
    :pswitch_862
    invoke-static/range {v56 .. v56}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v119

    .line 901
    .local v119, tmpInt:I
    move/from16 v0, v119

    move/from16 v1, v69

    if-ge v0, v1, :cond_84e

    .line 903
    move/from16 v69, v119

    goto :goto_84e

    .line 907
    .end local v119           #tmpInt:I
    :pswitch_877
    invoke-static/range {v56 .. v56}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v119

    .line 908
    .restart local v119       #tmpInt:I
    move/from16 v0, v119

    move/from16 v1, v109

    if-ge v0, v1, :cond_84e

    .line 910
    move/from16 v109, v119

    goto :goto_84e

    .line 920
    .end local v56           #constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v108           #policyConstraints:Ljava/util/Enumeration;
    .end local v119           #tmpInt:I
    :cond_88c
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v70

    check-cast v70, Lorg/bouncycastle/asn1/DERInteger;

    .line 922
    .local v70, iap:Lorg/bouncycastle/asn1/DERInteger;
    if-eqz v70, :cond_8a6

    .line 924
    invoke-virtual/range {v70 .. v70}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v34

    .line 926
    .local v34, _inhibitAnyPolicy:I
    move/from16 v0, v34

    move/from16 v1, v73

    if-ge v0, v1, :cond_8a6

    .line 928
    move/from16 v73, v34

    .line 935
    .end local v34           #_inhibitAnyPolicy:I
    :cond_8a6
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v6

    invoke-static {v6}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v51

    .line 937
    .local v51, bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    if-eqz v51, :cond_8c0

    .line 939
    invoke-virtual/range {v51 .. v51}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v6

    if-nez v6, :cond_8d0

    .line 941
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Not a CA certificate"

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 946
    :cond_8c0
    const/4 v6, 0x1

    move/from16 v0, v17

    move v1, v6

    if-ne v0, v1, :cond_8c8

    if-nez v122, :cond_8d0

    .line 948
    :cond_8c8
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Intermediate certificate lacks BasicConstraints"

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 955
    :cond_8d0
    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_8e2

    .line 957
    if-gtz v87, :cond_8e0

    .line 959
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Max path length not greater than zero"

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 962
    :cond_8e0
    add-int/lit8 v87, v87, -0x1

    .line 968
    :cond_8e2
    if-eqz v51, :cond_8f6

    .line 970
    invoke-virtual/range {v51 .. v51}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraint()Ljava/math/BigInteger;

    move-result-object v38

    .line 972
    .local v38, _pathLengthConstraint:Ljava/math/BigInteger;
    if-eqz v38, :cond_8f6

    .line 974
    invoke-virtual/range {v38 .. v38}, Ljava/math/BigInteger;->intValue()I

    move-result v39

    .line 976
    .local v39, _plc:I
    move/from16 v0, v39

    move/from16 v1, v87

    if-ge v0, v1, :cond_8f6

    .line 978
    move/from16 v87, v39

    .line 986
    .end local v38           #_pathLengthConstraint:Ljava/math/BigInteger;
    .end local v39           #_plc:I
    :cond_8f6
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v42

    .line 988
    .local v42, _usage:[Z
    if-eqz v42, :cond_911

    const/4 v6, 0x5

    aget-boolean v6, v42, v6

    if-nez v6, :cond_911

    .line 990
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Issuer certificate keyusage extension is critical an does not permit key signing.\n"

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 998
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_911
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    if-eqz v6, :cond_9ba

    .line 1000
    new-instance v59, Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v6

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1002
    .local v59, criticalExtensions:Ljava/util/Set;
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1003
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1004
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1005
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1006
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1007
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1008
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1009
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1010
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1011
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v59

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1013
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v120

    .line 1014
    .local v120, tmpIter:Ljava/util/Iterator;
    :goto_977
    invoke-interface/range {v120 .. v120}, Ljava/util/Iterator;->hasNext()Z
    :try_end_97a
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_2be .. :try_end_97a} :catch_225

    move-result v6

    if-eqz v6, :cond_9a4

    .line 1018
    :try_start_97d
    invoke-interface/range {v120 .. v120}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/security/cert/PKIXCertPathChecker;

    move-object/from16 v0, p2

    move-object v1, v11

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_98b
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_97d .. :try_end_98b} :catch_98c
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_97d .. :try_end_98b} :catch_225

    goto :goto_977

    .line 1020
    :catch_98c
    move-exception v6

    move-object/from16 v62, v6

    .line 1022
    .local v62, e:Ljava/security/cert/CertPathValidatorException;
    :try_start_98f
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v62 .. v62}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v62 .. v62}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .end local v8           #policySet:Ljava/util/Set;
    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1025
    .end local v62           #e:Ljava/security/cert/CertPathValidatorException;
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_9a4
    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9ba

    .line 1027
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Certificate has unsupported critical extension"

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 1034
    .end local v42           #_usage:[Z
    .end local v51           #bc:Lorg/bouncycastle/asn1/x509/BasicConstraints;
    .end local v59           #criticalExtensions:Ljava/util/Set;
    .end local v70           #iap:Lorg/bouncycastle/asn1/DERInteger;
    .end local v90           #ncSeq:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v100           #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v106           #pm:Lorg/bouncycastle/asn1/DERObject;
    .end local v120           #tmpIter:Ljava/util/Iterator;
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_9ba
    move-object v13, v11

    .line 1035
    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_9be
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_98f .. :try_end_9be} :catch_225

    move-result-object v14

    .line 1038
    :try_start_9bf
    invoke-static {v13}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    :try_end_9c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9bf .. :try_end_9c2} :catch_9d3
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9bf .. :try_end_9c2} :catch_225

    move-result-object v127

    .line 1044
    :try_start_9c3
    invoke-static {v14}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v126

    .line 1045
    invoke-virtual/range {v126 .. v126}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v128

    .line 1046
    invoke-virtual/range {v126 .. v126}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v129

    .line 307
    add-int/lit8 v72, v72, -0x1

    goto/16 :goto_1ae

    .line 1040
    :catch_9d3
    move-exception v64

    .line 1042
    .restart local v64       #ex:Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v8

    .end local v8           #policySet:Ljava/util/Set;
    invoke-interface {v8}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {v64 .. v64}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_9fd
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_9c3 .. :try_end_9fd} :catch_225

    .line 1061
    .end local v17           #i:I
    .end local v54           #certPolicies:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v64           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_9fd
    invoke-static {v11}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v6

    if-nez v6, :cond_a07

    if-eqz v69, :cond_a07

    .line 1063
    add-int/lit8 v69, v69, -0x1

    .line 1071
    :cond_a07
    :try_start_a07
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v11, v6}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObject;

    move-result-object v100

    check-cast v100, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1072
    .restart local v100       #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    if-eqz v100, :cond_a52

    .line 1074
    invoke-virtual/range {v100 .. v100}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v108

    .line 1076
    .restart local v108       #policyConstraints:Ljava/util/Enumeration;
    :cond_a15
    :goto_a15
    invoke-interface/range {v108 .. v108}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_a52

    .line 1078
    invoke-interface/range {v108 .. v108}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    .line 1079
    .restart local v56       #constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    invoke-virtual/range {v56 .. v56}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v6

    packed-switch v6, :pswitch_data_ce2

    goto :goto_a15

    .line 1082
    :pswitch_a29
    invoke-static/range {v56 .. v56}, Lorg/bouncycastle/asn1/DERInteger;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I
    :try_end_a34
    .catch Lorg/bouncycastle/jce/provider/AnnotatedException; {:try_start_a07 .. :try_end_a34} :catch_a3a

    move-result v119

    .line 1083
    .restart local v119       #tmpInt:I
    if-nez v119, :cond_a15

    .line 1085
    const/16 v69, 0x0

    goto :goto_a15

    .line 1092
    .end local v56           #constraint:Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .end local v100           #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v108           #policyConstraints:Ljava/util/Enumeration;
    .end local v119           #tmpInt:I
    :catch_a3a
    move-exception v6

    move-object/from16 v62, v6

    .line 1094
    .local v62, e:Lorg/bouncycastle/jce/provider/AnnotatedException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v62 .. v62}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v62 .. v62}, Lorg/bouncycastle/jce/provider/AnnotatedException;->getUnderlyingException()Ljava/lang/Exception;

    move-result-object v8

    .end local v8           #policySet:Ljava/util/Set;
    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1104
    .end local v62           #e:Lorg/bouncycastle/jce/provider/AnnotatedException;
    .restart local v8       #policySet:Ljava/util/Set;
    .restart local v100       #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    :cond_a52
    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v59

    .line 1106
    .restart local v59       #criticalExtensions:Ljava/util/Set;
    if-eqz v59, :cond_ae4

    .line 1108
    new-instance v60, Ljava/util/HashSet;

    move-object/from16 v0, v60

    move-object/from16 v1, v59

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1110
    .end local v59           #criticalExtensions:Ljava/util/Set;
    .local v60, criticalExtensions:Ljava/util/Set;
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->KEY_USAGE:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1111
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->CERTIFICATE_POLICIES:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1112
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_MAPPINGS:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1113
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1114
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1115
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1116
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->POLICY_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1117
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->BASIC_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1118
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1119
    sget-object v6, Lorg/bouncycastle/jce/provider/PKIXCertPathValidatorSpi;->NAME_CONSTRAINTS:Ljava/lang/String;

    move-object/from16 v0, v60

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-object/from16 v59, v60

    .line 1126
    .end local v60           #criticalExtensions:Ljava/util/Set;
    .restart local v59       #criticalExtensions:Ljava/util/Set;
    :goto_ab3
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v120

    .line 1127
    .end local p0
    .restart local v120       #tmpIter:Ljava/util/Iterator;
    :goto_ab7
    invoke-interface/range {v120 .. v120}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_aea

    .line 1131
    :try_start_abd
    invoke-interface/range {v120 .. v120}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/PKIXCertPathChecker;

    move-object/from16 v0, p0

    move-object v1, v11

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_acb
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_abd .. :try_end_acb} :catch_acc

    goto :goto_ab7

    .line 1133
    :catch_acc
    move-exception v6

    move-object/from16 v62, v6

    .line 1135
    .local v62, e:Ljava/security/cert/CertPathValidatorException;
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    invoke-virtual/range {v62 .. v62}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v62 .. v62}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    .end local v8           #policySet:Ljava/util/Set;
    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v6

    .line 1123
    .end local v62           #e:Ljava/security/cert/CertPathValidatorException;
    .end local v120           #tmpIter:Ljava/util/Iterator;
    .restart local v8       #policySet:Ljava/util/Set;
    .restart local p0
    :cond_ae4
    new-instance v59, Ljava/util/HashSet;

    .end local v59           #criticalExtensions:Ljava/util/Set;
    invoke-direct/range {v59 .. v59}, Ljava/util/HashSet;-><init>()V

    .restart local v59       #criticalExtensions:Ljava/util/Set;
    goto :goto_ab3

    .line 1139
    .end local p0
    .restart local v120       #tmpIter:Ljava/util/Iterator;
    :cond_aea
    invoke-interface/range {v59 .. v59}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b00

    .line 1141
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Certificate has unsupported critical extension"

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 1154
    .restart local v8       #policySet:Ljava/util/Set;
    :cond_b00
    if-nez v5, :cond_b22

    .line 1156
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_b10

    .line 1158
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Explicit policy requested but none available."

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1160
    :cond_b10
    const/16 v74, 0x0

    .line 1300
    .local v74, intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :goto_b12
    if-gtz v69, :cond_b16

    if-eqz v74, :cond_c9c

    .line 1302
    :cond_b16
    new-instance v6, Ljava/security/cert/PKIXCertPathValidatorResult;

    move-object v0, v6

    move-object/from16 v1, v121

    move-object/from16 v2, v74

    move-object v3, v14

    invoke-direct {v0, v1, v2, v3}, Ljava/security/cert/PKIXCertPathValidatorResult;-><init>(Ljava/security/cert/TrustAnchor;Ljava/security/cert/PolicyNode;Ljava/security/PublicKey;)V

    return-object v6

    .line 1162
    .end local v74           #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b22
    invoke-static/range {v124 .. v124}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v6

    if-eqz v6, :cond_be0

    .line 1164
    invoke-virtual/range {v98 .. v98}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v6

    if-eqz v6, :cond_bdc

    .line 1166
    invoke-interface/range {v47 .. v47}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_b3c

    .line 1168
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Explicit policy requested but none available."

    invoke-direct {v6, v7}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1172
    :cond_b3c
    new-instance v44, Ljava/util/HashSet;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashSet;-><init>()V

    .line 1174
    .local v44, _validPolicyNodeSet:Ljava/util/Set;
    const/16 v79, 0x0

    :goto_b43
    move-object/from16 v0, v110

    array-length v0, v0

    move v6, v0

    move/from16 v0, v79

    move v1, v6

    if-ge v0, v1, :cond_b8a

    .line 1176
    aget-object v36, v110, v79

    .line 1178
    .local v36, _nodeDepth:Ljava/util/List;
    const/16 v80, 0x0

    .restart local v80       #k:I
    :goto_b50
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v80

    move v1, v6

    if-ge v0, v1, :cond_b87

    .line 1180
    move-object/from16 v0, v36

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1182
    .restart local v19       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b84

    .line 1184
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v35

    .line 1185
    .local v35, _iter:Ljava/util/Iterator;
    :goto_b73
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b84

    .line 1187
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object/from16 v0, v44

    move-object v1, v6

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b73

    .line 1178
    .end local v35           #_iter:Ljava/util/Iterator;
    :cond_b84
    add-int/lit8 v80, v80, 0x1

    goto :goto_b50

    .line 1174
    .end local v19           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_b87
    add-int/lit8 v79, v79, 0x1

    goto :goto_b43

    .line 1193
    .end local v36           #_nodeDepth:Ljava/util/List;
    .end local v80           #k:I
    :cond_b8a
    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 1194
    .local v45, _vpnsIter:Ljava/util/Iterator;
    :cond_b8e
    :goto_b8e
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_ba9

    .line 1196
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1197
    .restart local v19       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v43

    .line 1199
    .local v43, _validPolicy:Ljava/lang/String;
    move-object/from16 v0, v47

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b8e

    goto :goto_b8e

    .line 1204
    .end local v19           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v43           #_validPolicy:Ljava/lang/String;
    :cond_ba9
    if-eqz v5, :cond_bdc

    .line 1206
    const/4 v6, 0x1

    sub-int v79, v88, v6

    :goto_bae
    if-ltz v79, :cond_bdc

    .line 1208
    aget-object v93, v110, v79

    .line 1210
    .restart local v93       #nodes:Ljava/util/List;
    const/16 v80, 0x0

    .restart local v80       #k:I
    :goto_bb4
    invoke-interface/range {v93 .. v93}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v80

    move v1, v6

    if-ge v0, v1, :cond_bd9

    .line 1212
    move-object/from16 v0, v93

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1213
    .restart local v91       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_bd6

    .line 1215
    move-object v0, v5

    move-object/from16 v1, v110

    move-object/from16 v2, v91

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 1210
    :cond_bd6
    add-int/lit8 v80, v80, 0x1

    goto :goto_bb4

    .line 1206
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_bd9
    add-int/lit8 v79, v79, -0x1

    goto :goto_bae

    .line 1223
    .end local v44           #_validPolicyNodeSet:Ljava/util/Set;
    .end local v45           #_vpnsIter:Ljava/util/Iterator;
    .end local v80           #k:I
    .end local v93           #nodes:Ljava/util/List;
    :cond_bdc
    move-object/from16 v74, v5

    .restart local v74       #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_b12

    .line 1237
    .end local v74           #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_be0
    new-instance v44, Ljava/util/HashSet;

    invoke-direct/range {v44 .. v44}, Ljava/util/HashSet;-><init>()V

    .line 1239
    .restart local v44       #_validPolicyNodeSet:Ljava/util/Set;
    const/16 v79, 0x0

    :goto_be7
    move-object/from16 v0, v110

    array-length v0, v0

    move v6, v0

    move/from16 v0, v79

    move v1, v6

    if-ge v0, v1, :cond_c3d

    .line 1241
    aget-object v36, v110, v79

    .line 1243
    .restart local v36       #_nodeDepth:Ljava/util/List;
    const/16 v80, 0x0

    .restart local v80       #k:I
    :goto_bf4
    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v80

    move v1, v6

    if-ge v0, v1, :cond_c3a

    .line 1245
    move-object/from16 v0, v36

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1247
    .restart local v19       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c37

    .line 1249
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v35

    .line 1250
    .restart local v35       #_iter:Ljava/util/Iterator;
    :cond_c17
    :goto_c17
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c37

    .line 1252
    invoke-interface/range {v35 .. v35}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1253
    .local v30, _c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    const-string v6, "2.5.29.32.0"

    invoke-virtual/range {v30 .. v30}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c17

    .line 1255
    move-object/from16 v0, v44

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_c17

    .line 1243
    .end local v30           #_c_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v35           #_iter:Ljava/util/Iterator;
    :cond_c37
    add-int/lit8 v80, v80, 0x1

    goto :goto_bf4

    .line 1239
    .end local v19           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c3a
    add-int/lit8 v79, v79, 0x1

    goto :goto_be7

    .line 1265
    .end local v36           #_nodeDepth:Ljava/util/List;
    .end local v80           #k:I
    :cond_c3d
    invoke-interface/range {v44 .. v44}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .line 1266
    .restart local v45       #_vpnsIter:Ljava/util/Iterator;
    :cond_c41
    :goto_c41
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c65

    .line 1268
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1269
    .restart local v19       #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v19 .. v19}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v43

    .line 1271
    .restart local v43       #_validPolicy:Ljava/lang/String;
    move-object/from16 v0, v124

    move-object/from16 v1, v43

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c41

    .line 1273
    move-object v0, v5

    move-object/from16 v1, v110

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    goto :goto_c41

    .line 1280
    .end local v19           #_node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v43           #_validPolicy:Ljava/lang/String;
    :cond_c65
    if-eqz v5, :cond_c98

    .line 1282
    const/4 v6, 0x1

    sub-int v79, v88, v6

    :goto_c6a
    if-ltz v79, :cond_c98

    .line 1284
    aget-object v93, v110, v79

    .line 1286
    .restart local v93       #nodes:Ljava/util/List;
    const/16 v80, 0x0

    .restart local v80       #k:I
    :goto_c70
    invoke-interface/range {v93 .. v93}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v80

    move v1, v6

    if-ge v0, v1, :cond_c95

    .line 1288
    move-object/from16 v0, v93

    move/from16 v1, v80

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v91

    check-cast v91, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    .line 1289
    .restart local v91       #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    invoke-virtual/range {v91 .. v91}, Lorg/bouncycastle/jce/provider/PKIXPolicyNode;->hasChildren()Z

    move-result v6

    if-nez v6, :cond_c92

    .line 1291
    move-object v0, v5

    move-object/from16 v1, v110

    move-object/from16 v2, v91

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/jce/provider/CertPathValidatorUtilities;->removePolicyNode(Lorg/bouncycastle/jce/provider/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/jce/provider/PKIXPolicyNode;)Lorg/bouncycastle/jce/provider/PKIXPolicyNode;

    move-result-object v5

    .line 1286
    :cond_c92
    add-int/lit8 v80, v80, 0x1

    goto :goto_c70

    .line 1282
    .end local v91           #node:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    :cond_c95
    add-int/lit8 v79, v79, -0x1

    goto :goto_c6a

    .line 1297
    .end local v80           #k:I
    .end local v93           #nodes:Ljava/util/List;
    :cond_c98
    move-object/from16 v74, v5

    .restart local v74       #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    goto/16 :goto_b12

    .line 1305
    .end local v44           #_validPolicyNodeSet:Ljava/util/Set;
    .end local v45           #_vpnsIter:Ljava/util/Iterator;
    :cond_c9c
    new-instance v6, Ljava/security/cert/CertPathValidatorException;

    const-string v7, "Path processing failed on policy."

    const/4 v8, 0x0

    move-object v0, v6

    move-object v1, v7

    move-object v2, v8

    move-object/from16 v3, p1

    move/from16 v4, v72

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    .end local v8           #policySet:Ljava/util/Set;
    throw v6

    .line 258
    .end local v11           #cert:Ljava/security/cert/X509Certificate;
    .end local v53           #certIter:Ljava/util/Iterator;
    .end local v59           #criticalExtensions:Ljava/util/Set;
    .end local v74           #intersection:Lorg/bouncycastle/jce/provider/PKIXPolicyNode;
    .end local v87           #maxPathLength:I
    .end local v99           #pathCheckers:Ljava/util/List;
    .end local v100           #pc:Lorg/bouncycastle/asn1/ASN1Sequence;
    .end local v120           #tmpIter:Ljava/util/Iterator;
    .end local v126           #workingAlgId:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .end local v128           #workingPublicKeyAlgorithm:Lorg/bouncycastle/asn1/DERObjectIdentifier;
    .end local v129           #workingPublicKeyParameters:Lorg/bouncycastle/asn1/DEREncodable;
    .restart local v8       #policySet:Ljava/util/Set;
    .restart local p0
    .restart local p2
    :catch_cac
    move-exception v6

    goto/16 :goto_115

    .line 408
    nop

    :sswitch_data_cb0
    .sparse-switch
        0x1 -> :sswitch_300
        0x4 -> :sswitch_31b
        0x7 -> :sswitch_332
    .end sparse-switch

    .line 812
    :sswitch_data_cbe
    .sparse-switch
        0x1 -> :sswitch_79c
        0x4 -> :sswitch_7b0
        0x7 -> :sswitch_7bf
    .end sparse-switch

    .line 839
    :sswitch_data_ccc
    .sparse-switch
        0x1 -> :sswitch_7f7
        0x4 -> :sswitch_80b
        0x7 -> :sswitch_81a
    .end sparse-switch

    .line 897
    :pswitch_data_cda
    .packed-switch 0x0
        :pswitch_862
        :pswitch_877
    .end packed-switch

    .line 1079
    :pswitch_data_ce2
    .packed-switch 0x0
        :pswitch_a29
    .end packed-switch
.end method
