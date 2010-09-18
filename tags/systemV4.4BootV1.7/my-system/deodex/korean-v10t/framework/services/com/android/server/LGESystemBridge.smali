.class Lcom/android/server/LGESystemBridge;
.super Ljava/lang/Object;
.source "LGESystemBridge.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LGESystemBridge"


# instance fields
.field buf:[B

.field buflen:I

.field mIn:Ljava/io/InputStream;

.field mOut:Ljava/io/OutputStream;

.field mSocket:Landroid/net/LocalSocket;


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/LGESystemBridge;->buflen:I

    return-void
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 41
    iget-object v2, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_7

    move v2, v4

    .line 59
    :goto_6
    return v2

    .line 44
    :cond_7
    const-string v2, "LGESystemBridge"

    const-string v3, "connecting..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    :try_start_e
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    .line 48
    new-instance v0, Landroid/net/LocalSocketAddress;

    const-string v2, "lgesystemd"

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 51
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 53
    iget-object v2, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LGESystemBridge;->mIn:Ljava/io/InputStream;

    .line 54
    iget-object v2, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/LGESystemBridge;->mOut:Ljava/io/OutputStream;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_33} :catch_35

    move v2, v4

    .line 59
    goto :goto_6

    .line 55
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_35
    move-exception v2

    move-object v1, v2

    .line 56
    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/server/LGESystemBridge;->disconnect()V

    .line 57
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 63
    const-string v0, "LGESystemBridge"

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :try_start_8
    iget-object v0, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_2e

    .line 68
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Lcom/android/server/LGESystemBridge;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/server/LGESystemBridge;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_2c

    .line 71
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/android/server/LGESystemBridge;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/LGESystemBridge;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_2a

    .line 73
    :cond_23
    :goto_23
    iput-object v2, p0, Lcom/android/server/LGESystemBridge;->mSocket:Landroid/net/LocalSocket;

    .line 74
    iput-object v2, p0, Lcom/android/server/LGESystemBridge;->mIn:Ljava/io/InputStream;

    .line 75
    iput-object v2, p0, Lcom/android/server/LGESystemBridge;->mOut:Ljava/io/OutputStream;

    .line 76
    return-void

    .line 72
    :catch_2a
    move-exception v0

    goto :goto_23

    .line 69
    :catch_2c
    move-exception v0

    goto :goto_1a

    .line 66
    :catch_2e
    move-exception v0

    goto :goto_11
.end method

.method private execute(Ljava/lang/String;)I
    .registers 5
    .parameter "cmd"

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/server/LGESystemBridge;->transaction(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 159
    .local v1, res:Ljava/lang/String;
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_7} :catch_9

    move-result v2

    .line 161
    :goto_8
    return v2

    .line 160
    :catch_9
    move-exception v0

    .line 161
    .local v0, ex:Ljava/lang/NumberFormatException;
    const/4 v2, -0x1

    goto :goto_8
.end method

