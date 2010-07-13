.class public Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;
.super Lorg/apache/harmony/xnet/provider/jsse/Message;
.source "ServerKeyExchange.java"


# instance fields
.field final bytes1:[B

.field final bytes2:[B

.field final bytes3:[B

.field final hash:[B

.field private key:Ljava/security/interfaces/RSAPublicKey;

.field final par1:Ljava/math/BigInteger;

.field final par2:Ljava/math/BigInteger;

.field final par3:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .registers 10
    .parameter "par1"
    .parameter "par2"
    .parameter "par3"
    .parameter "hash"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    .line 69
    iput-object p2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    .line 70
    iput-object p3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 71
    iput-object p4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    .line 73
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 74
    .local v0, bb:[B
    aget-byte v1, v0, v3

    if-nez v1, :cond_58

    .line 76
    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    .line 77
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    :goto_25
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 83
    aget-byte v1, v0, v3

    if-nez v1, :cond_5b

    .line 84
    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    .line 85
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 90
    :goto_3d
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 91
    if-eqz p4, :cond_52

    .line 92
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    array-length v2, p4

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 94
    :cond_52
    if-nez p3, :cond_5e

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 106
    :goto_57
    return-void

    .line 79
    :cond_58
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    goto :goto_25

    .line 87
    :cond_5b
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    goto :goto_3d

    .line 98
    :cond_5e
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 99
    aget-byte v1, v0, v3

    if-nez v1, :cond_81

    .line 100
    array-length v1, v0

    sub-int/2addr v1, v4

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 101
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    :goto_76
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    goto :goto_57

    .line 103
    :cond_81
    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    goto :goto_76
.end method

.method public constructor <init>(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;II)V
    .registers 9
    .parameter "in"
    .parameter "length"
    .parameter "keyExchange"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 116
    invoke-direct {p0}, Lorg/apache/harmony/xnet/provider/jsse/Message;-><init>()V

    .line 118
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 119
    .local v0, size:I
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    .line 120
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    .line 121
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 122
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 123
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    .line 124
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    .line 125
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 126
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_RSA_EXPORT:I

    if-eq p3, v1, :cond_85

    .line 127
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 128
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    .line 129
    new-instance v1, Ljava/math/BigInteger;

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 130
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 135
    :goto_5d
    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon_EXPORT:I

    if-eq p3, v1, :cond_8a

    sget v1, Lorg/apache/harmony/xnet/provider/jsse/CipherSuite;->KeyExchange_DH_anon:I

    if-eq p3, v1, :cond_8a

    .line 137
    invoke-virtual {p1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->readUint16()I

    move-result v0

    .line 138
    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->read(I)[B

    move-result-object v1

    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    .line 139
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    .line 143
    :goto_79
    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->length:I

    if-eq v1, p2, :cond_84

    .line 144
    const/16 v1, 0x32

    const-string v2, "DECODE ERROR: incorrect ServerKeyExchange"

    invoke-virtual {p0, v1, v2}, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->fatalAlert(BLjava/lang/String;)V

    .line 147
    :cond_84
    return-void

    .line 132
    :cond_85
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par3:Ljava/math/BigInteger;

    .line 133
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    goto :goto_5d

    .line 141
    :cond_8a
    iput-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    goto :goto_79
.end method


# virtual methods
.method public getRSAPublicKey()Ljava/security/interfaces/RSAPublicKey;
    .registers 6

    .prologue
    .line 175
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_7

    .line 176
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    .line 185
    :goto_6
    return-object v2

    .line 179
    :cond_7
    :try_start_7
    const-string v2, "RSA"

    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 180
    .local v1, kf:Ljava/security/KeyFactory;
    new-instance v2, Ljava/security/spec/RSAPublicKeySpec;

    iget-object v3, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par1:Ljava/math/BigInteger;

    iget-object v4, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->par2:Ljava/math/BigInteger;

    invoke-direct {v2, v3, v4}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    iput-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1e} :catch_21

    .line 185
    iget-object v2, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->key:Ljava/security/interfaces/RSAPublicKey;

    goto :goto_6

    .line 182
    .end local v1           #kf:Ljava/security/KeyFactory;
    :catch_21
    move-exception v2

    move-object v0, v2

    .line 183
    .local v0, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_6
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 193
    const/16 v0, 0xc

    return v0
.end method

.method public send(Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;)V
    .registers 4
    .parameter "out"

    .prologue
    .line 154
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 155
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes1:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 156
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 157
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes2:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 158
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    if-eqz v0, :cond_28

    .line 159
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 160
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->bytes3:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 162
    :cond_28
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    if-eqz v0, :cond_38

    .line 163
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->writeUint16(J)V

    .line 164
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ServerKeyExchange;->hash:[B

    invoke-virtual {p1, v0}, Lorg/apache/harmony/xnet/provider/jsse/HandshakeIODataStream;->write([B)V

    .line 166
    :cond_38
    return-void
.end method
