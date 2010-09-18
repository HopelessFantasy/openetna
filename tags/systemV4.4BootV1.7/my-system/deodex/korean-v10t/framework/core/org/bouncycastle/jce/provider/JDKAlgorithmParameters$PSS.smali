.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PSS"
.end annotation


# instance fields
.field currentSpec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1352
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1363
    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    .line 1365
    .local v4, pssSpec:Ljava/security/spec/PSSParameterSpec;
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    sget-object v6, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0, v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1368
    .local v0, hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/MGF1ParameterSpec;

    .line 1369
    .local v2, mgfSpec:Ljava/security/spec/MGF1ParameterSpec;
    new-instance v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v5, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v6, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    sget-object v8, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v6, v7, v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v1, v5, v6}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1373
    .local v1, maskGenAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v3, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    new-instance v5, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    new-instance v6, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v4}, Ljava/security/spec/PSSParameterSpec;->getTrailerField()I

    move-result v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-direct {v3, v0, v1, v5, v6}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/DERInteger;Lorg/bouncycastle/asn1/DERInteger;)V

    .line 1375
    .local v3, pssP:Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    const-string v5, "DER"

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getEncoded(Ljava/lang/String;)[B

    move-result-object v5

    return-object v5
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1382
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1385
    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->engineGetEncoded()[B

    move-result-object v0

    .line 1388
    :goto_14
    return-object v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 1395
    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    instance-of v0, v0, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_d

    .line 1397
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    return-object v0

    .line 1400
    :cond_d
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to PSS parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 4
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 1407
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-nez v0, :cond_c

    .line 1409
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "PSSParameterSpec required to initialise an PSS algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1412
    :cond_c
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;

    .line 1413
    return-void
.end method

.method protected engineInit([B)V
    .registers 12
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v9, "Not a valid PSS Parameter encoding."

    .line 1419
    new-instance v6, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v6, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1423
    .local v6, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_7
    new-instance v8, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v0}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 1425
    .local v8, pssP:Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    new-instance v0, Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getMaskGenAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getSaltLength()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;->getTrailerField()Lorg/bouncycastle/asn1/DERInteger;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    invoke-direct/range {v0 .. v5}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->currentSpec:Ljava/security/spec/PSSParameterSpec;
    :try_end_62
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_62} :catch_63
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_62} :catch_6d

    .line 1440
    return-void

    .line 1432
    .end local v8           #pssP:Lorg/bouncycastle/asn1/pkcs/RSASSAPSSparams;
    :catch_63
    move-exception v0

    move-object v7, v0

    .line 1434
    .local v7, e:Ljava/lang/ClassCastException;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid PSS Parameter encoding."

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1436
    .end local v7           #e:Ljava/lang/ClassCastException;
    :catch_6d
    move-exception v0

    move-object v7, v0

    .line 1438
    .local v7, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not a valid PSS Parameter encoding."

    invoke-direct {v0, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 6
    .parameter "params"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1447
    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1450
    :cond_10
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PSS;->engineInit([B)V

    .line 1456
    return-void

    .line 1454
    :cond_14
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown parameter format "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1460
    const-string v0, "PSS Parameters"

    return-object v0
.end method