.method private readBytes([BI)Z
    .registers 11
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    const-string v7, "LGESystemBridge"

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, off:I
    if-gez p2, :cond_9

    move v3, v6

    .line 96
    :goto_7
    return v3

    .line 88
    .local v0, count:I
    :cond_8
    add-int/2addr v2, v0

    .line 81
    .end local v0           #count:I
    :cond_9
    if-eq v2, p2, :cond_2d

    .line 83
    :try_start_b
    iget-object v3, p0, Lcom/android/server/LGESystemBridge;->mIn:Ljava/io/InputStream;

    sub-int v4, p2, v2

    invoke-virtual {v3, p1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 84
    .restart local v0       #count:I
    if-gtz v0, :cond_8

    .line 85
    const-string v3, "LGESystemBridge"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read error "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_2d} :catch_31

    .line 94
    .end local v0           #count:I
    :cond_2d
    :goto_2d
    if-ne v2, p2, :cond_3b

    const/4 v3, 0x1

    goto :goto_7

    .line 89
    :catch_31
    move-exception v3

    move-object v1, v3

    .line 90
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "LGESystemBridge"

    const-string v3, "read exception"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2d

    .line 95
    .end local v1           #ex:Ljava/io/IOException;
    :cond_3b
    invoke-direct {p0}, Lcom/android/server/LGESystemBridge;->disconnect()V

    move v3, v6

    .line 96
    goto :goto_7
.end method

.method private readReply()Z
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 101
    iput v4, p0, Lcom/android/server/LGESystemBridge;->buflen:I

    .line 102
    iget-object v1, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    const/4 v2, 0x2

    invoke-direct {p0, v1, v2}, Lcom/android/server/LGESystemBridge;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_f

    move v1, v4

    .line 111
    :goto_e
    return v1

    .line 103
    :cond_f
    iget-object v1, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int v0, v1, v2

    .line 104
    .local v0, len:I
    if-lt v0, v3, :cond_25

    const/16 v1, 0x400

    if-le v0, v1, :cond_48

    .line 105
    :cond_25
    const-string v1, "LGESystemBridge"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid reply length ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-direct {p0}, Lcom/android/server/LGESystemBridge;->disconnect()V

    move v1, v4

    .line 107
    goto :goto_e

    .line 109
    :cond_48
    iget-object v1, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    invoke-direct {p0, v1, v0}, Lcom/android/server/LGESystemBridge;->readBytes([BI)Z

    move-result v1

    if-nez v1, :cond_52

    move v1, v4

    goto :goto_e

    .line 110
    :cond_52
    iput v0, p0, Lcom/android/server/LGESystemBridge;->buflen:I

    move v1, v3

    .line 111
    goto :goto_e
.end method

.method private declared-synchronized transaction(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .parameter "cmd"

    .prologue
    const-string v1, "LGESystemBridge"

    const-string v3, "-1"

    .line 132
    monitor-enter p0

    :try_start_5
    invoke-direct {p0}, Lcom/android/server/LGESystemBridge;->connect()Z

    move-result v1

    if-nez v1, :cond_17

    .line 133
    const-string v1, "LGESystemBridge"

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v1, "-1"
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_4a

    move-object v1, v3

    .line 152
    :goto_15
    monitor-exit p0

    return-object v1

    .line 137
    :cond_17
    :try_start_17
    invoke-direct {p0, p1}, Lcom/android/server/LGESystemBridge;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 143
    const-string v1, "LGESystemBridge"

    const-string v2, "write command failed? reconnect!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-direct {p0}, Lcom/android/server/LGESystemBridge;->connect()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-direct {p0, p1}, Lcom/android/server/LGESystemBridge;->writeCommand(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 145
    :cond_30
    const-string v1, "-1"

    move-object v1, v3

    goto :goto_15

    .line 148
    :cond_34
    invoke-direct {p0}, Lcom/android/server/LGESystemBridge;->readReply()Z

    move-result v1

    if-eqz v1, :cond_46

    .line 149
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/LGESystemBridge;->buflen:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    .local v0, s:Ljava/lang/String;
    move-object v1, v0

    .line 150
    goto :goto_15

    .line 152
    .end local v0           #s:Ljava/lang/String;
    :cond_46
    const-string v1, "-1"
    :try_end_48
    .catchall {:try_start_17 .. :try_end_48} :catchall_4a

    move-object v1, v3

    goto :goto_15

    .line 132
    :catchall_4a
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private writeCommand(Ljava/lang/String;)Z
    .registers 11
    .parameter "_cmd"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 115
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 116
    .local v0, cmd:[B
    array-length v2, v0

    .line 117
    .local v2, len:I
    if-lt v2, v8, :cond_d

    const/16 v3, 0x400

    if-le v2, v3, :cond_f

    :cond_d
    move v3, v7

    .line 128
    :goto_e
    return v3

    .line 118
    :cond_f
    iget-object v3, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v7

    .line 119
    iget-object v3, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    shr-int/lit8 v4, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v3, v8

    .line 121
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/LGESystemBridge;->mOut:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/android/server/LGESystemBridge;->buf:[B

    const/4 v5, 0x0

    const/4 v6, 0x2

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 122
    iget-object v3, p0, Lcom/android/server/LGESystemBridge;->mOut:Ljava/io/OutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_2e} :catch_30

    move v3, v8

    .line 128
    goto :goto_e

    .line 123
    :catch_30
    move-exception v3

    move-object v1, v3

    .line 124
    .local v1, ex:Ljava/io/IOException;
    const-string v3, "LGESystemBridge"

    const-string v4, "write error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    invoke-direct {p0}, Lcom/android/server/LGESystemBridge;->disconnect()V

    move v3, v7

    .line 126
    goto :goto_e
.end method


# virtual methods
.method public clearCache()I
    .registers 3

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearcache"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LGESystemBridge;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public clearUserData()I
    .registers 3

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearuserdata"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LGESystemBridge;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public factoryReset()I
    .registers 3

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "factoryreset"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 185
    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/LGESystemBridge;->execute(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public ping()Z
    .registers 2

    .prologue
    .line 166
    const-string v0, "ping"

    invoke-direct {p0, v0}, Lcom/android/server/LGESystemBridge;->execute(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    .line 167
    const/4 v0, 0x0

    .line 169
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method
