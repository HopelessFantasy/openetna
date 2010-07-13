.class public final Lorg/bouncycastle/util/BigIntegers;
.super Ljava/lang/Object;
.source "BigIntegers.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asUnsignedByteArray(Ljava/math/BigInteger;)[B
    .registers 6
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 21
    .local v0, bytes:[B
    aget-byte v2, v0, v3

    if-nez v2, :cond_14

    .line 23
    array-length v2, v0

    sub-int/2addr v2, v4

    new-array v1, v2, [B

    .line 25
    .local v1, tmp:[B
    array-length v2, v1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v1

    .line 30
    .end local v1           #tmp:[B
    :goto_13
    return-object v2

    :cond_14
    move-object v2, v0

    goto :goto_13
.end method
