.class public Landroid/security/ServiceCommand;
.super Ljava/lang/Object;
.source "ServiceCommand.java"


# static fields
.field public static final BUFFER_LENGTH:I = 0x1000

.field private static final DBG:Z = true

.field public static final FAILED:Ljava/lang/String; = "-1"

.field public static final GET_KEY:I = 0x5

.field public static final GET_STATE:I = 0x3

.field public static final LIST_KEYS:I = 0x4

.field public static final LOCK:I = 0x0

.field public static final MAX_CMD_INDEX:I = 0x9

.field public static final PASSWD:I = 0x2

.field public static final PUT_KEY:I = 0x6

.field public static final REMOVE_KEY:I = 0x7

.field public static final RESET:I = 0x8

.field public static final SUCCESS:Ljava/lang/String; = "0"

.field public static final UNLOCK:I = 0x1


# instance fields
.field private mIn:Ljava/io/InputStream;

.field private mOut:Ljava/io/OutputStream;

.field private mServiceName:Ljava/lang/String;

.field private mSocket:Landroid/net/LocalSocket;

.field private mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .parameter "service"

    .prologue
    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Landroid/security/ServiceCommand;->mServiceName:Ljava/lang/String;

    .line 196
    iput-object p1, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    .line 197
    return-void
.end method

.method private connect()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 61
    iget-object v2, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    if-eqz v2, :cond_7

    move v2, v4

    .line 79
    :goto_6
    return v2

    .line 64
    :cond_7
    iget-object v2, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    const-string v3, "connecting..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :try_start_e
    new-instance v2, Landroid/net/LocalSocket;

    invoke-direct {v2}, Landroid/net/LocalSocket;-><init>()V

    iput-object v2, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    .line 68
    new-instance v0, Landroid/net/LocalSocketAddress;

    iget-object v2, p0, Landroid/security/ServiceCommand;->mServiceName:Ljava/lang/String;

    sget-object v3, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, v2, v3}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 71
    .local v0, address:Landroid/net/LocalSocketAddress;
    iget-object v2, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2, v0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 73
    iget-object v2, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/security/ServiceCommand;->mIn:Ljava/io/InputStream;

    .line 74
    iget-object v2, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iput-object v2, p0, Landroid/security/ServiceCommand;->mOut:Ljava/io/OutputStream;
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_33} :catch_35

    move v2, v4

    .line 79
    goto :goto_6

    .line 75
    .end local v0           #address:Landroid/net/LocalSocketAddress;
    :catch_35
    move-exception v2

    move-object v1, v2

    .line 76
    .local v1, ex:Ljava/io/IOException;
    invoke-direct {p0}, Landroid/security/ServiceCommand;->disconnect()V

    .line 77
    const/4 v2, 0x0

    goto :goto_6
.end method

.method private disconnect()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-object v0, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    const-string v1, "disconnecting..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_8
    iget-object v0, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_11} :catch_2e

    .line 88
    :cond_11
    :goto_11
    :try_start_11
    iget-object v0, p0, Landroid/security/ServiceCommand;->mIn:Ljava/io/InputStream;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/security/ServiceCommand;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_2c

    .line 91
    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Landroid/security/ServiceCommand;->mOut:Ljava/io/OutputStream;

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroid/security/ServiceCommand;->mOut:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_23} :catch_2a

    .line 93
    :cond_23
    :goto_23
    iput-object v2, p0, Landroid/security/ServiceCommand;->mSocket:Landroid/net/LocalSocket;

    .line 94
    iput-object v2, p0, Landroid/security/ServiceCommand;->mIn:Ljava/io/InputStream;

    .line 95
    iput-object v2, p0, Landroid/security/ServiceCommand;->mOut:Ljava/io/OutputStream;

    .line 96
    return-void

    .line 92
    :catch_2a
    move-exception v0

    goto :goto_23

    .line 89
    :catch_2c
    move-exception v0

    goto :goto_1a

    .line 86
    :catch_2e
    move-exception v0

    goto :goto_11
