.class public Lorg/apache/harmony/security/x509/TBSCertificate;
.super Ljava/lang/Object;
.source "TBSCertificate.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field encoding:[B

.field private final extensions:Lorg/apache/harmony/security/x509/Extensions;

.field private final issuer:Lorg/apache/harmony/security/x501/Name;

.field private final issuerUniqueID:[Z

.field private final serialNumber:Ljava/math/BigInteger;

.field private final signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

.field private final subject:Lorg/apache/harmony/security/x501/Name;

.field private final subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private final subjectUniqueID:[Z

.field private final validity:Lorg/apache/harmony/security/x509/Validity;

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 299
    new-instance v0, Lorg/apache/harmony/security/x509/TBSCertificate$1;

    const/16 v1, 0xa

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v2, v1, v6

    sget-object v2, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v2, v1, v7

    const/4 v2, 0x4

    sget-object v3, Lorg/apache/harmony/security/x509/Validity;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    sget-object v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v5, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v4

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Explicit;

    sget-object v4, Lorg/apache/harmony/security/x509/Extensions;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/security/asn1/ASN1Explicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/TBSCertificate$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;)V
    .registers 19
    .parameter "version"
    .parameter "serialNumber"
    .parameter "signature"
    .parameter "issuer"
    .parameter "validity"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"

    .prologue
    .line 104
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v10}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V

    .line 106
    return-void
.end method

.method public constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V
    .registers 11
    .parameter "version"
    .parameter "serialNumber"
    .parameter "signature"
    .parameter "issuer"
    .parameter "validity"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "issuerUniqueID"
    .parameter "subjectUniqueID"
    .parameter "extensions"

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    .line 128
    iput-object p2, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    .line 129
    iput-object p3, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    .line 130
    iput-object p4, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    .line 131
    iput-object p5, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    .line 132
    iput-object p6, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    .line 133
    iput-object p7, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .line 134
    iput-object p8, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    .line 135
    iput-object p9, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    .line 136
    iput-object p10, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    .line 137
    return-void
.end method

.method private constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V
    .registers 12
    .parameter "version"
    .parameter "serialNumber"
    .parameter "signature"
    .parameter "issuer"
    .parameter "validity"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "issuerUniqueID"
    .parameter "subjectUniqueID"
    .parameter "extensions"
    .parameter "encoding"

    .prologue
    .line 159
    invoke-direct/range {p0 .. p10}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;)V

    .line 161
    iput-object p11, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    .line 162
    return-void
.end method

.method synthetic constructor <init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertificate$1;)V
    .registers 13
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"
    .parameter "x11"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p11}, Lorg/apache/harmony/security/x509/TBSCertificate;-><init>(ILjava/math/BigInteger;Lorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/Validity;Lorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;[Z[ZLorg/apache/harmony/security/x509/Extensions;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/TBSCertificate;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method

.method static synthetic access$1000(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Extensions;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/TBSCertificate;)Ljava/math/BigInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/Validity;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method static synthetic access$600(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x501/Name;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$700(Lorg/apache/harmony/security/x509/TBSCertificate;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method static synthetic access$800(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method static synthetic access$900(Lorg/apache/harmony/security/x509/TBSCertificate;)[Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;)V
    .registers 9
    .parameter "buffer"

    .prologue
    const/16 v5, 0x31

    const/16 v4, 0x30

    const-string v6, "RFC2253"

    .line 259
    const/16 v1, 0x5b

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 260
    const-string v1, "\n  Version: V"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 261
    const-string v1, "\n  Subject: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    const-string v3, "RFC2253"

    invoke-virtual {v2, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 263
    const-string v1, "\n  Signature Algorithm: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->dumpValue(Ljava/lang/StringBuffer;)V

    .line 265
    const-string v1, "\n  Key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    const-string v1, "\n  Validity: [From: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Validity;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 269
    const-string v1, "\n               To: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/Validity;->getNotAfter()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 271
    const-string v1, "\n  Issuer: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    const-string v2, "RFC2253"

    invoke-virtual {v1, v6}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    const-string v1, "\n  Serial Number: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 275
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    if-eqz v1, :cond_9f

    .line 276
    const-string v1, "\n  Issuer Id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 277
    const/4 v0, 0x0

    .local v0, i:I
    :goto_8b
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_9f

    .line 278
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_9d

    move v1, v5

    :goto_97
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 277
    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_9d
    move v1, v4

    .line 278
    goto :goto_97

    .line 281
    .end local v0           #i:I
    :cond_9f
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    if-eqz v1, :cond_bd

    .line 282
    const-string v1, "\n  Subject Id: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 283
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_a9
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_bd

    .line 284
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_bb

    move v1, v5

    :goto_b5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_a9

    :cond_bb
    move v1, v4

    .line 284
    goto :goto_b5

    .line 287
    .end local v0           #i:I
    :cond_bd
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    if-eqz v1, :cond_d7

    .line 288
    const-string v1, "\n\n  Extensions: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 289
    const-string v1, "[\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    iget-object v1, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    const-string v2, "    "

    invoke-virtual {v1, p1, v2}, Lorg/apache/harmony/security/x509/Extensions;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 291
    const-string v1, "  ]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 293
    :cond_d7
    const-string v1, "\n]"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 294
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 249
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    if-nez v0, :cond_c

    .line 250
    sget-object v0, Lorg/apache/harmony/security/x509/TBSCertificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    .line 252
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->encoding:[B

    return-object v0
.end method

.method public getExtensions()Lorg/apache/harmony/security/x509/Extensions;
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->extensions:Lorg/apache/harmony/security/x509/Extensions;

    return-object v0
.end method

.method public getIssuer()Lorg/apache/harmony/security/x501/Name;
    .registers 2

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuer:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->issuerUniqueID:[Z

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSignature()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .registers 2

    .prologue
    .line 185
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->signature:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .registers 2

    .prologue
    .line 209
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .registers 2

    .prologue
    .line 233
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->subjectUniqueID:[Z

    return-object v0
.end method

.method public getValidity()Lorg/apache/harmony/security/x509/Validity;
    .registers 2

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->validity:Lorg/apache/harmony/security/x509/Validity;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 169
    iget v0, p0, Lorg/apache/harmony/security/x509/TBSCertificate;->version:I

    return v0
.end method
