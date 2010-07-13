.class public Ljavax/crypto/EncryptedPrivateKeyInfo;
.super Ljava/lang/Object;
.source "EncryptedPrivateKeyInfo.java"


# static fields
.field private static final ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

.field private static final ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

.field private static final nullParam:[B


# instance fields
.field private algName:Ljava/lang/String;

.field private final algParameters:Ljava/security/AlgorithmParameters;

.field private volatile encoded:[B

.field private final encryptedData:[B

.field private oid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 515
    new-array v0, v3, [B

    fill-array-data v0, :array_4e

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    .line 517
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$1;

    new-array v1, v3, [Lorg/apache/harmony/security/asn1/ASN1Type;

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v5

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    .line 556
    new-instance v0, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    .line 558
    new-instance v0, Ljavax/crypto/EncryptedPrivateKeyInfo$2;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1Attributes:Lorg/apache/harmony/security/asn1/ASN1SetOf;

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljavax/crypto/EncryptedPrivateKeyInfo$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 515
    nop

    :array_4e
    .array-data 0x1
        0x5t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 6
    .parameter "encrAlgName"
    .parameter "encryptedData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    if-nez p1, :cond_12

    .line 147
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.23"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_12
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v0

    if-nez v0, :cond_28

    .line 151
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "crypto.24"

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_28
    if-nez p2, :cond_36

    .line 154
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.25"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_36
    array-length v0, p2

    if-nez v0, :cond_45

    .line 158
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.26"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_45
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 161
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    .line 164
    return-void
.end method

.method public constructor <init>(Ljava/security/AlgorithmParameters;[B)V
    .registers 6
    .parameter "algParams"
    .parameter "encryptedData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    if-nez p1, :cond_12

    .line 186
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.27"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 188
    :cond_12
    iput-object p1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    .line 189
    if-nez p2, :cond_22

    .line 190
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "crypto.25"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_22
    array-length v0, p2

    if-nez v0, :cond_31

    .line 194
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "crypto.26"

    invoke-static {v1}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_31
    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 197
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 200
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v0

    if-nez v0, :cond_58

    .line 201
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "crypto.24"

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1, v2}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 203
    :cond_58
    return-void
.end method

.method public constructor <init>([B)V
    .registers 11
    .parameter "encoded"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    if-nez p1, :cond_12

    .line 90
    new-instance v6, Ljava/lang/NullPointerException;

    const-string v7, "crypto.22"

    invoke-static {v7}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 92
    :cond_12
    array-length v6, p1

    new-array v6, v6, [B

    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 93
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v7, p1

    invoke-static {p1, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 96
    sget-object v6, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v6, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/Object;

    move-object v0, v6

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 98
    .local v5, values:[Ljava/lang/Object;
    aget-object v1, v5, v8

    check-cast v1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 100
    .local v1, aId:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 102
    invoke-direct {p0}, Ljavax/crypto/EncryptedPrivateKeyInfo;->mapAlgName()Z

    move-result v3

    .line 106
    .local v3, mappingExists:Z
    const/4 v2, 0x0

    .line 107
    .local v2, aParams:Ljava/security/AlgorithmParameters;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v4

    .line 108
    .local v4, params:[B
    if-eqz v4, :cond_59

    invoke-static {v4}, Ljavax/crypto/EncryptedPrivateKeyInfo;->isNullValue([B)Z

    move-result v6

    if-nez v6, :cond_59

    .line 110
    :try_start_44
    iget-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v6}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 111
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getParameters()[B

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/AlgorithmParameters;->init([B)V

    .line 112
    if-nez v3, :cond_59

    .line 113
    invoke-virtual {v2}, Ljava/security/AlgorithmParameters;->getAlgorithm()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;
    :try_end_59
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_44 .. :try_end_59} :catch_65

    .line 118
    :cond_59
    :goto_59
    iput-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    .line 120
    const/4 v6, 0x1

    aget-object v6, v5, v6

    check-cast v6, [B

    check-cast v6, [B

    iput-object v6, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    .line 121
    return-void

    .line 115
    :catch_65
    move-exception v6

    goto :goto_59
.end method

.method static synthetic access$000(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/security/AlgorithmParameters;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method static synthetic access$100()[B
    .registers 1

    .prologue
    .line 63
    sget-object v0, Ljavax/crypto/EncryptedPrivateKeyInfo;->nullParam:[B

    return-object v0
.end method

.method static synthetic access$200(Ljavax/crypto/EncryptedPrivateKeyInfo;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljavax/crypto/EncryptedPrivateKeyInfo;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 63
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    return-object v0
.end method

.method private static isNullValue([B)Z
    .registers 5
    .parameter "toCheck"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 124
    aget-byte v0, p0, v2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_d

    aget-byte v0, p0, v3

    if-nez v0, :cond_d

    move v0, v3

    :goto_c
    return v0

    :cond_d
    move v0, v2

    goto :goto_c
.end method

.method private mapAlgName()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 470
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->isOID(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 473
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    .line 475
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 478
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    if-nez v1, :cond_21

    .line 479
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    .line 501
    :cond_21
    :goto_21
    const/4 v1, 0x1

    :goto_22
    return v1

    .line 482
    :cond_23
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->getStandardName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 486
    .local v0, stdName:Ljava/lang/String;
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    .line 487
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    if-nez v1, :cond_48

    .line 488
    if-nez v0, :cond_39

    move v1, v2

    .line 490
    goto :goto_22

    .line 492
    :cond_39
    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2OID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    .line 493
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->oid:Ljava/lang/String;

    if-nez v1, :cond_45

    move v1, v2

    .line 494
    goto :goto_22

    .line 496
    :cond_45
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    goto :goto_21

    .line 497
    :cond_48
    if-eqz v0, :cond_21

    .line 498
    iput-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    goto :goto_21
.end method


# virtual methods
.method public getAlgName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgParameters()Ljava/security/AlgorithmParameters;
    .registers 2

    .prologue
    .line 222
    iget-object v0, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 458
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    if-nez v1, :cond_d

    .line 460
    sget-object v1, Ljavax/crypto/EncryptedPrivateKeyInfo;->asn1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v1

    iput-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    .line 462
    :cond_d
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 463
    .local v0, ret:[B
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encoded:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 464
    return-object v0
.end method

.method public getEncryptedData()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 233
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 234
    .local v0, ret:[B
    iget-object v1, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    iget-object v2, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 235
    return-object v0
.end method

.method public getKeySpec(Ljava/security/Key;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 8
    .parameter "decryptKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 300
    if-nez p1, :cond_e

    .line 301
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "crypto.2A"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 304
    :cond_e
    :try_start_e
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 305
    .local v0, cipher:Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_2d

    .line 306
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 310
    :goto_1c
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_21
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_e .. :try_end_21} :catch_34
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_e .. :try_end_21} :catch_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_21} :catch_5a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_21} :catch_66
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_21} :catch_72

    move-result-object v1

    .line 312
    .local v1, decryptedData:[B
    :try_start_22
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_27} :catch_40
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_22 .. :try_end_27} :catch_34
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_22 .. :try_end_27} :catch_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_22 .. :try_end_27} :catch_5a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_22 .. :try_end_27} :catch_66
    .catch Ljavax/crypto/BadPaddingException; {:try_start_22 .. :try_end_27} :catch_72

    .line 317
    :try_start_27
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    .line 308
    .end local v1           #decryptedData:[B
    :cond_2d
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_33
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_27 .. :try_end_33} :catch_34
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_27 .. :try_end_33} :catch_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_27 .. :try_end_33} :catch_5a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_27 .. :try_end_33} :catch_66
    .catch Ljavax/crypto/BadPaddingException; {:try_start_27 .. :try_end_33} :catch_72

    goto :goto_1c

    .line 318
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :catch_34
    move-exception v4

    move-object v2, v4

    .line 319
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 313
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    .restart local v0       #cipher:Ljavax/crypto/Cipher;
    .restart local v1       #decryptedData:[B
    :catch_40
    move-exception v4

    move-object v3, v4

    .line 314
    .local v3, e1:Ljava/io/IOException;
    :try_start_42
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "crypto.29"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_4e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_42 .. :try_end_4e} :catch_34
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_42 .. :try_end_4e} :catch_4e
    .catch Ljava/lang/IllegalStateException; {:try_start_42 .. :try_end_4e} :catch_5a
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_42 .. :try_end_4e} :catch_66
    .catch Ljavax/crypto/BadPaddingException; {:try_start_42 .. :try_end_4e} :catch_72

    .line 320
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #decryptedData:[B
    .end local v3           #e1:Ljava/io/IOException;
    :catch_4e
    move-exception v4

    move-object v2, v4

    .line 321
    .local v2, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 322
    .end local v2           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_5a
    move-exception v4

    move-object v2, v4

    .line 323
    .local v2, e:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_66
    move-exception v4

    move-object v2, v4

    .line 325
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 326
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_72
    move-exception v4

    move-object v2, v4

    .line 327
    .local v2, e:Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/lang/String;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 9
    .parameter "decryptKey"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 358
    if-nez p1, :cond_e

    .line 359
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "crypto.2A"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 361
    :cond_e
    if-nez p2, :cond_1c

    .line 362
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "crypto.2B"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 367
    .local v0, cipher:Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_3b

    .line 368
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 372
    :goto_2a
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1c .. :try_end_2f} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1c .. :try_end_2f} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_2f} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1c .. :try_end_2f} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1c .. :try_end_2f} :catch_80

    move-result-object v1

    .line 374
    .local v1, decryptedData:[B
    :try_start_30
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_4e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_30 .. :try_end_35} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_30 .. :try_end_35} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_35} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_30 .. :try_end_35} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_30 .. :try_end_35} :catch_80

    .line 379
    :try_start_35
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    .line 370
    .end local v1           #decryptedData:[B
    :cond_3b
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_41
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_35 .. :try_end_41} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_35 .. :try_end_41} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_41} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_35 .. :try_end_41} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_35 .. :try_end_41} :catch_80

    goto :goto_2a

    .line 380
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :catch_42
    move-exception v4

    move-object v2, v4

    .line 381
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 375
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    .restart local v0       #cipher:Ljavax/crypto/Cipher;
    .restart local v1       #decryptedData:[B
    :catch_4e
    move-exception v4

    move-object v3, v4

    .line 376
    .local v3, e1:Ljava/io/IOException;
    :try_start_50
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "crypto.29"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_50 .. :try_end_5c} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_50 .. :try_end_5c} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_5c} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_50 .. :try_end_5c} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_50 .. :try_end_5c} :catch_80

    .line 382
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #decryptedData:[B
    .end local v3           #e1:Ljava/io/IOException;
    :catch_5c
    move-exception v4

    move-object v2, v4

    .line 383
    .local v2, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 384
    .end local v2           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_68
    move-exception v4

    move-object v2, v4

    .line 385
    .local v2, e:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 386
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_74
    move-exception v4

    move-object v2, v4

    .line 387
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 388
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_80
    move-exception v4

    move-object v2, v4

    .line 389
    .local v2, e:Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljava/security/Key;Ljava/security/Provider;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 9
    .parameter "decryptKey"
    .parameter "provider"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 415
    if-nez p1, :cond_e

    .line 416
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "crypto.2A"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    :cond_e
    if-nez p2, :cond_1c

    .line 419
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "crypto.2C"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 422
    :cond_1c
    :try_start_1c
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algName:Ljava/lang/String;

    invoke-static {v4, p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 423
    .local v0, cipher:Ljavax/crypto/Cipher;
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    if-nez v4, :cond_3b

    .line 424
    const/4 v4, 0x2

    invoke-virtual {v0, v4, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 428
    :goto_2a
    iget-object v4, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {v0, v4}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_2f
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_1c .. :try_end_2f} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_1c .. :try_end_2f} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_1c .. :try_end_2f} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1c .. :try_end_2f} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1c .. :try_end_2f} :catch_80

    move-result-object v1

    .line 430
    .local v1, decryptedData:[B
    :try_start_30
    sget-object v4, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v4, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_35
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_35} :catch_4e
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_30 .. :try_end_35} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_30 .. :try_end_35} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_30 .. :try_end_35} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_30 .. :try_end_35} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_30 .. :try_end_35} :catch_80

    .line 435
    :try_start_35
    new-instance v4, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v4, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v4

    .line 426
    .end local v1           #decryptedData:[B
    :cond_3b
    const/4 v4, 0x2

    iget-object v5, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->algParameters:Ljava/security/AlgorithmParameters;

    invoke-virtual {v0, v4, p1, v5}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/AlgorithmParameters;)V
    :try_end_41
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_35 .. :try_end_41} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_35 .. :try_end_41} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_35 .. :try_end_41} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_35 .. :try_end_41} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_35 .. :try_end_41} :catch_80

    goto :goto_2a

    .line 436
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    :catch_42
    move-exception v4

    move-object v2, v4

    .line 437
    .local v2, e:Ljavax/crypto/NoSuchPaddingException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljavax/crypto/NoSuchPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 431
    .end local v2           #e:Ljavax/crypto/NoSuchPaddingException;
    .restart local v0       #cipher:Ljavax/crypto/Cipher;
    .restart local v1       #decryptedData:[B
    :catch_4e
    move-exception v4

    move-object v3, v4

    .line 432
    .local v3, e1:Ljava/io/IOException;
    :try_start_50
    new-instance v4, Ljava/security/InvalidKeyException;

    const-string v5, "crypto.29"

    invoke-static {v5}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_5c
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_50 .. :try_end_5c} :catch_42
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_50 .. :try_end_5c} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_50 .. :try_end_5c} :catch_68
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_50 .. :try_end_5c} :catch_74
    .catch Ljavax/crypto/BadPaddingException; {:try_start_50 .. :try_end_5c} :catch_80

    .line 438
    .end local v0           #cipher:Ljavax/crypto/Cipher;
    .end local v1           #decryptedData:[B
    .end local v3           #e1:Ljava/io/IOException;
    :catch_5c
    move-exception v4

    move-object v2, v4

    .line 439
    .local v2, e:Ljava/security/InvalidAlgorithmParameterException;
    new-instance v4, Ljava/security/NoSuchAlgorithmException;

    invoke-virtual {v2}, Ljava/security/InvalidAlgorithmParameterException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 440
    .end local v2           #e:Ljava/security/InvalidAlgorithmParameterException;
    :catch_68
    move-exception v4

    move-object v2, v4

    .line 441
    .local v2, e:Ljava/lang/IllegalStateException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 442
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catch_74
    move-exception v4

    move-object v2, v4

    .line 443
    .local v2, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 444
    .end local v2           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_80
    move-exception v4

    move-object v2, v4

    .line 445
    .local v2, e:Ljavax/crypto/BadPaddingException;
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-virtual {v2}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getKeySpec(Ljavax/crypto/Cipher;)Ljava/security/spec/PKCS8EncodedKeySpec;
    .registers 7
    .parameter "cipher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 259
    if-nez p1, :cond_e

    .line 260
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "crypto.28"

    invoke-static {v4}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 263
    :cond_e
    :try_start_e
    iget-object v3, p0, Ljavax/crypto/EncryptedPrivateKeyInfo;->encryptedData:[B

    invoke-virtual {p1, v3}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_13
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_13} :catch_2d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_e .. :try_end_13} :catch_39
    .catch Ljavax/crypto/BadPaddingException; {:try_start_e .. :try_end_13} :catch_45

    move-result-object v0

    .line 265
    .local v0, decryptedData:[B
    :try_start_14
    sget-object v3, Ljavax/crypto/EncryptedPrivateKeyInfo;->ASN1PrivateKeyInfo:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->verify([B)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_19} :catch_1f
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_19} :catch_2d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_14 .. :try_end_19} :catch_39
    .catch Ljavax/crypto/BadPaddingException; {:try_start_14 .. :try_end_19} :catch_45

    .line 270
    :try_start_19
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    return-object v3

    .line 266
    :catch_1f
    move-exception v3

    move-object v2, v3

    .line 267
    .local v2, e1:Ljava/io/IOException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "crypto.29"

    invoke-static {v4}, Lorg/apache/harmony/crypto/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_2d} :catch_2d
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_19 .. :try_end_2d} :catch_39
    .catch Ljavax/crypto/BadPaddingException; {:try_start_19 .. :try_end_2d} :catch_45

    .line 271
    .end local v0           #decryptedData:[B
    .end local v2           #e1:Ljava/io/IOException;
    :catch_2d
    move-exception v3

    move-object v1, v3

    .line 272
    .local v1, e:Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 273
    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_39
    move-exception v3

    move-object v1, v3

    .line 274
    .local v1, e:Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 275
    .end local v1           #e:Ljavax/crypto/IllegalBlockSizeException;
    :catch_45
    move-exception v3

    move-object v1, v3

    .line 276
    .local v1, e:Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-virtual {v1}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
