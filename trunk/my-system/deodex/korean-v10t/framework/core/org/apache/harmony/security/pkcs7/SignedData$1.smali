.class Lorg/apache/harmony/security/pkcs7/SignedData$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "SignedData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/pkcs7/SignedData;
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
    .line 153
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    .line 139
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignedData$1;->setOptional(I)V

    .line 140
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lorg/apache/harmony/security/pkcs7/SignedData$1;->setOptional(I)V

    .line 141
    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 11
    .parameter "in"

    .prologue
    .line 154
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v8, v0

    .line 155
    .local v8, values:[Ljava/lang/Object;
    new-instance v1, Lorg/apache/harmony/security/pkcs7/SignedData;

    const/4 v2, 0x0

    aget-object v2, v8, v2

    invoke-static {v2}, Lorg/apache/harmony/security/asn1/ASN1Integer;->toIntValue(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x1

    aget-object v3, v8, v3

    check-cast v3, Ljava/util/List;

    const/4 v4, 0x2

    aget-object v4, v8, v4

    check-cast v4, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    const/4 v5, 0x3

    aget-object v5, v8, v5

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x4

    aget-object v6, v8, v6

    check-cast v6, Ljava/util/List;

    const/4 v7, 0x5

    aget-object v7, v8, v7

    check-cast v7, Ljava/util/List;

    invoke-direct/range {v1 .. v7}, Lorg/apache/harmony/security/pkcs7/SignedData;-><init>(ILjava/util/List;Lorg/apache/harmony/security/pkcs7/ContentInfo;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-object v1
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 9
    .parameter "object"
    .parameter "values"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 144
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/pkcs7/SignedData;

    move-object v1, v0

    .line 145
    .local v1, sd:Lorg/apache/harmony/security/pkcs7/SignedData;
    new-array v2, v5, [B

    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$000(Lorg/apache/harmony/security/pkcs7/SignedData;)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    aput-object v2, p2, v4

    .line 146
    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$100(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v2

    aput-object v2, p2, v5

    .line 147
    const/4 v2, 0x2

    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$200(Lorg/apache/harmony/security/pkcs7/SignedData;)Lorg/apache/harmony/security/pkcs7/ContentInfo;

    move-result-object v3

    aput-object v3, p2, v2

    .line 148
    const/4 v2, 0x3

    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$300(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 149
    const/4 v2, 0x4

    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$400(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 150
    const/4 v2, 0x5

    invoke-static {v1}, Lorg/apache/harmony/security/pkcs7/SignedData;->access$500(Lorg/apache/harmony/security/pkcs7/SignedData;)Ljava/util/List;

    move-result-object v3

    aput-object v3, p2, v2

    .line 151
    return-void
.end method
