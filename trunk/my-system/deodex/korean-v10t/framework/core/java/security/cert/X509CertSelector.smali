.class public Ljava/security/cert/X509CertSelector;
.super Ljava/lang/Object;
.source "X509CertSelector.java"

# interfaces
.implements Ljava/security/cert/CertSelector;


# instance fields
.field private authorityKeyIdentifier:[B

.field private certificateEquals:Ljava/security/cert/X509Certificate;

.field private certificateValid:Ljava/util/Date;

.field private extendedKeyUsage:Ljava/util/Set;

.field private issuer:Ljavax/security/auth/x500/X500Principal;

.field private issuerBytes:[B

.field private issuerName:Ljava/lang/String;

.field private keyUsage:[Z

.field private matchAllNames:Z

.field private nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

.field private pathLen:I

.field private pathToNames:Ljava/util/ArrayList;

.field private policies:Ljava/util/Set;

.field private privateKeyValid:Ljava/util/Date;

.field private serialNumber:Ljava/math/BigInteger;

.field private subject:Ljavax/security/auth/x500/X500Principal;

.field private subjectAltNames:[Ljava/util/List;

.field private subjectKeyIdentifier:[B

.field private subjectPublicKey:[B

.field private subjectPublicKeyAlgID:Ljava/lang/String;

.field private subjectPublicKeyImpl:Ljava/security/PublicKey;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    .line 87
    return-void
.end method

.method private checkOID(Ljava/lang/String;)V
    .registers 9
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x2e

    const-string v6, "security.56"

    .line 490
    const/4 v0, 0x0

    .line 491
    .local v0, beg:I
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 493
    .local v3, end:I
    :try_start_9
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 494
    .local v1, comp:I
    add-int/lit8 v0, v3, 0x1

    .line 495
    if-ltz v1, :cond_18

    const/4 v4, 0x2

    if-le v1, v4, :cond_32

    .line 496
    :cond_18
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.56"

    invoke-static {v5, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_24
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_9 .. :try_end_24} :catch_24
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_24} :catch_52

    .line 503
    .end local v1           #comp:I
    :catch_24
    move-exception v4

    move-object v2, v4

    .line 504
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.56"

    invoke-static {v6, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 498
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #comp:I
    :cond_32
    const/16 v4, 0x2e

    :try_start_34
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 499
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 500
    if-ltz v1, :cond_46

    const/16 v4, 0x27

    if-le v1, v4, :cond_60

    .line 501
    :cond_46
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.56"

    invoke-static {v5, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_52
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_34 .. :try_end_52} :catch_24
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_52} :catch_52

    .line 505
    .end local v1           #comp:I
    :catch_52
    move-exception v4

    move-object v2, v4

    .line 506
    .local v2, e:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.56"

    invoke-static {v6, p1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 508
    .end local v2           #e:Ljava/lang/NumberFormatException;
    .restart local v1       #comp:I
    :cond_60
    return-void
.end method

.method private getBytesAsString([B)Ljava/lang/String;
    .registers 7
    .parameter "data"

    .prologue
    .line 1187
    const-string v1, ""

    .line 1188
    .local v1, result:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    array-length v3, p1

    if-ge v0, v3, :cond_42

    .line 1189
    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 1190
    .local v2, tail:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_28

    .line 1191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1193
    :cond_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1188
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1195
    .end local v2           #tail:Ljava/lang/String;
    :cond_42
    return-object v1
.end method

.method private getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .registers 7
    .parameter "cert"
    .parameter "oid"

    .prologue
    const/4 v3, 0x0

    .line 1200
    :try_start_1
    invoke-virtual {p1, p2}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    .line 1201
    .local v0, bytes:[B
    if-nez v0, :cond_9

    move-object v2, v3

    .line 1206
    .end local v0           #bytes:[B
    .end local p0
    :goto_8
    return-object v2

    .line 1204
    .restart local v0       #bytes:[B
    .restart local p0
    :cond_9
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [B

    check-cast p0, [B
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_17

    move-object v2, p0

    goto :goto_8

    .line 1205
    .end local v0           #bytes:[B
    :catch_17
    move-exception v2

    move-object v1, v2

    .local v1, e:Ljava/io/IOException;
    move-object v2, v3

    .line 1206
    goto :goto_8
.end method


# virtual methods
.method public addPathToName(ILjava/lang/String;)V
    .registers 5
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1031
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 1033
    .local v0, path_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 1034
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 1036
    :cond_10
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    return-void
.end method

.method public addPathToName(I[B)V
    .registers 5
    .parameter "type"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1052
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    .line 1054
    .local v0, path_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v1, :cond_10

    .line 1055
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 1057
    :cond_10
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1058
    return-void
.end method

.method public addSubjectAlternativeName(ILjava/lang/String;)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 751
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(ILjava/lang/String;)V

    .line 753
    .local v0, alt_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_f

    .line 754
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 756
    :cond_f
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1e

    .line 757
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    .line 759
    :cond_1e
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 760
    return-void
.end method

.method public addSubjectAlternativeName(I[B)V
    .registers 6
    .parameter "tag"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    new-instance v0, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-direct {v0, p1, p2}, Lorg/apache/harmony/security/x509/GeneralName;-><init>(I[B)V

    .line 777
    .local v0, alt_name:Lorg/apache/harmony/security/x509/GeneralName;
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v1, :cond_f

    .line 778
    const/16 v1, 0x9

    new-array v1, v1, [Ljava/util/ArrayList;

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 780
    :cond_f
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    if-nez v1, :cond_1e

    .line 781
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, p1

    .line 783
    :cond_1e
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 784
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 9

    .prologue
    const/16 v7, 0x9

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1460
    new-instance v1, Ljava/security/cert/X509CertSelector;

    invoke-direct {v1}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 1461
    .local v1, result:Ljava/security/cert/X509CertSelector;
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    .line 1462
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    .line 1463
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 1464
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 1465
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v2, :cond_2e

    .line 1466
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 1468
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v3, v1, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1472
    :cond_2e
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v2, :cond_43

    .line 1473
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 1475
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v3, v1, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1479
    :cond_43
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 1480
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    .line 1481
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 1482
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v2, :cond_64

    .line 1483
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v2, v2

    new-array v2, v2, [B

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 1484
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v3, v1, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1487
    :cond_64
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v2, :cond_79

    .line 1488
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    new-array v2, v2, [Z

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 1489
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v3, v1, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v4, v4

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1492
    :cond_79
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-nez v2, :cond_a9

    move-object v2, v6

    :goto_7e
    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    .line 1495
    iget-boolean v2, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    iput-boolean v2, v1, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    .line 1496
    iget v2, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    iput v2, v1, Ljava/security/cert/X509CertSelector;->pathLen:I

    .line 1497
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v2, :cond_b1

    .line 1498
    new-array v2, v7, [Ljava/util/ArrayList;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 1499
    const/4 v0, 0x0

    .local v0, i:I
    :goto_91
    if-ge v0, v7, :cond_b1

    .line 1500
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v2, v2, v0

    if-eqz v2, :cond_a6

    .line 1501
    iget-object v2, v1, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v0

    .line 1499
    :cond_a6
    add-int/lit8 v0, v0, 0x1

    goto :goto_91

    .line 1492
    .end local v0           #i:I
    :cond_a9
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_7e

    .line 1506
    :cond_b1
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    .line 1507
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-nez v2, :cond_c8

    move-object v2, v6

    :goto_ba
    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    .line 1510
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v2, :cond_d0

    move-object v2, v6

    :goto_c1
    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 1513
    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    iput-object v2, v1, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    .line 1515
    return-object v1

    .line 1507
    :cond_c8
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_ba

    .line 1510
    :cond_d0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c1
.end method

.method public getAuthorityKeyIdentifier()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 418
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-nez v1, :cond_7

    .line 419
    const/4 v1, 0x0

    .line 423
    :goto_6
    return-object v1

    .line 421
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 422
    .local v0, res:[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 423
    goto :goto_6
.end method

.method public getBasicConstraints()I
    .registers 2

    .prologue
    .line 927
    iget v0, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    return v0
.end method

.method public getCertificate()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getCertificateValid()Ljava/util/Date;
    .registers 2

    .prologue
    .line 449
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    .end local p0
    :goto_5
    return-object v0

    .restart local p0
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    goto :goto_5
.end method

.method public getExtendedKeyUsage()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 658
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    return-object v0
.end method

.method public getIssuer()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getIssuerAsBytes()[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v1, :cond_7

    .line 242
    const/4 v1, 0x0

    .line 249
    :goto_6
    return-object v1

    .line 244
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    if-nez v1, :cond_13

    .line 245
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v1}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 247
    :cond_13
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 248
    .local v0, result:[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 249
    goto :goto_6
.end method

.method public getIssuerAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 197
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 198
    const/4 v0, 0x0

    .line 203
    :goto_5
    return-object v0

    .line 200
    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    if-nez v0, :cond_12

    .line 201
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 203
    :cond_12
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    goto :goto_5
.end method

.method public getKeyUsage()[Z
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 617
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-nez v1, :cond_7

    .line 618
    const/4 v1, 0x0

    .line 622
    :goto_6
    return-object v1

    .line 620
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, v1

    new-array v0, v1, [Z

    .line 621
    .local v0, result:[Z
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 622
    goto :goto_6
.end method

.method public getMatchAllSubjectAltNames()Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    return v0
.end method

.method public getNameConstraints()[B
    .registers 2

    .prologue
    .line 887
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/NameConstraints;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getPathToNames()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 1073
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    .line 1074
    const/4 v3, 0x0

    .line 1082
    :goto_5
    return-object v3

    .line 1076
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1077
    .local v2, result:Ljava/util/ArrayList;
    iget-object v3, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1078
    .local v0, it:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1079
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/harmony/security/x509/GeneralName;

    .line 1080
    .local v1, name:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v1}, Lorg/apache/harmony/security/x509/GeneralName;->getAsList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .end local v1           #name:Lorg/apache/harmony/security/x509/GeneralName;
    :cond_25
    move-object v3, v2

    .line 1082
    goto :goto_5
.end method

.method public getPolicy()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 973
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    return-object v0
.end method

.method public getPrivateKeyValid()Ljava/util/Date;
    .registers 2

    .prologue
    .line 483
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v0, :cond_e

    .line 484
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/Date;

    move-object v0, p0

    .line 486
    :goto_d
    return-object v0

    .restart local p0
    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getSubject()Ljavax/security/auth/x500/X500Principal;
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 804
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-nez v8, :cond_7

    .line 805
    const/4 v8, 0x0

    .line 825
    :goto_6
    return-object v8

    .line 807
    :cond_7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 808
    .local v5, result:Ljava/util/ArrayList;
    const/4 v6, 0x0

    .local v6, tag:I
    :goto_d
    const/16 v8, 0x9

    if-ge v6, v8, :cond_55

    .line 809
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v8, v8, v6

    if-eqz v8, :cond_52

    .line 810
    new-instance v7, Ljava/lang/Integer;

    invoke-direct {v7, v6}, Ljava/lang/Integer;-><init>(I)V

    .line 811
    .local v7, teg:Ljava/lang/Integer;
    const/4 v3, 0x0

    .local v3, name:I
    :goto_1d
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v8, v8, v6

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_52

    .line 812
    iget-object v8, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v8, v8, v6

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 813
    .local v4, neim:Ljava/lang/Object;
    instance-of v8, v4, [B

    if-eqz v8, :cond_40

    .line 814
    check-cast v4, [B

    .end local v4           #neim:Ljava/lang/Object;
    move-object v0, v4

    check-cast v0, [B

    move-object v1, v0

    .line 815
    .local v1, arr_neim:[B
    array-length v8, v1

    new-array v4, v8, [B

    .line 816
    .local v4, neim:[B
    array-length v8, v1

    invoke-static {v1, v9, v4, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 818
    .end local v1           #arr_neim:[B
    .end local v4           #neim:[B
    :cond_40
    new-instance v2, Ljava/util/ArrayList;

    const/4 v8, 0x2

    invoke-direct {v2, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 819
    .local v2, list:Ljava/util/List;
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 820
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 821
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 808
    .end local v2           #list:Ljava/util/List;
    .end local v3           #name:I
    .end local v7           #teg:Ljava/lang/Integer;
    :cond_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    :cond_55
    move-object v8, v5

    .line 825
    goto :goto_6
.end method

.method public getSubjectAsBytes()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 348
    const/4 v0, 0x0

    .line 350
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectAsString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 309
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-nez v0, :cond_6

    .line 310
    const/4 v0, 0x0

    .line 312
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_5
.end method

.method public getSubjectKeyIdentifier()[B
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 382
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-nez v1, :cond_7

    .line 383
    const/4 v1, 0x0

    .line 387
    :goto_6
    return-object v1

    .line 385
    :cond_7
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, v1

    new-array v0, v1, [B

    .line 386
    .local v0, res:[B
    iget-object v1, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v2, v0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 387
    goto :goto_6
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .registers 2

    .prologue
    .line 587
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getSubjectPublicKeyAlgID()Ljava/lang/String;
    .registers 2

    .prologue
    .line 541
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    return-object v0
.end method

.method public match(Ljava/security/cert/Certificate;)Z
    .registers 27
    .parameter "certificate"

    .prologue
    .line 1221
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/security/cert/X509Certificate;

    move/from16 v23, v0

    if-nez v23, :cond_b

    .line 1222
    const/16 v23, 0x0

    .line 1450
    .end local p1
    :goto_a
    return v23

    .line 1225
    .restart local p1
    :cond_b
    move-object/from16 v0, p1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v5, v0

    .line 1226
    .local v5, cert:Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    if-eqz v23, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_2a

    .line 1228
    const/16 v23, 0x0

    goto :goto_a

    .line 1230
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    if-eqz v23, :cond_45

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_45

    .line 1232
    const/16 v23, 0x0

    goto :goto_a

    .line 1234
    :cond_45
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_60

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_60

    .line 1236
    const/16 v23, 0x0

    goto :goto_a

    .line 1238
    :cond_60
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7b

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_7b

    .line 1240
    const/16 v23, 0x0

    goto :goto_a

    .line 1242
    :cond_7b
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_9e

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.14"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_9e

    .line 1247
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1249
    :cond_9e
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_c1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    move-object/from16 v23, v0

    const-string v24, "2.5.29.35"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_c1

    .line 1252
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1254
    :cond_c1
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_d5

    .line 1256
    :try_start_c9
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_d5
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_c9 .. :try_end_d5} :catch_ee
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_c9 .. :try_end_d5} :catch_f5

    .line 1263
    :cond_d5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    if-eqz v23, :cond_14a

    .line 1265
    :try_start_dd
    const-string v23, "2.5.29.16"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1266
    .local v4, bytes:[B
    if-nez v4, :cond_fc

    .line 1267
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1257
    .end local v4           #bytes:[B
    :catch_ee
    move-exception v23

    move-object/from16 v6, v23

    .line 1258
    .local v6, e:Ljava/security/cert/CertificateExpiredException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1259
    .end local v6           #e:Ljava/security/cert/CertificateExpiredException;
    :catch_f5
    move-exception v23

    move-object/from16 v6, v23

    .line 1260
    .local v6, e:Ljava/security/cert/CertificateNotYetValidException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1269
    .end local v6           #e:Ljava/security/cert/CertificateNotYetValidException;
    .restart local v4       #bytes:[B
    :cond_fc
    sget-object v23, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;

    .line 1271
    .local v19, pkup:Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotBefore()Ljava/util/Date;

    move-result-object v17

    .line 1272
    .local v17, notBefore:Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;->getNotAfter()Ljava/util/Date;

    move-result-object v16

    .line 1273
    .local v16, notAfter:Ljava/util/Date;
    if-nez v17, :cond_117

    if-nez v16, :cond_117

    .line 1274
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1276
    :cond_117
    if-eqz v17, :cond_12d

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v23

    if-lez v23, :cond_12d

    .line 1278
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1280
    :cond_12d
    if-eqz v16, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I
    :try_end_13c
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_13c} :catch_143

    move-result v23

    if-gez v23, :cond_14a

    .line 1282
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1284
    .end local v4           #bytes:[B
    .end local v16           #notAfter:Ljava/util/Date;
    .end local v17           #notBefore:Ljava/util/Date;
    .end local v19           #pkup:Lorg/apache/harmony/security/x509/PrivateKeyUsagePeriod;
    :catch_143
    move-exception v23

    move-object/from16 v6, v23

    .line 1285
    .local v6, e:Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1288
    .end local v6           #e:Ljava/io/IOException;
    :cond_14a
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_187

    .line 1290
    :try_start_152
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v7

    .line 1291
    .local v7, encoding:[B
    sget-object v23, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getAlgorithmIdentifier()Lorg/apache/harmony/security/x509/AlgorithmIdentifier;

    move-result-object v3

    .line 1294
    .local v3, ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v3}, Lorg/apache/harmony/security/x509/AlgorithmIdentifier;->getAlgorithm()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_176
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_176} :catch_17d

    move-result v23

    if-nez v23, :cond_187

    .line 1295
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1297
    .end local v3           #ai:Lorg/apache/harmony/security/x509/AlgorithmIdentifier;
    .end local v7           #encoding:[B
    :catch_17d
    move-exception v23

    move-object/from16 v6, v23

    .line 1298
    .restart local v6       #e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1299
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1302
    .end local v6           #e:Ljava/io/IOException;
    :cond_187
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    if-eqz v23, :cond_1a7

    .line 1303
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    move-object/from16 v23, v0

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v24

    invoke-static/range {v23 .. v24}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v23

    if-nez v23, :cond_1a7

    .line 1305
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1308
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    if-eqz v23, :cond_216

    .line 1309
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v11

    .line 1310
    .local v11, ku:[Z
    if-eqz v11, :cond_216

    .line 1311
    const/4 v8, 0x0

    .line 1312
    .local v8, i:I
    move-object v0, v11

    array-length v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_1e5

    move-object v0, v11

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v13, v23

    .line 1314
    .local v13, min_length:I
    :goto_1d1
    if-ge v8, v13, :cond_1f8

    .line 1315
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v8

    if-eqz v23, :cond_1f3

    aget-boolean v23, v11, v8

    if-nez v23, :cond_1f3

    .line 1318
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1312
    .end local v13           #min_length:I
    :cond_1e5
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v13, v23

    goto :goto_1d1

    .line 1314
    .restart local v13       #min_length:I
    :cond_1f3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d1

    .line 1321
    :cond_1f6
    add-int/lit8 v8, v8, 0x1

    :cond_1f8
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_216

    .line 1322
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    move-object/from16 v23, v0

    aget-boolean v23, v23, v8

    if-eqz v23, :cond_1f6

    .line 1323
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1328
    .end local v8           #i:I
    .end local v11           #ku:[Z
    .end local v13           #min_length:I
    :cond_216
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_23e

    .line 1330
    :try_start_21e
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v10

    .line 1331
    .local v10, keyUsage:Ljava/util/List;
    if-eqz v10, :cond_23e

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    move-object/from16 v23, v0

    move-object v0, v10

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z
    :try_end_230
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_21e .. :try_end_230} :catch_237

    move-result v23

    if-nez v23, :cond_23e

    .line 1333
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1336
    .end local v10           #keyUsage:Ljava/util/List;
    :catch_237
    move-exception v23

    move-object/from16 v6, v23

    .line 1337
    .local v6, e:Ljava/security/cert/CertificateParsingException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1340
    .end local v6           #e:Ljava/security/cert/CertificateParsingException;
    :cond_23e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_276

    .line 1341
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getBasicConstraints()I

    move-result v18

    .line 1342
    .local v18, p_len:I
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-gez v23, :cond_25e

    if-ltz v18, :cond_25e

    .line 1344
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1346
    :cond_25e
    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    if-lez v23, :cond_276

    move-object/from16 v0, p0

    iget v0, v0, Ljava/security/cert/X509CertSelector;->pathLen:I

    move/from16 v23, v0

    move/from16 v0, v23

    move/from16 v1, v18

    if-le v0, v1, :cond_276

    .line 1348
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1351
    .end local v18           #p_len:I
    :cond_276
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_326

    .line 1354
    :try_start_27e
    const-string v23, "2.5.29.17"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1355
    .restart local v4       #bytes:[B
    if-nez v4, :cond_28f

    .line 1356
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1358
    :cond_28f
    sget-object v23, Lorg/apache/harmony/security/x509/GeneralNames;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/GeneralNames;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/GeneralNames;->getNames()Ljava/util/List;

    move-result-object v21

    .line 1360
    .local v21, sans:Ljava/util/List;
    if-eqz v21, :cond_2a6

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    if-nez v23, :cond_2aa

    .line 1361
    :cond_2a6
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1363
    :cond_2aa
    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v0, v0, [[Z

    move-object v12, v0

    .line 1365
    .local v12, map:[[Z
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2b2
    const/16 v23, 0x9

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e3

    .line 1366
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    if-nez v23, :cond_2d0

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    :goto_2cb
    aput-object v23, v12, v8

    .line 1365
    add-int/lit8 v8, v8, 0x1

    goto :goto_2b2

    .line 1366
    :cond_2d0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v8

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v23, v0

    goto :goto_2cb

    .line 1370
    :cond_2e3
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1371
    .local v9, it:Ljava/util/Iterator;
    :cond_2e7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_34a

    .line 1372
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lorg/apache/harmony/security/x509/GeneralName;

    .line 1373
    .local v14, name:Lorg/apache/harmony/security/x509/GeneralName;
    invoke-virtual {v14}, Lorg/apache/harmony/security/x509/GeneralName;->getTag()I

    move-result v22

    .line 1374
    .local v22, tag:I
    const/4 v8, 0x0

    :goto_2f8
    aget-object v23, v12, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move v0, v8

    move/from16 v1, v23

    if-ge v0, v1, :cond_2e7

    .line 1375
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    move-object/from16 v23, v0

    aget-object v23, v23, v22

    move-object/from16 v0, v23

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/GeneralName;

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/GeneralName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_347

    .line 1377
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0
    :try_end_324
    .catch Ljava/io/IOException; {:try_start_27e .. :try_end_324} :catch_37d

    if-nez v23, :cond_341

    .line 1401
    .end local v4           #bytes:[B
    .end local v8           #i:I
    .end local v9           #it:Ljava/util/Iterator;
    .end local v12           #map:[[Z
    .end local v14           #name:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v21           #sans:Ljava/util/List;
    .end local v22           #tag:I
    :cond_326
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    if-eqz v23, :cond_387

    .line 1402
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/security/cert/X509Certificate;)Z

    move-result v23

    if-nez v23, :cond_387

    .line 1403
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1380
    .restart local v4       #bytes:[B
    .restart local v8       #i:I
    .restart local v9       #it:Ljava/util/Iterator;
    .restart local v12       #map:[[Z
    .restart local v14       #name:Lorg/apache/harmony/security/x509/GeneralName;
    .restart local v21       #sans:Ljava/util/List;
    .restart local v22       #tag:I
    :cond_341
    :try_start_341
    aget-object v23, v12, v22

    const/16 v24, 0x1

    aput-boolean v24, v23, v8

    .line 1374
    :cond_347
    add-int/lit8 v8, v8, 0x1

    goto :goto_2f8

    .line 1384
    .end local v14           #name:Lorg/apache/harmony/security/x509/GeneralName;
    .end local v22           #tag:I
    :cond_34a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    move/from16 v23, v0

    if-nez v23, :cond_356

    .line 1386
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1389
    :cond_356
    const/16 v22, 0x0

    .restart local v22       #tag:I
    :goto_358
    const/16 v23, 0x9

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_326

    .line 1390
    const/4 v14, 0x0

    .local v14, name:I
    :goto_361
    aget-object v23, v12, v22

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move v0, v14

    move/from16 v1, v23

    if-ge v0, v1, :cond_37a

    .line 1391
    aget-object v23, v12, v22

    aget-boolean v23, v23, v14
    :try_end_371
    .catch Ljava/io/IOException; {:try_start_341 .. :try_end_371} :catch_37d

    if-nez v23, :cond_377

    .line 1392
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1390
    :cond_377
    add-int/lit8 v14, v14, 0x1

    goto :goto_361

    .line 1389
    :cond_37a
    add-int/lit8 v22, v22, 0x1

    goto :goto_358

    .line 1396
    .end local v4           #bytes:[B
    .end local v8           #i:I
    .end local v9           #it:Ljava/util/Iterator;
    .end local v12           #map:[[Z
    .end local v14           #name:I
    .end local v21           #sans:Ljava/util/List;
    .end local v22           #tag:I
    :catch_37d
    move-exception v23

    move-object/from16 v6, v23

    .line 1397
    .local v6, e:Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    .line 1398
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1406
    .end local v6           #e:Ljava/io/IOException;
    :cond_387
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    if-eqz v23, :cond_3df

    .line 1407
    const-string v23, "2.5.29.32"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1408
    .restart local v4       #bytes:[B
    if-nez v4, :cond_3a0

    .line 1409
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1411
    :cond_3a0
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v23

    if-nez v23, :cond_3b0

    .line 1414
    const/16 v23, 0x1

    goto/16 :goto_a

    .line 1418
    :cond_3b0
    :try_start_3b0
    sget-object v23, Lorg/apache/harmony/security/x509/CertificatePolicies;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Type;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Type;->decode([B)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/CertificatePolicies;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/CertificatePolicies;->getPolicyInformations()Ljava/util/List;

    move-result-object v20

    .line 1421
    .local v20, policyInformations:Ljava/util/List;
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1422
    .restart local v9       #it:Ljava/util/Iterator;
    :cond_3c3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_412

    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    move-object/from16 v23, v0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/harmony/security/x509/PolicyInformation;

    invoke-virtual/range {p1 .. p1}, Lorg/apache/harmony/security/x509/PolicyInformation;->getPolicyIdentifier()Ljava/lang/String;

    move-result-object v24

    invoke-interface/range {v23 .. v24}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_3dc
    .catch Ljava/io/IOException; {:try_start_3b0 .. :try_end_3dc} :catch_416

    move-result v23

    if-eqz v23, :cond_3c3

    .line 1434
    .end local v4           #bytes:[B
    .end local v9           #it:Ljava/util/Iterator;
    .end local v20           #policyInformations:Ljava/util/List;
    :cond_3df
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    if-eqz v23, :cond_424

    .line 1435
    const-string v23, "2.5.29.30"

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Ljava/security/cert/X509CertSelector;->getExtensionValue(Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v4

    .line 1436
    .restart local v4       #bytes:[B
    if-eqz v4, :cond_424

    .line 1439
    :try_start_3f4
    sget-object v23, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    move-object/from16 v0, v23

    move-object v1, v4

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/apache/harmony/security/x509/NameConstraints;
    :try_end_3ff
    .catch Ljava/io/IOException; {:try_start_3f4 .. :try_end_3ff} :catch_41d

    .line 1445
    .local v15, nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    move-object/from16 v23, v0

    move-object v0, v15

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/apache/harmony/security/x509/NameConstraints;->isAcceptable(Ljava/util/List;)Z

    move-result v23

    if-nez v23, :cond_424

    .line 1446
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1428
    .end local v15           #nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;
    .restart local v9       #it:Ljava/util/Iterator;
    .restart local v20       #policyInformations:Ljava/util/List;
    :cond_412
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1429
    .end local v9           #it:Ljava/util/Iterator;
    .end local v20           #policyInformations:Ljava/util/List;
    :catch_416
    move-exception v23

    move-object/from16 v6, v23

    .line 1431
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1441
    .end local v6           #e:Ljava/io/IOException;
    :catch_41d
    move-exception v23

    move-object/from16 v6, v23

    .line 1443
    .restart local v6       #e:Ljava/io/IOException;
    const/16 v23, 0x0

    goto/16 :goto_a

    .line 1450
    .end local v4           #bytes:[B
    .end local v6           #e:Ljava/io/IOException;
    :cond_424
    const/16 v23, 0x1

    goto/16 :goto_a
.end method

.method public setAuthorityKeyIdentifier([B)V
    .registers 5
    .parameter "authorityKeyIdentifier"

    .prologue
    const/4 v2, 0x0

    .line 399
    if-nez p1, :cond_7

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 407
    :goto_6
    return-void

    .line 403
    :cond_7
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    .line 404
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public setBasicConstraints(I)V
    .registers 4
    .parameter "pathLen"

    .prologue
    .line 908
    const/4 v0, -0x2

    if-ge p1, v0, :cond_f

    .line 909
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "security.58"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 911
    :cond_f
    iput p1, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    .line 912
    return-void
.end method

.method public setCertificate(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .parameter "certificate"

    .prologue
    .line 97
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    .line 98
    return-void
.end method

.method public setCertificateValid(Ljava/util/Date;)V
    .registers 3
    .parameter "certificateValid"

    .prologue
    .line 436
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    .line 439
    return-void

    .line 436
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    goto :goto_3
.end method

.method public setExtendedKeyUsage(Ljava/util/Set;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 636
    .local p1, keyUsage:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    .line 637
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-nez v3, :cond_c

    .line 648
    :cond_b
    :goto_b
    return-void

    .line 640
    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 641
    .local v1, key_u:Ljava/util/HashSet;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 642
    .local v0, it:Ljava/util/Iterator;
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    .line 643
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 644
    .local v2, usage:Ljava/lang/String;
    invoke-direct {p0, v2}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 645
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_15

    .line 647
    .end local v2           #usage:Ljava/lang/String;
    :cond_28
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    goto :goto_b
.end method

.method public setIssuer(Ljava/lang/String;)V
    .registers 5
    .parameter "issuerName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 172
    if-nez p1, :cond_a

    .line 173
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 174
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 175
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 185
    :goto_9
    return-void

    .line 179
    :cond_a
    :try_start_a
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 180
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 181
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B
    :try_end_16
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_16} :catch_17

    goto :goto_9

    .line 182
    :catch_17
    move-exception v1

    move-object v0, v1

    .line 183
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .registers 3
    .parameter "issuer"

    .prologue
    const/4 v0, 0x0

    .line 143
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 144
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 146
    return-void
.end method

.method public setIssuer([B)V
    .registers 7
    .parameter "issuerDN"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 217
    if-nez p1, :cond_6

    .line 218
    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 229
    :goto_5
    return-void

    .line 222
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    .line 223
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerName:Ljava/lang/String;

    .line 224
    array-length v1, p1

    new-array v1, v1, [B

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    .line 225
    const/4 v1, 0x0

    iget-object v2, p0, Ljava/security/cert/X509CertSelector;->issuerBytes:[B

    const/4 v3, 0x0

    array-length v4, p1

    invoke-static {p1, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_5

    .line 226
    :catch_1e
    move-exception v1

    move-object v0, v1

    .line 227
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setKeyUsage([Z)V
    .registers 5
    .parameter "keyUsage"

    .prologue
    const/4 v2, 0x0

    .line 600
    if-nez p1, :cond_7

    .line 601
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 606
    :goto_6
    return-void

    .line 604
    :cond_7
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    .line 605
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public setMatchAllSubjectAltNames(Z)V
    .registers 2
    .parameter "matchAllNames"

    .prologue
    .line 676
    iput-boolean p1, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    .line 677
    return-void
.end method

.method public setNameConstraints([B)V
    .registers 3
    .parameter "bytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 874
    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    .line 877
    return-void

    .line 874
    :cond_6
    sget-object v0, Lorg/apache/harmony/security/x509/NameConstraints;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/NameConstraints;

    goto :goto_3
.end method

.method public setPathToNames(Ljava/util/Collection;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 999
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    .line 1000
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 1016
    :cond_b
    return-void

    .line 1003
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1004
    .local v0, it:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1005
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1006
    .local v1, name:Ljava/util/List;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1007
    .local v2, tag:I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 1008
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 1009
    check-cast v3, Ljava/lang/String;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(ILjava/lang/String;)V

    goto :goto_10

    .line 1010
    .restart local v3       #value:Ljava/lang/Object;
    :cond_36
    instance-of v4, v3, [B

    if-eqz v4, :cond_42

    .line 1011
    check-cast v3, [B

    .end local v3           #value:Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addPathToName(I[B)V

    goto :goto_10

    .line 1013
    .restart local v3       #value:Ljava/lang/Object;
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.57"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setPolicy(Ljava/util/Set;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 946
    .local p1, policies:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_6

    .line 947
    const/4 v3, 0x0

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    .line 958
    :goto_5
    return-void

    .line 950
    :cond_6
    new-instance v2, Ljava/util/HashSet;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(I)V

    .line 951
    .local v2, pols:Ljava/util/HashSet;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 952
    .local v1, it:Ljava/util/Iterator;
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 953
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 954
    .local v0, certPolicyId:Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 955
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 957
    .end local v0           #certPolicyId:Ljava/lang/String;
    :cond_26
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    iput-object v3, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    goto :goto_5
.end method

.method public setPrivateKeyValid(Ljava/util/Date;)V
    .registers 3
    .parameter "privateKeyValid"

    .prologue
    .line 465
    if-nez p1, :cond_6

    .line 466
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    .line 470
    :goto_5
    return-void

    .line 469
    :cond_6
    invoke-virtual {p1}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    goto :goto_5
.end method

.method public setSerialNumber(Ljava/math/BigInteger;)V
    .registers 2
    .parameter "serialNumber"

    .prologue
    .line 120
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    .line 121
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .registers 5
    .parameter "subjectDN"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    if-nez p1, :cond_6

    .line 289
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 297
    :goto_5
    return-void

    .line 293
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    .line 294
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubject(Ljavax/security/auth/x500/X500Principal;)V
    .registers 2
    .parameter "subject"

    .prologue
    .line 261
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 262
    return-void
.end method

.method public setSubject([B)V
    .registers 5
    .parameter "subjectDN"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    if-nez p1, :cond_6

    .line 327
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    .line 335
    :goto_5
    return-void

    .line 331
    :cond_6
    :try_start_6
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, p1}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    iput-object v1, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_d} :catch_e

    goto :goto_5

    .line 332
    :catch_e
    move-exception v1

    move-object v0, v1

    .line 333
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setSubjectAlternativeNames(Ljava/util/Collection;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 719
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v4, 0x0

    iput-object v4, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    .line 720
    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    if-nez v4, :cond_c

    .line 736
    :cond_b
    return-void

    .line 723
    :cond_c
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 724
    .local v0, it:Ljava/util/Iterator;
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 725
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 726
    .local v1, name:Ljava/util/List;
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 727
    .local v2, tag:I
    const/4 v4, 0x1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 728
    .local v3, value:Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_36

    .line 729
    check-cast v3, Ljava/lang/String;

    .end local v3           #value:Ljava/lang/Object;
    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(ILjava/lang/String;)V

    goto :goto_10

    .line 730
    .restart local v3       #value:Ljava/lang/Object;
    :cond_36
    instance-of v4, v3, [B

    if-eqz v4, :cond_42

    .line 731
    check-cast v3, [B

    .end local v3           #value:Ljava/lang/Object;
    check-cast v3, [B

    invoke-virtual {p0, v2, v3}, Ljava/security/cert/X509CertSelector;->addSubjectAlternativeName(I[B)V

    goto :goto_10

    .line 733
    .restart local v3       #value:Ljava/lang/Object;
    :cond_42
    new-instance v4, Ljava/io/IOException;

    const-string v5, "security.57"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public setSubjectKeyIdentifier([B)V
    .registers 5
    .parameter "subjectKeyIdentifier"

    .prologue
    const/4 v2, 0x0

    .line 365
    if-nez p1, :cond_7

    .line 366
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 372
    :goto_6
    return-void

    .line 369
    :cond_7
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    .line 370
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method public setSubjectPublicKey(Ljava/security/PublicKey;)V
    .registers 3
    .parameter "key"

    .prologue
    .line 552
    if-nez p1, :cond_8

    const/4 v0, 0x0

    :goto_3
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 553
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    .line 554
    return-void

    .line 552
    :cond_8
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    goto :goto_3
.end method

.method public setSubjectPublicKey([B)V
    .registers 5
    .parameter "key"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 567
    if-nez p1, :cond_9

    .line 568
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 569
    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    .line 577
    :goto_8
    return-void

    .line 572
    :cond_9
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    .line 573
    iget-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 574
    sget-object v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;

    invoke-virtual {v0}, Lorg/apache/harmony/security/x509/SubjectPublicKeyInfo;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyImpl:Ljava/security/PublicKey;

    goto :goto_8
.end method

.method public setSubjectPublicKeyAlgID(Ljava/lang/String;)V
    .registers 3
    .parameter "oid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 525
    if-nez p1, :cond_6

    .line 526
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    .line 531
    :goto_5
    return-void

    .line 529
    :cond_6
    invoke-direct {p0, p1}, Ljava/security/cert/X509CertSelector;->checkOID(Ljava/lang/String;)V

    .line 530
    iput-object p1, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 12

    .prologue
    const/16 v8, 0x9

    const-string v10, "\n  ]"

    const-string v9, "\n    "

    .line 1098
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 1099
    .local v4, result:Ljava/lang/StringBuffer;
    const-string v6, "X509CertSelector: \n["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1100
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    if-eqz v6, :cond_2c

    .line 1101
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  certificateEquals: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateEquals:Ljava/security/cert/X509Certificate;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1103
    :cond_2c
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->serialNumber:Ljava/math/BigInteger;

    if-eqz v6, :cond_30

    .line 1107
    :cond_30
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_4c

    .line 1108
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  issuer: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->issuer:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1110
    :cond_4c
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    if-eqz v6, :cond_68

    .line 1111
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subject: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subject:Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1113
    :cond_68
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    if-eqz v6, :cond_88

    .line 1114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subjectKeyIdentifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectKeyIdentifier:[B

    invoke-direct {p0, v7}, Ljava/security/cert/X509CertSelector;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1117
    :cond_88
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    if-eqz v6, :cond_a8

    .line 1118
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  authorityKeyIdentifier: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->authorityKeyIdentifier:[B

    invoke-direct {p0, v7}, Ljava/security/cert/X509CertSelector;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1121
    :cond_a8
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    if-eqz v6, :cond_c4

    .line 1122
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  certificateValid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->certificateValid:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1124
    :cond_c4
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    if-eqz v6, :cond_e0

    .line 1125
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subjectPublicKeyAlgID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKeyAlgID:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1128
    :cond_e0
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    if-eqz v6, :cond_fc

    .line 1129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  privateKeyValid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->privateKeyValid:Ljava/util/Date;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1131
    :cond_fc
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    if-eqz v6, :cond_11c

    .line 1132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  subjectPublicKey: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->subjectPublicKey:[B

    invoke-direct {p0, v7}, Ljava/security/cert/X509CertSelector;->getBytesAsString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1135
    :cond_11c
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    if-eqz v6, :cond_17e

    .line 1136
    const-string v6, "\n  keyUsage: \n  ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1137
    new-array v2, v8, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "digitalSignature"

    aput-object v7, v2, v6

    const/4 v6, 0x1

    const-string v7, "nonRepudiation"

    aput-object v7, v2, v6

    const/4 v6, 0x2

    const-string v7, "keyEncipherment"

    aput-object v7, v2, v6

    const/4 v6, 0x3

    const-string v7, "dataEncipherment"

    aput-object v7, v2, v6

    const/4 v6, 0x4

    const-string v7, "keyAgreement"

    aput-object v7, v2, v6

    const/4 v6, 0x5

    const-string v7, "keyCertSign"

    aput-object v7, v2, v6

    const/4 v6, 0x6

    const-string v7, "cRLSign"

    aput-object v7, v2, v6

    const/4 v6, 0x7

    const-string v7, "encipherOnly"

    aput-object v7, v2, v6

    const/16 v6, 0x8

    const-string v7, "decipherOnly"

    aput-object v7, v2, v6

    .line 1142
    .local v2, kuNames:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_156
    if-ge v0, v8, :cond_179

    .line 1143
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->keyUsage:[Z

    aget-boolean v6, v6, v0

    if-eqz v6, :cond_176

    .line 1144
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n    "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v2, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1142
    :cond_176
    add-int/lit8 v0, v0, 0x1

    goto :goto_156

    .line 1147
    :cond_179
    const-string v6, "\n  ]"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1149
    .end local v0           #i:I
    .end local v2           #kuNames:[Ljava/lang/String;
    :cond_17e
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    if-eqz v6, :cond_19e

    .line 1150
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  extendedKeyUsage: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->extendedKeyUsage:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1153
    :cond_19e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  matchAllNames: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Ljava/security/cert/X509CertSelector;->matchAllNames:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1154
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  pathLen: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Ljava/security/cert/X509CertSelector;->pathLen:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1155
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    if-eqz v6, :cond_212

    .line 1156
    const-string v6, "\n  subjectAltNames:  \n  ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1157
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1d8
    if-ge v0, v8, :cond_20d

    .line 1158
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->subjectAltNames:[Ljava/util/List;

    aget-object v3, v6, v0

    .line 1159
    .local v3, names:Ljava/util/List;
    if-eqz v3, :cond_20a

    .line 1160
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 1161
    .local v5, size:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1e5
    if-ge v1, v5, :cond_20a

    .line 1162
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n    "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1161
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e5

    .line 1157
    .end local v1           #j:I
    .end local v5           #size:I
    :cond_20a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d8

    .line 1167
    .end local v3           #names:Ljava/util/List;
    :cond_20d
    const-string v6, "\n  ]"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1169
    .end local v0           #i:I
    :cond_212
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->nameConstraints:Lorg/apache/harmony/security/x509/NameConstraints;

    if-eqz v6, :cond_216

    .line 1171
    :cond_216
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    if-eqz v6, :cond_236

    .line 1172
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n  policies: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Ljava/security/cert/X509CertSelector;->policies:Ljava/util/Set;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1174
    :cond_236
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    if-eqz v6, :cond_26d

    .line 1175
    const-string v6, "\n  pathToNames:  \n  ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1176
    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1177
    .restart local v5       #size:I
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_246
    if-ge v0, v5, :cond_26d

    .line 1178
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\n    "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v6, p0, Ljava/security/cert/X509CertSelector;->pathToNames:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/harmony/security/x509/GeneralName;

    invoke-virtual {v6}, Lorg/apache/harmony/security/x509/GeneralName;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1177
    add-int/lit8 v0, v0, 0x1

    goto :goto_246

    .line 1182
    .end local v0           #i:I
    .end local v5           #size:I
    :cond_26d
    const-string v6, "\n]"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1183
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method
