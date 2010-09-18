.class Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "PKIStatusInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 3
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 100
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    .line 101
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo$1;->setOptional(I)V

    .line 102
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"

    .prologue
    const/4 v6, 0x2

    .line 121
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v4, v0

    .line 123
    .local v4, values:[Ljava/lang/Object;
    const/4 v2, -0x1

    .line 124
    .local v2, failInfoValue:I
    aget-object v5, v4, v6

    if-eqz v5, :cond_1d

    .line 125
    aget-object v5, v4, v6

    if-nez v5, :cond_37

    const/4 v5, 0x0

    move-object v1, v5

    .line 127
    .local v1, failInfoBoolArray:[Z
    :goto_14
    const/4 v3, 0x0

    .local v3, i:I
    :goto_15
    array-length v5, v1

    if-ge v3, v5, :cond_1d

    .line 128
    aget-boolean v5, v1, v3

    if-eqz v5, :cond_41

    .line 129
    move v2, v3

    .line 134
    .end local v1           #failInfoBoolArray:[Z
    .end local v3           #i:I
    :cond_1d
    new-instance v5, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-static {v6}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v6

    const/4 v7, 0x1

    aget-object p0, v4, v7

    check-cast p0, Ljava/util/List;

    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getInstance(I)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v7

    invoke-direct {v5, v6, p0, v7}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;-><init>(Lorg/apache/harmony/security/x509/tsp/PKIStatus;Ljava/util/List;Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;)V

    return-object v5

    .line 125
    :cond_37
    aget-object p0, v4, v6

    check-cast p0, Lorg/apache/harmony/security/asn1/BitString;

    invoke-virtual {p0}, Lorg/apache/harmony/security/asn1/BitString;->toBooleanArray()[Z

    move-result-object v5

    move-object v1, v5

    goto :goto_14

    .line 127
    .restart local v1       #failInfoBoolArray:[Z
    .restart local v3       #i:I
    :cond_41
    add-int/lit8 v3, v3, 0x1

    goto :goto_15
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 11
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 105
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;

    move-object v2, v0

    .line 106
    .local v2, psi:Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;
    const/4 v3, 0x0

    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$000(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIStatus;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/harmony/security/x509/tsp/PKIStatus;->getStatus()I

    move-result v4

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    aput-object v4, p2, v3

    .line 108
    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$100(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v6

    .line 109
    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v3

    if-eqz v3, :cond_3e

    .line 111
    invoke-static {}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getMaxValue()I

    move-result v3

    new-array v1, v3, [Z

    .line 113
    .local v1, failInfoBoolArray:[Z
    invoke-static {v2}, Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;->access$200(Lorg/apache/harmony/security/x509/tsp/PKIStatusInfo;)Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/tsp/PKIFailureInfo;->getValue()I

    move-result v3

    aput-boolean v6, v1, v3

    .line 114
    new-instance v3, Lorg/apache/harmony/security/asn1/BitString;

    invoke-direct {v3, v1}, Lorg/apache/harmony/security/asn1/BitString;-><init>([Z)V

    aput-object v3, p2, v7

    .line 118
    .end local v1           #failInfoBoolArray:[Z
    :goto_3d
    return-void

    .line 116
    :cond_3e
    const/4 v3, 0x0

    aput-object v3, p2, v7

    goto :goto_3d
.end method
