.class public Ljava/security/DigestOutputStream;
.super Ljava/io/FilterOutputStream;
.source "DigestOutputStream.java"


# instance fields
.field protected digest:Ljava/security/MessageDigest;

.field private isOn:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/security/MessageDigest;)V
    .registers 4
    .parameter "stream"
    .parameter "digest"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljava/security/DigestOutputStream;->isOn:Z

    .line 57
    iput-object p2, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    .line 58
    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    return-object v0
.end method

.method public on(Z)V
    .registers 2
    .parameter "on"

    .prologue
    .line 132
    iput-boolean p1, p0, Ljava/security/DigestOutputStream;->isOn:Z

    .line 133
    return-void
.end method

.method public setMessageDigest(Ljava/security/MessageDigest;)V
    .registers 2
    .parameter "digest"

    .prologue
    .line 78
    iput-object p1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    .line 79
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ljava/security/DigestOutputStream;->isOn:Z

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

.method public write(I)V
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->isOn:Z

    if-eqz v0, :cond_a

    .line 94
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    int-to-byte v1, p1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update(B)V

    .line 97
    :cond_a
    iget-object v0, p0, Ljava/security/DigestOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 98
    return-void
.end method

.method public write([BII)V
    .registers 5
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    iget-boolean v0, p0, Ljava/security/DigestOutputStream;->isOn:Z

    if-eqz v0, :cond_9

    .line 117
    iget-object v0, p0, Ljava/security/DigestOutputStream;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    .line 120
    :cond_9
    iget-object v0, p0, Ljava/security/DigestOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 121
    return-void
.end method
