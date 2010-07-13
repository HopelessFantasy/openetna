.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;
.super Ljava/io/InputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChunkedInputStream"
.end annotation


# instance fields
.field private atEnd:Z

.field private bytesRemaining:I

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V
    .registers 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 340
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    .line 346
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->readChunkSize()V

    .line 347
    return-void
.end method

.method private readChunkSize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 388
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    if-eqz v2, :cond_5

    .line 407
    :cond_4
    :goto_4
    return-void

    .line 391
    :cond_5
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-nez v2, :cond_e

    .line 392
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readln()Ljava/lang/String;

    .line 394
    :cond_e
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readln()Ljava/lang/String;

    move-result-object v1

    .line 395
    .local v1, size:Ljava/lang/String;
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 396
    .local v0, index:I
    if-ltz v0, :cond_21

    .line 397
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 399
    :cond_21
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    .line 400
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-nez v2, :cond_4

    .line 401
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    .line 405
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-virtual {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->readHeaders()V

    goto :goto_4
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 375
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    if-eqz v1, :cond_6

    .line 376
    const/4 v1, 0x0

    .line 384
    :goto_5
    return v1

    .line 380
    :cond_6
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 381
    .local v0, result:I
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-le v0, v1, :cond_17

    .line 382
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    goto :goto_5

    :cond_17
    move v1, v0

    .line 384
    goto :goto_5
.end method

.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 352
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    if-eqz v0, :cond_6

    .line 370
    :cond_5
    :goto_5
    return-void

    .line 360
    :cond_6
    invoke-virtual {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->available()I

    move-result v0

    if-lez v0, :cond_2d

    .line 361
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    .line 365
    :goto_11
    iput-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    .line 367
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1100(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 368
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/net/CacheRequest;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    goto :goto_5

    .line 363
    :cond_2d
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    goto :goto_11
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 411
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_7

    .line 412
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->readChunkSize()V

    .line 414
    :cond_7
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    if-eqz v1, :cond_13

    .line 415
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    .line 416
    const/4 v1, -0x1

    .line 424
    :goto_12
    return v1

    .line 418
    :cond_13
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    .line 419
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 421
    .local v0, result:I
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 422
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :cond_3c
    move v1, v0

    .line 424
    goto :goto_12
.end method

.method public read([BII)I
    .registers 7
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    if-nez p1, :cond_8

    .line 430
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 433
    :cond_8
    if-ltz p2, :cond_13

    if-ltz p3, :cond_13

    array-length v1, p1

    if-gt p2, v1, :cond_13

    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_19

    .line 435
    :cond_13
    new-instance v1, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v1

    .line 437
    :cond_19
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-gtz v1, :cond_20

    .line 438
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->readChunkSize()V

    .line 440
    :cond_20
    iget-boolean v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    if-eqz v1, :cond_2c

    .line 441
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    .line 442
    const/4 v1, -0x1

    .line 456
    :goto_2b
    return v1

    .line 444
    :cond_2c
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-le p3, v1, :cond_32

    .line 445
    iget p3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    .line 447
    :cond_32
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 448
    .local v0, result:I
    if-lez v0, :cond_5c

    .line 449
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    sub-int/2addr v1, v0

    iput v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    .line 452
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1300(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_5c

    .line 453
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$200(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v0}, Ljava/io/OutputStream;->write([BII)V

    :cond_5c
    move v1, v0

    .line 456
    goto :goto_2b
.end method

.method public skip(I)J
    .registers 8
    .parameter "amount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, -0x1

    .line 460
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    if-eqz v2, :cond_8

    move-wide v2, v4

    .line 482
    :goto_7
    return-wide v2

    .line 466
    :cond_8
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-gtz v2, :cond_f

    .line 467
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->readChunkSize()V

    .line 470
    :cond_f
    iget-boolean v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->atEnd:Z

    if-eqz v2, :cond_1b

    .line 471
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$700(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;Z)V

    move-wide v2, v4

    .line 472
    goto :goto_7

    .line 475
    :cond_1b
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    if-le p1, v2, :cond_21

    .line 476
    iget p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    .line 478
    :cond_21
    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v2}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$000(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/InputStream;

    move-result-object v2

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    .line 479
    .local v0, result:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_39

    .line 480
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    int-to-long v2, v2

    sub-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$ChunkedInputStream;->bytesRemaining:I

    :cond_39
    move-wide v2, v0

    .line 482
    goto :goto_7
.end method
