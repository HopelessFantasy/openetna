.class public Ljava/io/FilterOutputStream;
.super Ljava/io/OutputStream;
.source "FilterOutputStream.java"


# instance fields
.field protected out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 2
    .parameter "out"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 52
    iput-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    .line 53
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    :try_start_0
    invoke-virtual {p0}, Ljava/io/FilterOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_9

    .line 70
    :goto_3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 71
    return-void

    .line 66
    :catch_9
    move-exception v0

    goto :goto_3
.end method

.method public flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 84
    return-void
.end method

.method public write(I)V
    .registers 3
    .parameter "oneByte"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 162
    return-void
.end method

.method public write([B)V
    .registers 4
    .parameter "buffer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/FilterOutputStream;->write([BII)V

    .line 103
    return-void
.end method

.method public write([BII)V
    .registers 7
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 135
    if-nez p1, :cond_e

    .line 136
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "K0047"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 138
    :cond_e
    or-int v1, p2, p3

    if-ltz v1, :cond_16

    array-length v1, p1

    sub-int/2addr v1, p2

    if-le p3, v1, :cond_22

    .line 139
    :cond_16
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v2, "K002f"

    invoke-static {v2}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_22
    const/4 v0, 0x0

    .local v0, i:I
    :goto_23
    if-ge v0, p3, :cond_2f

    .line 145
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Ljava/io/FilterOutputStream;->write(I)V

    .line 142
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    .line 147
    :cond_2f
    return-void
.end method
