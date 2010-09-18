.class public Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
.super Ljava/lang/Object;
.source "PKIStatusInfo.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;


# instance fields
.field private final failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

.field private final status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

.field private final statusString:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 95
    new-instance v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;

    const/4 v1, 0x3

    new-array v1, v1, [Lorg/apache/harmony/security/asn1/ASN1Type;

    const/4 v2, 0x0

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;

    sget-object v4, Lorg/apache/harmony/security/asn1/ASN1StringType;->UTF8STRING:Lorg/apache/harmony/security/asn1/ASN1StringType;

    invoke-direct {v3, v4}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1BitString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1BitString;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V
    .registers 4
    .parameter "pKIStatus"
    .parameter "statusString"
    .parameter "failInfo"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    .line 57
    iput-object p2, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    .line 58
    iput-object p3, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    .line 59
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method

.method static synthetic access$100(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .registers 2
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-object v0
.end method


# virtual methods
.method public getFailInfo()Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    return-object v0
.end method

.method public getStatus()Lorg/apache/harmony/security/x509/tsp/PKIStatus;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    return-object v0
.end method

.method public getStatusString()Ljava/util/List;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v0, res:Ljava/lang/StringBuffer;
    const-string v1, "-- PKIStatusInfo:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    const-string v1, "\nPKIStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 65
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->status:Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 66
    const-string v1, "\nstatusString:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->statusString:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "\nfailInfo:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    iget-object v1, p0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->failInfo:Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "\n-- PKIStatusInfo End\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
