.class public Lorg/bouncycastle/openssl/PEMWriter;
.super Ljava/io/BufferedWriter;
.source "PEMWriter.java"


# direct methods
.method public constructor <init>(Ljava/io/Writer;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 61
    return-void
.end method

.method private writeEncoded([B)V
    .registers 7
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 77
    const/16 v3, 0x40

    new-array v0, v3, [C

    .line 79
    .local v0, buf:[C
    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object p1

    .line 81
    const/4 v1, 0x0

    .local v1, i:I
    :goto_9
    array-length v3, p1

    if-ge v1, v3, :cond_29

    .line 83
    const/4 v2, 0x0

    .line 85
    .local v2, index:I
    :goto_d
    array-length v3, v0

    if-eq v2, v3, :cond_15

    .line 87
    add-int v3, v1, v2

    array-length v4, p1

    if-lt v3, v4, :cond_1f

    .line 94
    :cond_15
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lorg/bouncycastle/openssl/PEMWriter;->write([CII)V

    .line 95
    invoke-virtual {p0}, Lorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 81
    array-length v3, v0

    add-int/2addr v1, v3

    goto :goto_9

    .line 91
    :cond_1f
    add-int v3, v1, v2

    aget-byte v3, p1, v3

    int-to-char v3, v3

    aput-char v3, v0, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 97
    .end local v2           #index:I
    :cond_29
    return-void
.end method

.method private writeHexEncoded([B)V
    .registers 4
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    invoke-static {p1}, Lorg/bouncycastle/util/encoders/Hex;->encode([B)[B

    move-result-object p1

    .line 68
    const/4 v0, 0x0

    .local v0, i:I
    :goto_5
    array-length v1, p1

    if-eq v0, v1, :cond_11

    .line 70
    aget-byte v1, p1, v0

    int-to-char v1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->write(I)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 72
    :cond_11
    return-void
.end method


# virtual methods
.method public writeObject(Ljava/lang/Object;)V
    .registers 19
    .parameter "o"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move v14, v0

    if-eqz v14, :cond_79

    .line 108
    const-string v10, "CERTIFICATE"

    .line 111
    .local v10, type:Ljava/lang/String;
    :try_start_9
    check-cast p1, Ljava/security/cert/X509Certificate;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509Certificate;->getEncoded()[B
    :try_end_e
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_9 .. :try_end_e} :catch_5a

    move-result-object v7

    .line 203
    .local v7, encoding:[B
    :goto_f
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-----BEGIN "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-----"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 206
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->writeEncoded([B)V

    .line 208
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "-----END "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "-----"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 210
    .end local v7           #encoding:[B
    .end local v10           #type:Ljava/lang/String;
    :goto_59
    return-void

    .line 113
    .restart local v10       #type:Ljava/lang/String;
    :catch_5a
    move-exception v14

    move-object v6, v14

    .line 115
    .local v6, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot encode object: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/security/cert/CertificateEncodingException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 118
    .end local v6           #e:Ljava/security/cert/CertificateEncodingException;
    .end local v10           #type:Ljava/lang/String;
    .restart local p1
    :cond_79
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509CRL;

    move v14, v0

    if-eqz v14, :cond_a8

    .line 120
    const-string v10, "X509 CRL"

    .line 123
    .restart local v10       #type:Ljava/lang/String;
    :try_start_82
    check-cast p1, Ljava/security/cert/X509CRL;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/security/cert/X509CRL;->getEncoded()[B
    :try_end_87
    .catch Ljava/security/cert/CRLException; {:try_start_82 .. :try_end_87} :catch_89

    move-result-object v7

    .restart local v7       #encoding:[B
    goto :goto_f

    .line 125
    .end local v7           #encoding:[B
    :catch_89
    move-exception v14

    move-object v6, v14

    .line 127
    .local v6, e:Ljava/security/cert/CRLException;
    new-instance v14, Ljava/io/IOException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Cannot encode object: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v6}, Ljava/security/cert/CRLException;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 130
    .end local v6           #e:Ljava/security/cert/CRLException;
    .end local v10           #type:Ljava/lang/String;
    .restart local p1
    :cond_a8
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/KeyPair;

    move v14, v0

    if-eqz v14, :cond_bc

    .line 132
    check-cast p1, Ljava/security/KeyPair;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v14

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->writeObject(Ljava/lang/Object;)V

    goto :goto_59

    .line 135
    .restart local p1
    :cond_bc
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/PrivateKey;

    move v14, v0

    if-eqz v14, :cond_17b

    .line 137
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    check-cast v0, Ljava/security/Key;

    move-object v2, v0

    invoke-interface {v2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 138
    .local v4, bIn:Ljava/io/ByteArrayInputStream;
    new-instance v2, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 140
    .local v2, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    new-instance v8, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    .end local v2           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v8, v2}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 141
    .local v8, info:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 142
    .local v5, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v3, v5}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 144
    .local v3, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/interfaces/RSAPrivateKey;

    move v14, v0

    if-eqz v14, :cond_101

    .line 146
    const-string v10, "RSA PRIVATE KEY"

    .line 148
    .restart local v10       #type:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getPrivateKey()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v14

    invoke-virtual {v3, v14}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 175
    .end local p1
    :goto_fb
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 176
    .restart local v7       #encoding:[B
    goto/16 :goto_f

    .line 150
    .end local v7           #encoding:[B
    .end local v10           #type:Ljava/lang/String;
    .restart local p1
    :cond_101
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/interfaces/DSAPrivateKey;

    move v14, v0

    if-eqz v14, :cond_173

    .line 152
    const-string v10, "DSA PRIVATE KEY"

    .line 154
    .restart local v10       #type:Ljava/lang/String;
    invoke-virtual {v8}, Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v14

    invoke-static {v14}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/DSAParameter;

    move-result-object v9

    .line 155
    .local v9, p:Lorg/bouncycastle/asn1/x509/DSAParameter;
    new-instance v11, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v11}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 157
    .local v11, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v14, Lorg/bouncycastle/asn1/DERInteger;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 158
    new-instance v14, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 159
    new-instance v14, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getQ()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 160
    new-instance v14, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v15

    invoke-direct {v14, v15}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 162
    check-cast p1, Ljava/security/interfaces/DSAPrivateKey;

    .end local p1
    invoke-interface/range {p1 .. p1}, Ljava/security/interfaces/DSAPrivateKey;->getX()Ljava/math/BigInteger;

    move-result-object v12

    .line 163
    .local v12, x:Ljava/math/BigInteger;
    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getG()Ljava/math/BigInteger;

    move-result-object v14

    invoke-virtual {v9}, Lorg/bouncycastle/asn1/x509/DSAParameter;->getP()Ljava/math/BigInteger;

    move-result-object v15

    invoke-virtual {v14, v12, v15}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v13

    .line 165
    .local v13, y:Ljava/math/BigInteger;
    new-instance v14, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v14, v13}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 166
    new-instance v14, Lorg/bouncycastle/asn1/DERInteger;

    invoke-direct {v14, v12}, Lorg/bouncycastle/asn1/DERInteger;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {v11, v14}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 168
    new-instance v14, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v14, v11}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v3, v14}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_fb

    .line 172
    .end local v9           #p:Lorg/bouncycastle/asn1/x509/DSAParameter;
    .end local v10           #type:Ljava/lang/String;
    .end local v11           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    .end local v12           #x:Ljava/math/BigInteger;
    .end local v13           #y:Ljava/math/BigInteger;
    .restart local p1
    :cond_173
    new-instance v14, Ljava/io/IOException;

    const-string v15, "Cannot identify private key"

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 177
    .end local v3           #aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v4           #bIn:Ljava/io/ByteArrayInputStream;
    .end local v5           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v8           #info:Lorg/bouncycastle/asn1/pkcs/PrivateKeyInfo;
    :cond_17b
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/PublicKey;

    move v14, v0

    if-eqz v14, :cond_18c

    .line 179
    const-string v10, "PUBLIC KEY"

    .line 181
    .restart local v10       #type:Ljava/lang/String;
    check-cast p1, Ljava/security/PublicKey;

    .end local p1
    invoke-interface/range {p1 .. p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    .restart local v7       #encoding:[B
    goto/16 :goto_f

    .line 183
    .end local v7           #encoding:[B
    .end local v10           #type:Ljava/lang/String;
    .restart local p1
    :cond_18c
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/bouncycastle/x509/X509AttributeCertificate;

    move v14, v0

    if-eqz v14, :cond_19d

    .line 185
    const-string v10, "ATTRIBUTE CERTIFICATE"

    .line 186
    .restart local v10       #type:Ljava/lang/String;
    check-cast p1, Lorg/bouncycastle/x509/X509V2AttributeCertificate;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/x509/X509V2AttributeCertificate;->getEncoded()[B

    move-result-object v7

    .restart local v7       #encoding:[B
    goto/16 :goto_f

    .line 188
    .end local v7           #encoding:[B
    .end local v10           #type:Ljava/lang/String;
    .restart local p1
    :cond_19d
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/bouncycastle/jce/PKCS10CertificationRequest;

    move v14, v0

    if-eqz v14, :cond_1ae

    .line 190
    const-string v10, "CERTIFICATE REQUEST"

    .line 191
    .restart local v10       #type:Ljava/lang/String;
    check-cast p1, Lorg/bouncycastle/jce/PKCS10CertificationRequest;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/jce/PKCS10CertificationRequest;->getEncoded()[B

    move-result-object v7

    .restart local v7       #encoding:[B
    goto/16 :goto_f

    .line 193
    .end local v7           #encoding:[B
    .end local v10           #type:Ljava/lang/String;
    .restart local p1
    :cond_1ae
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/bouncycastle/asn1/cms/ContentInfo;

    move v14, v0

    if-eqz v14, :cond_1bf

    .line 195
    const-string v10, "PKCS7"

    .line 196
    .restart local v10       #type:Ljava/lang/String;
    check-cast p1, Lorg/bouncycastle/asn1/cms/ContentInfo;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/asn1/cms/ContentInfo;->getEncoded()[B

    move-result-object v7

    .restart local v7       #encoding:[B
    goto/16 :goto_f

    .line 200
    .end local v7           #encoding:[B
    .end local v10           #type:Ljava/lang/String;
    .restart local p1
    :cond_1bf
    new-instance v14, Ljava/io/IOException;

    const-string v15, "unknown object passed - can\'t encode."

    invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v14
.end method

.method public writeObject(Ljava/lang/Object;Ljava/lang/String;[CLjava/security/SecureRandom;)V
    .registers 29
    .parameter "o"
    .parameter "algorithm"
    .parameter "password"
    .parameter "random"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 219
    const/16 v5, 0x8

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v22, v0

    .line 221
    .local v22, salt:[B
    move-object/from16 v0, p4

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 223
    new-instance v21, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;

    invoke-direct/range {v21 .. v21}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;-><init>()V

    .line 225
    .local v21, pGen:Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;
    invoke-static/range {p3 .. p3}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->PKCS5PasswordToBytes([C)[B

    move-result-object v5

    move-object/from16 v0, v21

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->init([B[B)V

    .line 227
    const/16 v23, 0x0

    .line 229
    .local v23, secretKey:Ljavax/crypto/SecretKey;
    const-string v5, "DESEDE"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ec

    .line 232
    const/16 v20, 0x18

    .line 234
    .local v20, keyLength:I
    new-instance v23, Ljavax/crypto/spec/SecretKeySpec;

    .end local v23           #secretKey:Ljavax/crypto/SecretKey;
    mul-int/lit8 v5, v20, 0x8

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/OpenSSLPBEParametersGenerator;->generateDerivedParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object p3

    .end local p3
    check-cast p3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual/range {p3 .. p3}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 241
    .restart local v23       #secretKey:Ljavax/crypto/SecretKey;
    const/16 v19, 0x0

    .line 243
    .local v19, keyData:[B
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move v5, v0

    if-eqz v5, :cond_8f

    .line 245
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    move-object/from16 v18, v0

    .line 247
    .local v18, k:Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v4, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v7

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v8

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v9

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v10

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v11

    invoke-interface/range {v18 .. v18}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v12

    invoke-direct/range {v4 .. v12}, Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 258
    .local v4, keyStruct:Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    new-instance v14, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v14}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 259
    .local v14, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v13, Lorg/bouncycastle/asn1/ASN1OutputStream;

    invoke-direct {v13, v14}, Lorg/bouncycastle/asn1/ASN1OutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 261
    .local v13, aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    invoke-virtual {v13, v4}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeObject(Ljava/lang/Object;)V

    .line 262
    invoke-virtual {v13}, Lorg/bouncycastle/asn1/ASN1OutputStream;->close()V

    .line 264
    invoke-virtual {v14}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    .line 267
    .end local v4           #keyStruct:Lorg/bouncycastle/asn1/pkcs/RSAPrivateKeyStructure;
    .end local v13           #aOut:Lorg/bouncycastle/asn1/ASN1OutputStream;
    .end local v14           #bOut:Ljava/io/ByteArrayOutputStream;
    .end local v18           #k:Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_8f
    const/16 v17, 0x0

    .line 272
    .local v17, encData:[B
    :try_start_91
    const-string v5, "DESede/CBC/PKCS5Padding"

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 273
    .local v15, c:Ljavax/crypto/Cipher;
    const/4 v5, 0x1

    new-instance v6, Ljavax/crypto/spec/IvParameterSpec;

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    move-object v0, v15

    move v1, v5

    move-object/from16 v2, v23

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 275
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_b0
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_b0} :catch_f4

    move-result-object v17

    .line 283
    const-string v5, "-----BEGIN RSA PRIVATE KEY-----"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 285
    const-string v5, "Proc-Type: 4,ENCRYPTED"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 286
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 287
    const-string v5, "DEK-Info: DES-EDE3-CBC,"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->writeHexEncoded([B)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/openssl/PEMWriter;->newLine()V

    .line 292
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->writeEncoded([B)V

    .line 293
    const-string v5, "-----END RSA PRIVATE KEY-----"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/openssl/PEMWriter;->write(Ljava/lang/String;)V

    .line 294
    return-void

    .line 238
    .end local v15           #c:Ljavax/crypto/Cipher;
    .end local v17           #encData:[B
    .end local v19           #keyData:[B
    .end local v20           #keyLength:I
    .restart local p3
    :cond_ec
    new-instance v5, Ljava/io/IOException;

    const-string v6, "unknown algorithm in writeObject"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 277
    .end local p3
    .restart local v17       #encData:[B
    .restart local v19       #keyData:[B
    .restart local v20       #keyLength:I
    :catch_f4
    move-exception v5

    move-object/from16 v16, v5

    .line 279
    .local v16, e:Ljava/lang/Exception;
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "exception using cipher: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5
.end method
