.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DH"
.end annotation


# instance fields
.field currentSpec:Ljavax/crypto/spec/DHParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 636
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 8

    .prologue
    .line 653
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 654
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 655
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    new-instance v2, Lorg/bouncycastle/asn1/pkcs/DHParameter;

    iget-object v4, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v4}, Ljavax/crypto/spec/DHParameterSpec;->getP()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v5}, Ljavax/crypto/spec/DHParameterSpec;->getG()Ljava/math/BigInteger;

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v6}, Ljavax/crypto/spec/DHParameterSpec;->getL()I

    move-result v6

    invoke-direct {v2, v4, v5, v6}, Lorg/bouncycastle/asn1/pkcs/DHParameter;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    .line 659
    .local v2, dhP:Lorg/bouncycastle/asn1/pkcs/DHParameter;
    :try_start_21
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 660
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_2c

    .line 667
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 662
    :catch_2c
    move-exception v4

    move-object v3, v4

    .line 664
    .local v3, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error encoding DHParameters"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .parameter "format"

    .prologue
    .line 673
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 676
    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->engineGetEncoded()[B

    move-result-object v0

    .line 679
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
    .line 686
    const-class v0, Ljavax/crypto/spec/DHParameterSpec;

    if-ne p1, v0, :cond_7

    .line 688
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    return-object v0

    .line 691
    :cond_7
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to DH parameters object."

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
    .line 698
    instance-of v0, p1, Ljavax/crypto/spec/DHParameterSpec;

    if-nez v0, :cond_c

    .line 700
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 703
    :cond_c
    check-cast p1, Ljavax/crypto/spec/DHParameterSpec;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 704
    return-void
.end method

.method protected engineInit([B)V
    .registers 10
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v7, "Not a valid DH Parameter encoding."

    .line 710
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 714
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_7
    new-instance v1, Lorg/bouncycastle/asn1/pkcs/DHParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v3}, Lorg/bouncycastle/asn1/pkcs/DHParameter;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    .line 716
    .local v1, dhP:Lorg/bouncycastle/asn1/pkcs/DHParameter;
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_30

    .line 718
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getL()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->intValue()I

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;

    .line 733
    :goto_2f
    return-void

    .line 722
    :cond_30
    new-instance v3, Ljavax/crypto/spec/DHParameterSpec;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/pkcs/DHParameter;->getG()Ljava/math/BigInteger;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljavax/crypto/spec/DHParameterSpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    iput-object v3, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->currentSpec:Ljavax/crypto/spec/DHParameterSpec;
    :try_end_3f
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_3f} :catch_40
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_3f} :catch_4a

    goto :goto_2f

    .line 725
    .end local v1           #dhP:Lorg/bouncycastle/asn1/pkcs/DHParameter;
    :catch_40
    move-exception v3

    move-object v2, v3

    .line 727
    .local v2, e:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a valid DH Parameter encoding."

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 729
    .end local v2           #e:Ljava/lang/ClassCastException;
    :catch_4a
    move-exception v3

    move-object v2, v3

    .line 731
    .local v2, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a valid DH Parameter encoding."

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

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
    .line 740
    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 743
    :cond_10
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$DH;->engineInit([B)V

    .line 749
    return-void

    .line 747
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
    .line 753
    const-string v0, "Diffie-Hellman Parameters"

    return-object v0
.end method
