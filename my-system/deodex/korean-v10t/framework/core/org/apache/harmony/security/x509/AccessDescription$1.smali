.class Lorg/apache/harmony/security/x509/AccessDescription$1;
.super Lorg/apache/harmony/security/asn1/ASN1Sequence;
.source "AccessDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/x509/AccessDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;-><init>([Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method protected getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 8
    .parameter "in"

    .prologue
    .line 105
    iget-object p0, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    move-object v1, v0

    .line 106
    .local v1, values:[Ljava/lang/Object;
    new-instance v2, Lorg/apache/harmony/security/x509/AccessDescription;

    const/4 v3, 0x0

    aget-object p0, v1, v3

    check-cast p0, [I

    check-cast p0, [I

    invoke-static {p0}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toString([I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aget-object p0, v1, v4

    check-cast p0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v2, v3, p0, v4, v5}, Lorg/apache/harmony/security/x509/AccessDescription;-><init>(Ljava/lang/String;Lorg/apache/harmony/security/x509/GeneralName;[BLorg/apache/harmony/security/x509/AccessDescription$1;)V

    return-object v2
.end method

.method protected getValues(Ljava/lang/Object;[Ljava/lang/Object;)V
    .registers 7
    .parameter "object"
    .parameter "values"

    .prologue
    .line 113
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/x509/AccessDescription;

    move-object v1, v0

    .line 115
    .local v1, ad:Lorg/apache/harmony/security/x509/AccessDescription;
    const/4 v2, 0x0

    invoke-static {v1}, Lorg/apache/harmony/security/x509/AccessDescription;->access$100(Lorg/apache/harmony/security/x509/AccessDescription;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/harmony/security/asn1/ObjectIdentifier;->toIntArray(Ljava/lang/String;)[I

    move-result-object v3

    aput-object v3, p2, v2

    .line 116
    const/4 v2, 0x1

    invoke-static {v1}, Lorg/apache/harmony/security/x509/AccessDescription;->access$200(Lorg/apache/harmony/security/x509/AccessDescription;)Lorg/apache/harmony/security/x509/GeneralName;

    move-result-object v3

    aput-object v3, p2, v2

    .line 117
    return-void
.end method
