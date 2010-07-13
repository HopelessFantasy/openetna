.class public final Ljava/net/DatagramPacket;
.super Ljava/lang/Object;
.source "DatagramPacket.java"


# instance fields
.field address:Ljava/net/InetAddress;

.field data:[B

.field length:I

.field offset:I

.field port:I


# direct methods
.method public constructor <init>([BI)V
    .registers 4
    .parameter "data"
    .parameter "length"

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 54
    return-void
.end method

.method public constructor <init>([BII)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Ljava/net/DatagramPacket;->port:I

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I

    .line 70
    invoke-virtual {p0, p1, p2, p3}, Ljava/net/DatagramPacket;->setData([BII)V

    .line 71
    return-void
.end method

.method public constructor <init>([BIILjava/net/InetAddress;I)V
    .registers 6
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "host"
    .parameter "aPort"

    .prologue
    .line 93
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 94
    invoke-virtual {p0, p5}, Ljava/net/DatagramPacket;->setPort(I)V

    .line 95
    iput-object p4, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;

    .line 96
    return-void
.end method

.method public constructor <init>([BIILjava/net/SocketAddress;)V
    .registers 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .parameter "sockAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1, p2, p3}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 288
    invoke-virtual {p0, p4}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 289
    return-void
.end method

.method public constructor <init>([BILjava/net/InetAddress;I)V
    .registers 11
    .parameter "data"
    .parameter "length"
    .parameter "host"
    .parameter "port"

    .prologue
    .line 115
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/net/DatagramPacket;-><init>([BIILjava/net/InetAddress;I)V

    .line 116
    return-void
.end method

.method public constructor <init>([BILjava/net/SocketAddress;)V
    .registers 5
    .parameter "data"
    .parameter "length"
    .parameter "sockAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .prologue
    .line 263
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Ljava/net/DatagramPacket;-><init>([BII)V

    .line 264
    invoke-virtual {p0, p3}, Ljava/net/DatagramPacket;->setSocketAddress(Ljava/net/SocketAddress;)V

    .line 265
    return-void
.end method


# virtual methods
.method public declared-synchronized getAddress()Ljava/net/InetAddress;
    .registers 2

    .prologue
    .line 126
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getData()[B
    .registers 2

    .prologue
    .line 136
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljava/net/DatagramPacket;->data:[B
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLength()I
    .registers 2

    .prologue
    .line 146
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getOffset()I
    .registers 2

    .prologue
    .line 156
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPort()I
    .registers 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_1
    iget v0, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSocketAddress()Ljava/net/SocketAddress;
    .registers 4

    .prologue
    .line 299
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/DatagramPacket;->getPort()I

    move-result v2

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-object v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAddress(Ljava/net/InetAddress;)V
    .registers 3
    .parameter "addr"

    .prologue
    .line 178
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 179
    monitor-exit p0

    return-void

    .line 178
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([B)V
    .registers 3
    .parameter "buf"

    .prologue
    .line 212
    monitor-enter p0

    :try_start_1
    array-length v0, p1

    iput v0, p0, Ljava/net/DatagramPacket;->length:I

    .line 213
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 214
    const/4 v0, 0x0

    iput v0, p0, Ljava/net/DatagramPacket;->offset:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 215
    monitor-exit p0

    return-void

    .line 212
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setData([BII)V
    .registers 6
    .parameter "buf"
    .parameter "anOffset"
    .parameter "aLength"

    .prologue
    .line 194
    monitor-enter p0

    if-ltz p2, :cond_c

    :try_start_3
    array-length v0, p1

    if-gt p2, v0, :cond_c

    if-ltz p3, :cond_c

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1b

    .line 196
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_18

    .line 194
    :catchall_18
    move-exception v0

    monitor-exit p0

    throw v0

    .line 198
    :cond_1b
    :try_start_1b
    iput-object p1, p0, Ljava/net/DatagramPacket;->data:[B

    .line 199
    iput p2, p0, Ljava/net/DatagramPacket;->offset:I

    .line 200
    iput p3, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_18

    .line 201
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setLength(I)V
    .registers 4
    .parameter "len"

    .prologue
    .line 226
    monitor-enter p0

    if-ltz p1, :cond_b

    :try_start_3
    iget v0, p0, Ljava/net/DatagramPacket;->offset:I

    add-int/2addr v0, p1

    iget-object v1, p0, Ljava/net/DatagramPacket;->data:[B

    array-length v1, v1

    if-le v0, v1, :cond_1a

    .line 227
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K002f"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_17

    .line 226
    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :cond_1a
    :try_start_1a
    iput p1, p0, Ljava/net/DatagramPacket;->length:I
    :try_end_1c
    .catchall {:try_start_1a .. :try_end_1c} :catchall_17

    .line 230
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setPort(I)V
    .registers 4
    .parameter "aPort"

    .prologue
    .line 240
    monitor-enter p0

    if-ltz p1, :cond_8

    const v0, 0xffff

    if-le p1, v0, :cond_17

    .line 241
    :cond_8
    :try_start_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "K0325"

    invoke-static {v1, p1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_14

    .line 240
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0

    .line 243
    :cond_17
    :try_start_17
    iput p1, p0, Ljava/net/DatagramPacket;->port:I
    :try_end_19
    .catchall {:try_start_17 .. :try_end_19} :catchall_14

    .line 244
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setSocketAddress(Ljava/net/SocketAddress;)V
    .registers 7
    .parameter "sockAddr"

    .prologue
    .line 310
    monitor-enter p0

    :try_start_1
    instance-of v2, p1, Ljava/net/InetSocketAddress;

    if-nez v2, :cond_1c

    .line 311
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "K0316"

    if-nez p1, :cond_17

    const/4 v4, 0x0

    :goto_c
    invoke-static {v3, v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_14

    .line 310
    :catchall_14
    move-exception v2

    monitor-exit p0

    throw v2

    .line 311
    :cond_17
    :try_start_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_c

    .line 314
    :cond_1c
    move-object v0, p1

    check-cast v0, Ljava/net/InetSocketAddress;

    move-object v1, v0

    .line 315
    .local v1, inetAddr:Ljava/net/InetSocketAddress;
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v2

    iput v2, p0, Ljava/net/DatagramPacket;->port:I

    .line 316
    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Ljava/net/DatagramPacket;->address:Ljava/net/InetAddress;
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_14

    .line 317
    monitor-exit p0

    return-void
.end method
