.class public Ljava/security/KeyStore;
.super Ljava/lang/Object;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/security/KeyStore$TrustedCertificateEntry;,
        Ljava/security/KeyStore$SecretKeyEntry;,
        Ljava/security/KeyStore$PrivateKeyEntry;,
        Ljava/security/KeyStore$ProtectionParameter;,
        Ljava/security/KeyStore$PasswordProtection;,
        Ljava/security/KeyStore$LoadStoreParameter;,
        Ljava/security/KeyStore$Entry;,
        Ljava/security/KeyStore$CallbackHandlerProtection;,
        Ljava/security/KeyStore$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEYSTORE_TYPE:Ljava/lang/String; = "jks"

.field private static NOTINITKEYSTORE:Ljava/lang/String; = null

.field private static final PROPERTYNAME:Ljava/lang/String; = "keystore.type"

.field private static final SERVICE:Ljava/lang/String; = "KeyStore"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final implSpi:Ljava/security/KeyStoreSpi;

.field private isInit:Z

.field private final provider:Ljava/security/Provider;

.field private final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 64
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "KeyStore"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "keyStoreSpi"
    .parameter "provider"
    .parameter "type"

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p3, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    .line 102
    iput-object p2, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    .line 103
    iput-object p1, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 105
    return-void
.end method

.method static synthetic access$000(Ljava/security/KeyStore;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 58
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .registers 1

    .prologue
    .line 58
    sget-object v0, Ljava/security/KeyStore;->NOTINITKEYSTORE:Ljava/lang/String;

    return-object v0
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    new-instance v1, Ljava/security/KeyStore$1;

    invoke-direct {v1}, Ljava/security/KeyStore$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    .local v0, dt:Ljava/lang/String;
    if-nez v0, :cond_10

    const-string v1, "jks"

    :goto_f
    return-object v1

    :cond_10
    move-object v1, v0

    goto :goto_f
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .parameter "type"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 134
    if-nez p0, :cond_e

    .line 135
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "security.07"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_e
    sget-object v2, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v2

    .line 139
    :try_start_11
    sget-object v1, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 140
    new-instance v3, Ljava/security/KeyStore;

    sget-object v1, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyStoreSpi;

    sget-object v4, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v4, v4, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v3, v1, v4, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_26
    .catchall {:try_start_11 .. :try_end_26} :catchall_34
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_11 .. :try_end_26} :catch_28

    :try_start_26
    monitor-exit v2

    return-object v3

    .line 141
    :catch_28
    move-exception v1

    move-object v0, v1

    .line 142
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 144
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_26 .. :try_end_36} :catchall_34

    throw v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 6
    .parameter "type"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 169
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_14

    .line 170
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.02"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 172
    :cond_14
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v1

    .line 173
    .local v1, impProvider:Ljava/security/Provider;
    if-nez v1, :cond_20

    .line 174
    new-instance v2, Ljava/security/NoSuchProviderException;

    invoke-direct {v2, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 177
    :cond_20
    :try_start_20
    invoke-static {p0, v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_25

    move-result-object v2

    return-object v2

    .line 178
    :catch_25
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;
    .registers 6
    .parameter "type"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 204
    if-nez p1, :cond_e

    .line 205
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.04"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_e
    if-nez p0, :cond_1c

    .line 208
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "security.07"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 211
    :cond_1c
    sget-object v2, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v2

    .line 213
    :try_start_1f
    sget-object v1, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, p1, v3}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 214
    new-instance v3, Ljava/security/KeyStore;

    sget-object v1, Ljava/security/KeyStore;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v1, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v1, Ljava/security/KeyStoreSpi;

    invoke-direct {v3, v1, p1, p0}, Ljava/security/KeyStore;-><init>(Ljava/security/KeyStoreSpi;Ljava/security/Provider;Ljava/lang/String;)V
    :try_end_30
    .catchall {:try_start_1f .. :try_end_30} :catchall_3e
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_30} :catch_32

    :try_start_30
    monitor-exit v2

    return-object v3

    .line 215
    :catch_32
    move-exception v1

    move-object v0, v1

    .line 217
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_3e
    move-exception v1

    monitor-exit v2
    :try_end_40
    .catchall {:try_start_30 .. :try_end_40} :catchall_3e

    throw v1
