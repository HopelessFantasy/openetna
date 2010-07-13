.class public Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;
.super Ljava/lang/Object;
.source "RandomBitsSupplier.java"

# interfaces
.implements Lorg/apache/harmony/security/provider/crypto/SHA1_Data;


# static fields
.field private static bis:Ljava/io/FileInputStream;

.field private static randomFile:Ljava/io/File;

.field private static serviceAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 61
    sput-object v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->bis:Ljava/io/FileInputStream;

    .line 67
    sput-object v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    .line 76
    new-instance v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier$1;

    invoke-direct {v0}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->bis:Ljava/io/FileInputStream;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    :goto_12
    sput-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    .line 99
    return-void

    .line 98
    :cond_15
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Ljava/io/FileInputStream;)Ljava/io/FileInputStream;
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    sput-object p0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->bis:Ljava/io/FileInputStream;

    return-object p0
.end method

.method static synthetic access$102(Ljava/io/File;)Ljava/io/File;
    .registers 1
    .parameter "x0"

    .prologue
    .line 46
    sput-object p0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->randomFile:Ljava/io/File;

    return-object p0
.end method

.method private static declared-synchronized getLinuxRandomBits(I)[B
    .registers 9
    .parameter "numBytes"

    .prologue
    .line 118
    const-class v5, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;

    monitor-enter v5

    :try_start_3
    new-array v0, p0, [B
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2c

    .line 120
    .local v0, bytes:[B
    const/4 v4, 0x0

    .line 122
    .local v4, total:I
    const/4 v3, 0x0

    .line 126
    .local v3, offset:I
    :cond_7
    :try_start_7
    sget-object v6, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->bis:Ljava/io/FileInputStream;

    sub-int v7, p0, v4

    invoke-virtual {v6, v0, v3, v7}, Ljava/io/FileInputStream;->read([BII)I

    move-result v1

    .line 132
    .local v1, bytesRead:I
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2f

    .line 133
    new-instance v6, Ljava/security/ProviderException;

    const-string v7, "security.193"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2c
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1e} :catch_1e

    .line 144
    .end local v1           #bytesRead:I
    :catch_1e
    move-exception v6

    move-object v2, v6

    .line 150
    .local v2, e:Ljava/io/IOException;
    :try_start_20
    new-instance v6, Ljava/security/ProviderException;

    const-string v7, "security.194"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_2c

    .line 118
    .end local v0           #bytes:[B
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #offset:I
    .end local v4           #total:I
    :catchall_2c
    move-exception v6

    monitor-exit v5

    throw v6

    .line 137
    .restart local v0       #bytes:[B
    .restart local v1       #bytesRead:I
    .restart local v3       #offset:I
    .restart local v4       #total:I
    :cond_2f
    add-int/2addr v4, v1

    .line 138
    add-int/2addr v3, v1

    .line 140
    if-lt v4, p0, :cond_7

    .line 153
    monitor-exit v5

    return-object v0
.end method

.method public static getRandomBits(I)[B
    .registers 3
    .parameter "numBytes"

    .prologue
    .line 170
    if-gtz p0, :cond_e

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.195"

    invoke-static {v1, p0}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_e
    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    if-nez v0, :cond_1e

    .line 175
    new-instance v0, Ljava/security/ProviderException;

    const-string v1, "security.196"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 179
    :cond_1e
    invoke-static {p0}, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->getLinuxRandomBits(I)[B

    move-result-object v0

    return-object v0
.end method

.method static isServiceAvailable()Z
    .registers 1

    .prologue
    .line 106
    sget-boolean v0, Lorg/apache/harmony/security/provider/crypto/RandomBitsSupplier;->serviceAvailable:Z

    return v0
.end method
