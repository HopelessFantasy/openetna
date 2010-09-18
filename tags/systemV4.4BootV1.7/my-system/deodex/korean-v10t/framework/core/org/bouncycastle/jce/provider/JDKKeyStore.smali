.class public Lorg/bouncycastle/jce/provider/JDKKeyStore;
.super Ljava/security/KeyStoreSpi;
.source "JDKKeyStore.java"

# interfaces
.implements Lorg/bouncycastle/jce/interfaces/BCKeyStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/jce/provider/JDKKeyStore$BouncyCastleStore;,
        Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    }
.end annotation


# static fields
.field static final CERTIFICATE:I = 0x1

.field static final KEY:I = 0x2

.field private static final KEY_CIPHER:Ljava/lang/String; = "PBEWithSHAAnd3-KeyTripleDES-CBC"

.field static final KEY_PRIVATE:I = 0x0

.field static final KEY_PUBLIC:I = 0x1

.field private static final KEY_SALT_SIZE:I = 0x14

.field static final KEY_SECRET:I = 0x2

.field private static final MIN_ITERATIONS:I = 0x400

.field static final NULL:I = 0x0

.field static final SEALED:I = 0x4

.field static final SECRET:I = 0x3

.field private static final STORE_CIPHER:Ljava/lang/String; = "PBEWithSHAAndTwofish-CBC"

.field private static final STORE_SALT_SIZE:I = 0x14

.field private static final STORE_VERSION:I = 0x1


# instance fields
.field protected random:Ljava/security/SecureRandom;

.field protected table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/security/KeyStoreSpi;-><init>()V

    .line 77
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    .line 79
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/io/DataInputStream;)Ljava/security/Key;
    .registers 3
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v0

    return-object v0
.end method

