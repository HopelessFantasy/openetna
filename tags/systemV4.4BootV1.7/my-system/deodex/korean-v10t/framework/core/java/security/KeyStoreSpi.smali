.class public abstract Ljava/security/KeyStoreSpi;
.super Ljava/lang/Object;
.source "KeyStoreSpi.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C
    .registers 10
    .parameter "protParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    .line 535
    if-nez p0, :cond_4

    .line 536
    const/4 v5, 0x0

    .line 557
    :goto_3
    return-object v5

    .line 539
    :cond_4
    instance-of v5, p0, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-nez v5, :cond_14

    .line 540
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    const-string v6, "security.3C"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 544
    :cond_14
    const-string v5, "auth.login.defaultCallbackHandler"

    invoke-static {v5}, Ljava/security/Security;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, clName:Ljava/lang/String;
    if-nez v2, :cond_28

    .line 547
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    const-string v6, "security.3D"

    invoke-static {v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 553
    :cond_28
    :try_start_28
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 554
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/security/auth/callback/CallbackHandler;

    .line 555
    .local v0, cbHand:Ljavax/security/auth/callback/CallbackHandler;
    const/4 v5, 0x1

    new-array v4, v5, [Ljavax/security/auth/callback/PasswordCallback;

    const/4 v5, 0x0

    new-instance v6, Ljavax/security/auth/callback/PasswordCallback;

    const-string v7, "password: "

    const/4 v8, 0x1

    invoke-direct {v6, v7, v8}, Ljavax/security/auth/callback/PasswordCallback;-><init>(Ljava/lang/String;Z)V

    aput-object v6, v4, v5

    .line 556
    .local v4, pwCb:[Ljavax/security/auth/callback/PasswordCallback;
    invoke-interface {v0, v4}, Ljavax/security/auth/callback/CallbackHandler;->handle([Ljavax/security/auth/callback/Callback;)V

    .line 557
    const/4 v5, 0x0

    aget-object v5, v4, v5

    invoke-virtual {v5}, Ljavax/security/auth/callback/PasswordCallback;->getPassword()[C
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_49} :catch_4b

    move-result-object v5

    goto :goto_3

    .line 558
    .end local v0           #cbHand:Ljavax/security/auth/callback/CallbackHandler;
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #pwCb:[Ljavax/security/auth/callback/PasswordCallback;
    :catch_4b
    move-exception v5

    move-object v3, v5

    .line 559
    .local v3, e:Ljava/lang/Exception;
    new-instance v5, Ljava/security/UnrecoverableEntryException;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v5
.end method


# virtual methods
.method public abstract engineAliases()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract engineContainsAlias(Ljava/lang/String;)Z
.end method

.method public abstract engineDeleteEntry(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineEntryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    .registers 6
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

    .prologue
    .local p2, entryClass:Ljava/lang/Class;,"Ljava/lang/Class<+Ljava/security/KeyStore$Entry;>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    move v0, v1

    .line 524
    :goto_9
    return v0

    .line 505
    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 506
    const-string v0, "java.security.KeyStore$TrustedCertificateEntry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_9

    .line 511
    :cond_1b
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 512
    const-string v0, "java.security.KeyStore$PrivateKeyEntry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 514
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v0

    if-eqz v0, :cond_35

    move v0, v2

    goto :goto_9

    :cond_35
    move v0, v1

    goto :goto_9

    .line 517
    :cond_37
    const-string v0, "java.security.KeyStore$SecretKeyEntry"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 519
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    :try_end_46
    .catch Ljava/lang/ClassNotFoundException; {:try_start_a .. :try_end_46} :catch_4d

    move-result-object v0

    if-nez v0, :cond_4b

    move v0, v2

    goto :goto_9

    :cond_4b
    move v0, v1

    goto :goto_9

    .line 522
    :catch_4d
    move-exception v0

    :cond_4e
    move v0, v1

    .line 524
    goto :goto_9
.end method

.method public abstract engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
.end method

.method public abstract engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
.end method

.method public abstract engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
.end method

.method public engineGetEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;
    .registers 10
    .parameter "alias"
    .parameter "protParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableEntryException;
        }
    .end annotation

    .prologue
    .line 373
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 374
    const/4 v4, 0x0

    .line 405
    .end local p2
    :goto_7
    return-object v4

    .line 376
    .restart local p2
    :cond_8
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsCertificateEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 377
    new-instance v4, Ljava/security/KeyStore$TrustedCertificateEntry;

    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/KeyStore$TrustedCertificateEntry;-><init>(Ljava/security/cert/Certificate;)V

    goto :goto_7

    .line 380
    :cond_18
    const/4 v3, 0x0

    .line 381
    .local v3, passW:[C
    if-eqz p2, :cond_25

    .line 382
    instance-of v4, p2, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v4, :cond_55

    .line 384
    :try_start_1f
    check-cast p2, Ljava/security/KeyStore$PasswordProtection;

    .end local p2
    invoke-virtual {p2}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C
    :try_end_24
    .catch Ljava/lang/IllegalStateException; {:try_start_1f .. :try_end_24} :catch_47

    move-result-object v3

    .line 397
    :cond_25
    :goto_25
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineIsKeyEntry(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7a

    .line 399
    :try_start_2b
    invoke-virtual {p0, p1, v3}, Ljava/security/KeyStoreSpi;->engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v2

    .line 400
    .local v2, key:Ljava/security/Key;
    instance-of v4, v2, Ljava/security/PrivateKey;

    if-eqz v4, :cond_6e

    .line 401
    new-instance v4, Ljava/security/KeyStore$PrivateKeyEntry;

    check-cast v2, Ljava/security/PrivateKey;

    .end local v2           #key:Ljava/security/Key;
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    :try_end_3e
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_2b .. :try_end_3e} :catch_3f

    goto :goto_7

    .line 407
    :catch_3f
    move-exception v4

    move-object v0, v4

    .line 408
    .local v0, e:Ljava/security/UnrecoverableKeyException;
    new-instance v4, Ljava/security/KeyStoreException;

    invoke-direct {v4, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 386
    .end local v0           #e:Ljava/security/UnrecoverableKeyException;
    :catch_47
    move-exception v4

    move-object v1, v4

    .line 387
    .local v1, ee:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/KeyStoreException;

    const-string v5, "security.36"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 389
    .end local v1           #ee:Ljava/lang/IllegalStateException;
    .restart local p2
    :cond_55
    instance-of v4, p2, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v4, :cond_5e

    .line 390
    invoke-static {p2}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v3

    goto :goto_25

    .line 392
    :cond_5e
    new-instance v4, Ljava/security/UnrecoverableEntryException;

    const-string v5, "security.37"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/UnrecoverableEntryException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 404
    .end local p2
    .restart local v2       #key:Ljava/security/Key;
    :cond_6e
    :try_start_6e
    instance-of v4, v2, Ljavax/crypto/SecretKey;

    if-eqz v4, :cond_7a

    .line 405
    new-instance v4, Ljava/security/KeyStore$SecretKeyEntry;

    check-cast v2, Ljavax/crypto/SecretKey;

    .end local v2           #key:Ljava/security/Key;
    invoke-direct {v4, v2}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V
    :try_end_79
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6e .. :try_end_79} :catch_3f

    goto :goto_7

    .line 411
    :cond_7a
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    const-string v5, "security.38"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public abstract engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation
.end method

.method public abstract engineIsCertificateEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineIsKeyEntry(Ljava/lang/String;)Z
.end method

.method public abstract engineLoad(Ljava/io/InputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineLoad(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 7
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 323
    if-nez p1, :cond_7

    .line 324
    invoke-virtual {p0, v3, v3}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V

    .line 342
    :goto_6
    return-void

    .line 328
    :cond_7
    invoke-interface {p1}, Ljava/security/KeyStore$LoadStoreParameter;->getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;

    move-result-object v1

    .line 329
    .local v1, pp:Ljava/security/KeyStore$ProtectionParameter;
    instance-of v3, v1, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v3, :cond_22

    .line 331
    :try_start_f
    check-cast v1, Ljava/security/KeyStore$PasswordProtection;

    .end local v1           #pp:Ljava/security/KeyStore$ProtectionParameter;
    invoke-virtual {v1}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C

    move-result-object v2

    .line 332
    .local v2, pwd:[C
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V
    :try_end_19
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_19} :catch_1a

    goto :goto_6

    .line 334
    .end local v2           #pwd:[C
    :catch_1a
    move-exception v3

    move-object v0, v3

    .line 335
    .local v0, e:Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 338
    .end local v0           #e:Ljava/lang/IllegalStateException;
    .restart local v1       #pp:Ljava/security/KeyStore$ProtectionParameter;
    :cond_22
    instance-of v3, v1, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v3, :cond_37

    .line 340
    :try_start_26
    invoke-static {v1}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C

    move-result-object v2

    .line 341
    .restart local v2       #pwd:[C
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v2}, Ljava/security/KeyStoreSpi;->engineLoad(Ljava/io/InputStream;[C)V
    :try_end_2e
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_26 .. :try_end_2e} :catch_2f

    goto :goto_6

    .line 343
    .end local v2           #pwd:[C
    :catch_2f
    move-exception v3

    move-object v0, v3

    .line 344
    .local v0, e:Ljava/security/UnrecoverableEntryException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 347
    .end local v0           #e:Ljava/security/UnrecoverableEntryException;
    :cond_37
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string v4, "security.35"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public abstract engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public engineSetEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V
    .registers 14
    .parameter "alias"
    .parameter "entry"
    .parameter "protParam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 434
    if-nez p2, :cond_e

    .line 435
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v8, "security.39"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 438
    :cond_e
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineContainsAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 439
    invoke-virtual {p0, p1}, Ljava/security/KeyStoreSpi;->engineDeleteEntry(Ljava/lang/String;)V

    .line 442
    :cond_17
    instance-of v7, p2, Ljava/security/KeyStore$TrustedCertificateEntry;

    if-eqz v7, :cond_27

    .line 443
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$TrustedCertificateEntry;

    move-object v6, v0

    .line 444
    .local v6, trE:Ljava/security/KeyStore$TrustedCertificateEntry;
    invoke-virtual {v6}, Ljava/security/KeyStore$TrustedCertificateEntry;->getTrustedCertificate()Ljava/security/cert/Certificate;

    move-result-object v7

    invoke-virtual {p0, p1, v7}, Ljava/security/KeyStoreSpi;->engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 479
    .end local v6           #trE:Ljava/security/KeyStore$TrustedCertificateEntry;
    .end local p3
    :goto_26
    return-void

    .line 448
    .restart local p3
    :cond_27
    const/4 v3, 0x0

    .line 449
    .local v3, passW:[C
    instance-of v7, p3, Ljava/security/KeyStore$PasswordProtection;

    if-eqz v7, :cond_54

    .line 451
    :try_start_2c
    check-cast p3, Ljava/security/KeyStore$PasswordProtection;

    .end local p3
    invoke-virtual {p3}, Ljava/security/KeyStore$PasswordProtection;->getPassword()[C
    :try_end_31
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_31} :catch_46

    move-result-object v3

    .line 468
    :goto_32
    instance-of v7, p2, Ljava/security/KeyStore$PrivateKeyEntry;

    if-eqz v7, :cond_70

    .line 469
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    move-object v4, v0

    .line 470
    .local v4, prE:Ljava/security/KeyStore$PrivateKeyEntry;
    invoke-virtual {v4}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v7

    invoke-virtual {v4}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v8

    invoke-virtual {p0, p1, v7, v3, v8}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    goto :goto_26

    .line 452
    .end local v4           #prE:Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_46
    move-exception v7

    move-object v2, v7

    .line 453
    .local v2, ee:Ljava/lang/IllegalStateException;
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v8, "security.36"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 456
    .end local v2           #ee:Ljava/lang/IllegalStateException;
    .restart local p3
    :cond_54
    instance-of v7, p3, Ljava/security/KeyStore$CallbackHandlerProtection;

    if-eqz v7, :cond_64

    .line 458
    :try_start_58
    invoke-static {p3}, Ljava/security/KeyStoreSpi;->getPasswordFromCallBack(Ljava/security/KeyStore$ProtectionParameter;)[C
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_5b} :catch_5d

    move-result-object v3

    goto :goto_32

    .line 459
    :catch_5d
    move-exception v1

    .line 460
    .local v1, e:Ljava/lang/Exception;
    new-instance v7, Ljava/security/KeyStoreException;

    invoke-direct {v7, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 463
    .end local v1           #e:Ljava/lang/Exception;
    :cond_64
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v8, "security.3A"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 475
    .end local p3
    :cond_70
    instance-of v7, p2, Ljava/security/KeyStore$SecretKeyEntry;

    if-eqz v7, :cond_81

    .line 476
    move-object v0, p2

    check-cast v0, Ljava/security/KeyStore$SecretKeyEntry;

    move-object v5, v0

    .line 477
    .local v5, skE:Ljava/security/KeyStore$SecretKeyEntry;
    invoke-virtual {v5}, Ljava/security/KeyStore$SecretKeyEntry;->getSecretKey()Ljavax/crypto/SecretKey;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v7, v3, v8}, Ljava/security/KeyStoreSpi;->engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    goto :goto_26

    .line 482
    .end local v5           #skE:Ljava/security/KeyStore$SecretKeyEntry;
    :cond_81
    new-instance v7, Ljava/security/KeyStoreException;

    const-string v8, "security.3B"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation
.end method

.method public abstract engineSize()I
.end method

.method public abstract engineStore(Ljava/io/OutputStream;[C)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method public engineStore(Ljava/security/KeyStore$LoadStoreParameter;)V
    .registers 4
    .parameter "param"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 278
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "security.33"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
