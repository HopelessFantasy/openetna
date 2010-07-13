.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IVAlgorithmParameters"
.end annotation


# instance fields
.field private iv:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 7
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const-string v4, "RAW"

    const-string v2, "ASN.1"

    .line 70
    if-nez p1, :cond_e

    .line 72
    const-string v1, "ASN.1"

    invoke-virtual {p0, v2}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v1

    .line 87
    :goto_d
    return-object v1

    .line 75
    :cond_e
    const-string v1, "RAW"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 77
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 79
    .local v0, tmp:[B
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 80
    goto :goto_d

    .line 82
    .end local v0           #tmp:[B
    :cond_25
    const-string v1, "ASN.1"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 84
    new-instance v1, Lorg/bouncycastle/asn1/DEROctetString;

    const-string v2, "RAW"

    invoke-virtual {p0, v4}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v1

    goto :goto_d

    .line 87
    :cond_3d
    const/4 v1, 0x0

    goto :goto_d
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
    .line 94
    const-class v0, Ljavax/crypto/spec/IvParameterSpec;

    if-ne p1, v0, :cond_c

    .line 96
    new-instance v0, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    invoke-direct {v0, v1}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    return-object v0

    .line 99
    :cond_c
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to IV parameters object."

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
    .line 106
    instance-of v0, p1, Ljavax/crypto/spec/IvParameterSpec;

    if-nez v0, :cond_c

    .line 108
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "IvParameterSpec required to initialise a IV parameters algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_c
    check-cast p1, Ljavax/crypto/spec/IvParameterSpec;

    .end local p1
    invoke-virtual {p1}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    .line 112
    return-void
.end method

.method protected engineInit([B)V
    .registers 8
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 121
    array-length v2, p1

    rem-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_22

    aget-byte v2, p1, v5

    const/4 v3, 0x4

    if-ne v2, v3, :cond_22

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    array-length v3, p1

    const/4 v4, 0x2

    sub-int/2addr v3, v4

    if-ne v2, v3, :cond_22

    .line 124
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 125
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 127
    .local v1, oct:Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object p1

    .line 130
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #oct:Lorg/bouncycastle/asn1/ASN1OctetString;
    :cond_22
    array-length v2, p1

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    .line 132
    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->iv:[B

    array-length v3, v3

    invoke-static {p1, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 9
    .parameter "params"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 140
    const-string v3, "RAW"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 142
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineInit([B)V

    .line 160
    :goto_b
    return-void

    .line 145
    :cond_c
    const-string v3, "ASN.1"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 147
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 151
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_19
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1OctetString;

    .line 153
    .local v2, oct:Lorg/bouncycastle/asn1/ASN1OctetString;
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IVAlgorithmParameters;->engineInit([B)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_26} :catch_27

    goto :goto_b

    .line 155
    .end local v2           #oct:Lorg/bouncycastle/asn1/ASN1OctetString;
    :catch_27
    move-exception v3

    move-object v1, v3

    .line 157
    .local v1, e:Ljava/lang/Exception;
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception decoding: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 163
    .end local v0           #aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1           #e:Ljava/lang/Exception;
    :cond_42
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Unknown parameters format in IV parameters object"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    const-string v0, "IV Parameters"

    return-object v0
.end method
