.class Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;
.super Ljava/lang/Object;
.source "JDKDSASigner.java"

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/jce/provider/JDKDSASigner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullDigest"
.end annotation


# instance fields
.field private bOut:Ljava/io/ByteArrayOutputStream;


# direct methods
.method private constructor <init>()V
    .registers 2

    .prologue
    .line 387
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/jce/provider/JDKDSASigner$1;)V
    .registers 2
    .parameter "x0"

    .prologue
    .line 387
    invoke-direct {p0}, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;-><init>()V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .registers 6
    .parameter "out"
    .parameter "outOff"

    .prologue
    .line 414
    iget-object v1, p0, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 416
    .local v0, res:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 418
    array-length v1, v0

    return v1
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 394
    const-string v0, "NULL"

    return-object v0
.end method

.method public getDigestSize()I
    .registers 2

    .prologue
    .line 399
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .prologue
    .line 423
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 424
    return-void
.end method

.method public update(B)V
    .registers 3
    .parameter "in"

    .prologue
    .line 404
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 405
    return-void
.end method

.method public update([BII)V
    .registers 5
    .parameter "in"
    .parameter "inOff"
    .parameter "len"

    .prologue
    .line 409
    iget-object v0, p0, Lorg/bouncycastle/jce/provider/JDKDSASigner$NullDigest;->bOut:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 410
    return-void
.end method
