.class Lorg/apache/harmony/security/x509/DistributionPoint$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "DistributionPoint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/DistributionPoint;
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
    .line 137
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    .line 128
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/DistributionPoint$1;->setOptional(I)V

    .line 129
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 7
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 133
    .local v1, values:[Ljava/lang/Object;
    new-instance v4, Lorg/apache/harmony/security/x509/DistributionPoint;

    const/4 v2, 0x0

    aget-object p0, v1, v2

    check-cast p0, Lorg/apache/harmony/security/x509/DistributionPointName;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    check-cast v2, Lorg/apache/harmony/security/x509/ReasonFlags;

    const/4 v3, 0x2

    aget-object v3, v1, v3

    check-cast v3, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-direct {v4, p0, v2, v3}, Lorg/apache/harmony/security/x509/DistributionPoint;-><init>(Lorg/apache/harmony/security/x509/DistributionPointName;Lorg/apache/harmony/security/x509/ReasonFlags;Lorg/apache/harmony/security/x509/GeneralNames;)V

    return-object v4
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 138
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/DistributionPoint;

    move-object v1, v0

    .line 139
    .local v1, dp:Lorg/apache/harmony/security/x509/DistributionPoint;
    const/4 v2, 0x0

    invoke-static {v1}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$000(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/DistributionPointName;

    move-result-object v3

    aput-object v3, p2, v2

    .line 140
    const/4 v2, 0x1

    invoke-static {v1}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$100(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/ReasonFlags;

    move-result-object v3

    aput-object v3, p2, v2

    .line 141
    const/4 v2, 0x2

    invoke-static {v1}, Lorg/apache/harmony/security/x509/DistributionPoint;->access$200(Lorg/apache/harmony/security/x509/DistributionPoint;)Lorg/apache/harmony/security/x509/GeneralNames;

    move-result-object v3

    aput-object v3, p2, v2

    .line 142
    return-void
.end method
