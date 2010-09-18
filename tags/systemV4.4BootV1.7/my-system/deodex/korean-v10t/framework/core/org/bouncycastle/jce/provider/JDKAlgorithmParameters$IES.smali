.class public Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;
.super Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.source "JDKAlgorithmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IES"
.end annotation


# instance fields
.field currentSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1113
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .registers 7

    .prologue
    .line 1124
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1125
    .local v0, bOut:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Lorg/bouncycastle/asn1/DEROutputStream;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DEROutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1129
    .local v1, dOut:Lorg/bouncycastle/asn1/DEROutputStream;
    :try_start_a
    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    .line 1131
    .local v3, v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->currentSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getDerivationV()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1132
    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->currentSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getEncodingV()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1133
    new-instance v4, Lorg/bouncycastle/asn1/DERInteger;

    iget-object v5, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->currentSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    invoke-virtual {v5}, Lorg/bouncycastle/jce/spec/IESParameterSpec;->getMacKeySize()I

    move-result v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/DERInteger;-><init>(I)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/DEREncodable;)V

    .line 1135
    new-instance v4, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v4, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/DEREncodableVector;)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/DEROutputStream;->writeObject(Ljava/lang/Object;)V

    .line 1136
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/DEROutputStream;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_44} :catch_49

    .line 1143
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 1138
    .end local v3           #v:Lorg/bouncycastle/asn1/ASN1EncodableVector;
    :catch_49
    move-exception v4

    move-object v2, v4

    .line 1140
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Error encoding IESParameters"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .registers 3
    .parameter "format"

    .prologue
    .line 1149
    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1152
    :cond_10
    invoke-virtual {p0}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->engineGetEncoded()[B

    move-result-object v0

    .line 1155
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
    .line 1162
    const-class v0, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-ne p1, v0, :cond_7

    .line 1164
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->currentSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    return-object v0

    .line 1167
    :cond_7
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "unknown parameter spec passed to ElGamal parameters object."

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
    .line 1174
    instance-of v0, p1, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    if-nez v0, :cond_c

    .line 1176
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "IESParameterSpec required to initialise a IES algorithm parameters object"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1179
    :cond_c
    check-cast p1, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .end local p1
    iput-object p1, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->currentSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;

    .line 1180
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
    const-string v7, "Not a valid IES Parameter encoding."

    .line 1186
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    invoke-direct {v0, p1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    .line 1190
    .local v0, aIn:Lorg/bouncycastle/asn1/ASN1InputStream;
    :try_start_7
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 1192
    .local v2, s:Lorg/bouncycastle/asn1/ASN1Sequence;
    new-instance v4, Lorg/bouncycastle/jce/spec/IESParameterSpec;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v5

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/DEREncodable;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/asn1/DERInteger;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/DERInteger;->getValue()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    invoke-direct {v4, v5, v6, v3}, Lorg/bouncycastle/jce/spec/IESParameterSpec;-><init>([B[BI)V

    iput-object v4, p0, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->currentSpec:Lorg/bouncycastle/jce/spec/IESParameterSpec;
    :try_end_39
    .catch Ljava/lang/ClassCastException; {:try_start_7 .. :try_end_39} :catch_3a
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_7 .. :try_end_39} :catch_44

    .line 1205
    return-void

    .line 1197
    .end local v2           #s:Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_3a
    move-exception v3

    move-object v1, v3

    .line 1199
    .local v1, e:Ljava/lang/ClassCastException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a valid IES Parameter encoding."

    invoke-direct {v3, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1201
    .end local v1           #e:Ljava/lang/ClassCastException;
    :catch_44
    move-exception v3

    move-object v1, v3

    .line 1203
    .local v1, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Not a valid IES Parameter encoding."

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
    .line 1212
    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1215
    :cond_10
    invoke-virtual {p0, p1}, Lorg/bouncycastle/jce/provider/JDKAlgorithmParameters$IES;->engineInit([B)V

    .line 1221
    return-void

    .line 1219
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
    .line 1225
    const-string v0, "IES Parameters"

    return-object v0
.end method
