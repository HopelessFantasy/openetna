.class Ljava/nio/DirectByteBuffers;
.super Ljava/lang/Object;
.source "DirectByteBuffers.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static free(Ljava/nio/ByteBuffer;)V
    .registers 4
    .parameter "directBuffer"

    .prologue
    .line 48
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v2

    if-nez v2, :cond_e

    .line 49
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 51
    :cond_e
    move-object v0, p0

    check-cast v0, Ljava/nio/DirectByteBuffer;

    move-object v1, v0

    .line 52
    .local v1, buf:Ljava/nio/DirectByteBuffer;
    invoke-virtual {v1}, Ljava/nio/DirectByteBuffer;->free()V

    .line 53
    return-void
.end method

.method public static getEffectiveAddress(Ljava/nio/ByteBuffer;)Lorg/apache/harmony/luni/platform/PlatformAddress;
    .registers 2
    .parameter "directBuffer"

    .prologue
    .line 74
    invoke-static {p0}, Ljava/nio/DirectByteBuffers;->toDirectBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DirectByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/DirectByteBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    return-object v0
.end method

.method private static toDirectBuffer(Ljava/nio/ByteBuffer;)Ljava/nio/DirectByteBuffer;
    .registers 2
    .parameter "directBuffer"

    .prologue
    .line 78
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_e

    .line 79
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 81
    :cond_e
    check-cast p0, Ljava/nio/DirectByteBuffer;

    .end local p0
    return-object p0
.end method
