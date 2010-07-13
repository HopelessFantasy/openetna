.class public Ljava/security/cert/X509CRLSelector;
.super Ljava/lang/Object;
.source "X509CRLSelector.java"

# interfaces
.implements Ljava/security/cert/CRLSelector;


# instance fields
.field private certificateChecking:Ljava/security/cert/X509Certificate;

.field private dateAndTime:J

.field private issuerNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private issuerPrincipals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation
.end field

.field private maxCRL:Ljava/math/BigInteger;

.field private minCRL:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    .line 66
    return-void
.end method


# virtual methods
.method public addIssuer(Ljavax/security/auth/x500/X500Principal;)V
    .registers 8
    .parameter "issuer"

    .prologue
    .line 153
    if-nez p1, :cond_e

    .line 154
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "security.61"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 156
    :cond_e
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v3, :cond_19

    .line 157
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 159
    :cond_19
    const-string v3, "CANONICAL"

    invoke-virtual {p1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 160
    .local v1, name:Ljava/lang/String;
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2c

    .line 161
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    :cond_2c
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    if-nez v3, :cond_3d

    .line 164
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 167
    :cond_3d
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v2, v3, v4

    .line 168
    .local v2, size:I
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_4c
    if-ge v0, v2, :cond_63

    .line 169
    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    .line 171
    :cond_63
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method public addIssuerName(Ljava/lang/String;)V
    .registers 5
    .parameter "iss_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 190
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v1, :cond_b

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 194
    :cond_b
    if-nez p1, :cond_f

    .line 195
    const-string p1, ""

    .line 198
    :cond_f
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 200
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_27
    return-void
.end method

.method public addIssuerName([B)V
    .registers 5
    .parameter "iss_name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    if-nez p1, :cond_e

    .line 219
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "security.63"

    invoke-static {v2}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :cond_e
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v1, :cond_19

    .line 222
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 224
    :cond_19
    new-instance v1, Lorg/apache/harmony/security/x501/Name;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v2, "CANONICAL"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 226
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_31
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 4

    .prologue
    .line 490
    new-instance v0, Ljava/security/cert/X509CRLSelector;

    invoke-direct {v0}, Ljava/security/cert/X509CRLSelector;-><init>()V

    .line 491
    .local v0, result:Ljava/security/cert/X509CRLSelector;
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v1, :cond_12

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 494
    :cond_12
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    iput-object v1, v0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    .line 495
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    iput-object v1, v0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    .line 496
    iget-wide v1, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    iput-wide v1, v0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    .line 497
    iget-object v1, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    iput-object v1, v0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    .line 498
    return-object v0
.end method

.method public getCertificateChecking()Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 392
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getDateAndTime()Ljava/util/Date;
    .registers 5

    .prologue
    .line 378
    iget-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    .line 379
    const/4 v0, 0x0

    .line 381
    :goto_9
    return-object v0

    :cond_a
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    goto :goto_9
.end method

.method public getIssuerNames()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 331
    const/4 v0, 0x0

    .line 333
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_5
.end method

.method public getIssuers()Ljava/util/Collection;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-nez v2, :cond_6

    .line 306
    const/4 v2, 0x0

    .line 316
    :goto_5
    return-object v2

    .line 308
    :cond_6
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    if-nez v2, :cond_17

    .line 309
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 311
    :cond_17
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 313
    .local v1, size:I
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, i:I
    :goto_23
    if-ge v0, v1, :cond_3a

    .line 314
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    new-instance v4, Ljavax/security/auth/x500/X500Principal;

    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 316
    :cond_3a
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_5
.end method

.method public getMaxCRL()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getMinCRL()Ljava/math/BigInteger;
    .registers 2

    .prologue
    .line 348
    iget-object v0, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public match(Ljava/security/cert/CRL;)Z
    .registers 14
    .parameter "crl"

    .prologue
    const/4 v11, 0x0

    .line 440
    instance-of v7, p1, Ljava/security/cert/X509CRL;

    if-nez v7, :cond_7

    move v7, v11

    .line 480
    :goto_6
    return v7

    .line 443
    :cond_7
    move-object v0, p1

    check-cast v0, Ljava/security/cert/X509CRL;

    move-object v3, v0

    .line 444
    .local v3, crlist:Ljava/security/cert/X509CRL;
    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v7, :cond_23

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    const-string v9, "CANONICAL"

    invoke-virtual {v8, v9}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    move v7, v11

    .line 449
    goto :goto_6

    .line 451
    :cond_23
    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-nez v7, :cond_2b

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v7, :cond_70

    .line 455
    :cond_2b
    :try_start_2b
    const-string v7, "2.5.29.20"

    invoke-virtual {v3, v7}, Ljava/security/cert/X509CRL;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    .line 456
    .local v1, bytes:[B
    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->getInstance()Lorg/apache/harmony/security/asn1/ASN1OctetString;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/harmony/security/asn1/ASN1OctetString;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v1, v0

    .line 457
    new-instance v2, Ljava/math/BigInteger;

    invoke-static {}, Lorg/apache/harmony/security/asn1/ASN1Integer;->getInstance()Lorg/apache/harmony/security/asn1/ASN1Integer;

    move-result-object v7

    invoke-virtual {v7, v1}, Lorg/apache/harmony/security/asn1/ASN1Integer;->decode([B)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-direct {v2, v7}, Ljava/math/BigInteger;-><init>([B)V

    .line 459
    .local v2, crlNumber:Ljava/math/BigInteger;
    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v7, :cond_5e

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v7

    if-gez v7, :cond_5e

    move v7, v11

    .line 460
    goto :goto_6

    .line 462
    :cond_5e
    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v7, :cond_70

    iget-object v7, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v2, v7}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_67} :catch_6c

    move-result v7

    if-lez v7, :cond_70

    move v7, v11

    .line 463
    goto :goto_6

    .line 465
    .end local v1           #bytes:[B
    .end local v2           #crlNumber:Ljava/math/BigInteger;
    :catch_6c
    move-exception v7

    move-object v4, v7

    .local v4, e:Ljava/io/IOException;
    move v7, v11

    .line 466
    goto :goto_6

    .line 469
    .end local v4           #e:Ljava/io/IOException;
    :cond_70
    iget-wide v7, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_9d

    .line 470
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v6

    .line 471
    .local v6, thisUp:Ljava/util/Date;
    invoke-virtual {v3}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v5

    .line 472
    .local v5, nextUp:Ljava/util/Date;
    if-eqz v6, :cond_84

    if-nez v5, :cond_86

    :cond_84
    move v7, v11

    .line 473
    goto :goto_6

    .line 475
    :cond_86
    iget-wide v7, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-ltz v7, :cond_9a

    iget-wide v7, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-lez v7, :cond_9d

    :cond_9a
    move v7, v11

    .line 477
    goto/16 :goto_6

    .line 480
    .end local v5           #nextUp:Ljava/util/Date;
    .end local v6           #thisUp:Ljava/util/Date;
    :cond_9d
    const/4 v7, 0x1

    goto/16 :goto_6
.end method

.method public setCertificateChecking(Ljava/security/cert/X509Certificate;)V
    .registers 2
    .parameter "cert"

    .prologue
    .line 291
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    .line 292
    return-void
.end method

.method public setDateAndTime(Ljava/util/Date;)V
    .registers 4
    .parameter "dateAndTime"

    .prologue
    .line 275
    if-nez p1, :cond_7

    .line 276
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    .line 280
    :goto_6
    return-void

    .line 279
    :cond_7
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    goto :goto_6
.end method

.method public setIssuerNames(Ljava/util/Collection;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p1, names:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    const/4 v2, 0x0

    const-string v5, "CANONICAL"

    .line 116
    if-nez p1, :cond_a

    .line 117
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 118
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 139
    :cond_9
    return-void

    .line 121
    :cond_a
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_9

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 125
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 126
    .local v1, name:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_40

    .line 127
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    check-cast v1, Ljava/lang/String;

    .end local v1           #name:Ljava/lang/Object;
    invoke-direct {v3, v1}, Lorg/apache/harmony/security/x501/Name;-><init>(Ljava/lang/String;)V

    const-string v4, "CANONICAL"

    invoke-virtual {v3, v5}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 130
    .restart local v1       #name:Ljava/lang/Object;
    :cond_40
    instance-of v2, v1, [B

    if-eqz v2, :cond_59

    .line 131
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    new-instance v3, Lorg/apache/harmony/security/x501/Name;

    check-cast v1, [B

    .end local v1           #name:Ljava/lang/Object;
    check-cast v1, [B

    invoke-direct {v3, v1}, Lorg/apache/harmony/security/x501/Name;-><init>([B)V

    const-string v4, "CANONICAL"

    invoke-virtual {v3, v5}, Lorg/apache/harmony/security/x501/Name;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1f

    .line 135
    .restart local v1       #name:Ljava/lang/Object;
    :cond_59
    new-instance v2, Ljava/io/IOException;

    const-string v3, "security.62"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setIssuers(Ljava/util/Collection;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, issuers:Ljava/util/Collection;,"Ljava/util/Collection<Ljavax/security/auth/x500/X500Principal;>;"
    const/4 v2, 0x0

    .line 81
    if-nez p1, :cond_8

    .line 82
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 83
    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 91
    :cond_7
    return-void

    .line 86
    :cond_8
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    .line 87
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerPrincipals:Ljava/util/ArrayList;

    .line 88
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/security/auth/x500/X500Principal;

    .line 89
    .local v1, issuer:Ljavax/security/auth/x500/X500Principal;
    iget-object v2, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    const-string v3, "CANONICAL"

    invoke-virtual {v1, v3}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e
.end method

.method public setMaxCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .parameter "maxCRL"

    .prologue
    .line 259
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    .line 260
    return-void
.end method

.method public setMinCRLNumber(Ljava/math/BigInteger;)V
    .registers 2
    .parameter "minCRL"

    .prologue
    .line 243
    iput-object p1, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 8

    .prologue
    .line 402
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 403
    .local v1, result:Ljava/lang/StringBuffer;
    const-string v3, "X509CRLSelector:\n["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    if-eqz v3, :cond_42

    .line 405
    const-string v3, "\n  IssuerNames:\n  ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 407
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1a
    if-ge v0, v2, :cond_3d

    .line 408
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->issuerNames:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 411
    :cond_3d
    const-string v3, "\n  ]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    .end local v0           #i:I
    .end local v2           #size:I
    :cond_42
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_5e

    .line 414
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  minCRL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->minCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    :cond_5e
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    if-eqz v3, :cond_7a

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  maxCRL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->maxCRL:Ljava/math/BigInteger;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 419
    :cond_7a
    iget-wide v3, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9f

    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  dateAndTime: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    iget-wide v5, p0, Ljava/security/cert/X509CRLSelector;->dateAndTime:J

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_9f
    iget-object v3, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_bb

    .line 423
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\n  certificateChecking: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ljava/security/cert/X509CRLSelector;->certificateChecking:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_bb
    const-string v3, "\n]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
