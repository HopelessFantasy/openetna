.class public Ljava/security/cert/PKIXParameters;
.super Ljava/lang/Object;
.source "PKIXParameters.java"

# interfaces
.implements Ljava/security/cert/CertPathParameters;


# instance fields
.field private anyPolicyInhibited:Z

.field private certPathCheckers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation
.end field

.field private certStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/util/Date;

.field private explicitPolicyRequired:Z

.field private initialPolicies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private policyMappingInhibited:Z

.field private policyQualifiersRejected:Z

.field private revocationEnabled:Z

.field private sigProvider:Ljava/lang/String;

.field private targetCertConstraints:Ljava/security/cert/CertSelector;

.field private trustAnchors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/security/KeyStore;)V
    .registers 8
    .parameter "keyStore"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 64
    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 66
    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 68
    iput-boolean v3, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 72
    iput-boolean v4, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 109
    if-nez p1, :cond_1d

    .line 110
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "security.41"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 114
    :cond_1d
    invoke-virtual {p1}, Ljava/security/KeyStore;->size()I

    move-result v3

    if-nez v3, :cond_2f

    .line 115
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    const-string v4, "security.6A"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 119
    :cond_2f
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    .line 120
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .local v2, i:Ljava/util/Enumeration;
    :cond_3a
    :goto_3a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 121
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 122
    .local v0, alias:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->isCertificateEntry(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3a

    .line 125
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    .line 128
    .local v1, c:Ljava/security/cert/Certificate;
    instance-of v3, v1, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_3a

    .line 129
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    new-instance v4, Ljava/security/cert/TrustAnchor;

    check-cast v1, Ljava/security/cert/X509Certificate;

    .end local v1           #c:Ljava/security/cert/Certificate;
    const/4 v5, 0x0

    invoke-direct {v4, v1, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 133
    .end local v0           #alias:Ljava/lang/String;
    :cond_62
    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    invoke-direct {p0, v3}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .registers 4
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
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .local p1, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 64
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 66
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 68
    iput-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 72
    iput-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 86
    if-nez p1, :cond_1d

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.6F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_1d
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    .line 91
    return-void
.end method

.method private checkTrustAnchors(Ljava/util/Set;)V
    .registers 5
    .parameter "trustAnchors"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 644
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 645
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "security.6D"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 649
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/TrustAnchor;

    if-nez v1, :cond_16

    .line 650
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "security.6E"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 654
    :cond_30
    return-void
.end method


# virtual methods
.method public addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V
    .registers 3
    .parameter "checker"

    .prologue
    .line 260
    if-nez p1, :cond_3

    .line 270
    .end local p0
    :goto_2
    return-void

    .line 264
    .restart local p0
    :cond_3
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-nez v0, :cond_e

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 269
    :cond_e
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {p1}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public addCertStore(Ljava/security/cert/CertStore;)V
    .registers 3
    .parameter "store"

    .prologue
    .line 331
    if-nez p1, :cond_3

    .line 341
    :goto_2
    return-void

    .line 335
    :cond_3
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-nez v0, :cond_e

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 340
    :cond_e
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public clone()Ljava/lang/Object;
    .registers 5

    .prologue
    .line 580
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXParameters;

    .line 582
    .local v1, ret:Ljava/security/cert/PKIXParameters;
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v2, :cond_13

    .line 583
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 585
    :cond_13
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v2, :cond_20

    .line 586
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, v1, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;
    :try_end_20
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_20} :catch_21

    .line 588
    :cond_20
    return-object v1

    .line 589
    .end local v1           #ret:Ljava/security/cert/PKIXParameters;
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 590
    .local v0, e:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCertPathCheckers()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-nez v2, :cond_b

    .line 203
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 205
    :cond_b
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 209
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    .line 218
    .end local p0
    :goto_19
    return-object v2

    .line 212
    .restart local p0
    :cond_1a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    .local v1, modifiableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/PKIXCertPathChecker;>;"
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    .end local p0
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 216
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {p0}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_25

    .line 218
    :cond_3b
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    goto :goto_19
.end method

.method public getCertStores()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;"
        }
    .end annotation

    .prologue
    .line 280
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-nez v1, :cond_b

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 284
    :cond_b
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 288
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 293
    :goto_19
    return-object v1

    .line 291
    :cond_1a
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 293
    .local v0, modifiableList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/security/cert/CertStore;>;"
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    goto :goto_19
.end method

.method public getDate()Ljava/util/Date;
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    goto :goto_5
.end method

.method public getInitialPolicies()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 402
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    if-nez v1, :cond_b

    .line 404
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    .line 406
    :cond_b
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 410
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    .line 414
    :goto_19
    return-object v1

    .line 413
    :cond_1a
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 414
    .local v0, modifiableSet:Ljava/util/HashSet;
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    goto :goto_19
.end method

.method public getPolicyQualifiersRejected()Z
    .registers 2

    .prologue
    .line 478
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    return v0
.end method

.method public getSigProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 527
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetCertConstraints()Ljava/security/cert/CertSelector;
    .registers 2

    .prologue
    .line 554
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    invoke-interface {v0}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/CertSelector;

    move-object v0, p0

    goto :goto_5
.end method

.method public getTrustAnchors()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public isAnyPolicyInhibited()Z
    .registers 2

    .prologue
    .line 175
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    return v0
.end method

.method public isExplicitPolicyRequired()Z
    .registers 2

    .prologue
    .line 377
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    return v0
.end method

