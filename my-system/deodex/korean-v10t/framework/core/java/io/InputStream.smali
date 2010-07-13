.class public abstract Ljava/io/InputStream;
.super Ljava/lang/Object;
.source "InputStream.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static skipBuf:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public available()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public mark(I)V
    .registers 2
    .parameter "readlimit"

    .prologue
    .line 101
    return-void
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public abstract read()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public read([B)I
    .registers 4
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 144
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .registers 10
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 179
    if-nez p1, :cond_f

    .line 180
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "K0047"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 182
    :cond_f
    or-int v3, p2, p3

    if-ltz v3, :cond_17

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_23

    .line 183
    :cond_17
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "K002f"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_23
    const/4 v2, 0x0

    .local v2, i:I
    :goto_24
    if-ge v2, p3, :cond_40

    .line 189
    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_32

    move-result v0

    .local v0, c:I
    if-ne v0, v5, :cond_38

    .line 190
    if-nez v2, :cond_30

    move v3, v5

    .line 200
    .end local v0           #c:I
    :goto_2f
    return v3

    .restart local v0       #c:I
    :cond_30
    move v3, v2

    .line 190
    goto :goto_2f

    .line 192
    .end local v0           #c:I
    :catch_32
    move-exception v1

    .line 193
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_37

    move v3, v2

    .line 194
    goto :goto_2f

    .line 196
    :cond_37
    throw v1

    .line 198
    .end local v1           #e:Ljava/io/IOException;
    .restart local v0       #c:I
    :cond_38
    add-int v3, p2, v2

    int-to-byte v4, v0

    aput-byte v4, p1, v3

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .end local v0           #c:I
    :cond_40
    move v3, p3

    .line 200
    goto :goto_2f
.end method

.method public declared-synchronized reset()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 218
    monitor-enter p0

    :try_start_1
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .registers 11
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 238
    cmp-long v4, p1, v5

    if-gtz v4, :cond_8

    move-wide v4, v5

    .line 259
    :goto_7
    return-wide v4

    .line 241
    :cond_8
    const-wide/16 v1, 0x0

    .line 242
    .local v1, skipped:J
    const-wide/16 v4, 0x1000

    cmp-long v4, p1, v4

    if-gez v4, :cond_2f

    long-to-int v4, p1

    move v3, v4

    .line 243
    .local v3, toRead:I
    :goto_12
    sget-object v4, Ljava/io/InputStream;->skipBuf:[B

    if-eqz v4, :cond_1b

    sget-object v4, Ljava/io/InputStream;->skipBuf:[B

    array-length v4, v4

    if-ge v4, v3, :cond_1f

    .line 244
    :cond_1b
    new-array v4, v3, [B

    sput-object v4, Ljava/io/InputStream;->skipBuf:[B

    .line 246
    :cond_1f
    :goto_1f
    cmp-long v4, v1, p1

    if-gez v4, :cond_44

    .line 247
    sget-object v4, Ljava/io/InputStream;->skipBuf:[B

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 248
    .local v0, read:I
    const/4 v4, -0x1

    if-ne v0, v4, :cond_33

    move-wide v4, v1

    .line 249
    goto :goto_7

    .line 242
    .end local v0           #read:I
    .end local v3           #toRead:I
    :cond_2f
    const/16 v4, 0x1000

    move v3, v4

    goto :goto_12

    .line 251
    .restart local v0       #read:I
    .restart local v3       #toRead:I
    :cond_33
    int-to-long v4, v0

    add-long/2addr v1, v4

    .line 252
    if-ge v0, v3, :cond_39

    move-wide v4, v1

    .line 253
    goto :goto_7

    .line 255
    :cond_39
    sub-long v4, p1, v1

    int-to-long v6, v3

    cmp-long v4, v4, v6

    if-gez v4, :cond_1f

    .line 256
    sub-long v4, p1, v1

    long-to-int v3, v4

    goto :goto_1f

    .end local v0           #read:I
    :cond_44
    move-wide v4, v1

    .line 259
    goto :goto_7
.end method
