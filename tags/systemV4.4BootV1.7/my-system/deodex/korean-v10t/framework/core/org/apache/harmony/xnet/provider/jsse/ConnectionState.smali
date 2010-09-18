.class public abstract Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;
.super Ljava/lang/Object;
.source "ConnectionState.java"


# instance fields
.field protected decCipher:Ljavax/crypto/Cipher;

.field protected encCipher:Ljavax/crypto/Cipher;

.field protected hash_size:I

.field protected is_block_cipher:Z

.field protected logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

.field protected final read_seq_num:[B

.field protected final write_seq_num:[B


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, 0x8

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-array v0, v1, [B

    fill-array-data v0, :array_1c

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_24

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    .line 67
    const-string v0, "conn_state"

    invoke-static {v0}, Lorg/apache/harmony/xnet/provider/jsse/Logger;->getStream(Ljava/lang/String;)Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->logger:Lorg/apache/harmony/xnet/provider/jsse/Logger$Stream;

    return-void

    .line 59
    :array_1c
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 65
    :array_24
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method protected static incSequenceNumber([B)V
    .registers 3
    .parameter "seq_num"

    .prologue
    .line 148
    const/4 v0, 0x7

    .line 149
    .local v0, octet:I
    :goto_1
    if-ltz v0, :cond_11

    .line 150
    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    .line 151
    aget-byte v1, p0, v0

    if-nez v1, :cond_11

    .line 154
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 159
    :cond_11
    return-void
.end method


# virtual methods
.method protected decrypt(B[B)[B
    .registers 5
    .parameter "type"
    .parameter "fragment"

    .prologue
    .line 129
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decrypt(B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract decrypt(B[BII)[B
.end method

.method protected encrypt(B[B)[B
    .registers 5
    .parameter "type"
    .parameter "fragment"

    .prologue
    .line 106
    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encrypt(B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected abstract encrypt(B[BII)[B
.end method

.method protected getContentSize(I)I
    .registers 4
    .parameter "generic_cipher_size"

    .prologue
    .line 95
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    sub-int/2addr v0, v1

    return v0
.end method

.method protected getFragmentSize(I)I
    .registers 4
    .parameter "content_size"

    .prologue
    .line 84
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected getMinFragmentSize()I
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    iget v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->hash_size:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    return v0
.end method

.method protected shutdown()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 166
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->encCipher:Ljavax/crypto/Cipher;

    .line 167
    iput-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->decCipher:Ljavax/crypto/Cipher;

    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_7
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 169
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->write_seq_num:[B

    aput-byte v2, v1, v0

    .line 170
    iget-object v1, p0, Lorg/apache/harmony/xnet/provider/jsse/ConnectionState;->read_seq_num:[B

    aput-byte v2, v1, v0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 172
    :cond_17
    return-void
.end method
