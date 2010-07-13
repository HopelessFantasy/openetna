.class public abstract Ljava/nio/MappedByteBuffer;
.super Ljava/nio/ByteBuffer;
.source "MappedByteBuffer.java"


# instance fields
.field private mapMode:I

.field final wrapped:Ljava/nio/DirectByteBuffer;


# direct methods
.method constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3
    .parameter "directBuffer"

    .prologue
    .line 50
    iget v0, p1, Ljava/nio/ByteBuffer;->capacity:I

    invoke-direct {p0, v0}, Ljava/nio/ByteBuffer;-><init>(I)V

    .line 51
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-nez v0, :cond_11

    .line 52
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 54
    :cond_11
    check-cast p1, Ljava/nio/DirectByteBuffer;

    .end local p1
    iput-object p1, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    .line 56
    return-void
.end method

.method constructor <init>(Lorg/apache/harmony/luni/platform/PlatformAddress;III)V
    .registers 6
    .parameter "addr"
    .parameter "capa"
    .parameter "offset"
    .parameter "mode"

    .prologue
    .line 59
    invoke-direct {p0, p2}, Ljava/nio/ByteBuffer;-><init>(I)V

    .line 60
    iput p4, p0, Ljava/nio/MappedByteBuffer;->mapMode:I

    .line 61
    iget v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:I

    packed-switch v0, :pswitch_data_24

    .line 70
    :pswitch_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 63
    :pswitch_10
    new-instance v0, Ljava/nio/ReadOnlyDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadOnlyDirectByteBuffer;-><init>(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    .line 72
    :goto_17
    invoke-virtual {p1}, Lorg/apache/harmony/luni/platform/PlatformAddress;->autoFree()V

    .line 73
    return-void

    .line 67
    :pswitch_1b
    new-instance v0, Ljava/nio/ReadWriteDirectByteBuffer;

    invoke-direct {v0, p1, p2, p3}, Ljava/nio/ReadWriteDirectByteBuffer;-><init>(Lorg/apache/harmony/luni/platform/PlatformAddress;II)V

    iput-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    goto :goto_17

    .line 61
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_10
        :pswitch_1b
        :pswitch_a
        :pswitch_1b
    .end packed-switch
.end method


# virtual methods
.method public final force()Ljava/nio/MappedByteBuffer;
    .registers 3

    .prologue
    .line 110
    iget v0, p0, Ljava/nio/MappedByteBuffer;->mapMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    .line 111
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-interface {v0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->mmapFlush()V

    .line 113
    :cond_10
    return-object p0
.end method

.method public final isLoaded()Z
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-interface {v0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object p0

    .end local p0
    check-cast p0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    invoke-virtual {p0}, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->mmapIsLoaded()Z

    move-result v0

    return v0
.end method

.method public final load()Ljava/nio/MappedByteBuffer;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Ljava/nio/MappedByteBuffer;->wrapped:Ljava/nio/DirectByteBuffer;

    invoke-interface {v0}, Lorg/apache/harmony/nio/internal/DirectBuffer;->getBaseAddress()Lorg/apache/harmony/luni/platform/PlatformAddress;

    move-result-object v0

    check-cast v0, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;

    invoke-virtual {v0}, Lorg/apache/harmony/luni/platform/MappedPlatformAddress;->mmapLoad()V

    .line 97
    return-object p0
.end method
