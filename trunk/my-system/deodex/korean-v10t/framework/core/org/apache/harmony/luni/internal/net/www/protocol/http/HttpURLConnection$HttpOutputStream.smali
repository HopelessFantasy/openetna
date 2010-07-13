.class Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;
.super Ljava/io/OutputStream;
.source "HttpURLConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HttpOutputStream"
.end annotation


# static fields
.field static final MAX:I = 0x400


# instance fields
.field cache:Ljava/io/ByteArrayOutputStream;

.field cacheLength:I

.field closed:Z

.field defaultCacheSize:I

.field limit:I

.field final synthetic this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

.field writeToSocket:Z


# direct methods
.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)V
    .registers 4
    .parameter

    .prologue
    .line 502
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 492
    const/16 v0, 0x400

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->defaultCacheSize:I

    .line 503
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->defaultCacheSize:I

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    .line 504
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    .line 505
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    .line 506
    return-void
.end method

.method public constructor <init>(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;I)V
    .registers 6
    .parameter
    .parameter "limit"

    .prologue
    const/16 v2, 0x400

    .line 508
    iput-object p1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 492
    iput v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->defaultCacheSize:I

    .line 509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->writeToSocket:Z

    .line 510
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    .line 511
    if-lez p2, :cond_1c

    .line 512
    iput p2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    .line 518
    :goto_12
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    .line 519
    return-void

    .line 515
    :cond_1c
    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1400(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_30

    invoke-static {p1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1500(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)I

    move-result v0

    :goto_27
    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->defaultCacheSize:I

    .line 516
    invoke-direct {p0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->calculateChunkDataLength()I

    move-result v0

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    goto :goto_12

    :cond_30
    move v0, v2

    .line 515
    goto :goto_27
.end method

.method private calculateChunkDataLength()I
    .registers 5

    .prologue
    .line 539
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->defaultCacheSize:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 544
    .local v0, bitSize:I
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->defaultCacheSize:I

    sub-int/2addr v2, v0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v2, 0x2

    .line 546
    .local v1, headSize:I
    iget v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->defaultCacheSize:I

    sub-int/2addr v2, v1

    return v2
.end method

.method private output(Ljava/lang/String;)V
    .registers 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 550
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "ISO8859_1"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 551
    return-void
.end method

.method private sendCache(Z)V
    .registers 6
    .parameter "close"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "\r\n"

    .line 554
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 555
    .local v0, size:I
    if-gtz v0, :cond_c

    if-eqz p1, :cond_4c

    .line 556
    :cond_c
    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    if-gez v1, :cond_4c

    .line 557
    if-lez v0, :cond_45

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 559
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 560
    iget-object v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 561
    const-string v1, "\r\n"

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 563
    :cond_45
    if-eqz p1, :cond_4c

    .line 564
    const-string v1, "0\r\n\r\n"

    invoke-direct {p0, v1}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 568
    :cond_4c
    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 583
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1e

    if-eqz v0, :cond_7

    .line 607
    :cond_5
    :goto_5
    monitor-exit p0

    return-void

    .line 586
    :cond_7
    const/4 v0, 0x1

    :try_start_8
    iput-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->closed:Z

    .line 587
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_5

    .line 588
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    if-lez v0, :cond_21

    .line 589
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K00a4"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1e
    .catchall {:try_start_8 .. :try_end_1e} :catchall_1e

    .line 583
    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 591
    :cond_21
    :try_start_21
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->closed:Z

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->sendCache(Z)V
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_1e

    goto :goto_5
.end method

.method public declared-synchronized flush()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 572
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->closed:Z

    if-eqz v0, :cond_14

    .line 573
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0059"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 572
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 575
    :cond_14
    :try_start_14
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_25

    .line 576
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->sendCache(Z)V

    .line 577
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_25
    .catchall {:try_start_14 .. :try_end_25} :catchall_11

    .line 579
    :cond_25
    monitor-exit p0

    return-void
.end method

.method isCached()Z
    .registers 2

    .prologue
    .line 683
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->writeToSocket:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method isChunked()Z
    .registers 3

    .prologue
    .line 687
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_b

    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method declared-synchronized size()I
    .registers 2

    .prologue
    .line 675
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result v0

    monitor-exit p0

    return v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized toByteArray()[B
    .registers 2

    .prologue
    .line 679
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_9

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized write(I)V
    .registers 4
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 611
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->closed:Z

    if-eqz v0, :cond_14

    .line 612
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K0059"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    .line 611
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 614
    :cond_14
    :try_start_14
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    if-ltz v0, :cond_2e

    .line 615
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    if-nez v0, :cond_28

    .line 616
    new-instance v0, Ljava/io/IOException;

    const-string v1, "K00b2"

    invoke-static {v1}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 618
    :cond_28
    iget v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    .line 620
    :cond_2e
    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 621
    iget-boolean v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->writeToSocket:Z

    if-eqz v0, :cond_45

    iget-object v0, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    if-lt v0, v1, :cond_45

    .line 622
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->sendCache(Z)V
    :try_end_45
    .catchall {:try_start_14 .. :try_end_45} :catchall_11

    .line 624
    :cond_45
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized write([BII)V
    .registers 9
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "\r\n"

    .line 629
    monitor-enter p0

    :try_start_3
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->closed:Z

    if-eqz v3, :cond_16

    .line 630
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K0059"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_13

    .line 629
    :catchall_13
    move-exception v3

    monitor-exit p0

    throw v3

    .line 632
    :cond_16
    if-nez p1, :cond_1e

    .line 633
    :try_start_18
    new-instance v3, Ljava/lang/NullPointerException;

    invoke-direct {v3}, Ljava/lang/NullPointerException;-><init>()V

    throw v3

    .line 636
    :cond_1e
    if-ltz p2, :cond_29

    if-ltz p3, :cond_29

    array-length v3, p1

    if-gt p2, v3, :cond_29

    array-length v3, p1

    sub-int/2addr v3, p2

    if-ge v3, p3, :cond_35

    .line 638
    :cond_29
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v4, "K002f"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 641
    :cond_35
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    if-ltz v3, :cond_68

    .line 642
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    if-le p3, v3, :cond_49

    .line 643
    new-instance v3, Ljava/io/IOException;

    const-string v4, "K00b2"

    invoke-static {v4}, Lorg/apache/harmony/luni/util/Msg;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 645
    :cond_49
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    sub-int/2addr v3, p3

    iput v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    .line 646
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 647
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->limit:I

    if-nez v3, :cond_66

    .line 648
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V
    :try_end_66
    .catchall {:try_start_18 .. :try_end_66} :catchall_13

    .line 672
    :cond_66
    :goto_66
    monitor-exit p0

    return-void

    .line 651
    :cond_68
    :try_start_68
    iget-boolean v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->writeToSocket:Z

    if-eqz v3, :cond_77

    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, p3

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    if-ge v3, v4, :cond_7d

    .line 652
    :cond_77
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_66

    .line 654
    :cond_7d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 655
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    sub-int v2, v3, v4

    .line 656
    .local v2, writeNum:I
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, p2, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 657
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/OutputStream;->write([B)V

    .line 658
    const-string v3, "\r\n"

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 659
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 660
    sub-int v0, p3, v2

    .line 661
    .local v0, left:I
    add-int v1, p2, v2

    .line 662
    .local v1, position:I
    :goto_c5
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    if-le v0, v3, :cond_fc

    .line 663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 664
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->this$0:Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;

    invoke-static {v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;->access$1600(Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection;)Ljava/io/OutputStream;

    move-result-object v3

    iget v4, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    invoke-virtual {v3, p1, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 665
    const-string v3, "\r\n"

    invoke-direct {p0, v3}, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->output(Ljava/lang/String;)V

    .line 666
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    sub-int/2addr v0, v3

    .line 667
    iget v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cacheLength:I

    add-int/2addr v1, v3

    goto :goto_c5

    .line 669
    :cond_fc
    iget-object v3, p0, Lorg/apache/harmony/luni/internal/net/www/protocol/http/HttpURLConnection$HttpOutputStream;->cache:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3, p1, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_101
    .catchall {:try_start_68 .. :try_end_101} :catchall_13

    goto/16 :goto_66
.end method
