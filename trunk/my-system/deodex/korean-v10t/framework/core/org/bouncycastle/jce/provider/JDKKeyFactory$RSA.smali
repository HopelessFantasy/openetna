.class public Lorg/bouncycastle/jce/provider/JDKKeyFactory$RSA;
.super Lorg/bouncycastle/jce/provider/JDKKeyFactory;
.source "JDKKeyFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKKeyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RSA"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 305
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;-><init>()V

    .line 306
    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .registers 9
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 312
    instance-of v3, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v3, :cond_3b

    .line 316
    :try_start_4
    move-object v0, p1

    check-cast v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPrivateKeyFromDERStream([B)Ljava/security/PrivateKey;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_f} :catch_11

    move-result-object v3

    .line 342
    .end local p0
    .end local p1
    :goto_10
    return-object v3

    .line 319
    .restart local p0
    .restart local p1
    :catch_11
    move-exception v3

    move-object v1, v3

    .line 326
    .local v1, e:Ljava/lang/Exception;
    :try_start_13
    new-instance v3, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    new-instance v4, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    new-instance v5, Lorg/bouncycastle/asn1/ASN1InputStream;

    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v4, p0}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    invoke-direct {v3, v4}, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_2e} :catch_2f

    goto :goto_10

    .line 330
    :catch_2f
    move-exception v3

    move-object v2, v3

    .line 332
    .local v2, ex:Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 336
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #ex:Ljava/lang/Exception;
    .restart local p0
    .restart local p1
    :cond_3b
    instance-of v3, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v3, :cond_47

    .line 338
    new-instance v3, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;

    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .end local p1
    invoke-direct {v3, p1}, Lorg/bouncycastle/jce/provider/JCERSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    goto :goto_10

    .line 340
    .restart local p1
    :cond_47
    instance-of v3, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v3, :cond_53

    .line 342
    new-instance v3, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;

    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    .end local p1
    invoke-direct {v3, p1}, Lorg/bouncycastle/jce/provider/JCERSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    goto :goto_10

    .line 345
    .restart local p1
    :cond_53
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown KeySpec type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .registers 6
    .parameter "keySpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 352
    instance-of v1, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v1, :cond_1b

    .line 356
    :try_start_4
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1
    invoke-virtual {p1}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/jce/provider/JDKKeyFactory;->createPublicKeyFromDERStream([B)Ljava/security/PublicKey;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_f

    move-result-object v1

    .line 366
    :goto_e
    return-object v1

    .line 359
    :catch_f
    move-exception v1

    move-object v0, v1

    .line 361
    .local v0, e:Ljava/lang/Exception;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    .end local v0           #e:Ljava/lang/Exception;
    .restart local p1
    :cond_1b
    instance-of v1, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v1, :cond_27

    .line 366
    new-instance v1, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;

    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    .end local p1
    invoke-direct {v1, p1}, Lorg/bouncycastle/jce/provider/JCERSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    goto :goto_e

    .line 369
    .restart local p1
    :cond_27
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown KeySpec type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
