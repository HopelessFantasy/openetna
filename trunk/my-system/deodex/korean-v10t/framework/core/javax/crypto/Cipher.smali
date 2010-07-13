.class public Ljavax/crypto/Cipher;
.super Ljava/lang/Object;
.source "Cipher.java"


# static fields
.field public static final DECRYPT_MODE:I = 0x2

.field public static final ENCRYPT_MODE:I = 0x1

.field public static final PRIVATE_KEY:I = 0x2

.field public static final PUBLIC_KEY:I = 0x1

.field public static final SECRET_KEY:I = 0x3

.field private static final SERVICE:Ljava/lang/String; = "Cipher"

.field public static final UNWRAP_MODE:I = 0x4

.field public static final WRAP_MODE:I = 0x3

.field private static final engine:Lorg/apache/harmony/security/fortress/Engine;

.field private static sec_rand:Ljava/security/SecureRandom;


# instance fields
.field private mode:I

.field private provider:Ljava/security/Provider;

.field private spiImpl:Ljavax/crypto/CipherSpi;

.field private transformation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 129
    new-instance v0, Lorg/apache/harmony/security/fortress/Engine;

    const-string v1, "Cipher"

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/fortress/Engine;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljavax/crypto/Cipher;->engine:Lorg/apache/harmony/security/fortress/Engine;

    return-void
.end method

.method protected constructor <init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V
    .registers 5
    .parameter "cipherSpi"
    .parameter "provider"
    .parameter "transformation"

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    if-nez p1, :cond_b

    .line 165
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 167
    :cond_b
    instance-of v0, p1, Lorg/apache/harmony/crypto/internal/NullCipherSpi;

    if-nez v0, :cond_17

    if-nez p2, :cond_17

    .line 168
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 170
    :cond_17
    iput-object p2, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    .line 171
    iput-object p3, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    .line 172
    iput-object p1, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    .line 173
    return-void
.end method

