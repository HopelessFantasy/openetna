.class Lorg/apache/harmony/security/x509/TBSCertList$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "TBSCertList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/TBSCertList;
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
    .line 429
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 407
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 408
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 409
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/x509/TBSCertList$1;->setOptional(I)V

    .line 410
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 14
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 414
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v11, v0

    .line 415
    .local v11, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/x509/TBSCertList;

    aget-object v2, v11, v3

    if-nez v2, :cond_37

    move v2, v4

    :goto_11
    aget-object v3, v11, v4

    check-cast v3, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    const/4 v4, 0x2

    aget-object v4, v11, v4

    check-cast v4, Lorg/apache/harmony/security/x501/Name;

    const/4 v5, 0x3

    aget-object v5, v11, v5

    check-cast v5, Ljava/util/Date;

    const/4 v6, 0x4

    aget-object v6, v11, v6

    check-cast v6, Ljava/util/Date;

    const/4 v7, 0x5

    aget-object v7, v11, v7

    check-cast v7, Ljava/util/List;

    const/4 v8, 0x6

    aget-object v8, v11, v8

    check-cast v8, Lorg/apache/harmony/security/x509/Extensions;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v1 .. v10}, Lorg/apache/harmony/security/x509/TBSCertList;-><init>(ILorg/apache/harmony/security/x509/AlgorithmIdentifier;Lorg/apache/harmony/security/x501/Name;Ljava/util/Date;Ljava/util/Date;Ljava/util/List;Lorg/apache/harmony/security/x509/Extensions;[BLorg/apache/harmony/security/x509/TBSCertList$1;)V

    return-object v1

    :cond_37
    aget-object v2, v11, v3

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_11
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 8
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    .line 430
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/TBSCertList;

    move-object v1, v0

    .line 431
    .local v1, tbs:Lorg/apache/harmony/security/x509/TBSCertList;
    const/4 v2, 0x0

    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$400(Lorg/apache/harmony/security/x509/TBSCertList;)I

    move-result v3

    if-le v3, v4, :cond_41

    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$400(Lorg/apache/harmony/security/x509/TBSCertList;)I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ASN1Integer;->fromIntValue(I)Ljava/lang/Object;

    move-result-object v3

    :goto_15
    aput-object v3, p2, v2

    .line 433
    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$500(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v2

    aput-object v2, p2, v4

    .line 434
    const/4 v2, 0x2

    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$600(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x501/Name;

    move-result-object v3

    aput-object v3, p2, v2

    .line 435
    const/4 v2, 0x3

    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$700(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 436
    const/4 v2, 0x4

    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$800(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/Date;

    move-result-object v3

    aput-object v3, p2, v2

    .line 437
    const/4 v2, 0x5

    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$900(Lorg/apache/harmony/security/x509/TBSCertList;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 438
    const/4 v2, 0x6

    invoke-static {v1}, Lorg/apache/harmony/security/x509/TBSCertList;->access$1000(Lorg/apache/harmony/security/x509/TBSCertList;)Lorg/apache/harmony/security/x509/Extensions;

    move-result-object v3

    aput-object v3, p2, v2

    .line 439
    return-void

    .line 431
    :cond_41
    const/4 v3, 0x0

    goto :goto_15
.end method
