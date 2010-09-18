.class public Lorg/bouncycastle/jce/provider/JDKECDSAAlgParameters$SigAlgParameters;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKECDSAAlgParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKECDSAAlgParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SigAlgParameters"
.end annotation


# instance fields
.field private params:Lorg/bouncycastle/asn1/DEREncodable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
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
    .line 22
    const-string v0, "ASN.1"

    invoke-virtual {p0, v0}, Lorg/bouncycastle/jce/provider/JDKECDSAAlgParameters$SigAlgParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 4
    .parameter "format"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "ASN.1"

    .line 29
    if-nez p1, :cond_b

    .line 31
    const-string v0, "ASN.1"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jce/provider/JDKECDSAAlgParameters$SigAlgParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v0

    .line 39
    :goto_a
    return-object v0

    .line 34
    :cond_b
    const-string v0, "ASN.1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 36
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    const-string v1, "RAW"

    invoke-virtual {p0, v1}, Lorg/bouncycastle/jce/provider/JDKECDSAAlgParameters$SigAlgParameters;->engineGetEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    goto :goto_a

    .line 39
    :cond_23
    const/4 v0, 0x0

    goto :goto_a
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
    .line 46
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to ECDSA parameters object."

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
    .line 53
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to ECDSA parameters object."

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .registers 2
    .parameter "params"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
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
    .line 67
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Unknown parameters format in IV parameters object"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    const-string v0, "ECDSA Parameters"

    return-object v0
.end method
