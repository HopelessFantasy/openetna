.class public Ljava/security/DigestInputStream;
.super Ljava/io/FilterInputStream;
.source "DigestInputStream.java"


# instance fields
.field protected digest:Ljava/security/MessageDigest;

.field private isOn:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    .registers 4
    .parameter "stream"
    .parameter "digest"

    .prologue
    .line 58
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/DigestInputStream;->isOn:Z

    .line 59
    iput-object p2, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    .line 60
    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public on(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 151
    iput-boolean p1, p0, Ljava/security/DigestInputStream;->isOn:Z

    .line 152
    return-void
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 101
    .local v0, byteRead:I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->isOn:Z

    if-eqz v1, :cond_13

    const/4 v1, -0x1

    if-eq v0, v1, :cond_13

    .line 102
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v2, v0

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update(B)V

    .line 105
    :cond_13
    return v0
.end method

.method public read([BII)I
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
    .line 131
    iget-object v1, p0, Ljava/security/DigestInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 135
    .local v0, bytesRead:I
    iget-boolean v1, p0, Ljava/security/DigestInputStream;->isOn:Z

    if-eqz v1, :cond_12

    const/4 v1, -0x1

    if-eq v0, v1, :cond_12

    .line 136
    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1, p1, p2, v0}, Ljava/security/MessageDigest;->update([BII)V

    .line 139
    :cond_12
    return v0
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .registers 2
    .parameter "digest"

    .prologue
    .line 80
    iput-object p1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/DigestInputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/security/DigestInputStream;->isOn:Z

    if-eqz v1, :cond_2c

    const-string v1, ", is on"

    :goto_23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2c
    const-string v1, ", is off"

    goto :goto_23
.end method
