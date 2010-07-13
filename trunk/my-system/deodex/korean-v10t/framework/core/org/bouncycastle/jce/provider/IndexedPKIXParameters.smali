.class public Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;
.super Ljava/security/cert/PKIXParameters;
.source "IndexedPKIXParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;
    }
.end annotation


# instance fields
.field final byCA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field

.field final bySubject:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field

.field final encodings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .registers 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 53
    .local p1, anchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 43
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->encodings:Ljava/util/Map;

    .line 45
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->bySubject:Ljava/util/Map;

    .line 47
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->byCA:Ljava/util/Map;

    .line 55
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 56
    .local v0, anchor:Ljava/security/cert/TrustAnchor;
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v3

    .line 58
    .local v3, cert:Ljava/security/cert/X509Certificate;
    new-instance v4, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v7

    invoke-direct {v4, v7}, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;-><init>([B)V

    .line 59
    .local v4, encoded:Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->encodings:Ljava/util/Map;

    invoke-interface {v7, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    .line 62
    .local v6, subject:Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->bySubject:Ljava/util/Map;

    invoke-interface {v7, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_5f

    .line 64
    new-instance v7, Ljava/security/KeyStoreException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two certs have the same subject: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 68
    :cond_5f
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 69
    .local v1, ca:Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->byCA:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 70
    .local v2, caAnchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v2, :cond_77

    .line 71
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #caAnchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .restart local v2       #caAnchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->byCA:Ljava/util/Map;

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    :cond_77
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 76
    .end local v0           #anchor:Ljava/security/cert/TrustAnchor;
    .end local v1           #ca:Ljavax/security/auth/x500/X500Principal;
    .end local v2           #caAnchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v3           #cert:Ljava/security/cert/X509Certificate;
    .end local v4           #encoded:Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;
    .end local v6           #subject:Ljavax/security/auth/x500/X500Principal;
    :cond_7b
    return-void
.end method


# virtual methods
.method findTrustAnchor(Ljava/security/cert/X509Certificate;Ljava/security/cert/CertPath;I)Ljava/security/cert/TrustAnchor;
    .registers 16
    .parameter "cert"
    .parameter "certPath"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;
        }
    .end annotation

    .prologue
    .line 81
    const/4 v8, 0x0

    .line 82
    .local v8, verificationException:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 84
    .local v7, issuer:Ljavax/security/auth/x500/X500Principal;
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->byCA:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 85
    .local v2, anchors:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-eqz v2, :cond_2c

    .line 86
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/TrustAnchor;

    .line 88
    .local v3, caAnchor:Ljava/security/cert/TrustAnchor;
    :try_start_1f
    invoke-virtual {v3}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_26} :catch_28

    move-object v9, v3

    .line 124
    .end local v3           #caAnchor:Ljava/security/cert/TrustAnchor;
    .end local v6           #i$:Ljava/util/Iterator;
    :goto_27
    return-object v9

    .line 90
    .restart local v3       #caAnchor:Ljava/security/cert/TrustAnchor;
    .restart local v6       #i$:Ljava/util/Iterator;
    :catch_28
    move-exception v9

    move-object v4, v9

    .line 91
    .local v4, e:Ljava/lang/Exception;
    move-object v8, v4

    .line 92
    goto :goto_13

    .line 96
    .end local v3           #caAnchor:Ljava/security/cert/TrustAnchor;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_2c
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->bySubject:Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;

    .line 97
    .local v1, anchor:Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_46

    .line 99
    :try_start_36
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v9

    invoke-virtual {v9}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_41} :catch_43

    move-object v9, v1

    .line 100
    goto :goto_27

    .line 101
    :catch_43
    move-exception v9

    move-object v4, v9

    .line 102
    .restart local v4       #e:Ljava/lang/Exception;
    move-object v8, v4

    .line 107
    .end local v4           #e:Ljava/lang/Exception;
    :cond_46
    :try_start_46
    new-instance v5, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    invoke-direct {v5, v9}, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;-><init>([B)V

    .line 108
    .local v5, encoded:Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;->encodings:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    move-object v0, v9

    check-cast v0, Ljava/security/cert/TrustAnchor;

    move-object v1, v0
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_59} :catch_5d

    .line 109
    if-eqz v1, :cond_70

    move-object v9, v1

    .line 110
    goto :goto_27

    .line 112
    .end local v5           #encoded:Lorg/bouncycastle/jce/provider/IndexedPKIXParameters$Bytes;
    :catch_5d
    move-exception v9

    move-object v4, v9

    .line 113
    .restart local v4       #e:Ljava/lang/Exception;
    const-class v9, Lorg/bouncycastle/jce/provider/IndexedPKIXParameters;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v9

    sget-object v10, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v11, "Error encoding cert."

    invoke-virtual {v9, v10, v11, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .end local v4           #e:Ljava/lang/Exception;
    :cond_70
    if-eqz v8, :cond_7a

    .line 119
    new-instance v9, Ljava/security/cert/CertPathValidatorException;

    const-string v10, "TrustAnchor found but certificate verification failed."

    invoke-direct {v9, v10, v8, p2, p3}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v9

    .line 124
    :cond_7a
    const/4 v9, 0x0

    goto :goto_27
.end method
