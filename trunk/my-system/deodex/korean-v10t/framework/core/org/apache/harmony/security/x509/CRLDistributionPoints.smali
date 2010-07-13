.class public Lorg/apache/harmony/security/x509/CRLDistributionPoints;
.super Lorg/apache/harmony/security/x509/ExtensionValue;
.source "CRLDistributionPoints.java"


# static fields
.field public static final ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;


# instance fields
.field private distributionPoints:Ljava/util/List;

.field private encoding:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 123
    new-instance v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;

    sget-object v1, Lorg/apache/harmony/security/x509/DistributionPoint;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/x509/CRLDistributionPoints$1;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    sput-object v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .registers 4
    .parameter "distributionPoints"

    .prologue
    .line 75
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 76
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 78
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.17D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_17
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/util/List;[B)V
    .registers 5
    .parameter "distributionPoints"
    .parameter "encoding"

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/apache/harmony/security/x509/ExtensionValue;-><init>()V

    .line 84
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_17

    .line 86
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.17D"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_17
    iput-object p1, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    .line 89
    iput-object p2, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    .line 90
    return-void
.end method

.method static synthetic access$000(Lorg/apache/harmony/security/x509/CRLDistributionPoints;)Ljava/util/List;
    .registers 2
    .parameter "x0"

    .prologue
    .line 70
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    return-object v0
.end method

.method public static decode([B)Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    .registers 3
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    sget-object v1, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v1, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;

    .line 102
    .local v0, cdp:Lorg/apache/harmony/security/x509/CRLDistributionPoints;
    return-object v0
.end method


# virtual methods
.method public dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 8
    .parameter "buffer"
    .parameter "prefix"

    .prologue
    const-string v4, "]\n"

    .line 110
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "CRL Distribution Points: [\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    const/4 v1, 0x0

    .line 112
    .local v1, number:I
    iget-object v2, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->distributionPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 113
    .end local p0
    .local v0, it:Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 114
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/DistributionPoint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/apache/harmony/security/x509/DistributionPoint;->dumpValue(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    goto :goto_12

    .line 117
    :cond_4a
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    return-void
.end method

.method public getEncoded()[B
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    if-nez v0, :cond_c

    .line 94
    sget-object v0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/security/asn1/ASN1Type;->encode(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    .line 96
    :cond_c
    iget-object v0, p0, Lorg/apache/harmony/security/x509/CRLDistributionPoints;->encoding:[B

    return-object v0
.end method
