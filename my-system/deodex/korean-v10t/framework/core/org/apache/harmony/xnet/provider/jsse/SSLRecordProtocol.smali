.class public Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;
.super Ljava/lang/Object;
.source "SSLRecordProtocol.java"


# static fields
.field protected static MAX_CIPHERED_DATA_LENGTH:I

.field protected static MAX_COMPRESSED_DATA_LENGTH:I

.field protected static MAX_DATA_LENGTH:I

.field protected static MAX_SSL_PACKET_SIZE:I

.field private static final change_cipher_spec_byte:[B


# instance fields
.field private activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

.field private appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

.field private handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

.field private in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

.field private logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field private pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

.field private session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

.field private sessionWasChanged:Z

.field private version:[B


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x1

    .line 64
    const/16 v0, 0x4000

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    .line 69
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    add-int/lit16 v0, v0, 0x400

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_COMPRESSED_DATA_LENGTH:I

    .line 75
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_COMPRESSED_DATA_LENGTH:I

    add-int/lit16 v0, v0, 0x400

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_CIPHERED_DATA_LENGTH:I

    .line 81
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_CIPHERED_DATA_LENGTH:I

    add-int/lit8 v0, v0, 0x5

    sput v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_SSL_PACKET_SIZE:I

    .line 107
    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    sput-object v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->change_cipher_spec_byte:[B

    return-void
.end method

.method protected constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;Lorg/apache/harmony/xnet/provider/jsse/Appendable;)V
    .registers 6
    .parameter "handshakeProtocol"
    .parameter "alertProtocol"
    .parameter "in"
    .parameter "appData"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const-string v0, "record"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    .line 104
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    .line 121
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 122
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V

    .line 123
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 124
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0, p0}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->setRecordProtocol(Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;)V

    .line 125
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    .line 126
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    .line 127
    return-void
.end method

.method private packetize(B[B[B)[B
    .registers 10
    .parameter "type"
    .parameter "version"
    .parameter "fragment"

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 240
    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    new-array v0, v1, [B

    .line 241
    .local v0, buff:[B
    aput-byte p1, v0, v3

    .line 242
    if-eqz p2, :cond_2c

    .line 243
    aget-byte v1, p2, v3

    aput-byte v1, v0, v2

    .line 244
    aget-byte v1, p2, v2

    aput-byte v1, v0, v4

    .line 249
    :goto_15
    const v1, 0xff00

    array-length v2, p3

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x8

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    .line 250
    const/4 v1, 0x4

    array-length v2, p3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 251
    const/4 v1, 0x5

    array-length v2, p3

    invoke-static {p3, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 252
    return-object v0

    .line 246
    :cond_2c
    aput-byte v5, v0, v2

    .line 247
    aput-byte v2, v0, v4

    goto :goto_15
.end method

.method private setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V
    .registers 6
    .parameter "session"

    .prologue
    const/4 v3, 0x1

    .line 260
    iget-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    if-nez v0, :cond_50

    .line 262
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_2c

    .line 263
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v1, "SSLRecordProtocol.setSession: Set pending session"

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  cipher name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;->getCipherSuite()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 266
    :cond_2c
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 268
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    if-eqz v0, :cond_38

    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v0, v0, v3

    if-ne v0, v3, :cond_46

    :cond_38
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateTLS;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    :goto_41
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 271
    iput-boolean v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    .line 276
    :goto_45
    return-void

    .line 268
    :cond_46
    new-instance v0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;

    invoke-virtual {p0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionStateSSLv3;-><init>(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    goto :goto_41

    .line 274
    :cond_50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->sessionWasChanged:Z

    goto :goto_45
.end method


# virtual methods
.method protected alert(BB)V
    .registers 6
    .parameter "level"
    .parameter "description"

    .prologue
    .line 447
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v0, :cond_26

    .line 448
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSLRecordProtocol.allert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 450
    :cond_26
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    invoke-virtual {v0, p1, p2}, Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;->alert(BB)V

    .line 451
    return-void
.end method

.method protected getChangeCipherSpecMesage(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)[B
    .registers 9
    .parameter "session"

    .prologue
    const/16 v6, 0x14

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 289
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v1, :cond_42

    .line 290
    const/4 v1, 0x6

    new-array v0, v1, [B

    aput-byte v6, v0, v5

    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v1, v1, v5

    aput-byte v1, v0, v4

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v2, v2, v4

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v5, v0, v1

    const/4 v1, 0x4

    aput-byte v4, v0, v1

    const/4 v1, 0x5

    aput-byte v4, v0, v1

    .line 300
    .local v0, change_cipher_spec_message:[B
    :goto_23
    invoke-direct {p0, p1}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    .line 301
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 302
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_41

    .line 303
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "SSLRecordProtocol.getChangeCipherSpecMesage"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 304
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v2, "activeWriteState = pendingConnectionState"

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 305
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 307
    :cond_41
    return-object v0

    .line 295
    .end local v0           #change_cipher_spec_message:[B
    :cond_42
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    sget-object v3, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->change_cipher_spec_byte:[B

    invoke-virtual {v2, v6, v3, v5, v4}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v2

    invoke-direct {p0, v6, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->packetize(B[B[B)[B

    move-result-object v0

    .restart local v0       #change_cipher_spec_message:[B
    goto :goto_23
.end method

.method protected getDataSize(I)I
    .registers 3
    .parameter "record_size"

    .prologue
    .line 175
    add-int/lit8 p1, p1, -0x5

    .line 176
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_CIPHERED_DATA_LENGTH:I

    if-le p1, v0, :cond_9

    .line 178
    sget v0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    .line 183
    :goto_8
    return v0

    .line 180
    :cond_9
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v0, :cond_f

    move v0, p1

    .line 181
    goto :goto_8

    .line 183
    :cond_f
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0, p1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getContentSize(I)I

    move-result v0

    goto :goto_8
.end method

.method protected getMinRecordSize()I
    .registers 2

    .prologue
    .line 143
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v0, :cond_6

    const/4 v0, 0x6

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getMinFragmentSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x5

    goto :goto_5
.end method

.method protected getRecordSize(I)I
    .registers 4
    .parameter "data_size"

    .prologue
    .line 154
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-nez v1, :cond_7

    .line 155
    add-int/lit8 v1, p1, 0x5

    .line 158
    :goto_6
    return v1

    .line 157
    :cond_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v1, p1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->getFragmentSize(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x5

    .line 158
    .local v0, res:I
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_CIPHERED_DATA_LENGTH:I

    if-le v0, v1, :cond_16

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_CIPHERED_DATA_LENGTH:I

    goto :goto_6

    :cond_16
    move v1, v0

    goto :goto_6
.end method

.method protected getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;
    .registers 2

    .prologue
    .line 135
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    return-object v0
.end method

.method protected setVersion([B)V
    .registers 2
    .parameter "ver"

    .prologue
    .line 461
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    .line 462
    return-void
.end method

.method protected shutdown()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 469
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->session:Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    .line 470
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    .line 471
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    .line 472
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    .line 473
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alertProtocol:Lorg/apache/harmony/xnet/provider/jsse/AlertProtocol;

    .line 474
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    .line 475
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_16

    .line 476
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 478
    :cond_16
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 479
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_21

    .line 480
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 482
    :cond_21
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 483
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v0, :cond_2c

    .line 484
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->shutdown()V

    .line 486
    :cond_2c
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 487
    return-void
.end method

.method protected unwrap()I
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x16

    const/4 v9, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xa

    const-string v8, "Unexpected message type has been received: "

    .line 339
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_13

    .line 340
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "SSLRecordProtocol.unwrap: BEGIN ["

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 342
    :cond_13
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint8()I

    move-result v2

    .line 343
    .local v2, type:I
    const/16 v3, 0x14

    if-lt v2, v3, :cond_21

    const/16 v3, 0x17

    if-le v2, v3, :cond_83

    .line 345
    :cond_21
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_3d

    .line 346
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Non v3.1 message type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 348
    :cond_3d
    const/16 v3, 0x80

    if-lt v2, v3, :cond_65

    .line 352
    and-int/lit8 v3, v2, 0x7f

    shl-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v4

    or-int v1, v3, v4

    .line 353
    .local v1, length:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read(I)[B

    move-result-object v0

    .line 354
    .local v0, fragment:[B
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unwrapSSLv2([B)V

    .line 355
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_63

    .line 356
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "SSLRecordProtocol:unwrap ] END, SSLv2 type"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_63
    move v3, v10

    .line 438
    :goto_64
    return v3

    .line 361
    .end local v0           #fragment:[B
    .end local v1           #length:I
    :cond_65
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 365
    :cond_83
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_9f

    .line 366
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got the message of type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 368
    :cond_9f
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    if-eqz v3, :cond_d9

    .line 369
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v4, v4, v6

    if-ne v3, v4, :cond_bb

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read()I

    move-result v3

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    aget-byte v4, v4, v9

    if-eq v3, v4, :cond_e0

    .line 371
    :cond_bb
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 377
    :cond_d9
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    const-wide/16 v4, 0x2

    invoke-virtual {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->skip(J)J

    .line 379
    :cond_e0
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->readUint16()I

    move-result v1

    .line 380
    .restart local v1       #length:I
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_108

    .line 381
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLSCiphertext.fragment["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]: ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 383
    :cond_108
    sget v3, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_CIPHERED_DATA_LENGTH:I

    if-le v1, v3, :cond_119

    .line 384
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    const-string v5, "Received message is too big."

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v10, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 388
    :cond_119
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->in:Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;

    invoke-virtual {v3, v1}, Lorg/apache/harmony/xnet/provider/jsse/SSLInputStream;->read(I)[B

    move-result-object v0

    .line 389
    .restart local v0       #fragment:[B
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_128

    .line 390
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 392
    :cond_128
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v3, :cond_143

    .line 393
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    int-to-byte v4, v2

    invoke-virtual {v3, v4, v0}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decrypt(B[B)[B

    move-result-object v0

    .line 394
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_143

    .line 395
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "TLSPlaintext.fragment:"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 396
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 399
    :cond_143
    array-length v3, v0

    sget v4, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    if-le v3, v4, :cond_157

    .line 400
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    const/16 v4, 0x1e

    new-instance v5, Ljavax/net/ssl/SSLProtocolException;

    const-string v6, "Decompressed plain data is too big."

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 404
    :cond_157
    packed-switch v2, :pswitch_data_1f4

    .line 430
    new-instance v3, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v4, Ljavax/net/ssl/SSLProtocolException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type has been received: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v7, v4}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v3

    .line 407
    :pswitch_178
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->receiveChangeCipherSpec()V

    .line 408
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->getSession()Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->setSession(Lorg/apache/harmony/xnet/provider/jsse/SSLSessionImpl;)V

    .line 410
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_191

    .line 411
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    const-string v4, "activeReadState = pendingConnectionState"

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 413
    :cond_191
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->pendingConnectionState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    iput-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeReadState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    .line 435
    :goto_195
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_1b1

    .line 436
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SSLRecordProtocol:unwrap ] END, type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    :cond_1b1
    move v3, v2

    .line 438
    goto/16 :goto_64

    .line 416
    :pswitch_1b4
    aget-byte v3, v0, v6

    aget-byte v4, v0, v9

    invoke-virtual {p0, v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->alert(BB)V

    goto :goto_195

    .line 419
    :pswitch_1bc
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->handshakeProtocol:Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;

    invoke-virtual {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeProtocol;->unwrap([B)V

    goto :goto_195

    .line 422
    :pswitch_1c2
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v3, :cond_1ee

    .line 423
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TLSCiphertext.unwrap: APP DATA["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 425
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 427
    :cond_1ee
    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->appData:Lorg/apache/harmony/xnet/provider/jsse/Appendable;

    invoke-interface {v3, v0}, Lorg/apache/harmony/xnet/provider/jsse/Appendable;->append([B)V

    goto :goto_195

    .line 404
    :pswitch_data_1f4
    .packed-switch 0x14
        :pswitch_178
        :pswitch_1b4
        :pswitch_1bc
        :pswitch_1c2
    .end packed-switch
.end method

.method protected wrap(BLorg/apache/harmony/xnet/provider/jsse/DataStream;)[B
    .registers 6
    .parameter "content_type"
    .parameter "dataStream"

    .prologue
    .line 195
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    invoke-interface {p2, v1}, Lorg/apache/harmony/xnet/provider/jsse/DataStream;->getData(I)[B

    move-result-object v0

    .line 196
    .local v0, fragment:[B
    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->wrap(B[BII)[B

    move-result-object v1

    return-object v1
.end method

.method protected wrap(B[BII)[B
    .registers 11
    .parameter "content_type"
    .parameter "fragment"
    .parameter "offset"
    .parameter "len"

    .prologue
    const/16 v5, 0x50

    const-string v4, "]:"

    .line 208
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_2b

    .line 209
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLRecordProtocol.wrap: TLSPlaintext.fragment["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 211
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([BII)V

    .line 213
    :cond_2b
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    if-le p4, v1, :cond_59

    .line 214
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The provided chunk of data is too big: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " > MAX_DATA_LENGTH == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_DATA_LENGTH:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    .line 220
    :cond_59
    move-object v0, p2

    .line 221
    .local v0, ciphered_fragment:[B
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    if-eqz v1, :cond_9e

    .line 222
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->activeWriteState:Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;

    invoke-virtual {v1, p1, p2, p3, p4}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v0

    .line 224
    array-length v1, v0

    sget v2, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->MAX_CIPHERED_DATA_LENGTH:I

    if-le v1, v2, :cond_76

    .line 225
    new-instance v1, Lorg/apache/harmony/xnet/provider/jsse/AlertException;

    new-instance v2, Ljavax/net/ssl/SSLProtocolException;

    const-string v3, "The ciphered data increased more than on 1024 bytes"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLProtocolException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v5, v2}, Lorg/apache/harmony/xnet/provider/jsse/AlertException;-><init>(BLjavax/net/ssl/SSLException;)V

    throw v1

    .line 230
    :cond_76
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    if-eqz v1, :cond_9e

    .line 231
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SSLRecordProtocol.wrap: TLSCiphertext.fragment["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->println(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    invoke-virtual {v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;->print([B)V

    .line 236
    :cond_9e
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->version:[B

    invoke-direct {p0, p1, v1, v0}, Lorg/apache/harmony/xnet/provider/jsse/SSLRecordProtocol;->packetize(B[B[B)[B

    move-result-object v1

    return-object v1
.end method
