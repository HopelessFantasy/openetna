.class public Lorg/bouncycastle/asn1/util/DERDump;
.super Lorg/bouncycastle/asn1/util/ASN1Dump;
.source "DERDump.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Lorg/bouncycastle/asn1/util/ASN1Dump;-><init>()V

    return-void
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/DEREncodable;)Ljava/lang/String;
    .registers 3
    .parameter "obj"

    .prologue
    .line 31
    const-string v0, ""

    invoke-interface {p0}, Lorg/bouncycastle/asn1/DEREncodable;->getDERObject()Lorg/bouncycastle/asn1/DERObject;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpAsString(Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;
    .registers 2
    .parameter "obj"

    .prologue
    .line 20
    const-string v0, ""

    invoke-static {v0, p0}, Lorg/bouncycastle/asn1/util/DERDump;->_dumpAsString(Ljava/lang/String;Lorg/bouncycastle/asn1/DERObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
