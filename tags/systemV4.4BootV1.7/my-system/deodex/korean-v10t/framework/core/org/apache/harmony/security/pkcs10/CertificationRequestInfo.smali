.class public Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;
.super Ljava/lang/Object;
.source "CertificationRequestInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private attributes:Ljava/util/List;

.field private encoding:[B

.field private subject:Lorg/apache/harmony/security/x501/Name;

.field private subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x0

    .line 138
    new-instance v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    sget-object v3, Lorg/apache/harmony/security/x501/Name;->ASN1:Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    new-instance v4, Lorg/apache/harmony/security/asn1/ASN1SetOf;

    sget-object v5, Lorg/apache/harmony/security/x501/AttributeTypeAndValue;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v4, v5}, Lorg/apache/harmony/security/asn1/ASN1SetOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    invoke-direct {v3, v6, v4}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;)V
    .registers 5
    .parameter "version"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "attributes"

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput p1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    .line 65
    iput-object p2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    .line 66
    iput-object p3, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    .line 67
    iput-object p4, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    .line 68
    return-void
.end method

.method private constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[B)V
    .registers 6
    .parameter "version"
    .parameter "subject"
    .parameter "subjectPublicKeyInfo"
    .parameter "attributes"
    .parameter "encoding"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;)V

    .line 74
    iput-object p5, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    .line 75
    return-void
.end method

.method synthetic constructor <init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[BLorg/apache/harmony/security/pkcs10/CertificationRequestInfo$1;)V
    .registers 7
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p5}, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;-><init>(ILorg/apache/harmony/security/x501/Name;Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;Ljava/util/List;[B)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)I
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x501/Name;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getAttributes()Ljava/util/List;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    if-nez v0, :cond_c

    .line 111
    sget-object v0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    .line 113
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->encoding:[B

    return-object v0
.end method

.method public getSubject()Lorg/apache/harmony/security/x501/Name;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    return-object v0
.end method

.method public getSubjectPublicKeyInfo()Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;
    .registers 2

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v0, res:Ljava/lang/StringBuffer;
    const-string v1, "-- CertificationRequestInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v1, "\n version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    iget v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->version:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 122
    const-string v1, "\n subject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subject:Lorg/apache/harmony/security/x501/Name;

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    const-string v1, "\n subjectPublicKeyInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\t public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->subjectPublicKeyInfo:Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v2}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "\n attributes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    if-eqz v1, :cond_81

    .line 130
    iget-object v1, p0, Lorg/apache/harmony/security/pkcs10/CertificationRequestInfo;->attributes:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    :goto_77
    const-string v1, "\n-- CertificationRequestInfo End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 132
    :cond_81
    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_77
.end method
