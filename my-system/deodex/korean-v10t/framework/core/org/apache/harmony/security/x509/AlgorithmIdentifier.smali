.class public Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
.super Ljava/lang/Object;
.source "AlgorithmIdentifier.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private algorithm:Ljava/lang/String;

.field private algorithmName:Ljava/lang/String;

.field private encoding:[B

.field private parameters:[B


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    .line 163
    new-instance v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Any;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Any;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .parameter "algorithm"

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, v0, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4
    .parameter "algorithm"
    .parameter "parameters"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;-><init>(Ljava/lang/String;[B[B)V

    .line 77
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[B[B)V
    .registers 4
    .parameter "algorithm"
    .parameter "parameters"
    .parameter "encoding"

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    .line 88
    iput-object p2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    .line 89
    iput-object p3, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    .line 90
    return-void
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .registers 3
    .parameter "buffer"

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v0, :cond_1d

    .line 152
    const-string v0, ", no params, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    :goto_10
    const-string v0, "OID = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 158
    return-void

    .line 154
    :cond_1d
    const-string v0, ", params unparsed, "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_10
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "ai"

    .prologue
    const/4 v4, 0x0

    .line 136
    instance-of v2, p1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    if-nez v2, :cond_7

    move v2, v4

    .line 140
    :goto_6
    return v2

    .line 139
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-object v1, v0

    .line 140
    .local v1, algid:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iget-object v3, v1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v2, :cond_1f

    iget-object v2, v1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    if-nez v2, :cond_29

    :cond_1d
    const/4 v2, 0x1

    goto :goto_6

    :cond_1f
    iget-object v2, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    iget-object v3, v1, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1d

    :cond_29
    move v2, v4

    goto :goto_6
.end method

.method public getAlgorithm()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 108
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/harmony/security/utils/AlgNameMapper;->map2AlgName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    if-nez v0, :cond_14

    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    .line 113
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    if-nez v0, :cond_c

    .line 130
    sget-object v0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    .line 132
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->encoding:[B

    return-object v0
.end method

.method public getParameters()[B
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->parameters:[B

    return-object v0
.end method
