.class public final Ljava/security/KeyStore$PrivateKeyEntry;
.super Ljava/lang/Object;
.source "KeyStore.java"

# interfaces
.implements Ljava/security/KeyStore$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/security/KeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrivateKeyEntry"
.end annotation


# instance fields
.field private chain:[Ljava/security/cert/Certificate;

.field private privateKey:Ljava/security/PrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    .registers 8
    .parameter "privateKey"
    .parameter "chain"

    .prologue
    const/4 v4, 0x0

    .line 1366
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1367
    if-nez p1, :cond_12

    .line 1368
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.48"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1370
    :cond_12
    if-nez p2, :cond_20

    .line 1371
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "security.49"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1374
    :cond_20
    array-length v2, p2

    if-nez v2, :cond_2f

    .line 1375
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.4A"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1379
    :cond_2f
    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1380
    .local v1, s:Ljava/lang/String;
    aget-object v2, p2, v4

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-interface {v2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 1382
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.4B"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1385
    :cond_55
    const/4 v0, 0x1

    .local v0, i:I
    :goto_56
    array-length v2, p2

    if-ge v0, v2, :cond_74

    .line 1386
    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_71

    .line 1387
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "security.4C"

    invoke-static {v3}, Lorg/apache/harmony/security/internal/nls/Messages;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1385
    :cond_71
    add-int/lit8 v0, v0, 0x1

    goto :goto_56

    .line 1393
    :cond_74
    array-length v2, p2

    new-array v2, v2, [Ljava/security/cert/Certificate;

    iput-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    .line 1395
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v3, p2

    invoke-static {p2, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1396
    iput-object p1, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    .line 1397
    return-void
.end method


# virtual methods
.method public getCertificate()Ljava/security/cert/Certificate;
    .registers 3

    .prologue
    .line 1429
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getCertificateChain()[Ljava/security/cert/Certificate;
    .registers 2

    .prologue
    .line 1418
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/Certificate;->clone()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/security/cert/Certificate;

    return-object p0
.end method

.method public getPrivateKey()Ljava/security/PrivateKey;
    .registers 2

    .prologue
    .line 1406
    iget-object v0, p0, Ljava/security/KeyStore$PrivateKeyEntry;->privateKey:Ljava/security/PrivateKey;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const-string v3, "\n"

    .line 1440
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "PrivateKeyEntry: number of elements in certificate chain is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1442
    .local v1, sb:Ljava/lang/StringBuffer;
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1443
    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1444
    const/4 v0, 0x0

    .local v0, i:I
    :goto_19
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    array-length v2, v2

    if-ge v0, v2, :cond_31

    .line 1445
    iget-object v2, p0, Ljava/security/KeyStore$PrivateKeyEntry;->chain:[Ljava/security/cert/Certificate;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1446
    const-string v2, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1444
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 1448
    :cond_31
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
