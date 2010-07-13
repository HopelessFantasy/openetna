.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PKCS12PBE"
.end annotation


# instance fields
.field params:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 546
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 7

    .prologue
    .line 553
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 554
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 558
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_a
    iget-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;->params:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_f} :catch_14

    .line 565
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    return-object v3

    .line 560
    :catch_14
    move-exception v3

    move-object v2, v3

    .line 562
    .local v2, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Oooops! "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .parameter "format"

    .prologue
    .line 571
    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 573
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;->engineGetEncoded()[B

    move-result-object v0

    .line 576
    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 583
    const-class v0, Ljavax/crypto/spec/PBEParameterSpec;

    if-ne p1, v0, :cond_1a

    .line 585
    new-instance v0, Ljavax/crypto/spec/PBEParameterSpec;

    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;->params:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIV()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;->params:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getIterations()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/PBEParameterSpec;-><init>([BI)V

    return-object v0

    .line 589
    :cond_1a
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to PKCS12 PBE parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .registers 7
    .parameter "paramSpec"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 596
    instance-of v2, p1, Ljavax/crypto/spec/PBEParameterSpec;

    if-nez v2, :cond_c

    .line 598
    new-instance v2, Ljava/security/spec/InvalidParameterSpecException;

    const-string v3, "PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 601
    :cond_c
    move-object v0, p1

    check-cast v0, Ljavax/crypto/spec/PBEParameterSpec;

    move-object v1, v0

    .line 603
    .local v1, pbeSpec:Ljavax/crypto/spec/PBEParameterSpec;
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEParameterSpec;->getSalt()[B

    move-result-object v3

    invoke-virtual {v1}, Ljavax/crypto/spec/PBEParameterSpec;->getIterationCount()I

    move-result v4

    invoke-direct {v2, v3, v4}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;-><init>([BI)V

    iput-object v2, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;->params:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 605
    return-void
.end method

.method protected engineInit([B)V
    .registers 4
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 613
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;->params:Lorg/bouncycastle/asn1/pkcs/PKCS12PBEParams;

    .line 614
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .registers 5
    .parameter "params"
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 621
    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 623
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$PKCS12PBE;->engineInit([B)V

    .line 624
    return-void

    .line 627
    :cond_c
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in PKCS12 PBE parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 632
    const-string v0, "PKCS12 PBE Parameters"

    return-object v0
.end method
