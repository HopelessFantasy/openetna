.class public Lorg/apache/harmony/xnet/provider/jsse/HelloRequest;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "HelloRequest.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 5
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 54
    if-eqz p2, :cond_c

    .line 55
    const/16 v0, 0x32

    const-string v1, "DECODE ERROR: incorrect HelloRequest"

    invoke-virtual {p0, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HelloRequest;->fatalAlert(BLjava/lang/String;)V

    .line 57
    :cond_c
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public length()I
    .registers 2

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 64
    return-void
.end method
