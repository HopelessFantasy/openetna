.class public Lorg/apache/harmony/security/x509/PolicyConstraints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "PolicyConstraints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private encoding:[B

.field private final inhibitPolicyMapping:Ljava/math/BigInteger;

.field private final requireExplicitPolicy:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 145
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v4, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v4

    new-instance v2, Lorg/apache/harmony/security/asn1/ASN1Implicit;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    invoke-direct {v2, v5, v3}, Lorg/apache/harmony/security/asn1/ASN1Implicit;-><init>(ILorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v2, v1, v5

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, v0, v0}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 71
    return-void
.end method

.method public constructor <init>(II)V
    .registers 5
    .parameter "requireExplicitPolicy"
    .parameter "inhibitPolicyMapping"

    .prologue
    .line 90
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 91
    int-to-long v0, p1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    .line 92
    int-to-long v0, p2

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 93
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .registers 3
    .parameter "requireExplicitPolicy"
    .parameter "inhibitPolicyMapping"

    .prologue
    .line 79
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 80
    iput-object p1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    .line 81
    iput-object p2, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 82
    return-void
.end method

.method private constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 4
    .parameter "requireExplicitPolicy"
    .parameter "inhibitPolicyMapping"
    .parameter "encoding"

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 111
    iput-object p3, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    .line 112
    return-void
.end method

.method synthetic constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[BLorg/apache/harmony/security/x509/PolicyConstraints$1;)V
    .registers 5
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 4
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>([B)V

    .line 97
    sget-object v1, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    .line 98
    .local v0, pc:Lorg/apache/harmony/security/x509/PolicyConstraints;
    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    .line 99
    iget-object v1, v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    iput-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    .line 100
    return-void
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/PolicyConstraints;)Ljava/math/BigInteger;
    .registers 2
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v2, 0xa

    .line 130
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "PolicyConstraints: [\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    if-eqz v0, :cond_22

    .line 132
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  requireExplicitPolicy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->requireExplicitPolicy:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 135
    :cond_22
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    if-eqz v0, :cond_39

    .line 136
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "  inhibitPolicyMapping: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->inhibitPolicyMapping:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 139
    :cond_39
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    if-nez v0, :cond_c

    .line 120
    sget-object v0, Lorg/apache/harmony/security/x509/PolicyConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    .line 122
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/PolicyConstraints;->encoding:[B

    return-object v0
.end method
