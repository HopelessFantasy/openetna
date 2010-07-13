.class public Lorg/apache/harmony/xnet/provider/jsse/ClientHello;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ClientHello.java"


# instance fields
.field final cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

.field final client_version:[B

.field final compression_methods:[B

.field final random:[B

.field final session_id:[B


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;[B[B[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;)V
    .registers 15
    .parameter "sr"
    .parameter "version"
    .parameter "ses_id"
    .parameter "cipher_suite"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0xff

    .line 71
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 46
    const/16 v2, 0x20

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    .line 72
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v0, v2, v4

    .line 74
    .local v0, gmt_unix_time:J
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 75
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    and-long v3, v0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    .line 76
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    and-long v3, v0, v6

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    .line 77
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    const/4 v3, 0x2

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 78
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    const/4 v3, 0x3

    and-long v4, v0, v6

    long-to-int v4, v4

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    .line 79
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    .line 80
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 81
    new-array v2, v9, [B

    aput-byte v8, v2, v8

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    .line 82
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x26

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v3, v3

    shl-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v3, v3

    add-int/2addr v2, v3

    iput v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->length:I

    .line 84
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 14
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v11, 0x32

    const/16 v10, 0x20

    const/4 v9, 0x0

    .line 132
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 46
    new-array v6, v10, [B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    .line 133
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    if-eq v6, v8, :cond_18

    .line 134
    const-string v6, "DECODE ERROR: incorrect V2ClientHello"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 136
    :cond_18
    const/4 v6, 0x2

    new-array v6, v6, [B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    .line 137
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v9

    .line 138
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v8

    .line 139
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v4

    .line 140
    .local v4, cipher_spec_length:I
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v6

    if-eqz v6, :cond_3e

    .line 143
    const-string v6, "DECODE ERROR: incorrect V2ClientHello, cannot be used for resuming"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 146
    :cond_3e
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    .line 147
    .local v3, challenge_length:I
    const/16 v6, 0x10

    if-ge v3, v6, :cond_4b

    .line 148
    const-string v6, "DECODE ERROR: incorrect V2ClientHello, short challenge data"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 150
    :cond_4b
    new-array v6, v9, [B

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    .line 151
    div-int/lit8 v6, v4, 0x3

    new-array v6, v6, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 152
    const/4 v5, 0x0

    .local v5, i:I
    :goto_56
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v6, v6

    if-ge v5, v6, :cond_75

    .line 153
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v0, v6

    .line 154
    .local v0, b0:B
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v1, v6

    .line 155
    .local v1, b1:B
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v6

    int-to-byte v2, v6

    .line 156
    .local v2, b2:B
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-static {v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BBB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v7

    aput-object v7, v6, v5

    .line 152
    add-int/lit8 v5, v5, 0x1

    goto :goto_56

    .line 158
    .end local v0           #b0:B
    .end local v1           #b1:B
    .end local v2           #b2:B
    :cond_75
    new-array v6, v8, [B

    aput-byte v9, v6, v9

    iput-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    .line 160
    if-ge v3, v10, :cond_ac

    .line 161
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    sub-int v7, v10, v3

    invoke-static {v6, v9, v7, v9}, Ljava/util/Arrays;->fill([BIIB)V

    .line 162
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    sub-int v8, v10, v3

    invoke-static {v6, v9, v7, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    :goto_8f
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->available()I

    move-result v6

    if-lez v6, :cond_9a

    .line 169
    const-string v6, "DECODE ERROR: incorrect V2ClientHello, extra data"

    invoke-virtual {p0, v11, v6}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 171
    :cond_9a
    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v6, v6

    add-int/lit8 v6, v6, 0x26

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v7, v7

    shl-int/lit8 v7, v7, 0x1

    add-int/2addr v6, v7

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v7, v7

    add-int/2addr v6, v7

    iput v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->length:I

    .line 173
    return-void

    .line 163
    :cond_ac
    if-ne v3, v10, :cond_b8

    .line 164
    invoke-virtual {p1, v10}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    iget-object v7, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {v6, v9, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f

    .line 166
    :cond_b8
    invoke-virtual {p1, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v6

    sub-int v7, v3, v10

    iget-object v8, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8f
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;I)V
    .registers 15
    .parameter "in"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x32

    const/16 v9, 0x20

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "DECODE ERROR: incorrect ClientHello"

    .line 92
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 46
    new-array v5, v9, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    .line 93
    const/4 v5, 0x2

    new-array v5, v5, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    .line 94
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v7

    .line 95
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint8()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v5, v8

    .line 96
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1, v5, v7, v9}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 97
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    .line 98
    .local v4, size:I
    new-array v5, v4, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    .line 99
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-virtual {p1, v5, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 100
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v3

    .line 101
    .local v3, l:I
    and-int/lit8 v5, v3, 0x1

    if-ne v5, v8, :cond_45

    .line 102
    const-string v5, "DECODE ERROR: incorrect ClientHello"

    invoke-virtual {p0, v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 105
    :cond_45
    shr-int/lit8 v4, v3, 0x1

    .line 106
    new-array v5, v4, [Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    .line 107
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4c
    if-ge v2, v4, :cond_63

    .line 108
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v0, v5

    .line 109
    .local v0, b0:B
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v5

    int-to-byte v1, v5

    .line 110
    .local v1, b1:B
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    invoke-static {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->getByCode(BB)Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    move-result-object v6

    aput-object v6, v5, v2

    .line 107
    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 112
    .end local v0           #b0:B
    .end local v1           #b1:B
    :cond_63
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read()I

    move-result v4

    .line 113
    new-array v5, v4, [B

    iput-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    .line 114
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    invoke-virtual {p1, v5, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read([BII)I

    .line 115
    iget-object v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v5, v5

    add-int/lit8 v5, v5, 0x26

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    iget-object v6, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->length:I

    .line 117
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->length:I

    if-le v5, p2, :cond_8a

    .line 118
    const-string v5, "DECODE ERROR: incorrect ClientHello"

    invoke-virtual {p0, v10, v11}, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->fatalAlert(BLjava/lang/String;)V

    .line 122
    :cond_8a
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->length:I

    if-ge v5, p2, :cond_98

    .line 123
    iget v5, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->length:I

    sub-int v5, p2, v5

    int-to-long v5, v5

    invoke-virtual {p1, v5, v6}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->skip(J)J

    .line 124
    iput p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->length:I

    .line 126
    :cond_98
    return-void
.end method


# virtual methods
.method public getRandom()[B
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    return-object v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 6
    .parameter "out"

    .prologue
    .line 180
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->client_version:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 181
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->random:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 182
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 183
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->session_id:[B

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 184
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v2, v2

    shl-int/lit8 v1, v2, 0x1

    .line 185
    .local v1, size:I
    int-to-long v2, v1

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 186
    const/4 v0, 0x0

    .local v0, i:I
    :goto_20
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    array-length v2, v2

    if-ge v0, v2, :cond_33

    .line 187
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->cipher_suites:[Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->toBytes()[B

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 186
    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    .line 189
    :cond_33
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v2, v2

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint8(J)V

    .line 190
    const/4 v0, 0x0

    :goto_3b
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    array-length v2, v2

    if-ge v0, v2, :cond_4a

    .line 191
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ClientHello;->compression_methods:[B

    aget-byte v2, v2, v0

    invoke-virtual {p1, v2}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write(B)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_3b

    .line 193
    :cond_4a
    return-void
.end method
