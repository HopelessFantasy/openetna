.class public Ljava/util/zip/CheckedInputStream;
.super Ljava/io/FilterInputStream;
.source "CheckedInputStream.java"


# instance fields
.field private final check:Ljava/util/zip/Checksum;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V
    .registers 3
    .parameter "is"
    .parameter "csum"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 49
    iput-object p2, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    .line 50
    return-void
.end method


# virtual methods
.method public getChecksum()Ljava/util/zip/Checksum;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    return-object v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 65
    .local v0, x:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 66
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    invoke-interface {v1, v0}, Ljava/util/zip/Checksum;->update(I)V

    .line 68
    :cond_e
    return v0
.end method

.method public read([BII)I
    .registers 6
    .parameter "buf"
    .parameter "off"
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 92
    .local v0, x:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    .line 93
    iget-object v1, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    invoke-interface {v1, p1, p2, v0}, Ljava/util/zip/Checksum;->update([BII)V

    .line 95
    :cond_e
    return v0
.end method

.method public skip(J)J
    .registers 12
    .parameter "nbytes"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 121
    const-wide/16 v5, 0x1

    cmp-long v5, p1, v5

    if-gez v5, :cond_a

    .line 122
    const-wide/16 v5, 0x0

    .line 136
    :goto_9
    return-wide v5

    .line 124
    :cond_a
    const-wide/16 v1, 0x0

    .line 125
    .local v1, skipped:J
    const/16 v5, 0x800

    new-array v0, v5, [B

    .line 127
    .local v0, b:[B
    :goto_10
    cmp-long v5, v1, p1

    if-eqz v5, :cond_30

    .line 128
    iget-object v5, p0, Ljava/util/zip/CheckedInputStream;->in:Ljava/io/InputStream;

    sub-long v6, p1, v1

    long-to-int v3, v6

    .local v3, v:I
    array-length v6, v0

    if-le v3, v6, :cond_26

    array-length v6, v0

    :goto_1d
    invoke-virtual {v5, v0, v8, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .line 130
    .local v4, x:I
    const/4 v5, -0x1

    if-ne v4, v5, :cond_28

    move-wide v5, v1

    .line 131
    goto :goto_9

    .end local v4           #x:I
    :cond_26
    move v6, v3

    .line 128
    goto :goto_1d

    .line 133
    .restart local v4       #x:I
    :cond_28
    iget-object v5, p0, Ljava/util/zip/CheckedInputStream;->check:Ljava/util/zip/Checksum;

    invoke-interface {v5, v0, v8, v4}, Ljava/util/zip/Checksum;->update([BII)V

    .line 134
    int-to-long v5, v4

    add-long/2addr v1, v5

    goto :goto_10

    .end local v3           #v:I
    .end local v4           #x:I
    :cond_30
    move-wide v5, v1

    .line 136
    goto :goto_9
.end method
