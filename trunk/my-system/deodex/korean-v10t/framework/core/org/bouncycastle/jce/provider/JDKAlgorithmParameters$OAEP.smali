.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation


# instance fields
.field currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1229
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 14

    .prologue
    .line 1239
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1240
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1242
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    new-instance v3, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v9, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v9

    sget-object v10, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v3, v9, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1245
    .local v3, hashAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v5

    check-cast v5, Ljava/security/spec/MGF1ParameterSpec;

    .line 1246
    .local v5, mgfSpec:Ljava/security/spec/MGF1ParameterSpec;
    new-instance v4, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_mgf1:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v10, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lorg/bouncycastle/jce/provider/JCEDigestUtil;->getOID(Ljava/lang/String;)Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v11

    sget-object v12, Lorg/bouncycastle/asn1/DERNull;->THE_ONE:Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v10, v11, v12}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-direct {v4, v9, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1250
    .local v4, maskGenAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    iget-object v9, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v9}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v7

    check-cast v7, Ljavax/crypto/spec/PSource$PSpecified;

    .line 1251
    .local v7, pSource:Ljavax/crypto/spec/PSource$PSpecified;
    new-instance v8, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v9, Lorg/bouncycastle/asn1/pkcs/PKCSObjectIdentifiers;->id_pSpecified:Lorg/bouncycastle/asn1/DERObjectIdentifier;

    new-instance v10, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {v7}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v8, v9, v10}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/DERObjectIdentifier;Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1253
    .local v8, pSourceAlgorithm:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    new-instance v6, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-direct {v6, v3, v4, v8}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    .line 1257
    .local v6, oaepP:Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :try_start_56
    invoke-virtual {v1, v6}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1258
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_56 .. :try_end_5c} :catch_61

    .line 1265
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    return-object v9

    .line 1260
    :catch_61
    move-exception v9

    move-object v2, v9

    .line 1262
    .local v2, e:Ljava/io/IOException;
    new-instance v9, Ljava/lang/RuntimeException;

    const-string v10, "Error encoding OAEPParameters"

    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .parameter "format"

    .prologue
    .line 1271
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1274
    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->engineGetEncoded()[B

    move-result-object v0

    .line 1277
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
    .line 1284
    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    instance-of v0, v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_d

    .line 1286
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object v0

    .line 1289
    :cond_d
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to OAEP parameters object."

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
    .line 1296
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v0, :cond_c

    .line 1298
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "OAEPParameterSpec required to initialise an OAEP algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1301
    :cond_c
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 1302
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
    const-string v9, "Not a valid OAEP Parameter encoding."

    .line 1308
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1312
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_7
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 1314
    .local v2, oaepP:Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getMaskGenAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v7

    invoke-virtual {v7}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    new-instance v7, Ljavax/crypto/spec/PSource$PSpecified;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;->getPSourceAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v8

    invoke-static {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V

    invoke-direct {v3, v4, v5, v6, v7}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->currentSpec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_5f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_5f} :catch_60
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_5f} :catch_6a

    .line 1328
    return-void

    .line 1320
    .end local v2           #oaepP:Lorg/bouncycastle/asn1/pkcs/RSAESOAEPparams;
    :catch_60
    move-exception v3

    move-object v1, v3

    .line 1322
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a valid OAEP Parameter encoding."

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1324
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_6a
    move-exception v3

    move-object v1, v3

    .line 1326
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a valid OAEP Parameter encoding."

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
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
    .line 1335
    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1338
    :cond_10
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$OAEP;->engineInit([B)V

    .line 1344
    return-void

    .line 1342
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
    .line 1348
    const-string v0, "OAEP Parameters"

    return-object v0
.end method
