.class public Lorg/apache/harmony/security/x509/Extension;
.super Ljava/lang/Object;
.source "Extension.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence; = null

.field public static final AUTHORITY_INFO_ACCESS:[I = null

.field public static final AUTH_KEY_ID:[I = null

.field public static final BASIC_CONSTRAINTS:[I = null

.field public static final CERTIFICATE_ISSUER:[I = null

.field public static final CERTIFICATE_POLICIES:[I = null

.field public static final CRITICAL:Z = true

.field public static final CRL_DISTR_POINTS:[I

.field public static final CRL_NUMBER:[I

.field public static final EXTENDED_KEY_USAGE:[I

.field public static final FRESHEST_CRL:[I

.field public static final INHIBIT_ANY_POLICY:[I

.field public static final INVALIDITY_DATE:[I

.field public static final ISSUER_ALTERNATIVE_NAME:[I

.field public static final ISSUING_DISTR_POINT:[I

.field public static final ISSUING_DISTR_POINTS:[I

.field public static final KEY_USAGE:[I

.field public static final NAME_CONSTRAINTS:[I

.field public static final NON_CRITICAL:Z

.field public static final POLICY_CONSTRAINTS:[I

.field public static final POLICY_MAPPINGS:[I

.field public static final PRIVATE_KEY_USAGE_PERIOD:[I

.field public static final REASON_CODE:[I

.field public static final SUBJECT_ALT_NAME:[I

.field public static final SUBJECT_INFO_ACCESS:[I

.field public static final SUBJ_DIRECTORY_ATTRS:[I

.field public static final SUBJ_KEY_ID:[I


# instance fields
.field private final critical:Z

.field private encoding:[B

.field private final extnID:[I

.field private extnID_str:Ljava/lang/String;

.field private final extnValue:[B

.field protected extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

.field private rawExtnValue:[B

.field private valueDecoded:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/16 v2, 0x9

    const/4 v1, 0x4

    .line 61
    new-array v0, v1, [I

    fill-array-data v0, :array_cc

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_d8

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    .line 63
    new-array v0, v1, [I

    fill-array-data v0, :array_e4

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    .line 64
    new-array v0, v1, [I

    fill-array-data v0, :array_f0

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_fc

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_108

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    .line 67
    new-array v0, v1, [I

    fill-array-data v0, :array_114

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    .line 68
    new-array v0, v1, [I

    fill-array-data v0, :array_120

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_12c

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    .line 70
    new-array v0, v1, [I

    fill-array-data v0, :array_138

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    .line 71
    new-array v0, v1, [I

    fill-array-data v0, :array_144

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    .line 72
    new-array v0, v1, [I

    fill-array-data v0, :array_150

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    .line 73
    new-array v0, v1, [I

    fill-array-data v0, :array_15c

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    .line 74
    new-array v0, v1, [I

    fill-array-data v0, :array_168

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    .line 75
    new-array v0, v1, [I

    fill-array-data v0, :array_174

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->FRESHEST_CRL:[I

    .line 76
    new-array v0, v1, [I

    fill-array-data v0, :array_180

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    .line 77
    new-array v0, v2, [I

    fill-array-data v0, :array_18c

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    .line 79
    new-array v0, v2, [I

    fill-array-data v0, :array_1a2

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    .line 82
    new-array v0, v1, [I

    fill-array-data v0, :array_1b8

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINT:[I

    .line 84
    new-array v0, v1, [I

    fill-array-data v0, :array_1c4

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    .line 85
    new-array v0, v1, [I

    fill-array-data v0, :array_1d0

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    .line 86
    new-array v0, v1, [I

    fill-array-data v0, :array_1dc

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    .line 87
    new-array v0, v1, [I

    fill-array-data v0, :array_1e8

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    .line 88
    new-array v0, v1, [I

    fill-array-data v0, :array_1f4

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    .line 408
    new-instance v0, Lorg/apache/harmony/security/x509/Extension$2;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Oid;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Oid;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Boolean;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/apache/harmony/security/x509/Extension$1;

    invoke-direct {v3}, Lorg/apache/harmony/security/x509/Extension$1;-><init>()V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/Extension$2;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void

    .line 61
    :array_cc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
    .end array-data

    .line 62
    :array_d8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 63
    :array_e4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
    .end array-data

    .line 64
    :array_f0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
    .end array-data

    .line 65
    :array_fc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 66
    :array_108
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_114
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 68
    :array_120
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
    .end array-data

    .line 69
    :array_12c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 70
    :array_138
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
    .end array-data

    .line 71
    :array_144
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
    .end array-data

    .line 72
    :array_150
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x23t 0x0t 0x0t 0x0t
    .end array-data

    .line 73
    :array_15c
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x24t 0x0t 0x0t 0x0t
    .end array-data

    .line 74
    :array_168
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x25t 0x0t 0x0t 0x0t
    .end array-data

    .line 75
    :array_174
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 76
    :array_180
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    .line 77
    :array_18c
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    .line 79
    :array_1a2
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    .line 82
    :array_1b8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data

    .line 84
    :array_1c4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 85
    :array_1d0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
    .end array-data

    .line 86
    :array_1dc
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x18t 0x0t 0x0t 0x0t
    .end array-data

    .line 87
    :array_1e8
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    .line 88
    :array_1f4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x1dt 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;ZLorg/apache/harmony/security/x509/ExtensionValue;)V
    .registers 5
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValueObject"

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 114
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 115
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 116
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 117
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 119
    invoke-virtual {p3}, Lorg/apache/harmony/security/x509/ExtensionValue;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z[B)V
    .registers 5
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValue"

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 129
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 130
    invoke-static {p1}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 131
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 132
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 4
    .parameter "extnID"
    .parameter "extnValue"

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>(Ljava/lang/String;Z[B)V

    .line 154
    return-void
.end method

.method public constructor <init>([IZ[B)V
    .registers 5
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValue"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 142
    iput-object p1, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    .line 143
    iput-boolean p2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    .line 144
    iput-object p3, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    .line 145
    return-void
.end method

.method private constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V
    .registers 8
    .parameter "extnID"
    .parameter "critical"
    .parameter "extnValue"
    .parameter "rawExtnValue"
    .parameter "encoding"
    .parameter "decodedExtValue"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 176
    iput-object p4, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 177
    iput-object p5, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 178
    iput-object p6, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .line 179
    if-eqz p6, :cond_f

    const/4 v0, 0x1

    :goto_c
    iput-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 180
    return-void

    .line 179
    :cond_f
    const/4 v0, 0x0

    goto :goto_c
.end method

.method synthetic constructor <init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;Lorg/apache/harmony/security/x509/Extension$1;)V
    .registers 8
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 54
    invoke-direct/range {p0 .. p6}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B[B[BLorg/apache/harmony/security/x509/ExtensionValue;)V

    return-void
.end method

.method public constructor <init>([I[B)V
    .registers 4
    .parameter "extnID"
    .parameter "extnValue"

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/harmony/security/x509/Extension;-><init>([IZ[B)V

    .line 163
    return-void
.end method

.method static synthetic access$000([I[I)Z
    .registers 3
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-static {p0, p1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/Extension;)[I
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    return-object v0
.end method

.method static synthetic access$300(Lorg/apache/harmony/security/x509/Extension;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method

.method static synthetic access$400(Lorg/apache/harmony/security/x509/Extension;)[B
    .registers 2
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method private decodeExtensionValue()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 276
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-eqz v0, :cond_6

    .line 323
    :cond_5
    :goto_5
    return-void

    .line 279
    :cond_6
    iput-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    .line 280
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 281
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/SubjectKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_5

    .line 282
    :cond_1b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 283
    new-instance v0, Lorg/apache/harmony/security/x509/KeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/KeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_5

    .line 284
    :cond_2f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 285
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_5

    .line 287
    :cond_43
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 288
    new-instance v0, Lorg/apache/harmony/security/x509/AlternativeName;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v2, v1}, Lorg/apache/harmony/security/x509/AlternativeName;-><init>(Z[B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_5

    .line 290
    :cond_57
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 291
    new-instance v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/BasicConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_5

    .line 292
    :cond_6b
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_7e

    .line 293
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->decode([B)Lorg/apache/harmony/security/x509/NameConstraints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto :goto_5

    .line 294
    :cond_7e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_92

    .line 295
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CertificatePolicies;->decode([B)Lorg/apache/harmony/security/x509/CertificatePolicies;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 296
    :cond_92
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a6

    .line 297
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;->decode([B)Lorg/apache/harmony/security/x509/AuthorityKeyIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 298
    :cond_a6
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_bb

    .line 299
    new-instance v0, Lorg/apache/harmony/security/x509/PolicyConstraints;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/PolicyConstraints;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 300
    :cond_bb
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_d0

    .line 301
    new-instance v0, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ExtendedKeyUsage;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 302
    :cond_d0
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 303
    new-instance v0, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InhibitAnyPolicy;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 304
    :cond_e5
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_fa

    .line 305
    new-instance v0, Lorg/apache/harmony/security/x509/CertificateIssuer;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CertificateIssuer;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 306
    :cond_fa
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 307
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 308
    :cond_10e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_ISSUER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_123

    .line 309
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 310
    :cond_123
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_138

    .line 311
    new-instance v0, Lorg/apache/harmony/security/x509/InvalidityDate;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/InvalidityDate;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 312
    :cond_138
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_14d

    .line 313
    new-instance v0, Lorg/apache/harmony/security/x509/ReasonCode;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/ReasonCode;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 314
    :cond_14d
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_162

    .line 315
    new-instance v0, Lorg/apache/harmony/security/x509/CRLNumber;

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLNumber;-><init>([B)V

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 316
    :cond_162
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUING_DISTR_POINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_176

    .line 317
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/IssuingDistributionPoint;->decode([B)Lorg/apache/harmony/security/x509/IssuingDistributionPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 318
    :cond_176
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_18a

    .line 319
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5

    .line 320
    :cond_18a
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0}, Lorg/apache/harmony/security/x509/InfoAccessSyntax;->decode([B)Lorg/apache/harmony/security/x509/InfoAccessSyntax;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    goto/16 :goto_5
.end method

.method private static oidEquals([I[I)Z
    .registers 6
    .parameter "oid1"
    .parameter "oid2"

    .prologue
    const/4 v3, 0x0

    .line 393
    array-length v0, p0

    .line 394
    .local v0, length:I
    array-length v1, p1

    if-eq v0, v1, :cond_7

    move v1, v3

    .line 402
    :goto_6
    return v1

    .line 397
    :cond_7
    if-lez v0, :cond_13

    .line 398
    add-int/lit8 v0, v0, -0x1

    aget v1, p0, v0

    aget v2, p1, v0

    if-eq v1, v2, :cond_7

    move v1, v3

    .line 399
    goto :goto_6

    .line 402
    :cond_13
    const/4 v1, 0x1

    goto :goto_6
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 6
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const/16 v2, 0xa

    .line 329
    const-string v0, "OID: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/harmony/security/x509/Extension;->getExtnID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", Critical: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-boolean v1, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 331
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_26

    .line 333
    :try_start_23
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_19d

    .line 336
    :cond_26
    :goto_26
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    if-eqz v0, :cond_30

    .line 337
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/security/x509/ExtensionValue;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 388
    :goto_2f
    return-void

    .line 341
    :cond_30
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_DIRECTORY_ATTRS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 343
    const-string v0, "Subject Directory Attributes Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 385
    :goto_42
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "Unparsed Extension Value:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 387
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v0, p2}, Lorg/apache/harmony/security/utils/Array;->toString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2f

    .line 344
    :cond_59
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJ_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 345
    const-string v0, "Subject Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 346
    :cond_69
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 347
    const-string v0, "Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 348
    :cond_79
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->PRIVATE_KEY_USAGE_PERIOD:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_89

    .line 349
    const-string v0, "Private Key Usage Period Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 350
    :cond_89
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_ALT_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_99

    .line 351
    const-string v0, "Subject Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 352
    :cond_99
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->ISSUER_ALTERNATIVE_NAME:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 353
    const-string v0, "Issuer Alternative Name Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 354
    :cond_a9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->BASIC_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 355
    const-string v0, "Basic Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 356
    :cond_b9
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->NAME_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 357
    const-string v0, "Name Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 358
    :cond_ca
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_DISTR_POINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_db

    .line 359
    const-string v0, "CRL Distribution Points Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 360
    :cond_db
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CERTIFICATE_POLICIES:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 361
    const-string v0, "Certificate Policies Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 362
    :cond_ec
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_MAPPINGS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_fd

    .line 363
    const-string v0, "Policy Mappings Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 364
    :cond_fd
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTH_KEY_ID:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 365
    const-string v0, "Authority Key Identifier Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 366
    :cond_10e
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->POLICY_CONSTRAINTS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_11f

    .line 367
    const-string v0, "Policy Constraints Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 368
    :cond_11f
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->EXTENDED_KEY_USAGE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_130

    .line 369
    const-string v0, "Extended Key Usage Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 370
    :cond_130
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INHIBIT_ANY_POLICY:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 371
    const-string v0, "Inhibit Any-Policy Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 372
    :cond_141
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->AUTHORITY_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 373
    const-string v0, "Authority Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 374
    :cond_152
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->SUBJECT_INFO_ACCESS:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 375
    const-string v0, "Subject Information Access Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 376
    :cond_163
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->INVALIDITY_DATE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_174

    .line 377
    const-string v0, "Invalidity Date Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 378
    :cond_174
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->CRL_NUMBER:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_185

    .line 379
    const-string v0, "CRL Number Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 380
    :cond_185
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    sget-object v1, Lorg/apache/harmony/security/x509/Extension;->REASON_CODE:[I

    invoke-static {v0, v1}, Lorg/apache/harmony/security/x509/Extension;->oidEquals([I[I)Z

    move-result v0

    if-eqz v0, :cond_196

    .line 381
    const-string v0, "Reason Code Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 383
    :cond_196
    const-string v0, "Unknown Extension"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_42

    .line 334
    :catch_19d
    move-exception v0

    goto/16 :goto_26
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .parameter "ext"

    .prologue
    const/4 v4, 0x0

    .line 233
    instance-of v2, p1, Lorg/apache/harmony/security/x509/Extension;

    if-nez v2, :cond_7

    move v2, v4

    .line 237
    :goto_6
    return v2

    .line 236
    :cond_7
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/Extension;

    move-object v1, v0

    .line 237
    .local v1, extn:Lorg/apache/harmony/security/x509/Extension;
    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    iget-object v3, v1, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-boolean v2, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    iget-boolean v3, v1, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    if-ne v2, v3, :cond_27

    iget-object v2, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    iget-object v3, v1, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_27

    const/4 v2, 0x1

    goto :goto_6

    :cond_27
    move v2, v4

    goto :goto_6
.end method

.method public getBasicConstraintsValue()Lorg/apache/harmony/security/x509/BasicConstraints;
    .registers 2

    .prologue
    .line 263
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_7

    .line 265
    :try_start_4
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_15

    .line 268
    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/BasicConstraints;

    if-eqz v0, :cond_13

    .line 269
    iget-object p0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/BasicConstraints;

    move-object v0, p0

    .line 271
    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    const/4 v0, 0x0

    goto :goto_12

    .line 266
    :catch_15
    move-exception v0

    goto :goto_7
.end method

.method public getCritical()Z
    .registers 2

    .prologue
    .line 198
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->critical:Z

    return v0
.end method

.method public getDecodedExtensionValue()Lorg/apache/harmony/security/x509/ExtensionValue;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 243
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_7

    .line 244
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V

    .line 246
    :cond_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    return-object v0
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    if-nez v0, :cond_c

    .line 227
    sget-object v0, Lorg/apache/harmony/security/x509/Extension;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    .line 229
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->encoding:[B

    return-object v0
.end method

.method public getExtnID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 187
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    if-nez v0, :cond_c

    .line 188
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID:[I

    invoke-static {v0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    .line 190
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnID_str:Ljava/lang/String;

    return-object v0
.end method

.method public getExtnValue()[B
    .registers 2

    .prologue
    .line 206
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    return-object v0
.end method

.method public getKeyUsageValue()Lorg/apache/harmony/security/x509/KeyUsage;
    .registers 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lorg/apache/harmony/security/x509/Extension;->valueDecoded:Z

    if-nez v0, :cond_7

    .line 252
    :try_start_4
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/Extension;->decodeExtensionValue()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_15

    .line 255
    :cond_7
    :goto_7
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    instance-of v0, v0, Lorg/apache/harmony/security/x509/KeyUsage;

    if-eqz v0, :cond_13

    .line 256
    iget-object p0, p0, Lorg/apache/harmony/security/x509/Extension;->extnValueObject:Lorg/apache/harmony/security/x509/ExtensionValue;

    .end local p0
    check-cast p0, Lorg/apache/harmony/security/x509/KeyUsage;

    move-object v0, p0

    .line 258
    :goto_12
    return-object v0

    .restart local p0
    :cond_13
    const/4 v0, 0x0

    goto :goto_12

    .line 253
    :catch_15
    move-exception v0

    goto :goto_7
.end method

.method public getRawExtnValue()[B
    .registers 3

    .prologue
    .line 215
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    if-nez v0, :cond_10

    .line 216
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/harmony/security/x509/Extension;->extnValue:[B

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    .line 218
    :cond_10
    iget-object v0, p0, Lorg/apache/harmony/security/x509/Extension;->rawExtnValue:[B

    return-object v0
.end method
