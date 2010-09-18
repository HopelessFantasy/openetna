.class Ljava/security/KeyStore$Builder$BuilderImpl;
.super Ljava/security/KeyStore$Builder;
.source "KeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore$Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final accControlContext:Ljava/security/AccessControlContext;

.field private final fileForLoad:Ljava/io/File;

.field private isGetKeyStore:Z

.field private keyStore:Ljava/security/KeyStore;

.field private lastException:Ljava/security/KeyStoreException;

.field private protParameter:Ljava/security/KeyStore$ProtectionParameter;

.field private final providerForKeyStore:Ljava/security/Provider;

.field private final typeForKeyStore:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/security/KeyStore$ProtectionParameter;Ljava/io/File;Ljava/lang/String;Ljava/security/Provider;Ljava/security/AccessControlContext;)V
    .registers 8
    .parameter "ks"
    .parameter "pp"
    .parameter "file"
    .parameter "type"
    .parameter "provider"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 1040
    invoke-direct {p0}, Ljava/security/KeyStore$Builder;-><init>()V

    .line 1025
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 1041
    iput-object p1, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    .line 1042
    iput-object p2, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    .line 1043
    iput-object p3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    .line 1044
    iput-object p4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    .line 1045
    iput-object p5, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    .line 1046
    iput-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 1047
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    .line 1048
    iput-object p6, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->accControlContext:Ljava/security/AccessControlContext;

    .line 1049
    return-void
.end method

.method static synthetic access$200(Ljava/security/KeyStore$Builder$BuilderImpl;)Ljava/io/File;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1008
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->fileForLoad:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$300(Ljava/security/KeyStore$Builder$BuilderImpl;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 1008
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getKeyStore()Ljava/security/KeyStore;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1071
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    if-eqz v3, :cond_b

    .line 1072
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v3
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_8

    .line 1071
    :catchall_8
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1074
    :cond_b
    :try_start_b
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    if-eqz v3, :cond_16

    .line 1075
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 1076
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_8

    .line 1125
    :goto_14
    monitor-exit p0

    return-object v3

    .line 1084
    :cond_16
    :try_start_16
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    if-nez v3, :cond_41

    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    invoke-static {v3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    .line 1089
    .local v1, ks:Ljava/security/KeyStore;
    :goto_21
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v3, v3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_4b

    .line 1090
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    check-cast v3, Ljava/security/KeyStore$PasswordProtection;

    invoke-virtual {v3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 1100
    .local v2, passwd:[C
    :goto_2f
    new-instance v3, Ljava/security/KeyStore$Builder$BuilderImpl$1;

    invoke-direct {v3, p0, v1, v2}, Ljava/security/KeyStore$Builder$BuilderImpl$1;-><init>(Ljava/security/KeyStore$Builder$BuilderImpl;Ljava/security/KeyStore;[C)V

    iget-object v4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->accControlContext:Ljava/security/AccessControlContext;

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    .line 1123
    const/4 v3, 0x1

    iput-boolean v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    .line 1124
    iput-object v1, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    .line 1125
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->keyStore:Ljava/security/KeyStore;

    goto :goto_14

    .line 1084
    .end local v1           #ks:Ljava/security/KeyStore;
    .end local v2           #passwd:[C
    :cond_41
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->typeForKeyStore:Ljava/lang/String;

    iget-object v4, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->providerForKeyStore:Ljava/security/Provider;

    invoke-static {v3, v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyStore;

    move-result-object v3

    move-object v1, v3

    goto :goto_21

    .line 1092
    .restart local v1       #ks:Ljava/security/KeyStore;
    :cond_4b
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    instance-of v3, v3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v3, :cond_58

    .line 1093
    iget-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;

    invoke-static {v3}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v2

    .restart local v2       #passwd:[C
    goto :goto_2f

    .line 1096
    .end local v2           #passwd:[C
    :cond_58
    new-instance v3, Ljava/security/KeyStoreException;

    const-string v4, "security.35"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_64
    .catchall {:try_start_16 .. :try_end_64} :catchall_8
    .catch Ljava/security/KeyStoreException; {:try_start_16 .. :try_end_64} :catch_64
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_64} :catch_69

    .line 1126
    .end local v1           #ks:Ljava/security/KeyStore;
    :catch_64
    move-exception v3

    move-object v0, v3

    .line 1128
    .local v0, e:Ljava/security/KeyStoreException;
    :try_start_66
    iput-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v0

    .line 1129
    .end local v0           #e:Ljava/security/KeyStoreException;
    :catch_69
    move-exception v3

    move-object v0, v3

    .line 1131
    .local v0, e:Ljava/lang/Exception;
    new-instance v3, Ljava/security/KeyStoreException;

    invoke-direct {v3, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    iput-object v3, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->lastException:Ljava/security/KeyStoreException;

    throw v3
    :try_end_73
    .catchall {:try_start_66 .. :try_end_73} :catchall_8
.end method

.method public declared-synchronized getProtectionParameter(Ljava/lang/String;)Ljava/security/KeyStore$ProtectionParameter;
    .registers 4
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 1144
    monitor-enter p0

    if-nez p1, :cond_12

    .line 1145
    :try_start_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "security.3F"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_f

    .line 1144
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1147
    :cond_12
    :try_start_12
    iget-boolean v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->isGetKeyStore:Z

    if-nez v0, :cond_22

    .line 1148
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "security.46"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1150
    :cond_22
    iget-object v0, p0, Ljava/security/KeyStore$Builder$BuilderImpl;->protParameter:Ljava/security/KeyStore$ProtectionParameter;
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_f

    monitor-exit p0

    return-object v0
.end method
