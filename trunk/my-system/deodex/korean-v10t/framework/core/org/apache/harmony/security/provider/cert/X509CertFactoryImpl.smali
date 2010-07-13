.class public Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;
.super Ljava/security/cert/CertificateFactorySpi;
.source "X509CertFactoryImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;
    }
.end annotation


# static fields
.field private static CERT_BOUND_SUFFIX:[B

.field private static CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

.field private static CERT_CACHE_SEED_LENGTH:I

.field private static CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

.field private static CRL_CACHE_SEED_LENGTH:I

.field private static FREE_BOUND_SUFFIX:[B

.field private static pemBegin:[B

.field private static pemClose:[B


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 60
    const/16 v0, 0x1c

    sput v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    .line 62
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    sget v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 64
    const/16 v0, 0x18

    sput v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    .line 66
    new-instance v0, Lorg/apache/harmony/security/provider/cert/Cache;

    sget v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-direct {v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;-><init>(I)V

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    .line 449
    const-string v0, "-----BEGIN"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemBegin:[B

    .line 450
    const-string v0, "-----END"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemClose:[B

    .line 456
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    .line 462
    const-string v0, " CERTIFICATE-----"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/security/cert/CertificateFactorySpi;-><init>()V

    return-void
.end method

.method private decodePEM(Ljava/io/InputStream;[B)[B
    .registers 13
    .parameter "inStream"
    .parameter "boundary_suffix"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 495
    const/4 v2, 0x1

    .local v2, i:I
    :goto_1
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemBegin:[B

    array-length v7, v7

    if-ge v2, v7, :cond_3c

    .line 496
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemBegin:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v7, v1, :cond_39

    .line 497
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Incorrect PEM encoding: \'-----BEGIN"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez p2, :cond_33

    const-string v9, ""

    :goto_21
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' is expected as opening delimiter boundary."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_33
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_21

    .line 495
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 504
    .end local v1           #ch:I
    :cond_3c
    if-nez p2, :cond_55

    .line 507
    :cond_3e
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    const/16 v7, 0xa

    if-eq v1, v7, :cond_96

    .line 508
    const/4 v7, -0x1

    if-ne v1, v7, :cond_3e

    .line 509
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.156"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 514
    .end local v1           #ch:I
    :cond_55
    const/4 v2, 0x0

    :goto_56
    array-length v7, p2

    if-ge v2, v7, :cond_7a

    .line 515
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_77

    .line 516
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.15B"

    if-nez p2, :cond_71

    const-string v9, ""

    :goto_69
    invoke-static {v8, v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_71
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_69

    .line 514
    :cond_77
    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 524
    :cond_7a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .restart local v1       #ch:I
    const/16 v7, 0xd

    if-ne v1, v7, :cond_86

    .line 526
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 528
    :cond_86
    const/16 v7, 0xa

    if-eq v1, v7, :cond_96

    .line 529
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.15B2"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 533
    :cond_96
    const/16 v6, 0x400

    .line 534
    .local v6, size:I
    new-array v0, v6, [B

    .line 535
    .local v0, buff:[B
    const/4 v3, 0x0

    .line 537
    .local v3, index:I
    :goto_9b
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/16 v7, 0x2d

    if-eq v1, v7, :cond_c7

    .line 538
    const/4 v7, -0x1

    if-ne v1, v7, :cond_b2

    .line 539
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.157"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 542
    :cond_b2
    add-int/lit8 v4, v3, 0x1

    .end local v3           #index:I
    .local v4, index:I
    int-to-byte v7, v1

    aput-byte v7, v0, v3

    .line 543
    if-ne v4, v6, :cond_169

    .line 545
    add-int/lit16 v7, v6, 0x400

    new-array v5, v7, [B

    .line 546
    .local v5, newbuff:[B
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v0, v7, v5, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 547
    move-object v0, v5

    .line 548
    add-int/lit16 v6, v6, 0x400

    move v3, v4

    .line 549
    .end local v4           #index:I
    .restart local v3       #index:I
    goto :goto_9b

    .line 551
    .end local v5           #newbuff:[B
    :cond_c7
    const/4 v7, 0x1

    sub-int v7, v3, v7

    aget-byte v7, v0, v7

    const/16 v8, 0xa

    if-eq v7, v8, :cond_dc

    .line 552
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.158"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 557
    :cond_dc
    const/4 v2, 0x1

    :goto_dd
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemClose:[B

    array-length v7, v7

    if-ge v2, v7, :cond_105

    .line 558
    sget-object v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->pemClose:[B

    aget-byte v7, v7, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_102

    .line 559
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.15B1"

    if-nez p2, :cond_fc

    const-string v9, ""

    :goto_f4
    invoke-static {v8, v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_fc
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_f4

    .line 557
    :cond_102
    add-int/lit8 v2, v2, 0x1

    goto :goto_dd

    .line 566
    :cond_105
    if-nez p2, :cond_12e

    .line 570
    :cond_107
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_116

    const/16 v7, 0xa

    if-eq v1, v7, :cond_116

    const/16 v7, 0xd

    if-ne v1, v7, :cond_107

    .line 584
    :cond_116
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    .line 585
    :goto_11a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v7, -0x1

    if-eq v1, v7, :cond_153

    const/16 v7, 0xa

    if-eq v1, v7, :cond_129

    const/16 v7, 0xd

    if-ne v1, v7, :cond_153

    .line 586
    :cond_129
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    goto :goto_11a

    .line 573
    :cond_12e
    const/4 v2, 0x0

    :goto_12f
    array-length v7, p2

    if-ge v2, v7, :cond_116

    .line 574
    aget-byte v7, p2, v2

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v7, v8, :cond_150

    .line 575
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.15B1"

    if-nez p2, :cond_14a

    const-string v9, ""

    :goto_142
    invoke-static {v8, v9}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_14a
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p2}, Ljava/lang/String;-><init>([B)V

    goto :goto_142

    .line 573
    :cond_150
    add-int/lit8 v2, v2, 0x1

    goto :goto_12f

    .line 588
    :cond_153
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 589
    invoke-static {v0, v3}, Lorg/apache/harmony/luni/util/Base64;->decode([BI)[B

    move-result-object v0

    .line 590
    if-nez v0, :cond_168

    .line 591
    new-instance v7, Ljava/io/IOException;

    const-string v8, "security.159"

    invoke-static {v8}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 593
    :cond_168
    return-object v0

    .end local v3           #index:I
    .restart local v4       #index:I
    :cond_169
    move v3, v4

    .end local v4           #index:I
    .restart local v3       #index:I
    goto/16 :goto_9b
.end method

.method private static getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 732
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 733
    :try_start_3
    sget v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 734
    sget v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-static {p0, v6}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 736
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 737
    if-nez v0, :cond_22

    .line 738
    new-instance v6, Ljava/security/cert/CRLException;

    const-string v7, "security.152"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 761
    .end local v0           #buff:[B
    :catchall_1f
    move-exception v6

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v6

    .line 741
    .restart local v0       #buff:[B
    :cond_22
    :try_start_22
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 742
    .local v2, hash:J
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 743
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v6

    new-array v1, v6, [B

    .line 744
    .local v1, encoding:[B
    array-length v6, v1

    sget v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    if-ge v6, v7, :cond_47

    .line 745
    new-instance v6, Ljava/security/cert/CRLException;

    const-string v7, "security.15B4"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 748
    :cond_47
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 749
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/CRL;

    .line 750
    .local v4, res:Ljava/security/cert/CRL;
    if-eqz v4, :cond_56

    .line 751
    monitor-exit v5

    .line 759
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :goto_55
    return-object v4

    .line 753
    .restart local v1       #encoding:[B
    .restart local v4       #res:Ljava/security/cert/CRL;
    :cond_56
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    .end local v4           #res:Ljava/security/cert/CRL;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 754
    .restart local v4       #res:Ljava/security/cert/CRL;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 755
    monitor-exit v5

    goto :goto_55

    .line 757
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/CRL;
    :cond_62
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Ljava/io/InputStream;)V

    .line 758
    .local v4, res:Ljava/security/cert/X509CRL;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 759
    monitor-exit v5
    :try_end_71
    .catchall {:try_start_22 .. :try_end_71} :catchall_1f

    goto :goto_55
.end method

.method private static getCRL([B)Ljava/security/cert/CRL;
    .registers 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 702
    array-length v4, p0

    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    if-ge v4, v5, :cond_11

    .line 703
    new-instance v4, Ljava/security/cert/CRLException;

    const-string v5, "security.152"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 706
    :cond_11
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v4

    .line 707
    :try_start_14
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 708
    .local v0, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 709
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    .line 710
    .local v2, res:Ljava/security/cert/X509CRL;
    if-eqz v2, :cond_2f

    .line 711
    monitor-exit v4

    move-object v3, v2

    .line 716
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .local v3, res:Ljava/lang/Object;
    :goto_2e
    return-object v3

    .line 714
    .end local v3           #res:Ljava/lang/Object;
    :cond_2f
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>([B)V

    .line 715
    .restart local v2       #res:Ljava/security/cert/X509CRL;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 716
    monitor-exit v4

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_2e

    .line 717
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/X509CRL;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_3c
    move-exception v5

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3c

    throw v5
.end method

.method private static getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 9
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v5

    .line 659
    :try_start_3
    sget v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 661
    sget v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-static {p0, v6}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->readBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 662
    .local v0, buff:[B
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 663
    if-nez v0, :cond_22

    .line 664
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.152"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 688
    .end local v0           #buff:[B
    :catchall_1f
    move-exception v6

    monitor-exit v5
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw v6

    .line 667
    .restart local v0       #buff:[B
    :cond_22
    :try_start_22
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v2

    .line 668
    .local v2, hash:J
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v6

    if-eqz v6, :cond_62

    .line 669
    invoke-static {v0}, Lorg/apache/harmony/security/asn1/BerInputStream;->getLength([B)I

    move-result v6

    new-array v1, v6, [B

    .line 670
    .local v1, encoding:[B
    array-length v6, v1

    sget v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    if-ge v6, v7, :cond_47

    .line 671
    new-instance v6, Ljava/security/cert/CertificateException;

    const-string v7, "security.15B3"

    invoke-static {v7}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 674
    :cond_47
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    .line 675
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/Certificate;

    .line 676
    .local v4, res:Ljava/security/cert/Certificate;
    if-eqz v4, :cond_56

    .line 677
    monitor-exit v5

    .line 686
    .end local v1           #encoding:[B
    :goto_55
    return-object v4

    .line 679
    .restart local v1       #encoding:[B
    :cond_56
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    .end local v4           #res:Ljava/security/cert/Certificate;
    invoke-direct {v4, v1}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 680
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v6, v2, v3, v1, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 681
    monitor-exit v5

    goto :goto_55

    .line 683
    .end local v1           #encoding:[B
    .end local v4           #res:Ljava/security/cert/Certificate;
    :cond_62
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 684
    new-instance v4, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v4, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Ljava/io/InputStream;)V

    .line 685
    .restart local v4       #res:Ljava/security/cert/Certificate;
    sget-object v6, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v4}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;->getEncoded()[B

    move-result-object v7

    invoke-virtual {v6, v2, v3, v7, v4}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 686
    monitor-exit v5
    :try_end_74
    .catchall {:try_start_22 .. :try_end_74} :catchall_1f

    goto :goto_55
.end method

.method private static getCertificate([B)Ljava/security/cert/Certificate;
    .registers 7
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 627
    array-length v4, p0

    sget v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    if-ge v4, v5, :cond_11

    .line 628
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "security.152"

    invoke-static {v5}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 631
    :cond_11
    sget-object v4, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    monitor-enter v4

    .line 632
    :try_start_14
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->getHash([B)J

    move-result-wide v0

    .line 633
    .local v0, hash:J
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1}, Lorg/apache/harmony/security/provider/cert/Cache;->contains(J)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 634
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0}, Lorg/apache/harmony/security/provider/cert/Cache;->get(J[B)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/Certificate;

    .line 636
    .local v2, res:Ljava/security/cert/Certificate;
    if-eqz v2, :cond_2f

    .line 637
    monitor-exit v4

    move-object v3, v2

    .line 642
    .end local v2           #res:Ljava/security/cert/Certificate;
    .local v3, res:Ljava/lang/Object;
    :goto_2e
    return-object v3

    .line 640
    .end local v3           #res:Ljava/lang/Object;
    :cond_2f
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-direct {v2, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>([B)V

    .line 641
    .restart local v2       #res:Ljava/security/cert/Certificate;
    sget-object v5, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE:Lorg/apache/harmony/security/provider/cert/Cache;

    invoke-virtual {v5, v0, v1, p0, v2}, Lorg/apache/harmony/security/provider/cert/Cache;->put(J[BLjava/lang/Object;)V

    .line 642
    monitor-exit v4

    move-object v3, v2

    .restart local v3       #res:Ljava/lang/Object;
    goto :goto_2e

    .line 643
    .end local v0           #hash:J
    .end local v2           #res:Ljava/security/cert/Certificate;
    .end local v3           #res:Ljava/lang/Object;
    :catchall_3c
    move-exception v5

    monitor-exit v4
    :try_end_3e
    .catchall {:try_start_14 .. :try_end_3e} :catchall_3c

    throw v5
.end method

.method private static readBytes(Ljava/io/InputStream;I)[B
    .registers 6
    .parameter "source"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 605
    new-array v2, p1, [B

    .line 606
    .local v2, result:[B
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    if-ge v1, p1, :cond_14

    .line 607
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 608
    .local v0, bytik:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_e

    .line 609
    const/4 v3, 0x0

    .line 613
    .end local v0           #bytik:I
    :goto_d
    return-object v3

    .line 611
    .restart local v0       #bytik:I
    :cond_e
    int-to-byte v3, v0

    aput-byte v3, v2, v1

    .line 606
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .end local v0           #bytik:I
    :cond_14
    move-object v3, v2

    .line 613
    goto :goto_d
.end method


# virtual methods
.method public engineGenerateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    .registers 6
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 242
    if-nez p1, :cond_e

    .line 243
    new-instance v2, Ljava/security/cert/CRLException;

    const-string v3, "security.153"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 250
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 252
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 254
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_31

    .line 256
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v2

    .line 260
    :goto_30
    return-object v2

    .line 258
    :cond_31
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 260
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_37} :catch_39

    move-result-object v2

    goto :goto_30

    .line 262
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 263
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CRLException;

    invoke-direct {v2, v0}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCRLs(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 16
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x30

    const/4 v12, -0x1

    const-string v11, "security.15F"

    .line 273
    if-nez p1, :cond_13

    .line 274
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.153"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 276
    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 278
    .local v9, result:Ljava/util/ArrayList;
    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_24

    .line 279
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v7, inStream:Ljava/io/InputStream;
    move-object p1, v7

    .line 283
    .end local v7           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_24
    const/4 v4, 0x0

    .line 288
    .local v4, encoding:[B
    const/4 v10, -0x1

    .line 289
    .local v10, second_asn1_tag:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 291
    :goto_2a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    if-eq v0, v12, :cond_53

    .line 293
    const/16 v11, 0x2d

    if-ne v0, v11, :cond_5a

    .line 295
    sget-object v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v11}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v4

    .line 313
    :goto_3a
    if-nez v4, :cond_84

    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v11

    .line 317
    .local v6, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_42
    invoke-virtual {v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v10

    .line 318
    if-nez v4, :cond_4b

    .line 320
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 323
    :cond_4b
    if-eq v10, v13, :cond_8b

    .line 324
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_59

    .line 343
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_53
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_a1

    .line 370
    .end local p0
    :cond_59
    :goto_59
    return-object v9

    .line 296
    .restart local p0
    :cond_5a
    if-ne v0, v13, :cond_6e

    .line 297
    const/4 v4, 0x0

    .line 298
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 300
    sget v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CRL_CACHE_SEED_LENGTH:I

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_65} :catch_66

    goto :goto_3a

    .line 375
    .end local v0           #ch:I
    .end local v4           #encoding:[B
    .end local v10           #second_asn1_tag:I
    .end local p0
    :catch_66
    move-exception v11

    move-object v3, v11

    .line 376
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CRLException;

    invoke-direct {v11, v3}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 302
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #ch:I
    .restart local v4       #encoding:[B
    .restart local v10       #second_asn1_tag:I
    .restart local p0
    :cond_6e
    :try_start_6e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_80

    .line 303
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 308
    :cond_80
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_59

    .line 313
    :cond_84
    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    move-object v6, v11

    goto :goto_42

    .line 335
    .restart local v6       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_8b
    if-nez v4, :cond_99

    .line 336
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_94
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    goto :goto_2a

    .line 338
    :cond_99
    invoke-static {v4}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCRL([B)Ljava/security/cert/CRL;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 346
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_a1
    if-ne v0, v12, :cond_af

    .line 347
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.155"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 351
    :cond_af
    const/4 v11, 0x6

    if-ne v10, v11, :cond_f5

    .line 353
    if-eqz v4, :cond_cf

    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    :goto_bb
    check-cast v8, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 358
    .local v8, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v8}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v2

    .line 359
    .local v2, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v2, :cond_d7

    .line 360
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.154"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 353
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_cf
    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    goto :goto_bb

    .line 363
    .restart local v2       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v8       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_d7
    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCRLs()Ljava/util/List;

    move-result-object v1

    .line 364
    .local v1, crls:Ljava/util/List;
    if-eqz v1, :cond_59

    .line 365
    const/4 v5, 0x0

    .end local p0
    .local v5, i:I
    :goto_de
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_59

    .line 366
    new-instance v11, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/CertificateList;

    invoke-direct {v11, p0}, Lorg/apache/harmony/security/provider/cert/X509CRLImpl;-><init>(Lorg/apache/harmony/security/x509/CertificateList;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    add-int/lit8 v5, v5, 0x1

    goto :goto_de

    .line 373
    .end local v1           #crls:Ljava/util/List;
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v5           #i:I
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local p0
    :cond_f5
    new-instance v11, Ljava/security/cert/CRLException;

    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CRLException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_101} :catch_66
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .registers 4
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 386
    if-nez p1, :cond_e

    .line 387
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "security.153"

    invoke-static {v1}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_e
    const-string v0, "PkiPath"

    invoke-virtual {p0, p1, v0}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method public engineGenerateCertPath(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .registers 8
    .parameter "inStream"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 399
    if-nez p1, :cond_e

    .line 400
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "security.153"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 403
    :cond_e
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 404
    new-instance v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v2, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v2, inStream:Ljava/io/InputStream;
    move-object p1, v2

    .line 407
    .end local v2           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1a
    const/4 v3, 0x1

    :try_start_1b
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->mark(I)V

    .line 411
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    .local v0, ch:I
    const/16 v3, 0x2d

    if-ne v0, v3, :cond_31

    .line 413
    sget-object v3, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v3}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v3

    invoke-static {v3, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance([BLjava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    .line 418
    :goto_30
    return-object v3

    .line 415
    :cond_31
    const/16 v3, 0x30

    if-ne v0, v3, :cond_3d

    .line 416
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 418
    invoke-static {p1, p2}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->getInstance(Ljava/io/InputStream;Ljava/lang/String;)Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    move-result-object v3

    goto :goto_30

    .line 420
    :cond_3d
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "security.15F"

    invoke-static {v4}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_49} :catch_49

    .line 423
    .end local v0           #ch:I
    :catch_49
    move-exception v3

    move-object v1, v3

    .line 424
    .local v1, e:Ljava/io/IOException;
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public engineGenerateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;
    .registers 3
    .parameter "certificates"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 434
    new-instance v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;

    invoke-direct {v0, p1}, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public engineGenerateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .registers 6
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p1, :cond_e

    .line 93
    new-instance v2, Ljava/security/cert/CertificateException;

    const-string v3, "security.153"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 96
    :cond_e
    :try_start_e
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-nez v2, :cond_1a

    .line 98
    new-instance v1, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v1, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v1, inStream:Ljava/io/InputStream;
    move-object p1, v1

    .line 102
    .end local v1           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_1a
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->mark(I)V

    .line 104
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_31

    .line 106
    sget-object v2, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v2

    invoke-static {v2}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v2

    .line 110
    :goto_30
    return-object v2

    .line 108
    :cond_31
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 110
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_37} :catch_39

    move-result-object v2

    goto :goto_30

    .line 112
    :catch_39
    move-exception v2

    move-object v0, v2

    .line 113
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/security/cert/CertificateException;

    invoke-direct {v2, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public engineGenerateCertificates(Ljava/io/InputStream;)Ljava/util/Collection;
    .registers 16
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x30

    const/4 v12, -0x1

    const-string v11, "security.15F"

    .line 126
    if-nez p1, :cond_13

    .line 127
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "security.153"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 129
    :cond_13
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 131
    .local v9, result:Ljava/util/ArrayList;
    :try_start_18
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v11

    if-nez v11, :cond_24

    .line 133
    new-instance v7, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;

    invoke-direct {v7, p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl$RestoringInputStream;-><init>(Ljava/io/InputStream;)V

    .end local p1
    .local v7, inStream:Ljava/io/InputStream;
    move-object p1, v7

    .line 137
    .end local v7           #inStream:Ljava/io/InputStream;
    .restart local p1
    :cond_24
    const/4 v4, 0x0

    .line 142
    .local v4, encoding:[B
    const/4 v10, -0x1

    .line 143
    .local v10, second_asn1_tag:I
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    .line 145
    :goto_2a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    .local v1, ch:I
    if-eq v1, v12, :cond_53

    .line 147
    const/16 v11, 0x2d

    if-ne v1, v11, :cond_5a

    .line 149
    sget-object v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->FREE_BOUND_SUFFIX:[B

    invoke-direct {p0, p1, v11}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->decodePEM(Ljava/io/InputStream;[B)[B

    move-result-object v4

    .line 167
    :goto_3a
    if-nez v4, :cond_84

    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, p1}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v6, v11

    .line 171
    .local v6, in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :goto_42
    invoke-virtual {v6}, Lorg/apache/harmony/security/asn1/BerInputStream;->next()I

    move-result v10

    .line 172
    if-nez v4, :cond_4b

    .line 174
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 177
    :cond_4b
    if-eq v10, v13, :cond_8b

    .line 178
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_59

    .line 198
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_53
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-eqz v11, :cond_a1

    .line 226
    .end local p0
    :cond_59
    :goto_59
    return-object v9

    .line 150
    .restart local p0
    :cond_5a
    if-ne v1, v13, :cond_6e

    .line 151
    const/4 v4, 0x0

    .line 152
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    .line 154
    sget v11, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->CERT_CACHE_SEED_LENGTH:I

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V
    :try_end_65
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_65} :catch_66

    goto :goto_3a

    .line 231
    .end local v1           #ch:I
    .end local v4           #encoding:[B
    .end local v10           #second_asn1_tag:I
    .end local p0
    :catch_66
    move-exception v11

    move-object v3, v11

    .line 232
    .local v3, e:Ljava/io/IOException;
    new-instance v11, Ljava/security/cert/CertificateException;

    invoke-direct {v11, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v11

    .line 156
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #ch:I
    .restart local v4       #encoding:[B
    .restart local v10       #second_asn1_tag:I
    .restart local p0
    :cond_6e
    :try_start_6e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_80

    .line 157
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 162
    :cond_80
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_59

    .line 167
    :cond_84
    new-instance v11, Lorg/apache/harmony/security/asn1/BerInputStream;

    invoke-direct {v11, v4}, Lorg/apache/harmony/security/asn1/BerInputStream;-><init>([B)V

    move-object v6, v11

    goto :goto_42

    .line 189
    .restart local v6       #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_8b
    if-nez v4, :cond_99

    .line 190
    invoke-static {p1}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 196
    :goto_94
    const/4 v11, 0x1

    invoke-virtual {p1, v11}, Ljava/io/InputStream;->mark(I)V

    goto :goto_2a

    .line 192
    :cond_99
    invoke-static {v4}, Lorg/apache/harmony/security/provider/cert/X509CertFactoryImpl;->getCertificate([B)Ljava/security/cert/Certificate;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_94

    .line 201
    .end local v6           #in:Lorg/apache/harmony/security/asn1/BerInputStream;
    :cond_a1
    if-ne v1, v12, :cond_af

    .line 202
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "security.155"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 206
    :cond_af
    const/4 v11, 0x6

    if-ne v10, v11, :cond_f5

    .line 208
    if-eqz v4, :cond_cf

    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, v4}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode([B)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    :goto_bb
    check-cast v8, Lorg/apache/harmony/security/pkcs7/ContentInfo;

    .line 213
    .local v8, info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    invoke-virtual {v8}, Lorg/apache/harmony/security/pkcs7/ContentInfo;->getSignedData()Lorg/apache/harmony/security/pkcs7/SignedData;

    move-result-object v2

    .line 214
    .local v2, data:Lorg/apache/harmony/security/pkcs7/SignedData;
    if-nez v2, :cond_d7

    .line 215
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "security.154"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 208
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_cf
    sget-object v11, Lorg/apache/harmony/security/pkcs7/ContentInfo;->ASN1:Lorg/apache/harmony/security/asn1/ASN1Sequence;

    invoke-virtual {v11, p1}, Lorg/apache/harmony/security/asn1/ASN1Sequence;->decode(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v11

    move-object v8, v11

    goto :goto_bb

    .line 218
    .restart local v2       #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .restart local v8       #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    :cond_d7
    invoke-virtual {v2}, Lorg/apache/harmony/security/pkcs7/SignedData;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 219
    .local v0, certs:Ljava/util/List;
    if-eqz v0, :cond_59

    .line 220
    const/4 v5, 0x0

    .end local p0
    .local v5, i:I
    :goto_de
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_59

    .line 221
    new-instance v11, Lorg/apache/harmony/security/provider/cert/X509CertImpl;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/harmony/security/x509/Certificate;

    invoke-direct {v11, p0}, Lorg/apache/harmony/security/provider/cert/X509CertImpl;-><init>(Lorg/apache/harmony/security/x509/Certificate;)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 220
    add-int/lit8 v5, v5, 0x1

    goto :goto_de

    .line 229
    .end local v0           #certs:Ljava/util/List;
    .end local v2           #data:Lorg/apache/harmony/security/pkcs7/SignedData;
    .end local v5           #i:I
    .end local v8           #info:Lorg/apache/harmony/security/pkcs7/ContentInfo;
    .restart local p0
    :cond_f5
    new-instance v11, Ljava/security/cert/CertificateException;

    const-string v12, "security.15F"

    invoke-static {v12}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_101
    .catch Ljava/io/IOException; {:try_start_6e .. :try_end_101} :catch_66
.end method

.method public engineGetCertPathEncodings()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    sget-object v0, Lorg/apache/harmony/security/provider/cert/X509CertPathImpl;->encodings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