.method private decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;
    .registers 9
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 358
    .local v4, type:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    new-array v1, v5, [B

    .line 360
    .local v1, cEnc:[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 364
    :try_start_d
    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 365
    .local v2, cFact:Ljava/security/cert/CertificateFactory;
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 367
    .local v0, bIn:Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_1b
    .catch Ljava/security/NoSuchProviderException; {:try_start_d .. :try_end_1b} :catch_1d
    .catch Ljava/security/cert/CertificateException; {:try_start_d .. :try_end_1b} :catch_29

    move-result-object v5

    return-object v5

    .line 369
    .end local v0           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v2           #cFact:Ljava/security/cert/CertificateFactory;
    :catch_1d
    move-exception v5

    move-object v3, v5

    .line 371
    .local v3, ex:Ljava/security/NoSuchProviderException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/NoSuchProviderException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 373
    .end local v3           #ex:Ljava/security/NoSuchProviderException;
    :catch_29
    move-exception v5

    move-object v3, v5

    .line 375
    .local v3, ex:Ljava/security/cert/CertificateException;
    new-instance v5, Ljava/io/IOException;

    invoke-virtual {v3}, Ljava/security/cert/CertificateException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;
    .registers 12
    .parameter "dIn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, " not recognised!"

    const-string v6, "BC"

    .line 409
    invoke-virtual {p1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .line 410
    .local v4, keyType:I
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    .line 411
    .local v3, format:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 412
    .local v0, algorithm:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    new-array v2, v6, [B

    .line 415
    .local v2, enc:[B
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 417
    const-string v6, "PKCS#8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_29

    const-string v6, "PKCS8"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    .line 419
    :cond_29
    new-instance v5, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 436
    .local v5, spec:Ljava/security/spec/KeySpec;
    :goto_2e
    packed-switch v4, :pswitch_data_d4

    .line 445
    :try_start_31
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not recognised!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_50} :catch_50

    .line 448
    :catch_50
    move-exception v6

    move-object v1, v6

    .line 450
    .local v1, e:Ljava/lang/Exception;
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception creating key: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 421
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #spec:Ljava/security/spec/KeySpec;
    :cond_6f
    const-string v6, "X.509"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f

    const-string v6, "X509"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_85

    .line 423
    :cond_7f
    new-instance v5, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v5, v2}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .restart local v5       #spec:Ljava/security/spec/KeySpec;
    goto :goto_2e

    .line 425
    .end local v5           #spec:Ljava/security/spec/KeySpec;
    :cond_85
    const-string v6, "RAW"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 427
    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v6, v2, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 443
    :goto_92
    return-object v6

    .line 431
    :cond_93
    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Key format "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not recognised!"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 439
    .restart local v5       #spec:Ljava/security/spec/KeySpec;
    :pswitch_b2
    :try_start_b2
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v6

    goto :goto_92

    .line 441
    :pswitch_bd
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v6

    goto :goto_92

    .line 443
    :pswitch_c8
    const-string v6, "BC"

    invoke-static {v0, v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_d1} :catch_50

    move-result-object v6

    goto :goto_92

    .line 436
    nop

    :pswitch_data_d4
    .packed-switch 0x0
        :pswitch_b2
        :pswitch_bd
        :pswitch_c8
    .end packed-switch
.end method

.method private encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V
    .registers 7
    .parameter "cert"
    .parameter "dOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    :try_start_0
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    .line 343
    .local v0, cEnc:[B
    invoke-virtual {p1}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 344
    array-length v2, v0

    invoke-virtual {p2, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 345
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_12
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_12} :catch_13

    .line 351
    return-void

    .line 347
    .end local v0           #cEnc:[B
    :catch_13
    move-exception v2

    move-object v1, v2

    .line 349
    .local v1, ex:Ljava/security/cert/CertificateEncodingException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V
    .registers 5
    .parameter "key"
    .parameter "dOut"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 386
    .local v0, enc:[B
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_22

    .line 388
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 399
    :goto_c
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 400
    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 401
    array-length v1, v0

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 402
    invoke-virtual {p2, v0}, Ljava/io/DataOutputStream;->write([B)V

    .line 403
    return-void

    .line 390
    :cond_22
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_2b

    .line 392
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_c

    .line 396
    :cond_2b
    const/4 v1, 0x2

    invoke-virtual {p2, v1}, Ljava/io/DataOutputStream;->write(I)V

    goto :goto_c
.end method


# virtual methods
.method public engineAliases()Ljava/util/Enumeration;
    .registers 2

    .prologue
    .line 488
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public engineContainsAlias(Ljava/lang/String;)Z
    .registers 3
    .parameter "alias"

    .prologue
    .line 494
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public engineDeleteEntry(Ljava/lang/String;)V
    .registers 6
    .parameter "alias"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 501
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 503
    .local v0, entry:Ljava/lang/Object;
    if-nez v0, :cond_21

    .line 505
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no such entry as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 508
    :cond_21
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 509
    return-void
.end method

.method public engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "alias"

    .prologue
    .line 514
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 516
    .local v1, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v1, :cond_23

    .line 518
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_19

    .line 520
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/cert/Certificate;

    move-object v2, p0

    .line 533
    :goto_18
    return-object v2

    .line 524
    .restart local p0
    :cond_19
    invoke-virtual {v1}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 526
    .local v0, chain:[Ljava/security/cert/Certificate;
    if-eqz v0, :cond_23

    .line 528
    const/4 v2, 0x0

    aget-object v2, v0, v2

    goto :goto_18

    .line 533
    .end local v0           #chain:[Ljava/security/cert/Certificate;
    :cond_23
    const/4 v2, 0x0

    goto :goto_18
.end method

.method public engineGetCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;
    .registers 7
    .parameter "cert"

    .prologue
    .line 539
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v2

    .line 540
    .local v2, e:Ljava/util/Enumeration;
    :cond_6
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_3f

    .line 542
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 544
    .local v3, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/security/cert/Certificate;

    if-eqz v4, :cond_2b

    .line 546
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/Certificate;

    .line 548
    .local v0, c:Ljava/security/cert/Certificate;
    invoke-virtual {v0, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 550
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    .line 564
    .end local v0           #c:Ljava/security/cert/Certificate;
    .end local v3           #entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :goto_2a
    return-object v4

    .line 555
    .restart local v3       #entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :cond_2b
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 557
    .local v1, chain:[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_6

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4, p1}, Ljava/security/cert/Certificate;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 559
    invoke-virtual {v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v4

    goto :goto_2a

    .line 564
    .end local v1           #chain:[Ljava/security/cert/Certificate;
    .end local v3           #entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :cond_3f
    const/4 v4, 0x0

    goto :goto_2a
.end method

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .registers 4
    .parameter "alias"

    .prologue
    .line 570
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 572
    .local v0, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_f

    .line 574
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 577
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public engineGetCreationDate(Ljava/lang/String;)Ljava/util/Date;
    .registers 4
    .parameter "alias"

    .prologue
    .line 582
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 584
    .local v0, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_f

    .line 586
    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v1

    .line 589
    :goto_e
    return-object v1

    :cond_f
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public engineGetKey(Ljava/lang/String;[C)Ljava/security/Key;
    .registers 6
    .parameter "alias"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 599
    .local v0, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 601
    :cond_11
    const/4 v1, 0x0

    .line 604
    .end local p0
    :goto_12
    return-object v1

    .restart local p0
    :cond_13
    invoke-virtual {v0, p2}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject([C)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/security/Key;

    move-object v1, p0

    goto :goto_12
.end method

.method public engineIsCertificateEntry(Ljava/lang/String;)Z
    .registers 5
    .parameter "alias"

    .prologue
    const/4 v2, 0x1

    .line 610
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 612
    .local v0, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    if-ne v1, v2, :cond_13

    move v1, v2

    .line 617
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public engineIsKeyEntry(Ljava/lang/String;)Z
    .registers 5
    .parameter "alias"

    .prologue
    const/4 v2, 0x1

    .line 623
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 625
    .local v0, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    if-eq v1, v2, :cond_13

    move v1, v2

    .line 630
    :goto_12
    return v1

    :cond_13
    const/4 v1, 0x0

    goto :goto_12
.end method

.method public engineLoad(Ljava/io/InputStream;[C)V
    .registers 16
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 825
    iget-object v11, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 827
    if-nez p1, :cond_8

    .line 890
    :cond_7
    return-void

    .line 832
    :cond_8
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 833
    .local v0, dIn:Ljava/io/DataInputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 835
    .local v10, version:I
    const/4 v11, 0x1

    if-eq v10, v11, :cond_1e

    .line 837
    if-eqz v10, :cond_1e

    .line 839
    new-instance v11, Ljava/io/IOException;

    const-string v12, "Wrong version of key store."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 843
    :cond_1e
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v11

    new-array v9, v11, [B

    .line 845
    .local v9, salt:[B
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->readFully([B)V

    .line 847
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 855
    .local v3, iterationCount:I
    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    const-string v11, "SHA-1"

    invoke-static {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;

    move-result-object v11

    invoke-direct {v1, v11}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 856
    .local v1, hMac:Lorg/bouncycastle/crypto/macs/HMac;
    new-instance v4, Lorg/bouncycastle/crypto/io/MacInputStream;

    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/crypto/io/MacInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/crypto/Mac;)V

    .line 857
    .local v4, mIn:Lorg/bouncycastle/crypto/io/MacInputStream;
    new-instance v8, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    const-string v11, "SHA-1"

    invoke-static {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 859
    .local v8, pbeGen:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p2}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v7

    .line 861
    .local v7, passKey:[B
    invoke-virtual {v8, v7, v9, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 863
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    invoke-virtual {v8, v11}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v11

    invoke-virtual {v1, v11}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 865
    const/4 v2, 0x0

    .local v2, i:I
    :goto_59
    array-length v11, v7

    if-eq v2, v11, :cond_62

    .line 867
    const/4 v11, 0x0

    aput-byte v11, v7, v2

    .line 865
    add-int/lit8 v2, v2, 0x1

    goto :goto_59

    .line 870
    :cond_62
    invoke-virtual {p0, v4}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->loadStore(Ljava/io/InputStream;)V

    .line 872
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v5, v11, [B

    .line 873
    .local v5, mac:[B
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v11

    new-array v6, v11, [B

    .line 875
    .local v6, oldMac:[B
    const/4 v11, 0x0

    invoke-virtual {v1, v5, v11}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 877
    const/4 v2, 0x0

    :goto_76
    array-length v11, v6

    if-eq v2, v11, :cond_83

    .line 879
    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v11

    int-to-byte v11, v11

    aput-byte v11, v6, v2

    .line 877
    add-int/lit8 v2, v2, 0x1

    goto :goto_76

    .line 885
    :cond_83
    if-eqz p2, :cond_7

    array-length v11, p2

    if-eqz v11, :cond_7

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->isSameAs([B[B)Z

    move-result v11

    if-nez v11, :cond_7

    .line 887
    iget-object v11, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v11}, Ljava/util/Hashtable;->clear()V

    .line 888
    new-instance v11, Ljava/io/IOException;

    const-string v12, "KeyStore integrity check failed."

    invoke-direct {v11, v12}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
.end method

.method public engineSetCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    .registers 7
    .parameter "alias"
    .parameter "cert"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 638
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 640
    .local v0, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2a

    .line 642
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key store already has an entry with alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 645
    :cond_2a
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-direct {v2, p0, p1, p2}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/cert/Certificate;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    return-void
.end method

.method public engineSetKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V
    .registers 14
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
    .line 671
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-eqz v0, :cond_e

    if-nez p4, :cond_e

    .line 673
    new-instance v0, Ljava/security/KeyStoreException;

    const-string v1, "no certificate chain for private key"

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 676
    :cond_e
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 678
    .local v7, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v7, :cond_38

    invoke-virtual {v7}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    .line 680
    new-instance v0, Ljava/security/KeyStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key store already has an entry with alias "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 685
    :cond_38
    :try_start_38
    iget-object v8, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    invoke-virtual {v8, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_47} :catch_48

    .line 691
    return-void

    .line 687
    :catch_48
    move-exception v0

    move-object v6, v0

    .line 689
    .local v6, e:Ljava/lang/Exception;
    new-instance v0, Ljava/security/KeyStoreException;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public engineSetKeyEntry(Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V
    .registers 8
    .parameter "alias"
    .parameter "key"
    .parameter "chain"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 654
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 656
    .local v0, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    if-eqz v0, :cond_23

    .line 658
    new-instance v1, Ljava/security/KeyStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key store already has an entry with alias "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 661
    :cond_23
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    new-instance v2, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    invoke-direct {v2, p0, p1, p2, p3}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;[B[Ljava/security/cert/Certificate;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    return-void
.end method

.method public engineSize()I
    .registers 2

    .prologue
    .line 695
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    return v0
.end method

.method public engineStore(Ljava/io/OutputStream;[C)V
    .registers 15
    .parameter "stream"
    .parameter "password"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v11, "SHA-1"

    .line 896
    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 897
    .local v0, dOut:Ljava/io/DataOutputStream;
    const/16 v9, 0x14

    new-array v8, v9, [B

    .line 898
    .local v8, salt:[B
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9}, Ljava/security/SecureRandom;->nextInt()I

    move-result v9

    and-int/lit16 v9, v9, 0x3ff

    add-int/lit16 v3, v9, 0x400

    .line 900
    .local v3, iterationCount:I
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    invoke-virtual {v9, v8}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 902
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 903
    array-length v9, v8

    invoke-virtual {v0, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 904
    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 905
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 913
    new-instance v1, Lorg/bouncycastle/crypto/macs/HMac;

    const-string v9, "SHA-1"

    invoke-static {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 914
    .local v1, hMac:Lorg/bouncycastle/crypto/macs/HMac;
    new-instance v4, Lorg/bouncycastle/crypto/io/MacOutputStream;

    invoke-direct {v4, v0, v1}, Lorg/bouncycastle/crypto/io/MacOutputStream;-><init>(Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Mac;)V

    .line 915
    .local v4, mOut:Lorg/bouncycastle/crypto/io/MacOutputStream;
    new-instance v7, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;

    const-string v9, "SHA-1"

    invoke-static {v11}, Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;->getInstance(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/OpenSSLMessageDigest;

    move-result-object v9

    invoke-direct {v7, v9}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 917
    .local v7, pbeGen:Lorg/bouncycastle/crypto/PBEParametersGenerator;
    invoke-static {p2}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS12PasswordToBytes([C)[B

    move-result-object v6

    .line 919
    .local v6, passKey:[B
    invoke-virtual {v7, v6, v8, v3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    .line 921
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v9

    invoke-virtual {v7, v9}, Lorg/bouncycastle/crypto/generators/PKCS12ParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v9

    invoke-virtual {v1, v9}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    .line 923
    const/4 v2, 0x0

    .local v2, i:I
    :goto_57
    array-length v9, v6

    if-eq v2, v9, :cond_5f

    .line 925
    aput-byte v10, v6, v2

    .line 923
    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 928
    :cond_5f
    invoke-virtual {p0, v4}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->saveStore(Ljava/io/OutputStream;)V

    .line 930
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v9

    new-array v5, v9, [B

    .line 932
    .local v5, mac:[B
    invoke-virtual {v1, v5, v10}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    .line 934
    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 936
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V

    .line 937
    return-void
.end method

.method protected isSameAs([B[B)Z
    .registers 7
    .parameter "one"
    .parameter "two"

    .prologue
    const/4 v3, 0x0

    .line 702
    array-length v1, p1

    array-length v2, p2

    if-eq v1, v2, :cond_7

    move v1, v3

    .line 715
    :goto_6
    return v1

    .line 707
    :cond_7
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8
    array-length v1, p1

    if-eq v0, v1, :cond_16

    .line 709
    aget-byte v1, p1, v0

    aget-byte v2, p2, v0

    if-eq v1, v2, :cond_13

    move v1, v3

    .line 711
    goto :goto_6

    .line 707
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 715
    :cond_16
    const/4 v1, 0x1

    goto :goto_6
.end method

.method protected loadStore(Ljava/io/InputStream;)V
    .registers 27
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 722
    new-instance v23, Ljava/io/DataInputStream;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 723
    .local v23, dIn:Ljava/io/DataInputStream;
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->read()I

    move-result v19

    .line 725
    .local v19, type:I
    :goto_d
    if-lez v19, :cond_a6

    .line 727
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    .line 728
    .local v4, alias:Ljava/lang/String;
    new-instance v5, Ljava/util/Date;

    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 729
    .local v5, date:Ljava/util/Date;
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    move-result v22

    .line 730
    .local v22, chainLength:I
    const/4 v14, 0x0

    .line 732
    .local v14, chain:[Ljava/security/cert/Certificate;
    if-eqz v22, :cond_3d

    .line 734
    move/from16 v0, v22

    new-array v0, v0, [Ljava/security/cert/Certificate;

    move-object v14, v0

    .line 736
    const/16 v24, 0x0

    .local v24, i:I
    :goto_2a
    move/from16 v0, v24

    move/from16 v1, v22

    if-eq v0, v1, :cond_3d

    .line 738
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    aput-object v2, v14, v24

    .line 736
    add-int/lit8 v24, v24, 0x1

    goto :goto_2a

    .line 742
    .end local v24           #i:I
    :cond_3d
    packed-switch v19, :pswitch_data_a8

    .line 761
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unknown object type in store."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 745
    :pswitch_48
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->decodeCertificate(Ljava/io/DataInputStream;)Ljava/security/cert/Certificate;

    move-result-object v7

    .line 747
    .local v7, cert:Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    move-object v8, v0

    new-instance v2, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    const/4 v6, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;)V

    invoke-virtual {v8, v4, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 764
    .end local v7           #cert:Ljava/security/cert/Certificate;
    :goto_60
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->read()I

    move-result v19

    .line 765
    goto :goto_d

    .line 750
    :pswitch_65
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->decodeKey(Ljava/io/DataInputStream;)Ljava/security/Key;

    move-result-object v13

    .line 751
    .local v13, key:Ljava/security/Key;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    move-object v2, v0

    new-instance v8, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    const/4 v12, 0x2

    move-object/from16 v9, p0

    move-object v10, v4

    move-object v11, v5

    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v2, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 755
    .end local v13           #key:Ljava/security/Key;
    :pswitch_80
    invoke-virtual/range {v23 .. v23}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    move v0, v2

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 757
    .local v20, b:[B
    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    move-object v2, v0

    new-instance v15, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    move-object/from16 v16, p0

    move-object/from16 v17, v4

    move-object/from16 v18, v5

    move-object/from16 v21, v14

    invoke-direct/range {v15 .. v21}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;-><init>(Lorg/bouncycastle/jce/provider/JDKKeyStore;Ljava/lang/String;Ljava/util/Date;ILjava/lang/Object;[Ljava/security/cert/Certificate;)V

    invoke-virtual {v2, v4, v15}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_60

    .line 766
    .end local v4           #alias:Ljava/lang/String;
    .end local v5           #date:Ljava/util/Date;
    .end local v14           #chain:[Ljava/security/cert/Certificate;
    .end local v20           #b:[B
    .end local v22           #chainLength:I
    :cond_a6
    return-void

    .line 742
    nop

    :pswitch_data_a8
    .packed-switch 0x1
        :pswitch_48
        :pswitch_65
        :pswitch_80
        :pswitch_80
    .end packed-switch
.end method

.method protected makePBECipher(Ljava/lang/String;I[C[BI)Ljavax/crypto/Cipher;
    .registers 14
    .parameter "algorithm"
    .parameter "mode"
    .parameter "password"
    .parameter "salt"
    .parameter "iterationCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v5, "BC"

    .line 464
    :try_start_2
    new-instance v4, Ljavax/crypto/spec/PBEKeySpec;

    invoke-direct {v4, p3}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C)V

    .line 465
    .local v4, pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    const-string v5, "BC"

    invoke-static {p1, v5}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    .line 466
    .local v3, keyFact:Ljavax/crypto/SecretKeyFactory;
    new-instance v1, Ljavax/crypto/spec/PBEParameterSpec;

    invoke-direct {v1, p4, p5}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    .line 468
    .local v1, defParams:Ljavax/crypto/spec/PBEParameterSpec;
    const-string v5, "BC"

    invoke-static {p1, v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 470
    .local v0, cipher:Ljavax/crypto/Cipher;
    invoke-virtual {v3, v4}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v5

    invoke-virtual {v0, p2, v5, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    .line 472
    return-object v0

    .line 474
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #defParams:Ljavax/crypto/spec/PBEParameterSpec;
    .end local v3           #keyFact:Ljavax/crypto/SecretKeyFactory;
    .end local v4           #pbeSpec:Ljavax/crypto/spec/PBEKeySpec;
    :catch_20
    move-exception v5

    move-object v2, v5

    .line 476
    .local v2, e:Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error initialising store of key store: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method protected saveStore(Ljava/io/OutputStream;)V
    .registers 12
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 772
    iget-object v7, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->table:Ljava/util/Hashtable;

    invoke-virtual {v7}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v4

    .line 773
    .local v4, e:Ljava/util/Enumeration;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 775
    .local v3, dOut:Ljava/io/DataOutputStream;
    :goto_c
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_7f

    .line 777
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;

    .line 779
    .local v5, entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->write(I)V

    .line 780
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getAlias()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 781
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getDate()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 783
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 784
    .local v2, chain:[Ljava/security/cert/Certificate;
    if-nez v2, :cond_49

    .line 786
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 797
    :cond_3a
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getType()I

    move-result v7

    packed-switch v7, :pswitch_data_84

    .line 813
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "Unknown object type in store."

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 790
    :cond_49
    array-length v7, v2

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 791
    const/4 v6, 0x0

    .local v6, i:I
    :goto_4e
    array-length v7, v2

    if-eq v6, v7, :cond_3a

    .line 793
    aget-object v7, v2, v6

    invoke-direct {p0, v7, v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    .line 791
    add-int/lit8 v6, v6, 0x1

    goto :goto_4e

    .line 800
    .end local v6           #i:I
    :pswitch_59
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/cert/Certificate;

    invoke-direct {p0, v7, v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->encodeCertificate(Ljava/security/cert/Certificate;Ljava/io/DataOutputStream;)V

    goto :goto_c

    .line 803
    :pswitch_63
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/security/Key;

    invoke-direct {p0, v7, v3}, Lorg/bouncycastle/jce/provider/JDKKeyStore;->encodeKey(Ljava/security/Key;Ljava/io/DataOutputStream;)V

    goto :goto_c

    .line 807
    :pswitch_6d
    invoke-virtual {v5}, Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;->getObject()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 809
    .local v1, b:[B
    array-length v7, v1

    invoke-virtual {v3, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 810
    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->write([B)V

    goto :goto_c

    .line 817
    .end local v1           #b:[B
    .end local v2           #chain:[Ljava/security/cert/Certificate;
    .end local v5           #entry:Lorg/bouncycastle/jce/provider/JDKKeyStore$StoreEntry;
    :cond_7f
    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 818
    return-void

    .line 797
    nop

    :pswitch_data_84
    .packed-switch 0x1
        :pswitch_59
        :pswitch_63
        :pswitch_6d
        :pswitch_6d
    .end packed-switch
.end method

.method public setRandom(Ljava/security/SecureRandom;)V
    .registers 2
    .parameter "rand"

    .prologue
    .line 483
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKKeyStore;->random:Ljava/security/SecureRandom;

    .line 484
    return-void
.end method
