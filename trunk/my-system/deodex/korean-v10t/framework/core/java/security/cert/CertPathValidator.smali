.class public Ljava/security/cert/CertPathValidator;
.super Ljava/lang/Object;
.source "CertPathValidator.java"


# static fields
.field private static final DEFAULTPROPERTY:Ljava/lang/String; = "PKIX"

.field private static final PROPERTYNAME:Ljava/lang/String; = "certpathvalidator.type"

.field private static final SERVICE:Ljava/lang/String; = "CertPathValidator"

.field private static engine:Lorg/apache/harmony/security/fortress/Engine;


# instance fields
.field private final algorithm:Ljava/lang/String;

.field private final provider:Ljava/security/Provider;

.field private final spiImpl:Ljava/security/cert/CertPathValidatorSpi;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "CertPathValidator"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 4
    .parameter "validatorSpi"
    .parameter "provider"
    .parameter "algorithm"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p2, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    .line 75
    iput-object p3, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Ljava/security/cert/CertPathValidator;->spiImpl:Ljava/security/cert/CertPathValidatorSpi;

    .line 77
    return-void
.end method

.method public static final getDefaultType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 224
    new-instance v1, Ljava/security/cert/CertPathValidator$1;

    invoke-direct {v1}, Ljava/security/cert/CertPathValidator$1;-><init>()V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 230
    .local v0, defaultType:Ljava/lang/String;
    if-eqz v0, :cond_f

    move-object v1, v0

    :goto_e
    return-object v1

    :cond_f
    const-string v1, "PKIX"

    goto :goto_e
.end method

.method public static getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    .registers 5
    .parameter "algorithm"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 113
    if-nez p0, :cond_e

    .line 114
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_e
    sget-object v1, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 117
    :try_start_11
    sget-object v0, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    new-instance v2, Ljava/security/cert/CertPathValidator;

    sget-object v0, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/cert/CertPathValidatorSpi;

    sget-object v3, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v3, v3, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v2, v0, v3, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 120
    :catchall_28
    move-exception v0

    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_11 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method public static getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertPathValidator;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_14

    .line 147
    :cond_8
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "security.02"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 149
    :cond_14
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 150
    .local v0, impProvider:Ljava/security/Provider;
    if-nez v0, :cond_20

    .line 151
    new-instance v1, Ljava/security/NoSuchProviderException;

    invoke-direct {v1, p1}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_20
    invoke-static {p0, v0}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathValidator;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/cert/CertPathValidator;
    .registers 5
    .parameter "algorithm"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p1, :cond_e

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.04"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_e
    if-nez p0, :cond_1c

    .line 180
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.01"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 182
    :cond_1c
    sget-object v1, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    monitor-enter v1

    .line 183
    :try_start_1f
    sget-object v0, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v2, 0x0

    invoke-virtual {v0, p0, p1, v2}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    .line 184
    new-instance v2, Ljava/security/cert/CertPathValidator;

    sget-object v0, Ljava/security/cert/CertPathValidator;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v0, v0, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v0, Ljava/security/cert/CertPathValidatorSpi;

    invoke-direct {v2, v0, p1, p0}, Ljava/security/cert/CertPathValidator;-><init>(Ljava/security/cert/CertPathValidatorSpi;Ljava/security/Provider;Ljava/lang/String;)V

    monitor-exit v1

    return-object v2

    .line 186
    :catchall_32
    move-exception v0

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_1f .. :try_end_34} :catchall_32

    throw v0
.end method


# virtual methods
.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    .registers 4
    .parameter "certPath"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertPathValidatorException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 211
    iget-object v0, p0, Ljava/security/cert/CertPathValidator;->spiImpl:Ljava/security/cert/CertPathValidatorSpi;

    invoke-virtual {v0, p1, p2}, Ljava/security/cert/CertPathValidatorSpi;->engineValidate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;

    move-result-object v0

    return-object v0
.end method
