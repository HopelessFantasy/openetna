.class public Lorg/apache/harmony/luni/util/PositionedInputStream;
.super Ljava/io/FilterInputStream;
.source "PositionedInputStream.java"


# instance fields
.field private currentPosition:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .parameter "in"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 38
    return-void
.end method


# virtual methods
.method public currentPosition()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 51
    iget-object v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 52
    .local v0, read:I
    if-ltz v0, :cond_e

    .line 53
    iget v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 55
    :cond_e
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
    .line 61
    iget-object v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 62
    .local v0, read:I
    if-ltz v0, :cond_d

    .line 63
    iget v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 65
    :cond_d
    return v0
.end method

.method public resetCurrentPosition()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 74
    return-void
.end method

.method public skip(J)J
    .registers 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v2, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 79
    .local v0, skip:J
    iget v2, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/harmony/luni/util/PositionedInputStream;->currentPosition:I

    .line 80
    return-wide v0
.end method
