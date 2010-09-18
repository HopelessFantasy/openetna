.class public Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;
.super Lorg/bouncycastle/asn1/ASN1Encodable;
.source "NetscapeCertRequest.java"


# instance fields
.field challenge:Ljava/lang/String;

.field content:Lorg/bouncycastle/asn1/DERBitString;

.field keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field pubkey:Ljava/security/PublicKey;

.field sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field sigBits:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Ljava/security/PublicKey;)V
    .registers 7
    .parameter "challenge"
    .parameter "signing_alg"
    .parameter "pub_key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 135
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 137
    iput-object p1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 138
    iput-object p2, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 139
    iput-object p3, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 141
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 142
    .local v0, content_der:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 144
    new-instance v1, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 146
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/bouncycastle/asn1/DERBitString;

    .line 147
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .registers 9
    .parameter "spkac"

    .prologue
    const/4 v6, 0x2

    .line 72
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;-><init>()V

    .line 83
    :try_start_4
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_34

    .line 85
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid SPKAC (size):"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_28} :catch_28

    .line 124
    :catch_28
    move-exception v4

    move-object v0, v4

    .line 126
    .local v0, e:Ljava/lang/Exception;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 89
    .end local v0           #e:Ljava/lang/Exception;
    :cond_34
    :try_start_34
    new-instance v5, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v5, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    iput-object v5, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 91
    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    .line 99
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 101
    .local v1, pkac:Lorg/bouncycastle/asn1/ASN1Sequence;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-eq v4, v6, :cond_79

    .line 103
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid PKAC (len): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 107
    :cond_79
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/DERIA5String;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERIA5String;->getString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 111
    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v4, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    iput-object v4, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/bouncycastle/asn1/DERBitString;

    .line 113
    new-instance v2, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v4

    check-cast v4, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v2, v4}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 116
    .local v2, pubkeyinfo:Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    new-instance v4, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v4, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>(Lorg/bouncycastle/asn1/DEREncodable;)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 119
    .local v3, xspec:Ljava/security/spec/X509EncodedKeySpec;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getAlgorithmId()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 120
    iget-object v4, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BC"

    invoke-static {v4, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v4

    iput-object v4, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_c3} :catch_28

    .line 128
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .parameter "req"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {p1}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->getReq([B)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 69
    return-void
.end method

.method private getKeySpec()Lorg/bouncycastle/asn1/DERObject;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 261
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    const/4 v3, 0x0

    .line 265
    .local v3, obj:Lorg/bouncycastle/asn1/DERObject;
    :try_start_6
    iget-object v4, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 266
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 268
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v4}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v1, derin:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_23} :catch_25

    move-result-object v3

    .line 277
    return-object v3

    .line 273
    .end local v1           #derin:Lorg/bouncycastle/asn1/ASN1InputStream;
    :catch_25
    move-exception v4

    move-object v2, v4

    .line 275
    .local v2, ioe:Ljava/io/IOException;
    new-instance v4, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static getReq([B)Lorg/bouncycastle/asn1/ASN1Sequence;
    .registers 3
    .parameter "r"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 61
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getChallenge()Ljava/lang/String;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    return-object v0
.end method

.method public getKeyAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSigningAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 161
    iget-object v0, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public setChallenge(Ljava/lang/String;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 156
    iput-object p1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setKeyAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 176
    iput-object p1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->keyAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 177
    return-void
.end method

.method public setPublicKey(Ljava/security/PublicKey;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 186
    iput-object p1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    .line 187
    return-void
.end method

.method public setSigningAlgorithm(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .registers 2
    .parameter "value"

    .prologue
    .line 166
    iput-object p1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    .line 167
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;)V
    .registers 3
    .parameter "priv_key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 214
    return-void
.end method

.method public sign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V
    .registers 10
    .parameter "priv_key"
    .parameter "rand"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v5, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    const-string v6, "BC"

    invoke-static {v5, v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    .line 224
    .local v4, sig:Ljava/security/Signature;
    if-eqz p2, :cond_4e

    .line 226
    invoke-virtual {v4, p1, p2}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;Ljava/security/SecureRandom;)V

    .line 233
    :goto_15
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 234
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 236
    .local v1, deros:Lorg/bouncycastle/asn1/DEROutputStream;
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 238
    .local v3, pkac:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    invoke-direct {p0}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 239
    new-instance v5, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v6, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 243
    :try_start_35
    new-instance v5, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v5, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_40} :catch_52

    .line 251
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/Signature;->update([B)V

    .line 253
    invoke-virtual {v4}, Ljava/security/Signature;->sign()[B

    move-result-object v5

    iput-object v5, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    .line 254
    return-void

    .line 230
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v1           #deros:Lorg/bouncycastle/asn1/DEROutputStream;
    .end local v3           #pkac:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :cond_4e
    invoke-virtual {v4, p1}, Ljava/security/Signature;->initSign(Ljava/security/PrivateKey;)V

    goto :goto_15

    .line 246
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v1       #deros:Lorg/bouncycastle/asn1/DEROutputStream;
    .restart local v3       #pkac:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_52
    move-exception v5

    move-object v2, v5

    .line 248
    .local v2, ioe:Ljava/io/IOException;
    new-instance v5, Ljava/security/SignatureException;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public toASN1Object()Lorg/bouncycastle/asn1/DERObject;
    .registers 5

    .prologue
    .line 282
    new-instance v1, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 283
    .local v1, spkac:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 287
    .local v0, pkac:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :try_start_a
    invoke-direct {p0}, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->getKeySpec()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_38

    .line 294
    :goto_11
    new-instance v2, Lorg/bouncycastle/asn1/DERIA5String;

    iget-object v3, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERIA5String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 296
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 297
    iget-object v2, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 298
    new-instance v2, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v3, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-direct {v2, v3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 300
    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    return-object v2

    .line 289
    :catch_38
    move-exception v2

    goto :goto_11
.end method

.method public verify(Ljava/lang/String;)Z
    .registers 5
    .parameter "challenge"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    .prologue
    .line 192
    iget-object v1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->challenge:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 194
    const/4 v1, 0x0

    .line 206
    :goto_9
    return v1

    .line 201
    :cond_a
    iget-object v1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigAlg:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getObjectId()Lorg/bouncycastle/asn1/DERObjectIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 203
    .local v0, sig:Ljava/security/Signature;
    iget-object v1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->pubkey:Ljava/security/PublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 204
    iget-object v1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->content:Lorg/bouncycastle/asn1/DERBitString;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 206
    iget-object v1, p0, Lorg/bouncycastle/jce/netscape/NetscapeCertRequest;->sigBits:[B

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    goto :goto_9
.end method
