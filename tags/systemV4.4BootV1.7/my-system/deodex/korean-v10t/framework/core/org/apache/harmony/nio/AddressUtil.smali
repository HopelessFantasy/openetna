.class public Lorg/apache/harmony/nio/AddressUtil;
.super Ljava/lang/Object;
.source "AddressUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChannelAddress(Ljava/nio/channels/Channel;)I
    .registers 2
    .parameter "channel"

    .prologue
    .line 77
    instance-of v0, p0, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    if-eqz v0, :cond_f

    .line 78
    check-cast p0, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;

    .end local p0
    invoke-interface {p0}, Lorg/apache/harmony/luni/platform/FileDescriptorHandler;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/harmony/nio/AddressUtil;->getFDAddress(Ljava/io/FileDescriptor;)I

    move-result v0

    .line 82
    :goto_e
    return v0

    .line 79
    .restart local p0
    :cond_f
    instance-of v0, p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;

    if-eqz v0, :cond_1a

    .line 80
    check-cast p0, Lorg/apache/harmony/nio/internal/FileChannelImpl;

    .end local p0
    invoke-virtual {p0}, Lorg/apache/harmony/nio/internal/FileChannelImpl;->getHandle()I

    move-result v0

    goto :goto_e

    .line 82
    .restart local p0
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static getDirectBufferAddress(Ljava/nio/Buffer;)I
    .registers 2
    .parameter "buf"

    .prologue
    .line 52
    instance-of v0, p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    if-nez v0, :cond_6

    .line 53
    const/4 v0, 0x0

    .line 55
    .end local p0
    :goto_5
    return v0

    .restart local p0
    :cond_6
    check-cast p0, Lorg/apache/harmony/nio/internal/DirectBuffer;

    .end local p0
    invoke-interface {p0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getEffectiveAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/PlatformAddress;->toInt()I

    move-result v0

    goto :goto_5
.end method

.method private static native getFDAddress(Ljava/io/FileDescriptor;)I
.end method
