.class public Ljava/security/cert/CertStore;
.super Ljava/lang/Object;
.source "CertStore.java"


# static fields
.field private static final DEFAULTPROPERTY:Ljava/lang/String; = "LDAP"

.field private static final PROPERTYNAME:Ljava/lang/String; = "certstore.type"

.field private static final SERVICE:Ljava/lang/String; = "CertStore"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final certStoreParams:Ljava/security/cert/CertStoreParameters;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertStoreSpi;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 45
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "CertStore"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V
    .registers 5
    .parameter "storeSpi"
    .parameter "provider"
    .parameter "type"
    .parameter "params"

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    .line 82
    iput-object p3, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    .line 83
    iput-object p1, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    .line 84
    iput-object p4, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    .line 85
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 295
    new-instance v1, Ljava/security/cert/CertStore$1;

    invoke-direct {v1}, Ljava/security/cert/CertStore$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 301
    .local v0, defaultType:Ljava/lang/String;
    if-nez v0, :cond_10

    const-string v1, "LDAP"

    :goto_f
    return-object v1

    :cond_10
    move-object v1, v0

    goto :goto_f
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;
    .registers 8
    .parameter "type"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 108
    if-nez p0, :cond_e

    .line 109
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.07"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_e
    :try_start_e
    sget-object v3, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v3
    :try_end_11
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e .. :try_end_11} :catch_2a

    .line 113
    :try_start_11
    sget-object v2, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 114
    new-instance v4, Ljava/security/cert/CertStore;

    sget-object v2, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertStoreSpi;

    sget-object v5, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v5, v5, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v4, v2, v5, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    monitor-exit v3

    return-object v4

    .line 116
    :catchall_27
    move-exception v2

    monitor-exit v3
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_27

    :try_start_29
    throw v2
    :try_end_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_29 .. :try_end_2a} :catch_2a

    .line 117
    :catch_2a
    move-exception v2

    move-object v0, v2

    .line 118
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 119
    .local v1, th:Ljava/lang/Throwable;
    if-nez v1, :cond_33

    .line 120
    throw v0

    .line 122
    :cond_33
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/lang/String;)Ljava/security/cert/CertStore;
    .registers 6
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 156
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 157
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.02"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 159
    :cond_14
    invoke-static {p2}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 160
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_20

    .line 161
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 163
    :cond_20
    invoke-static {p0, p1, v0}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;Ljava/security/Provider;)Ljava/security/cert/CertStore;
    .registers 8
    .parameter "type"
    .parameter "params"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 191
    if-nez p2, :cond_e

    .line 192
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.04"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 194
    :cond_e
    if-nez p0, :cond_1c

    .line 195
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.07"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 198
    :cond_1c
    :try_start_1c
    sget-object v3, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v3
    :try_end_1f
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1c .. :try_end_1f} :catch_34

    .line 199
    :try_start_1f
    sget-object v2, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    invoke-virtual {v2, p0, p2, p1}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 200
    new-instance v4, Ljava/security/cert/CertStore;

    sget-object v2, Ljava/security/cert/CertStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v2, v2, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v2, Ljava/security/cert/CertStoreSpi;

    invoke-direct {v4, v2, p2, p0, p1}, Ljava/security/cert/CertStore;-><init>(Ljava/security/cert/CertStoreSpi;Ljava/security/Provider;Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)V

    monitor-exit v3

    return-object v4

    .line 202
    :catchall_31
    move-exception v2

    monitor-exit v3
    :try_end_33
    .catchall {:try_start_1f .. :try_end_33} :catchall_31

    :try_start_33
    throw v2
    :try_end_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_33 .. :try_end_34} :catch_34

    .line 203
    :catch_34
    move-exception v2

    move-object v0, v2

    .line 204
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 205
    .local v1, th:Ljava/lang/Throwable;
    if-nez v1, :cond_3d

    .line 206
    throw v0

    .line 208
    :cond_3d
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public final getCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;
    .registers 3
    .parameter "selector"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CRLSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCRLs(Ljava/security/cert/CRLSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getCertStoreParameters()Ljava/security/cert/CertStoreParameters;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    if-nez v0, :cond_6

    .line 243
    const/4 v0, 0x0

    .line 245
    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Ljava/security/cert/CertStore;->certStoreParams:Ljava/security/cert/CertStoreParameters;

    invoke-interface {v0}, Ljava/security/cert/CertStoreParameters;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/CertStoreParameters;

    move-object v0, p0

    goto :goto_5
.end method

.method public final getCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;
    .registers 3
    .parameter "selector"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/CertSelector;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertStoreException;
        }
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Ljava/security/cert/CertStore;->spiImpl:Ljava/security/cert/CertStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/cert/CertStoreSpi;->engineGetCertificates(Ljava/security/cert/CertSelector;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 230
    iget-object v0, p0, Ljava/security/cert/CertStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 220
    iget-object v0, p0, Ljava/security/cert/CertStore;->type:Ljava/lang/String;

    return-object v0
.end method
