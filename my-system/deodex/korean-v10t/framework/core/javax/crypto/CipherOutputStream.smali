.class public Ljavax/crypto/CipherOutputStream;
.super Ljava/io/FilterOutputStream;
.source "CipherOutputStream.java"


# instance fields
.field private final arr:[B

.field private final cipher:Ljavax/crypto/Cipher;


# direct methods
.method protected constructor <init>(Ljava/io/OutputStream;)V
    .registers 3
    .parameter "os"

    .prologue
    .line 70
    new-instance v0, Ljavax/crypto/NullCipher;

    invoke-direct {v0}, Ljavax/crypto/NullCipher;-><init>()V

    invoke-direct {p0, p1, v0}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V
    .registers 4
    .parameter "os"
    .parameter "c"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Ljavax/crypto/CipherOutputStream;->arr:[B

    .line 55
    iput-object p2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    .line 56
    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    if-eqz v2, :cond_11

    .line 157
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->doFinal()[B

    move-result-object v1

    .line 158
    .local v1, result:[B
    if-eqz v1, :cond_11

    .line 159
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 162
    .end local v1           #result:[B
    :cond_11
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_1a

    .line 163
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_30
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_1a} :catch_24
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_1a} :catch_3b

    .line 170
    :cond_1a
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v2, :cond_23

    .line 171
    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 174
    :cond_23
    return-void

    .line 165
    :catch_24
    move-exception v2

    move-object v0, v2

    .line 166
    .local v0, e:Ljavax/crypto/BadPaddingException;
    :try_start_26
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_30
    .catchall {:try_start_26 .. :try_end_30} :catchall_30

    .line 170
    .end local v0           #e:Ljavax/crypto/BadPaddingException;
    :catchall_30
    move-exception v2

    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v3, :cond_3a

    .line 171
    iget-object v3, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    :cond_3a
    throw v2

    .line 167
    :catch_3b
    move-exception v2

    move-object v0, v2

    .line 168
    .local v0, e:Ljavax/crypto/IllegalBlockSizeException;
    :try_start_3d
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_30
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 140
    return-void
.end method

.method public write(I)V
    .registers 6
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->arr:[B

    const/4 v2, 0x0

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    .line 86
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Ljavax/crypto/CipherOutputStream;->arr:[B

    invoke-virtual {v1, v2}, Ljavax/crypto/Cipher;->update([B)[B

    move-result-object v0

    .line 87
    .local v0, result:[B
    if-eqz v0, :cond_15

    .line 88
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 90
    :cond_15
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljavax/crypto/CipherOutputStream;->write([BII)V

    .line 104
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 122
    if-nez p3, :cond_3

    .line 129
    :cond_2
    :goto_2
    return-void

    .line 125
    :cond_3
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v1, p1, p2, p3}, Ljavax/crypto/Cipher;->update([BII)[B

    move-result-object v0

    .line 126
    .local v0, result:[B
    if-eqz v0, :cond_2

    .line 127
    iget-object v1, p0, Ljavax/crypto/CipherOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    goto :goto_2
.end method