.method private static checkTransformation(Ljava/lang/String;)[Ljava/lang/String;
    .registers 11
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const-string v8, "crypto.17"

    .line 344
    const/4 v3, 0x3

    new-array v2, v3, [Ljava/lang/String;

    aput-object v6, v2, v9

    aput-object v6, v2, v7

    aput-object v6, v2, v5

    .line 346
    .local v2, transf:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 347
    .local v0, i:I
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v3, "/"

    invoke-direct {v1, p0, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    .local v1, st:Ljava/util/StringTokenizer;
    :cond_17
    :goto_17
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 349
    if-le v0, v5, :cond_2b

    .line 350
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "crypto.17"

    invoke-static {v8, p0}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 353
    :cond_2b
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 354
    aget-object v3, v2, v0

    if-eqz v3, :cond_17

    .line 355
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 356
    const-string v3, ""

    aget-object v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 357
    aput-object v6, v2, v0

    .line 359
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 362
    :cond_4c
    aget-object v3, v2, v9

    if-nez v3, :cond_5c

    .line 363
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "crypto.17"

    invoke-static {v8, p0}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 366
    :cond_5c
    aget-object v3, v2, v7

    if-nez v3, :cond_64

    aget-object v3, v2, v5

    if-eqz v3, :cond_78

    :cond_64
    aget-object v3, v2, v7

    if-eqz v3, :cond_6c

    aget-object v3, v2, v5

    if-nez v3, :cond_78

    .line 368
    :cond_6c
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "crypto.17"

    invoke-static {v8, p0}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 371
    :cond_78
    return-object v2
.end method

.method private static declared-synchronized getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 15
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x1

    const-string v8, "/"

    .line 277
    const-class v8, Ljavax/crypto/Cipher;

    monitor-enter v8

    if-eqz p0, :cond_10

    :try_start_8
    const-string v9, ""

    invoke-virtual {v9, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    .line 278
    :cond_10
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    const-string v10, "crypto.17"

    invoke-static {v10, p0}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1c
    .catchall {:try_start_8 .. :try_end_1c} :catchall_1c

    .line 277
    :catchall_1c
    move-exception v9

    monitor-exit v8

    throw v9

    .line 282
    :cond_1f
    :try_start_1f
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 284
    .local v7, transf:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 285
    .local v5, needSetPadding:Z
    const/4 v4, 0x0

    .line 286
    .local v4, needSetMode:Z
    const/4 v9, 0x1

    aget-object v9, v7, v9

    if-nez v9, :cond_69

    const/4 v9, 0x2

    aget-object v9, v7, v9

    if-nez v9, :cond_69

    .line 287
    if-nez p1, :cond_5f

    .line 288
    sget-object v9, Ljavax/crypto/Cipher;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3a
    .catchall {:try_start_1f .. :try_end_3a} :catchall_1c

    .line 328
    :goto_3a
    :try_start_3a
    sget-object v9, Ljavax/crypto/Cipher;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v1, v9, Lorg/apache/harmony/security/fortress/Engine;->spi:Ljava/lang/Object;

    check-cast v1, Ljavax/crypto/CipherSpi;
    :try_end_40
    .catchall {:try_start_3a .. :try_end_40} :catchall_1c
    .catch Ljava/lang/ClassCastException; {:try_start_3a .. :try_end_40} :catch_114

    .line 332
    .local v1, cspi:Ljavax/crypto/CipherSpi;
    :try_start_40
    new-instance v0, Ljavax/crypto/Cipher;

    sget-object v9, Ljavax/crypto/Cipher;->engine:Lorg/apache/harmony/security/fortress/Engine;

    iget-object v9, v9, Lorg/apache/harmony/security/fortress/Engine;->provider:Ljava/security/Provider;

    invoke-direct {v0, v1, v9, p0}, Ljavax/crypto/Cipher;-><init>(Ljavax/crypto/CipherSpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 333
    .local v0, c:Ljavax/crypto/Cipher;
    if-eqz v4, :cond_53

    .line 334
    iget-object v9, v0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v10, 0x1

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljavax/crypto/CipherSpi;->engineSetMode(Ljava/lang/String;)V

    .line 336
    :cond_53
    if-eqz v5, :cond_5d

    .line 337
    iget-object v9, v0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v10, 0x2

    aget-object v10, v7, v10

    invoke-virtual {v9, v10}, Ljavax/crypto/CipherSpi;->engineSetPadding(Ljava/lang/String;)V
    :try_end_5d
    .catchall {:try_start_40 .. :try_end_5d} :catchall_1c

    .line 339
    :cond_5d
    monitor-exit v8

    return-object v0

    .line 290
    .end local v0           #c:Ljavax/crypto/Cipher;
    .end local v1           #cspi:Ljavax/crypto/CipherSpi;
    :cond_5f
    :try_start_5f
    sget-object v9, Ljavax/crypto/Cipher;->engine:Lorg/apache/harmony/security/fortress/Engine;

    const/4 v10, 0x0

    aget-object v10, v7, v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V

    goto :goto_3a

    .line 293
    :cond_69
    const/4 v9, 0x4

    new-array v6, v9, [Ljava/lang/String;

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "//"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x2

    aget-object v11, v7, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v9, 0x3

    const/4 v10, 0x0

    aget-object v10, v7, v10

    aput-object v10, v6, v9

    .line 300
    .local v6, searhOrder:[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_e0
    array-length v9, v6
    :try_end_e1
    .catchall {:try_start_5f .. :try_end_e1} :catchall_1c

    if-ge v3, v9, :cond_ed

    .line 302
    if-nez p1, :cond_f5

    .line 303
    :try_start_e5
    sget-object v9, Ljavax/crypto/Cipher;->engine:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v10, v6, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/lang/Object;)V

    .line 314
    :cond_ed
    :goto_ed
    packed-switch v3, :pswitch_data_11c

    goto/16 :goto_3a

    .line 316
    :pswitch_f2
    const/4 v5, 0x1

    .line 317
    goto/16 :goto_3a

    .line 305
    :cond_f5
    sget-object v9, Ljavax/crypto/Cipher;->engine:Lorg/apache/harmony/security/fortress/Engine;

    aget-object v10, v6, v3

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Lorg/apache/harmony/security/fortress/Engine;->getInstance(Ljava/lang/String;Ljava/security/Provider;Ljava/lang/Object;)V
    :try_end_fd
    .catchall {:try_start_e5 .. :try_end_fd} :catchall_1c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_e5 .. :try_end_fd} :catch_fe

    goto :goto_ed

    .line 308
    :catch_fe
    move-exception v9

    move-object v2, v9

    .line 309
    .local v2, e:Ljava/security/NoSuchAlgorithmException;
    :try_start_100
    array-length v9, v6

    sub-int/2addr v9, v12

    if-ne v3, v9, :cond_10a

    .line 310
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v9, p0}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 300
    :cond_10a
    add-int/lit8 v3, v3, 0x1

    goto :goto_e0

    .line 319
    .end local v2           #e:Ljava/security/NoSuchAlgorithmException;
    :pswitch_10d
    const/4 v4, 0x1

    .line 320
    goto/16 :goto_3a

    .line 322
    :pswitch_110
    const/4 v5, 0x1

    .line 323
    const/4 v4, 0x1

    goto/16 :goto_3a

    .line 329
    .end local v3           #i:I
    .end local v6           #searhOrder:[Ljava/lang/String;
    :catch_114
    move-exception v9

    move-object v2, v9

    .line 330
    .local v2, e:Ljava/lang/ClassCastException;
    new-instance v9, Ljava/security/NoSuchAlgorithmException;

    invoke-direct {v9, v2}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_11c
    .catchall {:try_start_100 .. :try_end_11c} :catchall_1c

    .line 314
    :pswitch_data_11c
    .packed-switch 0x1
        :pswitch_f2
        :pswitch_10d
        :pswitch_110
    .end packed-switch
.end method

.method public static final getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;
    .registers 5
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 225
    if-nez p1, :cond_e

    .line 226
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "crypto.04"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_e
    invoke-static {p1}, Ljava/security/Security;->getProvider(Ljava/lang/String;)Ljava/security/Provider;

    move-result-object v0

    .line 230
    .local v0, p:Ljava/security/Provider;
    if-nez v0, :cond_20

    .line 231
    new-instance v1, Ljava/security/NoSuchProviderException;

    const-string v2, "crypto.16"

    invoke-static {v2, p1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 233
    :cond_20
    invoke-static {p0, v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    return-object v1
.end method

.method public static final getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;
    .registers 5
    .parameter "transformation"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 258
    if-nez p1, :cond_e

    .line 259
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "crypto.04"

    invoke-static {v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 261
    :cond_e
    invoke-static {p0, p1}, Ljavax/crypto/Cipher;->getCipher(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 262
    .local v0, c:Ljavax/crypto/Cipher;
    return-object v0
.end method

.method public static final getMaxAllowedKeyLength(Ljava/lang/String;)I
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1417
    if-nez p0, :cond_8

    .line 1418
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1420
    :cond_8
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1422
    const v0, 0x7fffffff

    return v0
.end method

.method public static final getMaxAllowedParameterSpec(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 2
    .parameter "transformation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1442
    if-nez p0, :cond_8

    .line 1443
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1445
    :cond_8
    invoke-static {p0}, Ljavax/crypto/Cipher;->checkTransformation(Ljava/lang/String;)[Ljava/lang/String;

    .line 1447
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final doFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1334
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1335
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1338
    :cond_16
    if-ne p1, p2, :cond_24

    .line 1339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.2E"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1342
    :cond_24
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final doFinal([BI)I
    .registers 9
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1134
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 1135
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1138
    :cond_17
    if-gez p2, :cond_25

    .line 1139
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.20"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1142
    :cond_25
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    move v3, v2

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[B)I
    .registers 11
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1249
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->doFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1289
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1290
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1293
    :cond_16
    if-ltz p2, :cond_1f

    if-ltz p3, :cond_1f

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2b

    .line 1295
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.1E"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1298
    :cond_2b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method public final doFinal()[B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1099
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17

    .line 1100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1103
    :cond_17
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([B)[B
    .registers 5
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1167
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1168
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1171
    :cond_16
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final doFinal([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 1203
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1204
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_16
    if-ltz p2, :cond_1f

    if-ltz p3, :cond_1f

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2b

    .line 1209
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.1E"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_2b
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineDoFinal([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public final getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Ljavax/crypto/Cipher;->transformation:Ljava/lang/String;

    return-object v0
.end method

.method public final getBlockSize()I
    .registers 2

    .prologue
    .line 405
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetBlockSize()I

    move-result v0

    return v0
.end method

.method public final getExemptionMechanism()Ljavax/crypto/ExemptionMechanism;
    .registers 2

    .prologue
    .line 465
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getIV()[B
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetIV()[B

    move-result-object v0

    return-object v0
.end method

.method public final getOutputSize(I)I
    .registers 4
    .parameter "inputLen"

    .prologue
    .line 420
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    if-nez v0, :cond_10

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.18"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_10
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineGetOutputSize(I)I

    move-result v0

    return v0
.end method

.method public final getParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 450
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0}, Ljavax/crypto/CipherSpi;->engineGetParameters()Ljava/security/AlgorithmParameters;

    move-result-object v0

    return-object v0
.end method

.method public final getProvider()Ljava/security/Provider;
    .registers 2

    .prologue
    .line 381
    iget-object v0, p0, Ljavax/crypto/Cipher;->provider:Ljava/security/Provider;

    return-object v0
.end method

.method public final init(ILjava/security/Key;)V
    .registers 4
    .parameter "opmode"
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 500
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 504
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 506
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 507
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 689
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 690
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 692
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 693
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 736
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    .line 738
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "crypto.19"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 746
    :cond_18
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V

    .line 747
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 748
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .registers 6
    .parameter "opmode"
    .parameter "key"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 545
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    .line 547
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "crypto.19"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 552
    :cond_18
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 553
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 554
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 5
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 591
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 592
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 594
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, p3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 595
    return-void
.end method

.method public final init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .registers 7
    .parameter "opmode"
    .parameter "key"
    .parameter "params"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 638
    const/4 v0, 0x1

    if-eq p1, v0, :cond_18

    const/4 v0, 0x2

    if-eq p1, v0, :cond_18

    const/4 v0, 0x4

    if-eq p1, v0, :cond_18

    const/4 v0, 0x3

    if-eq p1, v0, :cond_18

    .line 640
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "crypto.19"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_18
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 649
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 650
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;)V
    .registers 4
    .parameter "opmode"
    .parameter "certificate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 785
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    if-nez v0, :cond_b

    .line 786
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    .line 788
    :cond_b
    sget-object v0, Ljavax/crypto/Cipher;->sec_rand:Ljava/security/SecureRandom;

    invoke-virtual {p0, p1, p2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V

    .line 789
    return-void
.end method

.method public final init(ILjava/security/cert/Certificate;Ljava/security/SecureRandom;)V
    .registers 13
    .parameter "opmode"
    .parameter "certificate"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 829
    if-eq p1, v7, :cond_18

    if-eq p1, v8, :cond_18

    const/4 v6, 0x4

    if-eq p1, v6, :cond_18

    const/4 v6, 0x3

    if-eq p1, v6, :cond_18

    .line 831
    new-instance v6, Ljava/security/InvalidParameterException;

    const-string v7, "crypto.19"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 833
    :cond_18
    instance-of v6, p2, Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_79

    .line 834
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v1

    .line 835
    .local v1, ce:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 836
    .local v2, critical:Z
    if-eqz v1, :cond_79

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_79

    .line 837
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_31
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 838
    .local v5, oid:Ljava/lang/String;
    const-string v6, "2.5.29.15"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 839
    const/4 v2, 0x1

    .line 843
    .end local v5           #oid:Ljava/lang/String;
    :cond_46
    if-eqz v2, :cond_79

    .line 844
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v4

    .line 855
    .local v4, keyUsage:[Z
    if-eqz v4, :cond_79

    .line 856
    if-ne p1, v7, :cond_65

    const/4 v6, 0x7

    aget-boolean v6, v4, v6

    if-nez v6, :cond_65

    .line 857
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "crypto.1A"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 859
    :cond_65
    if-ne p1, v8, :cond_79

    const/16 v6, 0x8

    aget-boolean v6, v4, v6

    if-nez v6, :cond_79

    .line 860
    new-instance v6, Ljava/security/InvalidKeyException;

    const-string v7, "crypto.1B"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 870
    .end local v1           #ce:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v2           #critical:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #keyUsage:[Z
    :cond_79
    iget-object v6, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {p2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v6, p1, v7, p3}, Ljavax/crypto/CipherSpi;->engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 871
    iput p1, p0, Ljavax/crypto/Cipher;->mode:I

    .line 872
    return-void
.end method

.method public final unwrap([BLjava/lang/String;I)Ljava/security/Key;
    .registers 6
    .parameter "wrappedKey"
    .parameter "wrappedKeyAlgorithm"
    .parameter "wrappedKeyType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 1394
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_11

    .line 1395
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1398
    :cond_11
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method public final update(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .registers 5
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1068
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1069
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1072
    :cond_16
    if-ne p1, p2, :cond_24

    .line 1073
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.22"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1076
    :cond_24
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2}, Ljavax/crypto/CipherSpi;->engineUpdate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0
.end method

.method public final update([BII[B)I
    .registers 11
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 976
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/Cipher;->update([BII[BI)I

    move-result v0

    return v0
.end method

.method public final update([BII[BI)I
    .registers 12
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"
    .parameter "output"
    .parameter "outputOffset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 1013
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 1014
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1017
    :cond_16
    if-nez p1, :cond_24

    .line 1018
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.1D"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1020
    :cond_24
    if-nez p4, :cond_32

    .line 1021
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.1F"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1023
    :cond_32
    if-gez p5, :cond_40

    .line 1024
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.20"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1027
    :cond_40
    if-ltz p2, :cond_4b

    if-ltz p3, :cond_4b

    array-length v0, p1

    if-gt p3, v0, :cond_4b

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_57

    .line 1030
    :cond_4b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.21"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1033
    :cond_57
    array-length v0, p1

    if-nez v0, :cond_5c

    .line 1034
    const/4 v0, 0x0

    .line 1036
    :goto_5b
    return v0

    :cond_5c
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljavax/crypto/CipherSpi;->engineUpdate([BII[BI)I

    move-result v0

    goto :goto_5b
.end method

.method public final update([B)[B
    .registers 5
    .parameter "input"

    .prologue
    .line 890
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 891
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 894
    :cond_16
    if-nez p1, :cond_24

    .line 895
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.1D"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 897
    :cond_24
    array-length v0, p1

    if-nez v0, :cond_29

    .line 898
    const/4 v0, 0x0

    .line 900
    :goto_28
    return-object v0

    :cond_29
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_28
.end method

.method public final update([BII)[B
    .registers 6
    .parameter "input"
    .parameter "inputOffset"
    .parameter "inputLen"

    .prologue
    .line 925
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_16

    .line 926
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 929
    :cond_16
    if-nez p1, :cond_24

    .line 930
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.1D"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 932
    :cond_24
    if-ltz p2, :cond_2f

    if-ltz p3, :cond_2f

    array-length v0, p1

    if-gt p3, v0, :cond_2f

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_3b

    .line 935
    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.1E"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_3b
    array-length v0, p1

    if-nez v0, :cond_40

    .line 939
    const/4 v0, 0x0

    .line 941
    :goto_3f
    return-object v0

    :cond_40
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1, p2, p3}, Ljavax/crypto/CipherSpi;->engineUpdate([BII)[B

    move-result-object v0

    goto :goto_3f
.end method

.method public final wrap(Ljava/security/Key;)[B
    .registers 4
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 1362
    iget v0, p0, Ljavax/crypto/Cipher;->mode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    .line 1363
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "crypto.1C"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1366
    :cond_11
    iget-object v0, p0, Ljavax/crypto/Cipher;->spiImpl:Ljavax/crypto/CipherSpi;

    invoke-virtual {v0, p1}, Ljavax/crypto/CipherSpi;->engineWrap(Ljava/security/Key;)[B

    move-result-object v0

    return-object v0
.end method