.end method

.method private executeCommand(ILjava/lang/String;)Landroid/security/Reply;
    .registers 5
    .parameter "cmd"
    .parameter "data"

    .prologue
    .line 169
    invoke-direct {p0, p1, p2}, Landroid/security/ServiceCommand;->writeCommand(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 175
    iget-object v0, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    const-string v1, "write command failed? reconnect!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0}, Landroid/security/ServiceCommand;->connect()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-direct {p0, p1, p2}, Landroid/security/ServiceCommand;->writeCommand(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    .line 177
    :cond_19
    const/4 v0, 0x0

    .line 180
    :goto_1a
    return-object v0

    :cond_1b
    invoke-direct {p0}, Landroid/security/ServiceCommand;->readReply()Landroid/security/Reply;

    move-result-object v0

    goto :goto_1a
.end method

.method private readBytes([BI)Z
    .registers 10
    .parameter "buffer"
    .parameter "len"

    .prologue
    const/4 v6, 0x0

    .line 99
    const/4 v2, 0x0

    .line 100
    .local v2, off:I
    if-gez p2, :cond_7

    move v3, v6

    .line 116
    :goto_5
    return v3

    .line 108
    .local v0, count:I
    :cond_6
    add-int/2addr v2, v0

    .line 101
    .end local v0           #count:I
    :cond_7
    if-eq v2, p2, :cond_2b

    .line 103
    :try_start_9
    iget-object v3, p0, Landroid/security/ServiceCommand;->mIn:Ljava/io/InputStream;

    sub-int v4, p2, v2

    invoke-virtual {v3, p1, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 104
    .restart local v0       #count:I
    if-gtz v0, :cond_6

    .line 105
    iget-object v3, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

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
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_2b} :catch_2f

    .line 114
    .end local v0           #count:I
    :cond_2b
    :goto_2b
    if-ne v2, p2, :cond_39

    const/4 v3, 0x1

    goto :goto_5

    .line 109
    :catch_2f
    move-exception v3

    move-object v1, v3

    .line 110
    .local v1, ex:Ljava/io/IOException;
    iget-object v3, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    const-string v4, "read exception"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2b

    .line 115
    .end local v1           #ex:Ljava/io/IOException;
    :cond_39
    invoke-direct {p0}, Landroid/security/ServiceCommand;->disconnect()V

    move v3, v6

    .line 116
    goto :goto_5
.end method

.method private readReply()Landroid/security/Reply;
    .registers 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 120
    new-array v0, v4, [B

    .line 121
    .local v0, buf:[B
    new-instance v1, Landroid/security/Reply;

    invoke-direct {v1}, Landroid/security/Reply;-><init>()V

    .line 123
    .local v1, reply:Landroid/security/Reply;
    invoke-direct {p0, v0, v4}, Landroid/security/ServiceCommand;->readBytes([BI)Z

    move-result v2

    if-nez v2, :cond_14

    move-object v2, v5

    .line 140
    :goto_13
    return-object v2

    .line 124
    :cond_14
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v0, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, v0, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, v1, Landroid/security/Reply;->len:I

    .line 128
    invoke-direct {p0, v0, v4}, Landroid/security/ServiceCommand;->readBytes([BI)Z

    move-result v2

    if-nez v2, :cond_38

    move-object v2, v5

    goto :goto_13

    .line 129
    :cond_38
    aget-byte v2, v0, v6

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v0, v7

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    aget-byte v3, v0, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v3, v0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x18

    or-int/2addr v2, v3

    iput v2, v1, Landroid/security/Reply;->returnCode:I

    .line 134
    iget v2, v1, Landroid/security/Reply;->len:I

    const/16 v3, 0x1000

    if-le v2, v3, :cond_7f

    .line 135
    iget-object v2, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid reply length ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/security/Reply;->len:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Landroid/security/ServiceCommand;->disconnect()V

    move-object v2, v5

    .line 137
    goto :goto_13

    .line 139
    :cond_7f
    iget-object v2, v1, Landroid/security/Reply;->data:[B

    iget v3, v1, Landroid/security/Reply;->len:I

    invoke-direct {p0, v2, v3}, Landroid/security/ServiceCommand;->readBytes([BI)Z

    move-result v2

    if-nez v2, :cond_8b

    move-object v2, v5

    goto :goto_13

    :cond_8b
    move-object v2, v1

    .line 140
    goto :goto_13
.end method

.method private writeCommand(ILjava/lang/String;)Z
    .registers 12
    .parameter "cmd"
    .parameter "_data"

    .prologue
    const/16 v4, 0x8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 144
    new-array v0, v4, [B

    .line 145
    .local v0, buf:[B
    if-nez p2, :cond_56

    new-array v4, v7, [B

    move-object v1, v4

    .line 146
    .local v1, data:[B
    :goto_b
    array-length v3, v1

    .line 148
    .local v3, len:I
    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    .line 149
    shr-int/lit8 v4, v3, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v0, v8

    .line 150
    const/4 v4, 0x2

    shr-int/lit8 v5, v3, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 151
    const/4 v4, 0x3

    shr-int/lit8 v5, v3, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 153
    const/4 v4, 0x4

    and-int/lit16 v5, p1, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 154
    const/4 v4, 0x5

    shr-int/lit8 v5, p1, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 155
    const/4 v4, 0x6

    shr-int/lit8 v5, p1, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 156
    const/4 v4, 0x7

    shr-int/lit8 v5, p1, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 158
    :try_start_46
    iget-object v4, p0, Landroid/security/ServiceCommand;->mOut:Ljava/io/OutputStream;

    const/4 v5, 0x0

    const/16 v6, 0x8

    invoke-virtual {v4, v0, v5, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 159
    iget-object v4, p0, Landroid/security/ServiceCommand;->mOut:Ljava/io/OutputStream;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_54
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_54} :catch_5c

    move v4, v8

    .line 165
    :goto_55
    return v4

    .line 145
    .end local v1           #data:[B
    .end local v3           #len:I
    :cond_56
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    move-object v1, v4

    goto :goto_b

    .line 160
    .restart local v1       #data:[B
    .restart local v3       #len:I
    :catch_5c
    move-exception v4

    move-object v2, v4

    .line 161
    .local v2, ex:Ljava/io/IOException;
    iget-object v4, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    const-string v5, "write error"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-direct {p0}, Landroid/security/ServiceCommand;->disconnect()V

    move v4, v7

    .line 163
    goto :goto_55
.end method


# virtual methods
.method public declared-synchronized execute(ILjava/lang/String;)Landroid/security/Reply;
    .registers 6
    .parameter "cmd"
    .parameter "data"

    .prologue
    .line 185
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Landroid/security/ServiceCommand;->connect()Z

    move-result v1

    if-nez v1, :cond_11

    .line 186
    iget-object v1, p0, Landroid/security/ServiceCommand;->mTag:Ljava/lang/String;

    const-string v2, "connection failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_1a

    .line 187
    const/4 v1, 0x0

    .line 191
    :goto_f
    monitor-exit p0

    return-object v1

    .line 189
    :cond_11
    :try_start_11
    invoke-direct {p0, p1, p2}, Landroid/security/ServiceCommand;->executeCommand(ILjava/lang/String;)Landroid/security/Reply;

    move-result-object v0

    .line 190
    .local v0, result:Landroid/security/Reply;
    invoke-direct {p0}, Landroid/security/ServiceCommand;->disconnect()V
    :try_end_18
    .catchall {:try_start_11 .. :try_end_18} :catchall_1a

    move-object v1, v0

    .line 191
    goto :goto_f

    .line 185
    .end local v0           #result:Landroid/security/Reply;
    :catchall_1a
    move-exception v1

    monitor-exit p0

    throw v1
.end method
