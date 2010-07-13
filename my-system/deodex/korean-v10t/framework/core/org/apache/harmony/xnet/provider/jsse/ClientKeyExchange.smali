.class public Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ClientKeyExchange.java"


# instance fields
.field final exchange_keys:[B

.field final isRSA:Z

.field isTLS:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 92
    new-array v0, v1, [B

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 93
    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 94
    iput-boolean v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .registers 7
    .parameter "dh_Yc"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 76
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 77
    .local v0, bb:[B
    aget-byte v1, v0, v3

    if-nez v1, :cond_25

    .line 78
    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 79
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    :goto_1b
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 84
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 85
    return-void

    .line 81
    :cond_25
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    goto :goto_1b
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;IZZ)V
    .registers 8
    .parameter "in"
    .parameter "length"
    .parameter "isTLS"
    .parameter "isRSA"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 106
    iput-boolean p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    .line 107
    iput-boolean p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 108
    if-nez p2, :cond_11

    .line 109
    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 110
    new-array v1, v2, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 126
    :cond_10
    :goto_10
    return-void

    .line 113
    :cond_11
    if-eqz p4, :cond_2d

    if-nez p3, :cond_2d

    .line 114
    move v0, p2

    .line 115
    .local v0, size:I
    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 120
    :goto_18
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 121
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {p1, v1, v2, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 122
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    if-eq v1, p2, :cond_10

    .line 123
    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ClientKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->fatalAlert(BLjava/lang/String;)V

    goto :goto_10

    .line 117
    .end local v0           #size:I
    :cond_2d
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 118
    .restart local v0       #size:I
    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    goto :goto_18
.end method

.method public constructor <init>([BZ)V
    .registers 4
    .parameter "encrypted_pre_master_secret"
    .parameter "isTLS"

    .prologue
    .line 61
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 62
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    .line 63
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 64
    if-eqz p2, :cond_12

    .line 65
    iget v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->length:I

    .line 67
    :cond_12
    iput-boolean p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    .line 68
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    .line 69
    return-void
.end method


# virtual methods
.method public getType()I
    .registers 2

    .prologue
    .line 146
    const/16 v0, 0x10

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 133
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    if-eqz v0, :cond_19

    .line 134
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isRSA:Z

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->isTLS:Z

    if-eqz v0, :cond_14

    .line 135
    :cond_d
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 137
    :cond_14
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientKeyExchange;->exchange_keys:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 139
    :cond_19
    return-void
.end method