.end method

.method private static throwNotInitialized()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 112
    sget-object v0, Ljava/security/KeyStore;->NOTINITKEYSTORE:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 113
    const-string v0, "security.4F"

    invoke-static {v0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljava/security/KeyStore;->NOTINITKEYSTORE:Ljava/lang/String;

    .line 115
    :cond_c
    new-instance v0, Ljava/security/KeyStoreException;

    sget-object v1, Ljava/security/KeyStore;->NOTINITKEYSTORE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final aliases()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 484
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 486
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 489
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineAliases()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public final containsAlias(Ljava/lang/String;)Z
    .registers 4
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 503
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 505
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 508
    :cond_7
    if-nez p1, :cond_15

    .line 509
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.3F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_15
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final deleteEntry(Ljava/lang/String;)V
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 466
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 467
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 470
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public final entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 5
    .parameter "alias"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/security/KeyStore$Entry;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 801
    .local p2, entryClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    if-nez p1, :cond_e

    .line 802
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.3F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 804
    :cond_e
    if-nez p2, :cond_1c

    .line 805
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.40"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 808
    :cond_1c
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_23

    .line 810
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 813
    :cond_23
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public final getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 327
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 329
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 332
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 3
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 587
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 589
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 592
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 306
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 308
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 311
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public final getCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 347
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 349
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 352
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public final getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 5
    .parameter "alias"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 739
    if-nez p1, :cond_e

    .line 740
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.3F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 742
    :cond_e
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_15

    .line 744
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 747
    :cond_15
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v0

    return-object v0
.end method

.method public final getKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 4
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 285
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 287
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 290
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 251
    iget-object v0, p0, Ljava/security/KeyStore;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 261
    iget-object v0, p0, Ljava/security/KeyStore;->type:Ljava/lang/String;

    return-object v0
.end method

.method public final isCertificateEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 566
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 567
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 570
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final isKeyEntry(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 544
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 545
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 548
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final load(Ljava/io/InputStream;[C)V
    .registers 4
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 689
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 690
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 691
    return-void
.end method

.method public final load(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 713
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 714
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    .line 715
    return-void
.end method

.method public final setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 4
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 445
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 447
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 450
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 451
    return-void
.end method

.method public final setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 6
    .parameter "alias"
    .parameter "entry"
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 770
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 772
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 775
    :cond_7
    if-nez p1, :cond_15

    .line 776
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.3F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 778
    :cond_15
    if-nez p2, :cond_23

    .line 779
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.39"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 781
    :cond_23
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 782
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 7
    .parameter "alias"
    .parameter "key"
    .parameter "password"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 378
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 380
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 385
    :cond_7
    if-eqz p2, :cond_1e

    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_1e

    if-eqz p4, :cond_12

    array-length v0, p4

    if-nez v0, :cond_1e

    .line 387
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.52"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_1e
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 391
    return-void
.end method

.method public final setKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 5
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 419
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 421
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 424
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    .line 425
    return-void
.end method

.method public final size()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 523
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 525
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 528
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0}, Ljava/security/KeyStoreSpi;->engineSize()I

    move-result v0

    return v0
.end method

.method public final store(Ljava/io/OutputStream;[C)V
    .registers 4
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 618
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 620
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 633
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/io/OutputStream;[C)V

    .line 634
    return-void
.end method

.method public final store(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 3
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 658
    iget-boolean v0, p0, Ljava/security/KeyStore;->isInit:Z

    if-nez v0, :cond_7

    .line 660
    invoke-static {}, Ljava/security/KeyStore;->throwNotInitialized()V

    .line 663
    :cond_7
    iget-object v0, p0, Ljava/security/KeyStore;->implSpi:Ljava/security/KeyStoreSpi;

    invoke-virtual {v0, p1}, Ljava/security/KeyStoreSpi;->engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 664
    return-void
.end method
