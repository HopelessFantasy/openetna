.class Lorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;
.super Lorg/apache/harmony/security/asn1/ASN1SequenceOf;
.source "X509CertPathImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V
    .registers 2
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    invoke-direct {p0, p1}, Lorg/apache/harmony/security/asn1/ASN1SequenceOf;-><init>(Lorg/apache/harmony/security/asn1/ASN1Type;)V

    return-void
.end method


# virtual methods
.method public getDecodedObject(Lorg/apache/harmony/security/asn1/BerInputStream;)Ljava/lang/Object;
    .registers 10
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    iget-object v1, p1, Lorg/apache/harmony/security/asn1/BerInputStream;->content:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 328
    .local v1, encodings:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 329
    .local v3, size:I
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 330
    .local v0, certificates:Ljava/util/List;
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_e
    if-ge v2, v3, :cond_2b

    .line 333
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    sget-object v5, Lorg/apache/harmony/security/x509/Certificate;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 338
    :cond_2b
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lorg/apache/harmony/security/asn1/BerInputStream;->getEncoded()[B

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v0, v5, v6, v7}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;I[BLorg/apache/harmony/security/provider/cert/X509CertPathImpl$1;)V

    return-object v4
.end method

.method public getValues(Ljava/lang/Object;)Ljava/util/Collection;
    .registers 10
    .parameter "object"

    .prologue
    .line 349
    move-object v0, p1

    check-cast v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-object v1, v0

    .line 351
    .local v1, cp:Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;
    invoke-static {v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$100(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_10

    .line 352
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 366
    .end local p0
    :goto_f
    return-object v6

    .line 354
    .restart local p0
    :cond_10
    invoke-static {v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$100(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v5

    .line 355
    .local v5, size:I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 357
    .local v3, encodings:Ljava/util/List;
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_1e
    if-ge v4, v5, :cond_42

    .line 360
    :try_start_20
    invoke-static {v1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->access$100(Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_31
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_20 .. :try_end_31} :catch_34

    .line 357
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 363
    :catch_34
    move-exception v6

    move-object v2, v6

    .line 364
    .local v2, e:Ljava/security/cert/CertificateEncodingException;
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "security.161"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v2           #e:Ljava/security/cert/CertificateEncodingException;
    :cond_42
    move-object v6, v3

    .line 366
    goto :goto_f
.end method