.method public isPolicyMappingInhibited()Z
    .registers 2

    .prologue
    .line 454
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    return v0
.end method

.method public isRevocationEnabled()Z
    .registers 2

    .prologue
    .line 503
    iget-boolean v0, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    return v0
.end method

.method public setAnyPolicyInhibited(Z)V
    .registers 2
    .parameter "anyPolicyInhibited"

    .prologue
    .line 188
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    .line 189
    return-void
.end method

.method public setCertPathCheckers(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/PKIXCertPathChecker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 233
    .local p1, certPathCheckers:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 235
    :cond_8
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v1, :cond_17

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 248
    :cond_17
    return-void

    .line 243
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    .line 244
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 245
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/security/cert/PKIXCertPathChecker;>;"
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 246
    iget-object v2, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1}, Ljava/security/cert/PKIXCertPathChecker;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_23
.end method

.method public setCertStores(Ljava/util/List;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/CertStore;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 304
    .local p1, certStores:Ljava/util/List;,"Ljava/util/List<Ljava/security/cert/CertStore;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 306
    :cond_8
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v1, :cond_17

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 308
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 320
    :cond_17
    return-void

    .line 313
    :cond_18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    .line 315
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 316
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertStore;

    if-nez v1, :cond_25

    .line 317
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "security.6B"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setDate(Ljava/util/Date;)V
    .registers 5
    .parameter "date"

    .prologue
    .line 365
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    .line 366
    return-void

    .line 365
    :cond_6
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_3
.end method

.method public setExplicitPolicyRequired(Z)V
    .registers 2
    .parameter "explicitPolicyRequired"

    .prologue
    .line 390
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    .line 391
    return-void
.end method

.method public setInitialPolicies(Ljava/util/Set;)V
    .registers 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, initialPolicies:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 429
    :cond_8
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    if-eqz v1, :cond_17

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 432
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    .line 444
    :cond_17
    return-void

    .line 437
    :cond_18
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    .line 439
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 440
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/String;

    if-nez v1, :cond_25

    .line 441
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "security.6C"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPolicyMappingInhibited(Z)V
    .registers 2
    .parameter "policyMappingInhibited"

    .prologue
    .line 466
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    .line 467
    return-void
.end method

.method public setPolicyQualifiersRejected(Z)V
    .registers 2
    .parameter "policyQualifiersRejected"

    .prologue
    .line 491
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    .line 492
    return-void
.end method

.method public setRevocationEnabled(Z)V
    .registers 2
    .parameter "revocationEnabled"

    .prologue
    .line 516
    iput-boolean p1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    .line 517
    return-void
.end method

.method public setSigProvider(Ljava/lang/String;)V
    .registers 2
    .parameter "sigProvider"

    .prologue
    .line 543
    iput-object p1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    .line 544
    return-void
.end method

.method public setTargetCertConstraints(Ljava/security/cert/CertSelector;)V
    .registers 3
    .parameter "targetCertConstraints"

    .prologue
    .line 567
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    .line 569
    return-void

    .line 567
    :cond_6
    invoke-interface {p1}, Ljava/security/cert/CertSelector;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/CertSelector;

    goto :goto_3
.end method

.method public setTrustAnchors(Ljava/util/Set;)V
    .registers 4
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
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 157
    .local p1, trustAnchors:Ljava/util/Set;,"Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    if-nez p1, :cond_e

    .line 158
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.6F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :cond_e
    invoke-direct {p0, p1}, Ljava/security/cert/PKIXParameters;->checkTrustAnchors(Ljava/util/Set;)V

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    .line 164
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const-string v2, "no"

    .line 601
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "[\n Trust Anchors: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 603
    .local v0, sb:Ljava/lang/StringBuffer;
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->trustAnchors:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 604
    const-string v1, "\n Revocation Enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 605
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->revocationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 606
    const-string v1, "\n Explicit Policy Required: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 607
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->explicitPolicyRequired:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 608
    const-string v1, "\n Policy Mapping Inhibited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 609
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyMappingInhibited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 610
    const-string v1, "\n Any Policy Inhibited: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 611
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->anyPolicyInhibited:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 612
    const-string v1, "\n Policy Qualifiers Rejected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 613
    iget-boolean v1, p0, Ljava/security/cert/PKIXParameters;->policyQualifiersRejected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    .line 614
    const-string v1, "\n Initial Policy OIDs: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 615
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    if-eqz v1, :cond_51

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ac

    :cond_51
    const-string v1, "any"

    :goto_53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 617
    const-string v1, "\n Cert Stores: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 618
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    if-eqz v1, :cond_67

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b3

    :cond_67
    const-string v1, "no"

    move-object v1, v2

    :goto_6a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 620
    const-string v1, "\n Validity Date: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 621
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->date:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 622
    const-string v1, "\n Cert Path Checkers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 623
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    if-eqz v1, :cond_88

    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ba

    :cond_88
    const-string v1, "no"

    move-object v1, v2

    :goto_8b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 625
    const-string v1, "\n Signature Provider: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 626
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->sigProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 627
    const-string v1, "\n Target Certificate Constraints: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 628
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->targetCertConstraints:Ljava/security/cert/CertSelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 629
    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 615
    :cond_ac
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->initialPolicies:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_53

    .line 618
    :cond_b3
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certStores:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6a

    .line 623
    :cond_ba
    iget-object v1, p0, Ljava/security/cert/PKIXParameters;->certPathCheckers:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8b
.end method
